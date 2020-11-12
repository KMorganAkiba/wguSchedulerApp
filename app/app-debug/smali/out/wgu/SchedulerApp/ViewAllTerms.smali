.class public Lwgu/SchedulerApp/ViewAllTerms;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ViewAllTerms.java"


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field db:Lwgu/SchedulerApp/TermAppDatabase;

.field listView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-string v0, "ViewAllTermsLog"

    sput-object v0, Lwgu/SchedulerApp/ViewAllTerms;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwgu/SchedulerApp/ViewAllTerms;)V
    .registers 1
    .param p0, "x0"    # Lwgu/SchedulerApp/ViewAllTerms;

    .line 16
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewAllTerms;->updateData()V

    return-void
.end method

.method private updateData()V
    .registers 5

    .line 66
    iget-object v0, p0, Lwgu/SchedulerApp/ViewAllTerms;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v0}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v0

    invoke-interface {v0}, Lwgu/SchedulerApp/TermsDAO;->getTermsList()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "allTerms":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 69
    .local v1, "items":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 70
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwgu/SchedulerApp/Terms;

    invoke-virtual {v3}, Lwgu/SchedulerApp/Terms;->getTerm_name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 74
    .end local v2    # "i":I
    :cond_2c
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 75
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lwgu/SchedulerApp/ViewAllTerms;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ViewAllTerms(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lwgu/SchedulerApp/ViewAllTerms;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lwgu/SchedulerApp/ViewCoursesInTerm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lwgu/SchedulerApp/ViewAllTerms;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v1

    invoke-interface {v1}, Lwgu/SchedulerApp/TermsDAO;->getTermsList()Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "termsList":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwgu/SchedulerApp/Terms;

    invoke-virtual {v2}, Lwgu/SchedulerApp/Terms;->getTerm_id()I

    move-result v2

    .line 36
    .local v2, "term_id":I
    const-string v3, "termId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewAllTerms;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewAllTerms;->setContentView(I)V

    .line 26
    const-string v0, "Terms"

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewAllTerms;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewAllTerms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lwgu/SchedulerApp/ViewAllTerms;->listView:Landroid/widget/ListView;

    .line 28
    invoke-virtual {p0}, Lwgu/SchedulerApp/ViewAllTerms;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase;->getInstance(Landroid/content/Context;)Lwgu/SchedulerApp/TermAppDatabase;

    move-result-object v0

    iput-object v0, p0, Lwgu/SchedulerApp/ViewAllTerms;->db:Lwgu/SchedulerApp/TermAppDatabase;

    .line 31
    iget-object v0, p0, Lwgu/SchedulerApp/ViewAllTerms;->listView:Landroid/widget/ListView;

    new-instance v1, Lwgu/SchedulerApp/-$$Lambda$ViewAllTerms$Z49AelE7ZC2NDXImbEAt8VceHCo;

    invoke-direct {v1, p0}, Lwgu/SchedulerApp/-$$Lambda$ViewAllTerms$Z49AelE7ZC2NDXImbEAt8VceHCo;-><init>(Lwgu/SchedulerApp/ViewAllTerms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewAllTerms;->updateData()V

    .line 41
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/ViewAllTerms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 42
    .local v0, "addTerm":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v1, Lwgu/SchedulerApp/ViewAllTerms$1;

    invoke-direct {v1, p0}, Lwgu/SchedulerApp/ViewAllTerms$1;-><init>(Lwgu/SchedulerApp/ViewAllTerms;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 60
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 61
    invoke-direct {p0}, Lwgu/SchedulerApp/ViewAllTerms;->updateData()V

    .line 62
    return-void
.end method
