package wgu.SchedulerApp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

import java.util.ArrayList;
import java.util.List;

public class MentorsActivity extends AppCompatActivity {
    static final String LOG_TAG = "MentorsLog";
    ListView mentorsListView;
    TermAppDatabase db;
    int courseId;
    Intent intent;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mentors);
        setTitle("Mentors List");
        db = TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        mentorsListView = findViewById(R.id.mentorsListView);
        courseId = getIntent().getIntExtra("courseId", -1);
        mentorsListView.setOnItemClickListener((parent, view, position, id) -> {
            Intent intent = new Intent(getApplicationContext(),EditMentorsActivity.class);
            int mentor_Id = db.mentorsDAO().getMentorsList(courseId).get(position).getMentor_id();
            intent.putExtra("mentorId",mentor_Id);
            intent.putExtra("courseId", courseId);
            startActivity(intent);
        });
       updateMentors();

        FloatingActionButton addMentor = findViewById(R.id.addMentor);
        addMentor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int mentorIdCount = db.mentorsDAO().getMentorsList(courseId).size() + 1;
                Mentors newMentor = new Mentors();
                newMentor.setMentor_name("New Mentor");
                newMentor.setMentor_phone("999-999-9999");
                newMentor.setMentor_email("new@new.com");
                newMentor.setCourse_id_fk(courseId);
                db.mentorsDAO().insertMentor(newMentor);
                updateMentors();
            }
        });
    }
    private void updateMentors(){
        List<Mentors> mentors = new ArrayList<>();
        try{
            mentors = db.mentorsDAO().getMentorsList(courseId);
        }
        catch (Exception e){}
        String[] items = new String[mentors.size()];
        if(!mentors.isEmpty()) {
            for (int m = 0; m < mentors.size(); m++) {
                items[m] = mentors.get(m).getMentor_name();
            }
        }
            ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, items);
            mentorsListView.setAdapter(adapter);
            adapter.notifyDataSetChanged();
        }

}