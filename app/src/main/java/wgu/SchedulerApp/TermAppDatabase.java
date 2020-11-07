package wgu.SchedulerApp;

import android.content.Context;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;

@Database(entities={Terms.class, Courses.class, Mentors.class, Assessments.class},exportSchema = false, version = 1)
@TypeConverters({ConverterDate.class})
public abstract class TermAppDatabase  extends RoomDatabase {

    private static final String database_name = "scheduler_database.db";
    private static TermAppDatabase instance;

    public static synchronized TermAppDatabase getInstance(Context context){
        if(instance==null){
            instance = Room.databaseBuilder(context.getApplicationContext(),TermAppDatabase.class, database_name).allowMainThreadQueries().build();

        }
        return instance;
    }

    public abstract TermsDAO termsDAO();
    public abstract CoursesDAO coursesDAO();
    public abstract MentorsDAO mentorsDAO();
    public abstract AssessmentsDAO assessmentsDAO();



}
