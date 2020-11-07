package wgu.SchedulerApp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class NotesActivity extends AppCompatActivity {
    private final String LOG_TAG = "NotesLog";
    private static final int MY_PERMISSIONS_REQUEST_SEND_SMS = 0;
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

        sendSMS.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sendTxtMessage();
            }
        });
    }

    private void populateNotes(){
        notesTextView.setText(selectedCourse.getCourse_notes());

    }

    protected void sendTxtMessage(){
        txtNumber = phoneNumber.getText().toString();
        notes = notesTextView.getText().toString();

        if(ContextCompat.checkSelfPermission(this,
                Manifest.permission.SEND_SMS)
            != PackageManager.PERMISSION_GRANTED){
            if(ActivityCompat.shouldShowRequestPermissionRationale(this,Manifest.permission.SEND_SMS)){}
            else {
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.SEND_SMS},MY_PERMISSIONS_REQUEST_SEND_SMS);
            }
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String permissions[], int[] grantResults){
        switch (requestCode){
            case MY_PERMISSIONS_REQUEST_SEND_SMS:{
                if (grantResults.length > 0
                    && grantResults[0] == PackageManager.PERMISSION_GRANTED){
                    SmsManager smsManager = SmsManager.getDefault();
                    smsManager.sendTextMessage(txtNumber,null,notes,null,null);
                    Toast.makeText(getApplicationContext(),"SMS Sent.",Toast.LENGTH_LONG).show();
                }
                else{
                    Toast.makeText(getApplicationContext(),"SMS Failed", Toast.LENGTH_LONG).show();
                    return;
                }
            }
        }
    }


    public void saveNotes(View view) {

       String courseNotes =  notesTextView.getText().toString();
       db.coursesDAO().updateNotes(courseNotes,courseId,termId);
       Intent intent = new Intent(getApplicationContext(),CourseDetails.class);
       intent.putExtra("courseId",courseId);
       intent.putExtra("termId",termId);
       startActivity(intent);
    }
}