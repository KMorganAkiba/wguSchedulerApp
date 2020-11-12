.class Lwgu/SchedulerApp/MentorsDAO_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 29
    iput-object p1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl$1;->this$0:Lwgu/SchedulerApp/MentorsDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 29
    check-cast p2, Lwgu/SchedulerApp/Mentors;

    invoke-virtual {p0, p1, p2}, Lwgu/SchedulerApp/MentorsDAO_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Mentors;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Mentors;)V
    .registers 6
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lwgu/SchedulerApp/Mentors;

    .line 37
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_id()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 38
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getCourse_id_fk()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 39
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1d

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_24

    .line 42
    :cond_1d
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 44
    :goto_24
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_phone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2f

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_36

    .line 47
    :cond_2f
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_phone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :goto_36
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_email()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_41

    .line 50
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_48

    .line 52
    :cond_41
    invoke-virtual {p2}, Lwgu/SchedulerApp/Mentors;->getMentor_email()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 54
    :goto_48
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 32
    const-string v0, "INSERT OR ABORT INTO `mentor_table` (`mentor_id`,`course_id_fk`,`mentor_name`,`mentor_phone`,`mentor_email`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
