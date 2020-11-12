.class public Lwgu/SchedulerApp/CourseDetails;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CourseDetails.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "courseDetailsLog"


# instance fields
.field assessmentsListView:Landroid/widget/ListView;

.field courseEndTextView:Landroid/widget/TextView;

.field courseId:I

.field courseNameTextView:Landroid/widget/TextView;

.field courseStartTextView:Landroid/widget/TextView;

.field courseStatusTextView:Landroid/widget/TextView;

.field db:Lwgu/SchedulerApp/TermAppDatabase;

.field formatter:Ljava/text/SimpleDateFormat;

.field intent:Landroid/content/Intent;

.field selectedCourse:Lwgu/SchedulerApp/Courses;

.field selectedTerm:Lwgu/SchedulerApp/Terms;

.field termId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwgu/SchedulerApp/CourseDetails;)V
    .registers 1
    .param p0, "x0"    # Lwgu/SchedulerApp/CourseDetails;

    .line 20
    invoke-direct {p0}, Lwgu/SchedulerApp/CourseDetails;->updateAssessments()V

    return-void
.end method

.method private updateAssessments()V
    .registers 5

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "assessments":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    :try_start_5
    iget-object v1, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;

    move-result-object v1

    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/AssessmentsDAO;->getAssessmentsList(I)Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    move-object v0, v1

    goto :goto_14

    .line 109
    :catch_13
    move-exception v1

    :goto_14
    nop

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 111
    .local v1, "items":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 112
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwgu/SchedulerApp/Assessments;

    invoke-virtual {v3}, Lwgu/SchedulerApp/Assessments;->getAssessment_name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 116
    .end local v2    # "a":I
    :cond_37
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 117
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lwgu/SchedulerApp/CourseDetails;->assessmentsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method private updateCourseDetails()V
    .registers 7

    .line 89
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    if-eqz v0, :cond_3b

    .line 90
    invoke-virtual {v0}, Lwgu/SchedulerApp/Courses;->getCourse_start()Ljava/util/Date;

    move-result-object v0

    .line 91
    .local v0, "startDate":Ljava/util/Date;
    iget-object v1, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    invoke-virtual {v1}, Lwgu/SchedulerApp/Courses;->getCourse_end()Ljava/util/Date;

    move-result-object v1

    .line 92
    .local v1, "endDate":Ljava/util/Date;
    iget-object v2, p0, Lwgu/SchedulerApp/CourseDetails;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "start":Ljava/lang/String;
    iget-object v3, p0, Lwgu/SchedulerApp/CourseDetails;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "end":Ljava/lang/String;
    iget-object v4, p0, Lwgu/SchedulerApp/CourseDetails;->courseNameTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    invoke-virtual {v5}, Lwgu/SchedulerApp/Courses;->getCourse_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lwgu/SchedulerApp/CourseDetails;->courseStartTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v4, p0, Lwgu/SchedulerApp/CourseDetails;->courseEndTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, p0, Lwgu/SchedulerApp/CourseDetails;->courseStatusTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    invoke-virtual {v5}, Lwgu/SchedulerApp/Courses;->getCourse_status()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v0    # "startDate":Ljava/util/Date;
    .end local v1    # "endDate":Ljava/util/Date;
    .end local v2    # "start":Ljava/lang/String;
    .end local v3    # "end":Ljava/lang/String;
    goto :goto_42

    .line 100
    :cond_3b
    new-instance v0, Lwgu/SchedulerApp/Courses;

    invoke-direct {v0}, Lwgu/SchedulerApp/Courses;-><init>()V

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    .line 102
    :goto_42
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$CourseDetails(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lwgu/SchedulerApp/CourseDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lwgu/SchedulerApp/AssesmentsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;

    move-result-object v1

    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/AssessmentsDAO;->getAssessmentsList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwgu/SchedulerApp/Assessments;

    invoke-virtual {v1}, Lwgu/SchedulerApp/Assessments;->getAssessment_id()I

    move-result v1

    .line 56
    .local v1, "assessmentId":I
    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    const-string v3, "courseId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v2, "assessmentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public synthetic lambda$onCreate$1$CourseDetails(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->termId:I

    invoke-interface {v0, v1, v2}, Lwgu/SchedulerApp/CoursesDAO;->getCourses(II)Lwgu/SchedulerApp/Courses;

    move-result-object v0

    .line 82
    .local v0, "editCourseDetails":Lwgu/SchedulerApp/Courses;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lwgu/SchedulerApp/CourseDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lwgu/SchedulerApp/EditCoursesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    const-string v3, "courseId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Lwgu/SchedulerApp/CourseDetails;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lwgu/SchedulerApp/CourseDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase;->getInstance(Landroid/content/Context;)Lwgu/SchedulerApp/TermAppDatabase;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    .line 40
    const-string v0, "Course Info"

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lwgu/SchedulerApp/CourseDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->intent:Landroid/content/Intent;

    .line 42
    const-string v1, "termId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lwgu/SchedulerApp/CourseDetails;->termId:I

    .line 43
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->intent:Landroid/content/Intent;

    const-string v1, "courseId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    .line 44
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/CourseDetails;->termId:I

    invoke-interface {v0, v1}, Lwgu/SchedulerApp/TermsDAO;->getTerm(I)Lwgu/SchedulerApp/Terms;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->selectedTerm:Lwgu/SchedulerApp/Terms;

    .line 45
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->termId:I

    invoke-interface {v0, v1, v2}, Lwgu/SchedulerApp/CoursesDAO;->getCourses(II)Lwgu/SchedulerApp/Courses;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->formatter:Ljava/text/SimpleDateFormat;

    .line 47
    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->assessmentsListView:Landroid/widget/ListView;

    .line 48
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->courseNameTextView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->courseStartTextView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->courseEndTextView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->courseStatusTextView:Landroid/widget/TextView;

    .line 52
    invoke-direct {p0}, Lwgu/SchedulerApp/CourseDetails;->updateCourseDetails()V

    .line 53
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->assessmentsListView:Landroid/widget/ListView;

    new-instance v1, Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wFqBKntE0MUD6278VPcujWk8fKY;

    invoke-direct {v1, p0}, Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wFqBKntE0MUD6278VPcujWk8fKY;-><init>(Lwgu/SchedulerApp/CourseDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    invoke-direct {p0}, Lwgu/SchedulerApp/CourseDetails;->updateAssessments()V

    .line 62
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 63
    .local v0, "addAssessments":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v1, Lwgu/SchedulerApp/CourseDetails$1;

    invoke-direct {v1, p0}, Lwgu/SchedulerApp/CourseDetails$1;-><init>(Lwgu/SchedulerApp/CourseDetails;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0a0097

    invoke-virtual {p0, v1}, Lwgu/SchedulerApp/CourseDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 80
    .local v1, "editCourse":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v2, Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wA0QXmp5otKfdacHnpwvFOFY22o;

    invoke-direct {v2, p0}, Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wA0QXmp5otKfdacHnpwvFOFY22o;-><init>(Lwgu/SchedulerApp/CourseDetails;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 124
    iget-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/CourseDetails;->courseId:I

    iget v2, p0, Lwgu/SchedulerApp/CourseDetails;->termId:I

    invoke-interface {v0, v1, v2}, Lwgu/SchedulerApp/CoursesDAO;->getCourses(II)Lwgu/SchedulerApp/Courses;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/CourseDetails;->selectedCourse:Lwgu/SchedulerApp/Courses;

    .line 125
    invoke-direct {p0}, Lwgu/SchedulerApp/CourseDetails;->updateCourseDetails()V

    .line 126
    invoke-direct {p0}, Lwgu/SchedulerApp/CourseDetails;->updateAssessments()V

    .line 127
    return-void
.end method
