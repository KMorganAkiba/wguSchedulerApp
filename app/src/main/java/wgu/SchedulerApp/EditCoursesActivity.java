package wgu.SchedulerApp;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;

import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EditCoursesActivity extends AppCompatActivity {
    static final String LOG_TAG = "editCourseLog";
    TextView courseNameTextView;
    TextView courseStartTextView;
    TextView courseEndTextView;
    TextView courseStatusTextView;
    Button startAlarm;
    Button endAlarm;
    TermAppDatabase db;
    Courses selectedCourse;
    Intent intent;
    int courseId;
    int termId;
    SimpleDateFormat formatter;
    Courses updateCourse;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_edit_courses);
        db=TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        setTitle("Edit Course");
        courseId = intent.getIntExtra("courseId",-1);
        termId = intent.getIntExtra("termId",-1);
        selectedCourse = db.coursesDAO().getCourses(courseId,termId);
        formatter = new SimpleDateFormat("MM/dd/yyyy");
        courseNameTextView = findViewById(R.id.editCourseName);
        courseStartTextView = findViewById(R.id.editCourseStart);
        courseEndTextView = findViewById(R.id.editCourseEnd);
        courseStatusTextView = findViewById(R.id.editCourseStatus);
        startAlarm = findViewById(R.id.courseStartAlarmButton);
        endAlarm = findViewById(R.id.courseEndAlarmButton);
        insertCourseDetails();
        
    }


    private void insertCourseDetails(){
        if(selectedCourse != null){
            Date StartDate = selectedCourse.getCourse_start();
            Date EndDate = selectedCourse.getCourse_end();
            String start = formatter.format(StartDate);
            String end = formatter.format(EndDate);
            courseNameTextView.setText(selectedCourse.getCourse_name());
            courseStartTextView.setText(start);
            courseEndTextView.setText(end);
            courseStatusTextView.setText(selectedCourse.getCourse_status());
        }
        else{
            selectedCourse = new Courses();
        }
    }
    public void deleteCourse(View view) {
        if(selectedCourse != null)
        {
            List<Assessments>assessmentsList = new ArrayList<>();
            try{
                assessmentsList = db.assessmentsDAO().getAssessmentsList(courseId);
            }
            catch (Exception e){
                e.printStackTrace();
            }
            if(assessmentsList.isEmpty()){
                db.coursesDAO().deleteCourse(selectedCourse);
                Intent intent = new Intent(getApplicationContext(),ViewCoursesInTerm.class);
                intent.putExtra("courseId", courseId);
                intent.putExtra("termId",termId);
                startActivity(intent);
            }
            else{
                AlertDialog alertDialog = new AlertDialog.Builder(EditCoursesActivity.this).create();
                alertDialog.setTitle("Assessments Error");
                alertDialog.setMessage("Please Delete all Assessments assigned to this Course.");
                alertDialog.show();
                return;
            }
        }

    }

    public void updateCourseInfo(View view) {
        updateCourse = new Courses();
        updateCourse.setCourse_id(courseId);
        updateCourse.setTerm_id_fk(termId);
        updateCourse.setCourse_name(courseNameTextView.getText().toString());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        try{
            updateCourse.setCourse_start(simpleDateFormat.parse(courseStartTextView.getText().toString()));
            updateCourse.setCourse_end(simpleDateFormat.parse(courseEndTextView.getText().toString()));
        }
        catch (Exception e){
            e.printStackTrace();
        }
        updateCourse.setCourse_status(courseStatusTextView.getText().toString());
        db.coursesDAO().updateCourse(updateCourse);
        Intent intent = new Intent(getApplicationContext(),CourseDetails.class);
        intent.putExtra("courseId",courseId);
        intent.putExtra("termId", termId);
        startActivity(intent);
    }

}