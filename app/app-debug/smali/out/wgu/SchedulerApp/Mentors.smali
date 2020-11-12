.class public Lwgu/SchedulerApp/Mentors;
.super Ljava/lang/Object;
.source "Mentors.java"


# instance fields
.field private course_id_fk:I

.field private mentor_email:Ljava/lang/String;

.field private mentor_id:I

.field private mentor_name:Ljava/lang/String;

.field private mentor_phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCourse_id_fk()I
    .registers 2

    .line 35
    iget v0, p0, Lwgu/SchedulerApp/Mentors;->course_id_fk:I

    return v0
.end method

.method public getMentor_email()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lwgu/SchedulerApp/Mentors;->mentor_email:Ljava/lang/String;

    return-object v0
.end method

.method public getMentor_id()I
    .registers 2

    .line 31
    iget v0, p0, Lwgu/SchedulerApp/Mentors;->mentor_id:I

    return v0
.end method

.method public getMentor_name()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lwgu/SchedulerApp/Mentors;->mentor_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMentor_phone()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lwgu/SchedulerApp/Mentors;->mentor_phone:Ljava/lang/String;

    return-object v0
.end method

.method public setCourse_id_fk(I)V
    .registers 2
    .param p1, "course_id_fk"    # I

    .line 57
    iput p1, p0, Lwgu/SchedulerApp/Mentors;->course_id_fk:I

    .line 58
    return-void
.end method

.method public setMentor_email(Ljava/lang/String;)V
    .registers 2
    .param p1, "mentor_email"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lwgu/SchedulerApp/Mentors;->mentor_email:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setMentor_id(I)V
    .registers 2
    .param p1, "mentor_id"    # I

    .line 53
    iput p1, p0, Lwgu/SchedulerApp/Mentors;->mentor_id:I

    .line 54
    return-void
.end method

.method public setMentor_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "mentor_name"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lwgu/SchedulerApp/Mentors;->mentor_name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setMentor_phone(Ljava/lang/String;)V
    .registers 2
    .param p1, "mentor_phone"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lwgu/SchedulerApp/Mentors;->mentor_phone:Ljava/lang/String;

    .line 66
    return-void
.end method
