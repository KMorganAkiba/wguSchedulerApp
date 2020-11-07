package wgu.SchedulerApp;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

@Dao
public interface TermsDAO {
    @Query("SELECT * FROM terms_table ORDER BY term_id")
    List<Terms> getTermsList();

    @Query("SELECT * FROM terms_table WHERE term_id = :termID ORDER BY term_id")
    Terms getTerm(int termID);

    @Query("SELECT * FROM terms_table")
    List<Terms> getAllTerms();

    @Insert
    void insertTerm(Terms terms);

    @Insert
    void insertAll(Terms... terms);

    @Update
    void updateTerm(Terms terms);

    @Delete
    void deleteTerm(Terms terms);

}
