package wgu.SchedulerApp;

import androidx.room.TypeConverter;

import java.util.Date;

public class ConverterDate {
    @TypeConverter
    public static Date fromTimeStamps(Long value)  {return value == null ? null : new Date(value);}
    @TypeConverter
    public static Long dateTimeStamps(Date date) {return date == null ? null : date.getTime();}
}
