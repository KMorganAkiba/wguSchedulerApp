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

public class ViewCoursesInTerm extends AppCompatActivity {
    static final String LOG_TAG = "viewCoursesInTermLog";
    ListView coursesListView;
    TextView termsStartTextView;
    TextView termsEndTextView;
    TextView termNameTextView;
    Intent intent;
    int termId;
    TermAppDatabase db;
    Terms selectedTerm;
    SimpleDateFormat formatter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_courses_in_term);
        db = TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        setTitle("Terms Details");
        termId = intent.getIntExtra("termId",-1);
        selectedTerm = db.termsDAO().getTerm(termId);
        formatter = new SimpleDateFormat("MM/dd/yyyy");
        //sets the text ids to a view
        coursesListView = findViewById(R.id.coursesListView);
        termNameTextView = findViewById(R.id.termNameTextField);
        termsStartTextView = findViewById(R.id.termStartTextField);
        termsEndTextView = findViewById(R.id.termEndTextField);
        updateDetails();
        //when user clicks a course it will take them to the page with details for that course
            coursesListView.setOnItemClickListener((parent, view, position, id) -> {
                Intent intent = new Intent(getApplicationContext(),CourseDetails.class);
                int courseId = db.coursesDAO().getCoursesList(termId).get(position).getCourse_id();
                intent.putExtra("termId",termId);
                intent.putExtra("courseId",courseId);
                startActivity(intent);
            });
            updateCourses();

        //adds a blank course to the term
        FloatingActionButton addCourses = findViewById(R.id.addCourse);
        addCourses.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Calendar calendar = Calendar.getInstance();
                int courseIdCount = db.coursesDAO().getCoursesList(termId).size() + 1;
                Courses newCourse = new Courses();
                newCourse.setCourse_name("Course Added " + courseIdCount);
                newCourse.setCourse_start(calendar.getTime());
                calendar.add(Calendar.DAY_OF_YEAR,1);
                newCourse.setCourse_end(calendar.getTime());
                newCourse.setCourse_status("In Progress");
                newCourse.setCourse_notes("This is were your notes go.");
                newCourse.setTerm_id_fk(termId);
                db.coursesDAO().insertCourse(newCourse);
                updateCourses();
            }
        });

        //sends the user to the edit terms activity
        FloatingActionButton editTerm = findViewById(R.id.editTermInfo);
        editTerm.setOnClickListener(v -> {
            Terms editTermDetails = db.termsDAO().getTerm(termId);
            Intent intent = new Intent(getApplicationContext(),EditTermsActivity.class);
            intent.putExtra("termID", termId);
            startActivity(intent);
        });
    }
    //sets the fields in the activity with data from the database.
    private void updateDetails(){
        if(selectedTerm != null){
            Date startDate = selectedTerm.getTerm_start();
            Date endDate   = selectedTerm.getTerm_end();
            String start = formatter.format(startDate);
            String end = formatter.format(endDate);
            termNameTextView.setText(selectedTerm.getTerm_name());
            termsStartTextView.setText(start);
            termsEndTextView.setText(end);
        }
        else{
            selectedTerm = new Terms();
        }
    }

    //adapter used to populate the listview of courses
    private void updateCourses(){
        List<Courses> courses = new ArrayList<>();
        try{
            courses = db.coursesDAO().getCoursesList(termId);

        }
        catch(Exception e){
            e.printStackTrace();
        }
        String[] items = new String[courses.size()];
        if(!courses.isEmpty()){
            for(int i = 0; i< courses.size(); i++ ){
                items[i] = courses.get(i).getCourse_name();
            }
        }
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1,items);
        coursesListView.setAdapter(adapter);
        adapter.notifyDataSetChanged();
    }

    @Override
    protected void onResume(){
        super.onResume();
        selectedTerm = db.termsDAO().getTerm(termId);
        updateDetails();
        updateCourses();
    }
    }
