package wgu.SchedulerApp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class NotesActivity extends AppCompatActivity {
    private final String LOG_TAG = "NotesLog";
    TermAppDatabase db;
    TextView notesTextView;
    int courseId;
    int termId;
    Intent intent;
    Button sendSMS;
    TextView phoneNumber;
    String txtNumber;
    String notes;
    Courses selectedCourse;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_notes);
        db = TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        setTitle("Course Notes");
        notesTextView = findViewById(R.id.notesTextArea);
        sendSMS = findViewById(R.id.smsMessageButton);
        phoneNumber = findViewById(R.id.txtPhoneNumber);
        courseId = getIntent().getIntExtra("courseId",-1);
        termId = getIntent().getIntExtra("termId", -1);
        selectedCourse = db.coursesDAO().getCourses(courseId,termId);
        populateNotes();

        sendSMS.setOnClickListener(v -> sendTxtMessage());
    }

    private void populateNotes(){
        notesTextView.setText(selectedCourse.getCourse_notes());

    }

    //handles the functionality of passing the notes and phone number to the sms screen.
    protected void sendTxtMessage(){
        txtNumber = phoneNumber.getText().toString();
        notes = notesTextView.getText().toString();
        //prevents the screen from changing if no number is present
        if (txtNumber.isEmpty()){
            Toast.makeText(NotesActivity.this,"Please enter a phone number.",Toast.LENGTH_SHORT).show();
            return;
        }
        else {
            Log.i("Send SMS", "");
            Intent smsIntent = new Intent(Intent.ACTION_VIEW);


            smsIntent.setType("vnd.android-dir/mms-sms");
            smsIntent.setData(Uri.parse("smsto:")).putExtra("address", txtNumber);
            smsIntent.putExtra("sms_body", notes);
            try {
                startActivity(smsIntent);
                finish();
                Log.i("Finished sending SMS....", "");
            } catch (android.content.ActivityNotFoundException ex) {
                Toast.makeText(NotesActivity.this, "SMS failed, please try again later.", Toast.LENGTH_SHORT).show();
            }
        }
    }

    //saves data to the notes field in the courses table only
    public void saveNotes(View view) {

       String courseNotes =  notesTextView.getText().toString();
       db.coursesDAO().updateNotes(courseNotes,courseId,termId);
       Intent intent = new Intent(getApplicationContext(),CourseDetails.class);
       intent.putExtra("courseId",courseId);
       intent.putExtra("termId",termId);
       startActivity(intent);
    }
}