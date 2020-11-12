package wgu.SchedulerApp;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import java.util.List;


public class MainActivity extends AppCompatActivity {
    TermAppDatabase db;
    TextView completedCoursesTextView;
    TextView inProgressCoursesTextView;
    TextView coursesRemainingTextView;
    TextView assessmentsRemainingTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
         db = TermAppDatabase.getInstance(getApplicationContext());
         completedCoursesTextView = findViewById(R.id.completedCoursesTxtField);
         inProgressCoursesTextView = findViewById(R.id.inprogressTxtField);
         coursesRemainingTextView = findViewById(R.id.coursesRemaingingTextField);
         assessmentsRemainingTextView = findViewById(R.id.assassmentsRemainingTxtField);
         updateProgressData();
    }


    public void viewAllTerm(View view){
        Intent intent = new Intent(this,ViewAllTerms.class);
        startActivity(intent);
    }
//loads sample data into the DB
    public void fillDatabase(View view){
        SampleData sampleData = new SampleData();
        sampleData.fill(getApplicationContext());
        updateProgressData();
    }
//wipes all data from the database
    public void emptyDatabase(View view) {
        db.clearAllTables();
        updateProgressData();
    }
//handles the progress aspect of the main page
    private void updateProgressData(){

        int totalCourses = 0;
        int completedCourses = 0;
        int inProgressCourses = 0;
        int coursesRemaining;
        int totalAssessments = 0;
        int assessmentsRemaining = 0;
        int assessmentsCompleted = 0;

        try{
            List<Terms> termsList = db.termsDAO().getAllTerms();
            List<Courses> coursesList = db.coursesDAO().getAllCourses();
            List<Assessments> assessmentsList = db.assessmentsDAO().getAllAssessments();

            try{
                for(int i = 0; i < coursesList.size();i++ ){
                    if(coursesList.get(i).getCourse_status().contains("In Progress")) inProgressCourses++;
                    if(coursesList.get(i).getCourse_status().contains("Pending")) inProgressCourses++;
                    if(coursesList.get(i).getCourse_status().contains("Completed")) completedCourses++;
                    if(coursesList.get(i).getCourse_status().contains("in progress")) inProgressCourses++;
                    if(coursesList.get(i).getCourse_status().contains("pending")) inProgressCourses++;
                    if(coursesList.get(i).getCourse_status().contains("completed")) completedCourses++;
                    totalCourses = coursesList.size();

                }
            } catch (Exception e){
                e.printStackTrace();
            }
            for (int i = 0; i < assessmentsList.size();i++){
                if(assessmentsList.get(i).getAssessment_status().contains("Completed")) assessmentsCompleted++;
                if(assessmentsList.get(i).getAssessment_status().contains("completed")) assessmentsCompleted++;
                totalAssessments = assessmentsList.size();
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        coursesRemaining = totalCourses - completedCourses;
        assessmentsRemaining = totalAssessments - assessmentsCompleted;
        completedCoursesTextView.setText(String.valueOf(completedCourses));
        inProgressCoursesTextView.setText(String.valueOf(inProgressCourses));
        coursesRemainingTextView.setText(String.valueOf(coursesRemaining));
        assessmentsRemainingTextView.setText(String.valueOf(assessmentsRemaining));
    }

    @Override
    protected void onResume(){
        super.onResume();
        updateProgressData();
    }
}