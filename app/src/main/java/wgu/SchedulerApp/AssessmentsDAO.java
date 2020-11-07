package wgu.SchedulerApp;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

@Dao
public interface AssessmentsDAO {
    @Query("SELECT * FROM assessments_table WHERE course_id_fk = :courseId ORDER BY assessment_id")
    List<Assessments> getAssessmentsList(int courseId);

    @Query("SELECT * FROM assessments_table WHERE course_id_fk = :courseId ORDER BY assessment_id")
    Assessments getAssessment(int courseId);

    @Query("SELECT * FROM assessments_table")
    List<Assessments> getAllAssessments();

    @Insert
    void insertAssessment(Assessments assessments);

    @Insert
    void insertAll(Assessments... assessments);

    @Update
    void updateAssessment(Assessments assessments);

    @Delete
    void deleteAssessment(Assessments assessments);
}
