.class public Lwgu/SchedulerApp/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field assessmentsRemainingTextView:Landroid/widget/TextView;

.field completedCoursesTextView:Landroid/widget/TextView;

.field coursesRemainingTextView:Landroid/widget/TextView;

.field db:Lwgu/SchedulerApp/TermAppDatabase;

.field inProgressCoursesTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private updateProgressData()V
    .registers 13

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "totalCourses":I
    const/4 v1, 0x0

    .line 53
    .local v1, "completedCourses":I
    const/4 v2, 0x0

    .line 55
    .local v2, "inProgressCourses":I
    const/4 v3, 0x0

    .line 56
    .local v3, "totalAssessments":I
    const/4 v4, 0x0

    .line 57
    .local v4, "assessmentsRemaining":I
    const/4 v5, 0x0

    .line 60
    .local v5, "assessmentsCompleted":I
    :try_start_6
    iget-object v6, p0, Lwgu/SchedulerApp/MainActivity;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v6}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v6

    invoke-interface {v6}, Lwgu/SchedulerApp/TermsDAO;->getAllTerms()Ljava/util/List;

    move-result-object v6

    .line 61
    .local v6, "termsList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    iget-object v7, p0, Lwgu/SchedulerApp/MainActivity;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v7}, Lwgu/SchedulerApp/TermAppDatabase;->coursesDAO()Lwgu/SchedulerApp/CoursesDAO;

    move-result-object v7

    invoke-interface {v7}, Lwgu/SchedulerApp/CoursesDAO;->getAllCourses()Ljava/util/List;

    move-result-object v7

    .line 62
    .local v7, "coursesList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    iget-object v8, p0, Lwgu/SchedulerApp/MainActivity;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v8}, Lwgu/SchedulerApp/TermAppDatabase;->assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;

    move-result-object v8

    invoke-interface {v8}, Lwgu/SchedulerApp/AssessmentsDAO;->getAllAssessments()Ljava/util/List;

    move-result-object v8
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_98

    .line 65
    .local v8, "assessmentsList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_25
    :try_start_25
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6f

    .line 66
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v10}, Lwgu/SchedulerApp/Courses;->getCourse_status()Ljava/lang/String;

    move-result-object v10

    const-string v11, "In Progress"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3f

    add-int/lit8 v2, v2, 0x1

    .line 67
    :cond_3f
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v10}, Lwgu/SchedulerApp/Courses;->getCourse_status()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Pending"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_53

    add-int/lit8 v2, v2, 0x1

    .line 68
    :cond_53
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwgu/SchedulerApp/Courses;

    invoke-virtual {v10}, Lwgu/SchedulerApp/Courses;->getCourse_status()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Completed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_67

    add-int/lit8 v1, v1, 0x1

    .line 69
    :cond_67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6b} :catch_70

    move v0, v10

    .line 65
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 74
    .end local v9    # "i":I
    :cond_6f
    goto :goto_74

    .line 72
    :catch_70
    move-exception v9

    .line 73
    .local v9, "e":Ljava/lang/Exception;
    :try_start_71
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_74
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_75
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_97

    .line 76
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwgu/SchedulerApp/Assessments;

    invoke-virtual {v10}, Lwgu/SchedulerApp/Assessments;->getAssessment_status()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Passed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8f

    add-int/lit8 v5, v5, 0x1

    .line 77
    :cond_8f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_93} :catch_98

    move v3, v10

    .line 75
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    .line 81
    .end local v6    # "termsList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    .end local v7    # "coursesList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    .end local v8    # "assessmentsList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    .end local v9    # "i":I
    :cond_97
    goto :goto_9c

    .line 79
    :catch_98
    move-exception v6

    .line 80
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_9c
    sub-int v6, v0, v1

    .line 83
    .local v6, "coursesRemaining":I
    sub-int v4, v3, v5

    .line 84
    iget-object v7, p0, Lwgu/SchedulerApp/MainActivity;->completedCoursesTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v7, p0, Lwgu/SchedulerApp/MainActivity;->inProgressCoursesTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v7, p0, Lwgu/SchedulerApp/MainActivity;->coursesRemainingTextView:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v7, p0, Lwgu/SchedulerApp/MainActivity;->assessmentsRemainingTextView:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method


# virtual methods
.method public emptyDatabase(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 45
    iget-object v0, p0, Lwgu/SchedulerApp/MainActivity;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->clearAllTables()V

    .line 46
    invoke-direct {p0}, Lwgu/SchedulerApp/MainActivity;->updateProgressData()V

    .line 47
    return-void
.end method

.method public fillDatabase(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 39
    new-instance v0, Lwgu/SchedulerApp/SampleData;

    invoke-direct {v0}, Lwgu/SchedulerApp/SampleData;-><init>()V

    .line 40
    .local v0, "sampleData":Lwgu/SchedulerApp/SampleData;
    invoke-virtual {p0}, Lwgu/SchedulerApp/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwgu/SchedulerApp/SampleData;->fill(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lwgu/SchedulerApp/MainActivity;->updateProgressData()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/MainActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lwgu/SchedulerApp/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase;->getInstance(Landroid/content/Context;)Lwgu/SchedulerApp/TermAppDatabase;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/MainActivity;->db:Lwgu/SchedulerApp/TermAppDatabase;

    .line 25
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/MainActivity;->completedCoursesTextView:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/MainActivity;->inProgressCoursesTextView:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/MainActivity;->coursesRemainingTextView:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwgu/SchedulerApp/MainActivity;->assessmentsRemainingTextView:Landroid/widget/TextView;

    .line 29
    invoke-direct {p0}, Lwgu/SchedulerApp/MainActivity;->updateProgressData()V

    .line 30
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 92
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 93
    invoke-direct {p0}, Lwgu/SchedulerApp/MainActivity;->updateProgressData()V

    .line 94
    return-void
.end method

.method public viewAllTerm(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lwgu/SchedulerApp/ViewAllTerms;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
