package wgu.SchedulerApp;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EditTermsActivity extends AppCompatActivity {
    static final String LOG_TAG = "editTermsLog";
    TextView termNameTextView;
    TextView termStartTextView;
    TextView termEndTextView;
    TermAppDatabase db;
    Terms selectedTerm;
    Terms updateTerms;
    Intent intent;
    int termId;
    SimpleDateFormat format;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_edit_terms);
        db = TermAppDatabase.getInstance(getApplicationContext());
        intent = getIntent();
        setTitle("Edit Terms");
        termId = intent.getIntExtra("termID",-1);
        selectedTerm = db.termsDAO().getTerm(termId);
        format = new SimpleDateFormat("MM/dd/yyyy");
        termNameTextView = findViewById(R.id.editTermNameTxtField);
        termStartTextView = findViewById(R.id.editTermStartTxtField);
        termEndTextView = findViewById(R.id.editTermEndTxtField);
        insertTermDetails();

    }

    //populates the fields with the data from the database
    private void insertTermDetails(){
        if(selectedTerm != null){
            Date StartDate = selectedTerm.getTerm_start();
            Date EndDate = selectedTerm.getTerm_end();
            String start = format.format(StartDate);
            String end = format.format(EndDate);
            termNameTextView.setText(selectedTerm.getTerm_name());
            termStartTextView.setText(start);
            termEndTextView.setText(end);
        }
        else{
            selectedTerm = new Terms();
        }
    }

    //handles updating the information in the database
    public void updateTermsDetail(View view) {
        updateTerms = new Terms();
        updateTerms.setTerm_id(termId);
        updateTerms.setTerm_name(termNameTextView.getText().toString());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        try{
            updateTerms.setTerm_start(simpleDateFormat.parse(termStartTextView.getText().toString()));
            updateTerms.setTerm_end(simpleDateFormat.parse(termEndTextView.getText().toString()));
        }
        catch (Exception e){
            e.printStackTrace();
        }
        db.termsDAO().updateTerm(updateTerms);
        Intent intent = new Intent(getApplicationContext(),ViewCoursesInTerm.class);
        intent.putExtra("termId",termId);
        startActivity(intent);
    }
//handles removing the term data from the database
    public void deleteTerm(View view) {
        //checks to make sure there are no assigned courses to this term
        if (selectedTerm != null){
            List<Courses> coursesList = new ArrayList<>();
            try{
                coursesList = db.coursesDAO().getCoursesList(termId);
            }
            catch (Exception e){
                e.printStackTrace();
            }
            if(coursesList.isEmpty()){
                db.termsDAO().deleteTerm(selectedTerm);
                Intent intent = new Intent(this,ViewAllTerms.class);
                startActivity(intent);
            }
            else{
               AlertDialog alertDialog = new AlertDialog.Builder(EditTermsActivity.this).create();
               alertDialog.setTitle("Courses Error");
               alertDialog.setMessage("Please Delete all courses assigned to this term.");
               alertDialog.show();
               return;
            }
        }
    }
}