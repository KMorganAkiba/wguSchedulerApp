.class Lwgu/SchedulerApp/CourseDetails$1;
.super Ljava/lang/Object;
.source "CourseDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/CourseDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/CourseDetails;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/CourseDetails;)V
    .registers 2
    .param p1, "this$0"    # Lwgu/SchedulerApp/CourseDetails;

    .line 63
    iput-object p1, p0, Lwgu/SchedulerApp/CourseDetails$1;->this$0:Lwgu/SchedulerApp/CourseDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lwgu/SchedulerApp/CourseDetails$1;->this$0:Lwgu/SchedulerApp/CourseDetails;

    iget-object v1, v1, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;

    move-result-object v1

    iget-object v2, p0, Lwgu/SchedulerApp/CourseDetails$1;->this$0:Lwgu/SchedulerApp/CourseDetails;

    iget v2, v2, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/AssessmentsDAO;->getAssessmentsList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 68
    .local v1, "assessmentIdCount":I
    new-instance v2, Lwgu/SchedulerApp/Assessments;

    invoke-direct {v2}, Lwgu/SchedulerApp/Assessments;-><init>()V

    .line 69
    .local v2, "newAssessment":Lwgu/SchedulerApp/Assessments;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assessment Added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_name(Ljava/lang/String;)V

    .line 70
    const-string v3, "Performance Assessment"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_type(Ljava/lang/String;)V

    .line 71
    const-string v3, "In Progress"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_status(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_due_date(Ljava/util/Date;)V

    .line 73
    iget-object v3, p0, Lwgu/SchedulerApp/CourseDetails$1;->this$0:Lwgu/SchedulerApp/CourseDetails;

    iget v3, v3, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setCourse_id_fk(I)V

    .line 74
    iget-object v3, p0, Lwgu/SchedulerApp/CourseDetails$1;->this$0:Lwgu/SchedulerApp/CourseDetails;

    iget-object v3, v3, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v3}, Lwgu/SchedulerApp/TermAppDatabase;->assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;

    move-result-object v3

    invoke-interface {v3, v2}, Lwgu/SchedulerApp/AssessmentsDAO;->insertAssessment(Lwgu/SchedulerApp/Assessments;)V

    .line 75
    iget-object v3, p0, Lwgu/SchedulerApp/CourseDetails$1;->this$0:Lwgu/SchedulerApp/CourseDetails;

    invoke-static {v3}, Lwgu/SchedulerApp/CourseDetails;->access$000(Lwgu/SchedulerApp/CourseDetails;)V

    .line 76
    return-void
.end method
