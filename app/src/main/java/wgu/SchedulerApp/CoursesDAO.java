package wgu.SchedulerApp;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

@Dao
public interface CoursesDAO {
    @Query("SELECT * FROM course_Table WHERE term_id_fk = :termId  ORDER BY course_id")
    List<Courses> getCoursesList(int termId);

    @Query("SELECT * FROM course_Table WHERE course_id = :coursesId AND term_id_fk = :termId")
    Courses getCourses(int coursesId, int termId);

    @Query("SELECT * FROM course_Table")
    List<Courses> getAllCourses();

    @Query("INSERT INTO course_table (term_id_fk,course_name)\n" + "VALUES(:termId,\"Course Name\");")
    void addCourse(int termId);

    @Query("UPDATE course_Table SET course_notes = :courseNotes WHERE course_id = :courseId and term_id_fk = :termId")
    void updateNotes(String courseNotes,int courseId,int termId);

    @Insert
    void insertCourse(Courses courses);

    @Insert
    void insertAll(Courses... courses);

    @Update
    void updateCourse(Courses courses);

    @Delete
    void deleteCourse(Courses courses);

}
