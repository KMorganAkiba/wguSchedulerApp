.class public interface abstract Lwgu/SchedulerApp/TermsDAO;
.super Ljava/lang/Object;
.source "TermsDAO.java"


# virtual methods
.method public abstract deleteTerm(Lwgu/SchedulerApp/Terms;)V
.end method

.method public abstract getAllTerms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTerm(I)Lwgu/SchedulerApp/Terms;
.end method

.method public abstract getTermsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insertAll([Lwgu/SchedulerApp/Terms;)V
.end method

.method public abstract insertTerm(Lwgu/SchedulerApp/Terms;)V
.end method

.method public abstract updateTerm(Lwgu/SchedulerApp/Terms;)V
.end method
