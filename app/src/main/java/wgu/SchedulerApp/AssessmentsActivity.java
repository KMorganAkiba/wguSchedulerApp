package wgu.SchedulerApp;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Date;

public class AssessmentsActivity extends AppCompatActivity {
    static final String LOG_TAG = "editAssessmentLog";
    public static int numAlert;
    TextView assessmentNameTextView;
    TextView assessmentTypeTextView;
    TextView assessmentDueDateTextView;
    TextView assessmentStatusTextView;
    TermAppDatabase db;
    Assessments selectedAssessment;
    Assessments updateAssessment;
    Intent intent;
    int courseId;
    int termId;
    int assessmentId;
    SimpleDateFormat formatter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_assessments);
        db = TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        setTitle("Edit Assessment");
        courseId = intent.getIntExtra("courseId",-1);
        assessmentId = intent.getIntExtra("assessmentId", -1);
        termId = intent.getIntExtra("termId", -1);
        selectedAssessment = db.assessmentsDAO().getAssessment(courseId);
        formatter = new SimpleDateFormat("MM/dd/yyyy");
        assessmentNameTextView = findViewById(R.id.editAssessmentName);
        assessmentTypeTextView = findViewById(R.id.editAssessmentType);
        assessmentDueDateTextView = findViewById(R.id.editAssessmentDueDate);
        assessmentStatusTextView = findViewById(R.id.editAssessmentStatus);
        insertAssessmentDetails();
    }

    private void insertAssessmentDetails(){
        if(selectedAssessment != null){
            Date dueDate = selectedAssessment.getAssessment_due_date();
            String due = formatter.format(dueDate);
            assessmentNameTextView.setText(selectedAssessment.getAssessment_name());
            assessmentTypeTextView.setText(selectedAssessment.getAssessment_type());
            assessmentDueDateTextView.setText(due);
            assessmentStatusTextView.setText(selectedAssessment.getAssessment_status());
        }
        else{
            selectedAssessment = new Assessments();
        }
    }

    public void deleteAssessment(View view) {
        db.assessmentsDAO().deleteAssessment(selectedAssessment);
        Intent intent = new Intent(this, CourseDetails.class);
        intent.putExtra("courseId",courseId);
        intent.putExtra("termId",termId);
        startActivity(intent);
    }

    public void saveAssessment(View view) {
        updateAssessment = new Assessments();
        updateAssessment.setAssessment_id(assessmentId);
        updateAssessment.setAssessment_name(assessmentNameTextView.getText().toString());
        updateAssessment.setAssessment_type(assessmentTypeTextView.getText().toString());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        try{
            updateAssessment.setAssessment_due_date(simpleDateFormat.parse(assessmentDueDateTextView.getText().toString()));
        }
        catch (Exception e){
            e.printStackTrace();
        }
        updateAssessment.setAssessment_status(assessmentStatusTextView.getText().toString());
        updateAssessment.setCourse_id_fk(courseId);
        db.assessmentsDAO().updateAssessment(updateAssessment);
        Intent intent  = new Intent(getApplicationContext(),CourseDetails.class);
        intent.putExtra("courseId", courseId);
        intent.putExtra("termId",termId);
        startActivity(intent);
    }

    public void assessmentAlarm(View view) {

        Toast.makeText(this,"Assessment Alarm is Set", Toast.LENGTH_SHORT).show();

        Intent intent = new Intent(AssessmentsActivity.this,MyReceiver.class);
        intent.putExtra("key", selectedAssessment.getAssessment_name() + " is Due Today!" );
        PendingIntent pendingIntent = PendingIntent.getBroadcast(AssessmentsActivity.this, ++numAlert ,intent,0);
        Long aDD = selectedAssessment.getAssessment_due_date().getTime();
        AlarmManager alarmManager = (AlarmManager) getSystemService(ALARM_SERVICE);
        alarmManager.set(AlarmManager.RTC_WAKEUP,aDD,pendingIntent);
    }
}