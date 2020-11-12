.class public interface abstract Lwgu/SchedulerApp/MentorsDAO;
.super Ljava/lang/Object;
.source "MentorsDAO.java"


# virtual methods
.method public abstract deleteMentor(Lwgu/SchedulerApp/Mentors;)V
.end method

.method public abstract getAllMentors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMentor(I)Lwgu/SchedulerApp/Mentors;
.end method

.method public abstract getMentorsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insertAll([Lwgu/SchedulerApp/Mentors;)V
.end method

.method public abstract insertMentor(Lwgu/SchedulerApp/Mentors;)V
.end method

.method public abstract updateMentor(Lwgu/SchedulerApp/Mentors;)V
.end method
