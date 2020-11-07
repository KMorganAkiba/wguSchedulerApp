package wgu.SchedulerApp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class EditMentorsActivity extends AppCompatActivity {
    private final String LOG_TAG = "editMentorsLOG";
    TextView mentorNameTextView;
    TextView mentorPhoneTextView;
    TextView mentorEmailTextView;
    TermAppDatabase db;
    Mentors selectedMentor;
    Intent intent;
    int courseId;
    int termId;
    int mentorId;
    Mentors updateMentor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_edit_mentors);
        db = TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        setTitle("Edit Mentor Info");
        courseId = intent.getIntExtra("courseId",-1);
        termId = intent.getIntExtra("termId",-1);
        mentorId = intent.getIntExtra("mentorId", -1);
        selectedMentor = db.mentorsDAO().getMentor(courseId);
        mentorNameTextView = findViewById(R.id.mentorNameTextView);
        mentorPhoneTextView = findViewById(R.id.mentorPhoneTextView);
        mentorEmailTextView = findViewById(R.id.mentorEmailTextView);
        insertMentorDetails();
    }

    private void insertMentorDetails(){
        if(selectedMentor != null){
            mentorNameTextView.setText(selectedMentor.getMentor_name());
            mentorPhoneTextView.setText(selectedMentor.getMentor_phone());
            mentorEmailTextView.setText(selectedMentor.getMentor_email());
        }
        else{
            selectedMentor = new Mentors();
        }
    }

    public void deleteMentor(View view) {
        db.mentorsDAO().deleteMentor(selectedMentor);
        Intent intent = new Intent(getApplicationContext(),MentorsActivity.class);
        startActivity(intent);
    }

    public void saveMentor(View view) {
        updateMentor = new Mentors();
        updateMentor.setMentor_id(mentorId);
        updateMentor.setMentor_name(mentorNameTextView.getText().toString());
        updateMentor.setMentor_phone(mentorPhoneTextView.getText().toString());
        updateMentor.setMentor_email(mentorEmailTextView.getText().toString());
        updateMentor.setCourse_id_fk(courseId);
        db.mentorsDAO().updateMentor(updateMentor);
        Intent intent = new Intent(getApplicationContext(),MentorsActivity.class);
        intent.putExtra("courseId", courseId);
        intent.putExtra("termId", termId);
        startActivity(intent);
    }
}