package wgu.SchedulerApp;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.PrimaryKey;

@Entity(tableName = "mentor_table",
        foreignKeys = @ForeignKey(
                entity = Courses.class,
                parentColumns = "course_id",
                childColumns = "course_id_fk"
        )
)

public class Mentors {
    @PrimaryKey(autoGenerate = true)
    private int mentor_id;
    @ColumnInfo(name= "course_id_fk")
    private int course_id_fk;
    @ColumnInfo(name= "mentor_name")
    private String mentor_name;
    @ColumnInfo(name= "mentor_phone")
    private String mentor_phone;
    @ColumnInfo(name= "mentor_email")
    private String mentor_email;

    //getters

    public int getMentor_id() {
        return mentor_id;
    }

    public int getCourse_id_fk() {
        return course_id_fk;
    }

    public String getMentor_name() {
        return mentor_name;
    }

    public String getMentor_phone() {
        return mentor_phone;
    }

    public String getMentor_email() {
        return mentor_email;
    }

    //setters

    public void setMentor_id(int mentor_id) {
        this.mentor_id = mentor_id;
    }

    public void setCourse_id_fk(int course_id_fk) {
        this.course_id_fk = course_id_fk;
    }

    public void setMentor_name(String mentor_name) {
        this.mentor_name = mentor_name;
    }

    public void setMentor_phone(String mentor_phone) {
        this.mentor_phone = mentor_phone;
    }

    public void setMentor_email(String mentor_email) {
        this.mentor_email = mentor_email;
    }
}
