package wgu.SchedulerApp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class CourseDetails extends AppCompatActivity {
    static final String LOG_TAG = "courseDetailsLog";
    ListView assessmentsListView;
    TextView courseNameTextView;
    TextView courseStartTextView;
    TextView courseEndTextView;
    TextView courseStatusTextView;
    Intent intent;
    TermAppDatabase db;
    Courses selectedCourse;
    Terms selectedTerm;
    SimpleDateFormat formatter;
    int courseId;
    int termId;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_details);
        db = TermAppDatabase.getInstance(getApplicationContext());
        setTitle("Course Info");
        intent = getIntent();
        termId = intent.getIntExtra("termId",-1);
        courseId = intent.getIntExtra("courseId", -1);
        selectedTerm = db.termsDAO().getTerm(termId);
        selectedCourse = db.coursesDAO().getCourses(courseId, termId);
        formatter = new SimpleDateFormat("MM/dd/yyyy");
        assessmentsListView = findViewById(R.id.assessmentListView);
        courseNameTextView = findViewById(R.id.courseNameTxtField);
        courseStartTextView = findViewById(R.id.courseStartTextField);
        courseEndTextView = findViewById(R.id.courseEndTextField);
        courseStatusTextView = findViewById(R.id.courseStatusTextField);
        updateCourseDetails();
            assessmentsListView.setOnItemClickListener((parent, view, position, id) -> {
                Intent intent = new Intent(getApplicationContext(),AssessmentsActivity.class);
                int assessmentId = db.assessmentsDAO().getAssessmentsList(courseId).get(position).getAssessment_id();
                intent.putExtra("courseId",courseId);
                intent.putExtra("assessmentId",assessmentId);
                startActivity(intent);
            } );
            updateAssessments();

        FloatingActionButton addAssessments = findViewById(R.id.addAssesmentButton);
        addAssessments.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Calendar calendar = Calendar.getInstance();
                int assessmentIdCount = db.assessmentsDAO().getAssessmentsList(courseId).size() + 1;
                Assessments newAssessment = new Assessments();
                newAssessment.setAssessment_name("Assessment Added " + assessmentIdCount);
                newAssessment.setAssessment_type("Performance Assessment");
                newAssessment.setAssessment_status("In Progress");
                newAssessment.setAssessment_due_date(calendar.getTime());
                newAssessment.setCourse_id_fk(courseId);
                db.assessmentsDAO().insertAssessment(newAssessment);
                updateAssessments();
            }
        });

        FloatingActionButton editCourse = findViewById(R.id.editCourseDetailsButton);
        editCourse.setOnClickListener(v -> {
            Courses editCourseDetails = db.coursesDAO().getCourses(courseId, termId);
            Intent intent = new Intent(getApplicationContext(), EditCoursesActivity.class);
            intent.putExtra("courseId", courseId);
            intent.putExtra("termId",termId);
            startActivity(intent);
        });
    }

    private void updateCourseDetails(){
        if(selectedCourse != null){
            Date startDate = selectedCourse.getCourse_start();
            Date endDate = selectedCourse.getCourse_end();
            String start = formatter.format(startDate);
            String end = formatter.format(endDate);
            courseNameTextView.setText(selectedCourse.getCourse_name());
            courseStartTextView.setText(start);
            courseEndTextView.setText(end);
            courseStatusTextView.setText(selectedCourse.getCourse_status());
        }
        else{
            selectedCourse = new Courses();
        }
    }

    private void updateAssessments(){
        List<Assessments> assessments = new ArrayList<>();
        try{
            assessments = db.assessmentsDAO().getAssessmentsList(courseId);
        }
        catch (Exception e){}
        String[] items = new String[assessments.size()];
        if(!assessments.isEmpty()){
            for(int a = 0; a<assessments.size(); a++){
                items[a] = assessments.get(a).getAssessment_name();
            }
        }
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, items);
        assessmentsListView.setAdapter(adapter);
        adapter.notifyDataSetChanged();
    }

    @Override
    protected void onResume(){
        super.onResume();
        selectedCourse = db.coursesDAO().getCourses(courseId, termId);
        updateCourseDetails();
        updateAssessments();
    }

    public void mentorsList(View view) {
        Intent intent = new Intent(getApplicationContext(),MentorsActivity.class);
        intent.putExtra("courseId", courseId);
        startActivity(intent);
    }

    public void courseNotes(View view) {
        Intent intent = new Intent(getApplicationContext(),NotesActivity.class);
        intent.putExtra("courseId", courseId);
        intent.putExtra("termId",termId);
        startActivity(intent);
    }
}