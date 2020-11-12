.class Lwgu/SchedulerApp/MentorsDAO_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "MentorsDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/MentorsDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lwgu/SchedulerApp/Mentors;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/MentorsDAO_Impl;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/MentorsDAO_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lwgu/SchedulerApp/MentorsDAO_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;

    .line 67
    iput-object p1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl$3;->this$0:Lwgu/SchedulerApp/MentorsDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 67
    check-cast p2, Lwgu/SchedulerApp/Mentors;

    invoke-virtual {p0, p1, p2}, Lwgu/SchedulerApp/MentorsDAO_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Mentors;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Mentors;)V
    .registers 6
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lwgu/SchedulerApp/Mentors;

    .line 75
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_id()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getCourse_id_fk()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1d

    .line 78
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_24

    .line 80
    :cond_1d
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_24
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_phone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2f

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_36

    .line 85
    :cond_2f
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_phone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :goto_36
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_email()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_41

    .line 88
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_48

    .line 90
    :cond_41
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_email()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :goto_48
    const/4 v0, 0x6

    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_id()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 93
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "UPDATE OR ABORT `mentor_table` SET `mentor_id` = ?,`course_id_fk` = ?,`mentor_name` = ?,`mentor_phone` = ?,`mentor_email` = ? WHERE `mentor_id` = ?"

    return-object v0
.end method
