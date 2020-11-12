.class public interface abstract Lwgu/SchedulerApp/CoursesDAO;
.super Ljava/lang/Object;
.source "CoursesDAO.java"


# virtual methods
.method public abstract addCourse(I)V
.end method

.method public abstract deleteCourse(Lwgu/SchedulerApp/Courses;)V
.end method

.method public abstract getAllCourses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCourses(II)Lwgu/SchedulerApp/Courses;
.end method

.method public abstract getCoursesList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insertAll([Lwgu/SchedulerApp/Courses;)V
.end method

.method public abstract insertCourse(Lwgu/SchedulerApp/Courses;)V
.end method

.method public abstract updateCourse(Lwgu/SchedulerApp/Courses;)V
.end method
