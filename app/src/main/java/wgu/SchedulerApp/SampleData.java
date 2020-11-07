package wgu.SchedulerApp;

import android.content.Context;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;

import java.util.Calendar;
import java.util.List;

public class SampleData extends AppCompatActivity {
    public static String LOG_TAG = "SampleData";
    Terms sampleTerm = new Terms();
    Courses sampleCourse = new Courses();
    Assessments sampleAssessment = new Assessments();
    Mentors sampleMentor = new Mentors();

    TermAppDatabase DB;


    public void fill(Context context){
        DB = TermAppDatabase.getInstance(context);
        try{
            insertTerms();
            insertCourses();
            insertAssessments();
            insertMentors();
        }
        catch (Exception e){
            e.printStackTrace();
            Log.d(LOG_TAG, "Load Sample Data Failed");
        }
    }

    private void insertTerms(){
        Calendar start;
        Calendar end;
        start = Calendar.getInstance();
        end = Calendar.getInstance();
        end.add(Calendar.MONTH,6);
        sampleTerm.setTerm_name("October 2020");
        sampleTerm.setTerm_start(start.getTime());
        sampleTerm.setTerm_end(end.getTime());

        DB.termsDAO().insertTerm(sampleTerm);
    }

    private void insertCourses(){
        Calendar start;
        Calendar end;
        List<Terms> termsList = DB.termsDAO().getTermsList();
        if (termsList == null) return;
        start = Calendar.getInstance();
        end = Calendar.getInstance();
        end.add(Calendar.MONTH,1);
        sampleCourse.setCourse_name("Mobile Application Development - C196");
        sampleCourse.setCourse_start(start.getTime());
        sampleCourse.setCourse_end(end.getTime());
        sampleCourse.setCourse_notes("sample data for database");
        sampleCourse.setCourse_status("In Progress");
        sampleCourse.setTerm_id_fk(termsList.get(0).getTerm_id());
        DB.coursesDAO().insertCourse(sampleCourse);
    }

    private void insertAssessments(){
        Calendar due;
        List<Courses> coursesList = DB.coursesDAO().getAllCourses();
        if (coursesList == null) return;
        due = Calendar.getInstance();
        due.add(Calendar.MONTH,1);
        sampleAssessment.setAssessment_type("Performance");
        sampleAssessment.setAssessment_name("Mobile Application Development - TWM1");
        sampleAssessment.setAssessment_due_date(due.getTime());
        sampleAssessment.setAssessment_status("In Progress");
        sampleAssessment.setCourse_id_fk(coursesList.get(0).getCourse_id());

        DB.assessmentsDAO().insertAssessment(sampleAssessment);
    }

    private void insertMentors(){
        List<Courses> coursesList = DB.coursesDAO().getAllCourses();
        if (coursesList == null) return;
        sampleMentor.setMentor_name("Carolyn");
        sampleMentor.setMentor_phone("385-428-7192");
        sampleMentor.setMentor_email("carolyn.sher@wgu.edu");
        sampleAssessment.setCourse_id_fk(coursesList.get(0).getCourse_id());

        DB.mentorsDAO().insertMentor(sampleMentor);
    }
}