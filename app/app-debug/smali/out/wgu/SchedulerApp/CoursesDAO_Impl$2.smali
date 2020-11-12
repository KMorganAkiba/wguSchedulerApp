.class Lwgu/SchedulerApp/CoursesDAO_Impl$2;
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

    .line 80
    iput-object p1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl$2;->this$0:Lwgu/SchedulerApp/CoursesDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 80
    check-cast p2, Lwgu/SchedulerApp/Courses;

    invoke-virtual {p0, p1, p2}, Lwgu/SchedulerApp/CoursesDAO_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Courses;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Courses;)V
    .registers 6
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lwgu/SchedulerApp/Courses;

    .line 88
    invoke-virtual {p2}, Lwgu/SchedulerApp/Courses;->getCourse_id()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 89
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 83
    const-string v0, "DELETE FROM `course_Table` WHERE `course_id` = ?"

    return-object v0
.end method
