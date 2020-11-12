.class public interface abstract Lwgu/SchedulerApp/AssessmentsDAO;
.super Ljava/lang/Object;
.source "AssessmentsDAO.java"


# virtual methods
.method public abstract deleteAssessment(Lwgu/SchedulerApp/Assessments;)V
.end method

.method public abstract getAllAssessments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Assessments;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssessment(I)Lwgu/SchedulerApp/Assessments;
.end method

.method public abstract getAssessmentsList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Assessments;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insertAll([Lwgu/SchedulerApp/Assessments;)V
.end method

.method public abstract insertAssessment(Lwgu/SchedulerApp/Assessments;)V
.end method

.method public abstract updateAssessment(Lwgu/SchedulerApp/Assessments;)V
.end method
