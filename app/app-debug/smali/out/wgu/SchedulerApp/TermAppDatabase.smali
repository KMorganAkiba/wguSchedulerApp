.class public abstract Lwgu/SchedulerApp/TermAppDatabase;
.super Landroidx/room/RoomDatabase;
.source "TermAppDatabase.java"


# static fields
.field private static final database_name:Ljava/lang/String; = "scheduler_database.db"

.field private static instance:Lwgu/SchedulerApp/TermAppDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lwgu/SchedulerApp/TermAppDatabase;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lwgu/SchedulerApp/TermAppDatabase;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lwgu/SchedulerApp/TermAppDatabase;->instance:Lwgu/SchedulerApp/TermAppDatabase;

    if-nez v1, :cond_1d

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "scheduler_database.db"

    invoke-static {v1, v0, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lwgu/SchedulerApp/TermAppDatabase;

    sput-object v1, Lwgu/SchedulerApp/TermAppDatabase;->instance:Lwgu/SchedulerApp/TermAppDatabase;

    .line 22
    :cond_1d
    sget-object v1, Lwgu/SchedulerApp/TermAppDatabase;->instance:Lwgu/SchedulerApp/TermAppDatabase;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object v1

    .line 17
    .end local p0    # "context":Landroid/content/Context;
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;
.end method

.method public abstract coursesDAO()Lwgu/SchedulerApp/CoursesDAO;
.end method

.method public abstract mentorsDAO()Lwgu/SchedulerApp/MentorsDAO;
.end method

.method public abstract termsDAO()Lwgu/SchedulerApp/TermsDAO;
.end method
