.class Lwgu/SchedulerApp/CoursesDAO_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "CoursesDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/CoursesDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/CoursesDAO_Impl;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/CoursesDAO_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lwgu/SchedulerApp/CoursesDAO_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;

    .line 138
    iput-object p1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl$4;->this$0:Lwgu/SchedulerApp/CoursesDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .registers 3

    .line 141
    const-string v0, "INSERT INTO course_table (term_id_fk,course_name)\nVALUES(?,\"Course Name\");"

    .line 143
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "INSERT INTO course_table (term_id_fk,course_name)\nVALUES(?,\"Course Name\");"

    return-object v1
.end method
