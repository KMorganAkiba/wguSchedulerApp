.class Lwgu/SchedulerApp/CoursesDAO_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "CoursesDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/CoursesDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lwgu/SchedulerApp/Courses;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/CoursesDAO_Impl;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/CoursesDAO_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lwgu/SchedulerApp/CoursesDAO_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;

    .line 91
    iput-object p1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl$3;->this$0:Lwgu/SchedulerApp/CoursesDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 91
    check-cast p2, Lwgu/SchedulerApp/Courses;

    invoke-virtual {p0, p1, p2}, Lwgu/SchedulerApp/CoursesDAO_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Courses;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Courses;)V
    .registers 8
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lwgu/SchedulerApp/Courses;

    .line 99
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_id()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 100
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getTerm_id_fk()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1d

    .line 102
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_24

    .line 104
    :cond_1d
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :goto_24
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_start()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/ConverterDate;->dateTimeStamps(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    .line 108
    .local v0, "_tmp":Ljava/lang/Long;
    const/4 v1, 0x4

    if-nez v0, :cond_33

    .line 109
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3a

    .line 111
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 114
    :goto_3a
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_end()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lwgu/SchedulerApp/ConverterDate;->dateTimeStamps(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v1

    .line 115
    .local v1, "_tmp_1":Ljava/lang/Long;
    const/4 v2, 0x5

    if-nez v1, :cond_49

    .line 116
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_50

    .line 118
    :cond_49
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 120
    :goto_50
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_status()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    if-nez v2, :cond_5b

    .line 121
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_62

    .line 123
    :cond_5b
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_status()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 125
    :goto_62
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_notes()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    if-nez v2, :cond_6d

    .line 126
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_74

    .line 128
    :cond_6d
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_notes()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 130
    :goto_74
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_alert_date()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    if-nez v2, :cond_80

    .line 131
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_87

    .line 133
    :cond_80
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_alert_date()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 135
    :goto_87
    const/16 v2, 0x9

    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_id()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 136
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 94
    const-string v0, "UPDATE OR ABORT `course_Table` SET `course_id` = ?,`term_id_fk` = ?,`course_name` = ?,`course_start` = ?,`course_end` = ?,`course_status` = ?,`course_notes` = ?,`course_alert_date` = ? WHERE `course_id` = ?"

    return-object v0
.end method
