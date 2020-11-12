.class Lwgu/SchedulerApp/ViewCoursesInTerm$1;
.super Ljava/lang/Object;
.source "ViewCoursesInTerm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/ViewCoursesInTerm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/ViewCoursesInTerm;)V
    .registers 2
    .param p1, "this$0"    # Lwgu/SchedulerApp/ViewCoursesInTerm;

    .line 60
    iput-object p1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm$1;->this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm$1;->this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;

    iget-object v1, v1, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v1

    iget-object v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm$1;->this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;

    iget v2, v2, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/CoursesDAO;->getCoursesList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 65
    .local v1, "courseIdCount":I
    new-instance v3, Lwgu/SchedulerApp/Courses;

    invoke-direct {v3}, Lwgu/SchedulerApp/Courses;-><init>()V

    .line 66
    .local v3, "newCourse":Lwgu/SchedulerApp/Courses;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Course Added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_name(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_start(Ljava/util/Date;)V

    .line 68
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 69
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Lwgu/SchedulerApp/Courses;->setCourse_end(Ljava/util/Date;)V

    .line 70
    const-string v2, "Active"

    invoke-virtual {v3, v2}, Lwgu/SchedulerApp/Courses;->setCourse_status(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm$1;->this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;

    iget v2, v2, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-virtual {v3, v2}, Lwgu/SchedulerApp/Courses;->setTerm_id_fk(I)V

    .line 72
    iget-object v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm$1;->this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;

    iget-object v2, v2, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v2}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v2

    invoke-interface {v2, v3}, Lwgu/SchedulerApp/CoursesDAO;->insertCourse(Lwgu/SchedulerApp/Courses;)V

    .line 73
    iget-object v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm$1;->this$0:Lwgu/SchedulerApp/ViewCoursesInTerm;

    invoke-static {v2}, Lwgu/SchedulerApp/ViewCoursesInTerm;->access$000(Lwgu/SchedulerApp/ViewCoursesInTerm;)V

    .line 74
    return-void
.end method
