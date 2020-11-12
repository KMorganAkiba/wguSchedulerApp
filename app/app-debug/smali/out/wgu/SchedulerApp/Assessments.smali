.class public Lwgu/SchedulerApp/Assessments;
.super Ljava/lang/Object;
.source "Assessments.java"


# instance fields
.field private assessment_due_date:Ljava/util/Date;

.field private assessment_id:I

.field private assessment_name:Ljava/lang/String;

.field private assessment_status:Ljava/lang/String;

.field private assessment_type:Ljava/lang/String;

.field private course_id_fk:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssessment_due_date()Ljava/util/Date;
    .registers 2

    .line 51
    iget-object v0, p0, Lwgu/SchedulerApp/Assessments;->assessment_due_date:Ljava/util/Date;

    return-object v0
.end method

.method public getAssessment_id()I
    .registers 2

    .line 35
    iget v0, p0, Lwgu/SchedulerApp/Assessments;->assessment_id:I

    return v0
.end method

.method public getAssessment_name()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lwgu/SchedulerApp/Assessments;->assessment_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAssessment_status()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lwgu/SchedulerApp/Assessments;->assessment_status:Ljava/lang/String;

    return-object v0
.end method

.method public getAssessment_type()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lwgu/SchedulerApp/Assessments;->assessment_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_id_fk()I
    .registers 2

    .line 39
    iget v0, p0, Lwgu/SchedulerApp/Assessments;->course_id_fk:I

    return v0
.end method

.method public setAssessment_due_date(Ljava/util/Date;)V
    .registers 2
    .param p1, "assessment_due_date"    # Ljava/util/Date;

    .line 77
    iput-object p1, p0, Lwgu/SchedulerApp/Assessments;->assessment_due_date:Ljava/util/Date;

    .line 78
    return-void
.end method

.method public setAssessment_id(I)V
    .registers 2
    .param p1, "assessment_id"    # I

    .line 61
    iput p1, p0, Lwgu/SchedulerApp/Assessments;->assessment_id:I

    .line 62
    return-void
.end method

.method public setAssessment_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "assessment_name"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lwgu/SchedulerApp/Assessments;->assessment_name:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAssessment_status(Ljava/lang/String;)V
    .registers 2
    .param p1, "assessment_status"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lwgu/SchedulerApp/Assessments;->assessment_status:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAssessment_type(Ljava/lang/String;)V
    .registers 2
    .param p1, "assessment_type"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lwgu/SchedulerApp/Assessments;->assessment_type:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCourse_id_fk(I)V
    .registers 2
    .param p1, "course_id_fk"    # I

    .line 65
    iput p1, p0, Lwgu/SchedulerApp/Assessments;->course_id_fk:I

    .line 66
    return-void
.end method
