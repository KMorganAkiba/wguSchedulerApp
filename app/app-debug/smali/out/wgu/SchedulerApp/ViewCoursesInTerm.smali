.class public Lwgu/SchedulerApp/ViewCoursesInTerm;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ViewCoursesInTerm.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "viewCoursesInTermLog"


# instance fields
.field coursesListView:Landroid/widget/ListView;

.field db:Lwgu/SchedulerApp/TermAppDatabase;

.field formatter:Ljava/text/SimpleDateFormat;

.field intent:Landroid/content/Intent;

.field selectedTerm:Lwgu/SchedulerApp/Terms;

.field termId:I

.field termNameTextView:Landroid/widget/TextView;

.field termsEndTextView:Landroid/widget/TextView;

.field termsStartTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwgu/SchedulerApp/ViewCoursesInTerm;)V
    .registers 1
    .param p0, "x0"    # Lwgu/SchedulerApp/ViewCoursesInTerm;

    .line 20
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->updateCourses()V

    return-void
.end method

.method private updateCourses()V
    .registers 5

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "courses":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    :try_start_5
    iget-object v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v1

    iget v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/CoursesDAO;->getCoursesList(I)Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    move-object v0, v1

    .line 109
    goto :goto_14

    .line 108
    :catch_13
    move-exception v1

    .line 110
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 111
    .local v1, "items":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v3}, Lwgu/SchedulerApp/Courses;->getCourse_name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 116
    .end local v2    # "i":I
    :cond_36
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 117
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->coursesListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method private updateDetails()V
    .registers 7

    .line 88
    iget-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->selectedTerm:Lwgu/SchedulerApp/Terms;

    if-eqz v0, :cond_30

    .line 89
    invoke-virtual {v0}, Lwgu/SchedulerApp/Terms;->getTerm_start()Ljava/util/Date;

    move-result-object v0

    .line 90
    .local v0, "startDate":Ljava/util/Date;
    iget-object v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->selectedTerm:Lwgu/SchedulerApp/Terms;

    invoke-virtual {v1}, Lwgu/SchedulerApp/Terms;->getTerm_end()Ljava/util/Date;

    move-result-object v1

    .line 91
    .local v1, "endDate":Ljava/util/Date;
    iget-object v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "start":Ljava/lang/String;
    iget-object v3, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "end":Ljava/lang/String;
    iget-object v4, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termNameTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->selectedTerm:Lwgu/SchedulerApp/Terms;

    invoke-virtual {v5}, Lwgu/SchedulerApp/Terms;->getTerm_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termsStartTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termsEndTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0    # "startDate":Ljava/util/Date;
    .end local v1    # "endDate":Ljava/util/Date;
    .end local v2    # "start":Ljava/lang/String;
    .end local v3    # "end":Ljava/lang/String;
    goto :goto_37

    .line 98
    :cond_30
    new-instance v0, Lwgu/SchedulerApp/Terms;

    invoke-direct {v0}, Lwgu/SchedulerApp/Terms;-><init>()V

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->selectedTerm:Lwgu/SchedulerApp/Terms;

    .line 100
    :goto_37
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ViewCoursesInTerm(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lwgu/SchedulerApp/CourseDetails;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v1

    iget v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-interface {v1, v2}, Lwgu/SchedulerApp/CoursesDAO;->getCoursesList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v1}, Lwgu/SchedulerApp/Courses;->getCourse_id()I

    move-result v1

    .line 52
    .local v1, "courseId":I
    iget v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    const-string v3, "termId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v2, "courseId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public synthetic lambda$onCreate$1$ViewCoursesInTerm(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-interface {v0, v1}, Lwgu/SchedulerApp/TermsDAO;->getTerm(I)Lwgu/SchedulerApp/Terms;

    move-result-object v0

    .line 81
    .local v0, "editTermDetails":Lwgu/SchedulerApp/Terms;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lwgu/SchedulerApp/EditTermsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    const-string v3, "termID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v1}, Lwgu/SchedulerApp/ViewCoursesInTerm;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase;->getInstance(Landroid/content/Context;)Lwgu/SchedulerApp/TermAppDatabase;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    .line 37
    invoke-virtual {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->intent:Landroid/content/Intent;

    .line 38
    const-string v0, "Terms Details"

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->intent:Landroid/content/Intent;

    const-string v1, "termId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    .line 40
    iget-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-interface {v0, v1}, Lwgu/SchedulerApp/TermsDAO;->getTerm(I)Lwgu/SchedulerApp/Terms;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->selectedTerm:Lwgu/SchedulerApp/Terms;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->formatter:Ljava/text/SimpleDateFormat;

    .line 43
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->coursesListView:Landroid/widget/ListView;

    .line 44
    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termNameTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termsStartTextView:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0139

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termsEndTextView:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->updateDetails()V

    .line 49
    iget-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->coursesListView:Landroid/widget/ListView;

    new-instance v1, Lwgu/SchedulerApp/-$$Lambda$ViewCoursesInTerm$UNDpquMCI1bX0XiZILZys49lZ58;

    invoke-direct {v1, p0}, Lwgu/SchedulerApp/-$$Lambda$ViewCoursesInTerm$UNDpquMCI1bX0XiZILZys49lZ58;-><init>(Lwgu/SchedulerApp/ViewCoursesInTerm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->updateCourses()V

    .line 59
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 60
    .local v0, "addCourses":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v1, Lwgu/SchedulerApp/ViewCoursesInTerm$1;

    invoke-direct {v1, p0}, Lwgu/SchedulerApp/ViewCoursesInTerm$1;-><init>(Lwgu/SchedulerApp/ViewCoursesInTerm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0a0099

    invoke-virtual {p0, v1}, Lwgu/SchedulerApp/ViewCoursesInTerm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 79
    .local v1, "editTerm":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v2, Lwgu/SchedulerApp/-$$Lambda$ViewCoursesInTerm$z_cQTexVHuIulHXy9TGPvtUPTOw;

    invoke-direct {v2, p0}, Lwgu/SchedulerApp/-$$Lambda$ViewCoursesInTerm$z_cQTexVHuIulHXy9TGPvtUPTOw;-><init>(Lwgu/SchedulerApp/ViewCoursesInTerm;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 124
    iget-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v0

    iget v1, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->termId:I

    invoke-interface {v0, v1}, Lwgu/SchedulerApp/TermsDAO;->getTerm(I)Lwgu/SchedulerApp/Terms;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/ViewCoursesInTerm;->selectedTerm:Lwgu/SchedulerApp/Terms;

    .line 125
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->updateDetails()V

    .line 126
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewCoursesInTerm;->updateCourses()V

    .line 127
    return-void
.end method
