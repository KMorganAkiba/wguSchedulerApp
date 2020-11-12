.class public Lwgu/SchedulerApp/Courses;
.super Ljava/lang/Object;
.source "Courses.java"


# instance fields
.field private course_alert_date:Ljava/lang/String;

.field private course_end:Ljava/util/Date;

.field private course_id:I

.field private course_name:Ljava/lang/String;

.field private course_notes:Ljava/lang/String;

.field private course_start:Ljava/util/Date;

.field private course_status:Ljava/lang/String;

.field private term_id_fk:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCourse_alert_date()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lwgu/SchedulerApp/Courses;->course_alert_date:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_end()Ljava/util/Date;
    .registers 2

    .line 55
    iget-object v0, p0, Lwgu/SchedulerApp/Courses;->course_end:Ljava/util/Date;

    return-object v0
.end method

.method public getCourse_id()I
    .registers 2

    .line 39
    iget v0, p0, Lwgu/SchedulerApp/Courses;->course_id:I

    return v0
.end method

.method public getCourse_name()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lwgu/SchedulerApp/Courses;->course_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_notes()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lwgu/SchedulerApp/Courses;->course_notes:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_start()Ljava/util/Date;
    .registers 2

    .line 51
    iget-object v0, p0, Lwgu/SchedulerApp/Courses;->course_start:Ljava/util/Date;

    return-object v0
.end method

.method public getCourse_status()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lwgu/SchedulerApp/Courses;->course_status:Ljava/lang/String;

    return-object v0
.end method

.method public getTerm_id_fk()I
    .registers 2

    .line 43
    iget v0, p0, Lwgu/SchedulerApp/Courses;->term_id_fk:I

    return v0
.end method

.method public setCourse_alert_date(Ljava/lang/String;)V
    .registers 2
    .param p1, "course_alert_date"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lwgu/SchedulerApp/Courses;->course_alert_date:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setCourse_end(Ljava/util/Date;)V
    .registers 2
    .param p1, "course_end"    # Ljava/util/Date;

    .line 90
    iput-object p1, p0, Lwgu/SchedulerApp/Courses;->course_end:Ljava/util/Date;

    .line 91
    return-void
.end method

.method public setCourse_id(I)V
    .registers 2
    .param p1, "course_id"    # I

    .line 74
    iput p1, p0, Lwgu/SchedulerApp/Courses;->course_id:I

    .line 75
    return-void
.end method

.method public setCourse_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "course_name"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lwgu/SchedulerApp/Courses;->course_name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCourse_notes(Ljava/lang/String;)V
    .registers 2
    .param p1, "course_notes"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lwgu/SchedulerApp/Courses;->course_notes:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setCourse_start(Ljava/util/Date;)V
    .registers 2
    .param p1, "course_start"    # Ljava/util/Date;

    .line 86
    iput-object p1, p0, Lwgu/SchedulerApp/Courses;->course_start:Ljava/util/Date;

    .line 87
    return-void
.end method

.method public setCourse_status(Ljava/lang/String;)V
    .registers 2
    .param p1, "course_status"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lwgu/SchedulerApp/Courses;->course_status:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTerm_id_fk(I)V
    .registers 2
    .param p1, "term_id_fk"    # I

    .line 78
    iput p1, p0, Lwgu/SchedulerApp/Courses;->term_id_fk:I

    .line 79
    return-void
.end method
