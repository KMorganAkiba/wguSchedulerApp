.class public Lwgu/SchedulerApp/SampleData;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SampleData.java"


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field DB:Lwgu/SchedulerApp/TermAppDatabase;

.field sampleAssessment:Lwgu/SchedulerApp/Assessments;

.field sampleCourse:Lwgu/SchedulerApp/Courses;

.field sampleMentor:Lwgu/SchedulerApp/Mentors;

.field sampleTerm:Lwgu/SchedulerApp/Terms;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "SampleData"

    sput-object v0, Lwgu/SchedulerApp/SampleData;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 13
    new-instance v0, Lwgu/SchedulerApp/Terms;

    invoke-direct {v0}, Lwgu/SchedulerApp/Terms;-><init>()V

    iput-object v0, p0, Lwgu/SchedulerApp/SampleData;->sampleTerm:Lwgu/SchedulerApp/Terms;

    .line 14
    new-instance v0, Lwgu/SchedulerApp/Courses;

    invoke-direct {v0}, Lwgu/SchedulerApp/Courses;-><init>()V

    iput-object v0, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    .line 15
    new-instance v0, Lwgu/SchedulerApp/Assessments;

    invoke-direct {v0}, Lwgu/SchedulerApp/Assessments;-><init>()V

    iput-object v0, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    .line 16
    new-instance v0, Lwgu/SchedulerApp/Mentors;

    invoke-direct {v0}, Lwgu/SchedulerApp/Mentors;-><init>()V

    iput-object v0, p0, Lwgu/SchedulerApp/SampleData;->sampleMentor:Lwgu/SchedulerApp/Mentors;

    return-void
.end method

