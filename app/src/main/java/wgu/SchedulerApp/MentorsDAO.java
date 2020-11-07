package wgu.SchedulerApp;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

@Dao
public interface MentorsDAO {
    @Query("SELECT * FROM mentor_table WHERE course_id_fk = :courseId ORDER BY mentor_id")
    List<Mentors> getMentorsList(int courseId);

    @Query("SELECT * FROM mentor_table WHERE course_id_fk = :courseId ORDER BY mentor_id")
    Mentors getMentor(int courseId);

    @Query("SELECT * FROM mentor_table")
    List<Mentors> getAllMentors();

    @Insert
    void insertMentor(Mentors mentors);

    @Insert
    void insertAll(Mentors... mentors);

    @Update
    void updateMentor(Mentors mentors);

    @Delete
    void deleteMentor(Mentors mentors);
}
