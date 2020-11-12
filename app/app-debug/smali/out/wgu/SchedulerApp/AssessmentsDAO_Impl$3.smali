.class Lwgu/SchedulerApp/AssessmentsDAO_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "AssessmentsDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/AssessmentsDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lwgu/SchedulerApp/Assessments;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/AssessmentsDAO_Impl;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/AssessmentsDAO_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lwgu/SchedulerApp/AssessmentsDAO_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;

    .line 76
    iput-object p1, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl$3;->this$0:Lwgu/SchedulerApp/AssessmentsDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 76
    check-cast p2, Lwgu/SchedulerApp/Assessments;

    invoke-virtual {p0, p1, p2}, Lwgu/SchedulerApp/AssessmentsDAO_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Assessments;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Assessments;)V
    .registers 7
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lwgu/SchedulerApp/Assessments;

    .line 84
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_id()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 85
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getCourse_id_fk()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 86
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_type()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1d

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_24

    .line 89
    :cond_1d
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_type()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :goto_24
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2f

    .line 92
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_36

    .line 94
    :cond_2f
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :goto_36
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_due_date()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/ConverterDate;->dateTimeStamps(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    .line 98
    .local v0, "_tmp":Ljava/lang/Long;
    const/4 v1, 0x5

    if-nez v0, :cond_45

    .line 99
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4c

    .line 101
    :cond_45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 103
    :goto_4c
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_status()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_57

    .line 104
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5e

    .line 106
    :cond_57
    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_status()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :goto_5e
    const/4 v1, 0x7

    invoke-virtual {p2}, Lwgu/SchedulerApp/Assessments;->getAssessment_id()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 109
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 79
    const-string v0, "UPDATE OR ABORT `assessments_table` SET `assessment_id` = ?,`course_id_fk` = ?,`assessment_type` = ?,`assessment_name` = ?,`assessment_due_date` = ?,`assessment_status` = ? WHERE `assessment_id` = ?"

    return-object v0
.end method