.method private insertAssessments()V
    .registers 5

    .line 67
    iget-object v0, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v0

    invoke-interface {v0}, Lwgu/SchedulerApp/CoursesDAO;->getAllCourses()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "coursesList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    if-nez v0, :cond_d

    return-void

    .line 69
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 70
    .local v1, "due":Ljava/util/Calendar;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 71
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    const-string v3, "Performance"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_type(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    const-string v3, "Mobile Application Development - TWM1"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_name(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_due_date(Ljava/util/Date;)V

    .line 74
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    const-string v3, "In Progress"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setAssessment_status(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v3}, Lwgu/SchedulerApp/Courses;->getCourse_id()I

    move-result v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Assessments;->setCourse_id_fk(I)V

    .line 77
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v2}, Lwgu/SchedulerApp/TermAppDatabase;->assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;

    move-result-object v2

    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    invoke-interface {v2, v3}, Lwgu/SchedulerApp/AssessmentsDAO;->insertAssessment(Lwgu/SchedulerApp/Assessments;)V

    .line 78
    return-void
.end method

.method private insertCourses()V
    .registers 6

    .line 51
    iget-object v0, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v0

    invoke-interface {v0}, Lwgu/SchedulerApp/TermsDAO;->getTermsList()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "termsList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    if-nez v0, :cond_d

    return-void

    .line 53
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 54
    .local v1, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 55
    .local v2, "end":Ljava/util/Calendar;
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 56
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    const-string v4, "Mobile Application Development - C196"

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_name(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_start(Ljava/util/Date;)V

    .line 58
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_end(Ljava/util/Date;)V

    .line 59
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    const-string v4, "sample data for database"

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_notes(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    const-string v4, "In Progress"

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setCourse_status(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwgu/SchedulerApp/Terms;

    invoke-virtual {v4}, Lwgu/SchedulerApp/Terms;->getTerm_id()I

    move-result v4

    invoke-virtual {v3, v4}, Lwgu/SchedulerApp/Courses;->setTerm_id_fk(I)V

    .line 62
    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v3}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v3

    iget-object v4, p0, Lwgu/SchedulerApp/SampleData;->sampleCourse:Lwgu/SchedulerApp/Courses;

    invoke-interface {v3, v4}, Lwgu/SchedulerApp/CoursesDAO;->insertCourse(Lwgu/SchedulerApp/Courses;)V

    .line 63
    return-void
.end method

.method private insertMentors()V
    .registers 4

    .line 81
    iget-object v0, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v0

    invoke-interface {v0}, Lwgu/SchedulerApp/CoursesDAO;->getAllCourses()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "coursesList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    if-nez v0, :cond_d

    return-void

    .line 83
    :cond_d
    iget-object v1, p0, Lwgu/SchedulerApp/SampleData;->sampleMentor:Lwgu/SchedulerApp/Mentors;

    const-string v2, "Carolyn"

    invoke-virtual {v1, v2}, Lwgu/SchedulerApp/Mentors;->setMentor_name(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lwgu/SchedulerApp/SampleData;->sampleMentor:Lwgu/SchedulerApp/Mentors;

    const-string v2, "385-428-7192"

    invoke-virtual {v1, v2}, Lwgu/SchedulerApp/Mentors;->setMentor_phone(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lwgu/SchedulerApp/SampleData;->sampleMentor:Lwgu/SchedulerApp/Mentors;

    const-string v2, "carolyn.sher@wgu.edu"

    invoke-virtual {v1, v2}, Lwgu/SchedulerApp/Mentors;->setMentor_email(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lwgu/SchedulerApp/SampleData;->sampleAssessment:Lwgu/SchedulerApp/Assessments;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v2}, Lwgu/SchedulerApp/Courses;->getCourse_id()I

    move-result v2

    invoke-virtual {v1, v2}, Lwgu/SchedulerApp/Assessments;->setCourse_id_fk(I)V

    .line 88
    iget-object v1, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->mentorsDAO()Lwgu/SchedulerApp/MentorsDAO;

    move-result-object v1

    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleMentor:Lwgu/SchedulerApp/Mentors;

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/MentorsDAO;->insertMentor(Lwgu/SchedulerApp/Mentors;)V

    .line 89
    return-void
.end method

.method private insertTerms()V
    .registers 5

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 39
    .local v0, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 40
    .local v1, "end":Ljava/util/Calendar;
    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 41
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleTerm:Lwgu/SchedulerApp/Terms;

    const-string v3, "October 2020"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Terms;->setTerm_name(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleTerm:Lwgu/SchedulerApp/Terms;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Terms;->setTerm_start(Ljava/util/Date;)V

    .line 43
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->sampleTerm:Lwgu/SchedulerApp/Terms;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Terms;->setTerm_end(Ljava/util/Date;)V

    .line 45
    iget-object v2, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v2}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v2

    iget-object v3, p0, Lwgu/SchedulerApp/SampleData;->sampleTerm:Lwgu/SchedulerApp/Terms;

    invoke-interface {v2, v3}, Lwgu/SchedulerApp/TermsDAO;->insertTerm(Lwgu/SchedulerApp/Terms;)V

    .line 46
    return-void
.end method


# virtual methods
.method public fill(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-static {p1}, Lwgu/SchedulerApp/TermAppDatabase;->getInstance(Landroid/content/Context;)Lwgu/SchedulerApp/TermAppDatabase;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/SampleData;->DB:Lwgu/SchedulerApp/TermAppDatabase;

    .line 24
    :try_start_6
    invoke-direct {p0}, Lwgu/SchedulerApp/SampleData;->insertTerms()V

    .line 25
    invoke-direct {p0}, Lwgu/SchedulerApp/SampleData;->insertCourses()V

    .line 26
    invoke-direct {p0}, Lwgu/SchedulerApp/SampleData;->insertAssessments()V

    .line 27
    invoke-direct {p0}, Lwgu/SchedulerApp/SampleData;->insertMentors()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    .line 32
    goto :goto_1e

    .line 29
    :catch_13
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    sget-object v1, Lwgu/SchedulerApp/SampleData;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Load Sample Data Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method
