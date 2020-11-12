package wgu.SchedulerApp;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EditCoursesActivity extends AppCompatActivity {
    static final String LOG_TAG = "editCourseLog";
    public static int numAlert;
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
    String courseNotes;


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
        String courseNotes = "";

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
            courseNotes = selectedCourse.getCourse_notes();
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
        updateCourse.setCourse_notes(courseNotes);
        db.coursesDAO().updateCourse(updateCourse);
        Intent intent = new Intent(getApplicationContext(),CourseDetails.class);
        intent.putExtra("courseId",courseId);
        intent.putExtra("termId", termId);
        startActivity(intent);
    }

    public void startCourseAlarm(View view) {

        Toast.makeText(this,"Start Alarm is Set", Toast.LENGTH_SHORT).show();

        Intent intent = new Intent(EditCoursesActivity.this,MyReceiver.class);
        intent.putExtra("key", selectedCourse.getCourse_name() + " Starts Today!");
        PendingIntent pendingIntent = PendingIntent.getBroadcast(EditCoursesActivity.this,++numAlert,intent,0);
        Long sal = selectedCourse.getCourse_start().getTime();
        AlarmManager alarmManager = (AlarmManager) getSystemService(ALARM_SERVICE);
        alarmManager.set(AlarmManager.RTC_WAKEUP,sal,pendingIntent);
    }

    public void endCourseAlarm(View view) {

        Toast.makeText(this," End Alarm is Set", Toast.LENGTH_SHORT).show();

        Intent intent = new Intent(EditCoursesActivity.this,MyReceiver.class);
        intent.putExtra("key", selectedCourse.getCourse_name() + " ends today." );
        PendingIntent pendingIntent = PendingIntent.getBroadcast(EditCoursesActivity.this,++numAlert,intent,0);
        Long eal = selectedCourse.getCourse_end().getTime();
        AlarmManager alarmManager = (AlarmManager) getSystemService(ALARM_SERVICE);
        alarmManager.set(AlarmManager.RTC_WAKEUP,eal,pendingIntent);
    }


}