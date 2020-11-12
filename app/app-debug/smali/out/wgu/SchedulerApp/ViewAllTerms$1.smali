.class Lwgu/SchedulerApp/ViewAllTerms$1;
.super Ljava/lang/Object;
.source "ViewAllTerms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/ViewAllTerms;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/ViewAllTerms;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/ViewAllTerms;)V
    .registers 2
    .param p1, "this$0"    # Lwgu/SchedulerApp/ViewAllTerms;

    .line 42
    iput-object p1, p0, Lwgu/SchedulerApp/ViewAllTerms$1;->this$0:Lwgu/SchedulerApp/ViewAllTerms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 46
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lwgu/SchedulerApp/ViewAllTerms$1;->this$0:Lwgu/SchedulerApp/ViewAllTerms;

    iget-object v1, v1, Lwgu/SchedulerApp/ViewAllTerms;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v1}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v1

    invoke-interface {v1}, Lwgu/SchedulerApp/TermsDAO;->getTermsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 47
    .local v1, "termIdCount":I
    new-instance v2, Lwgu/SchedulerApp/Terms;

    invoke-direct {v2}, Lwgu/SchedulerApp/Terms;-><init>()V

    .line 48
    .local v2, "addterm":Lwgu/SchedulerApp/Terms;
    const-string v3, "New Term"

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Terms;->setTerm_name(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Terms;->setTerm_start(Ljava/util/Date;)V

    .line 50
    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 51
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwgu/SchedulerApp/Terms;->setTerm_end(Ljava/util/Date;)V

    .line 52
    invoke-virtual {v2, v1}, Lwgu/SchedulerApp/Terms;->setTerm_id(I)V

    .line 53
    iget-object v3, p0, Lwgu/SchedulerApp/ViewAllTerms$1;->this$0:Lwgu/SchedulerApp/ViewAllTerms;

    iget-object v3, v3, Lwgu/SchedulerApp/ViewAllTerms;->db:Lwgu/SchedulerApp/TermAppDatabase;

    invoke-virtual {v3}, Lwgu/SchedulerApp/TermAppDatabase;->termsDAO()Lwgu/SchedulerApp/TermsDAO;

    move-result-object v3

    invoke-interface {v3, v2}, Lwgu/SchedulerApp/TermsDAO;->insertTerm(Lwgu/SchedulerApp/Terms;)V

    .line 54
    iget-object v3, p0, Lwgu/SchedulerApp/ViewAllTerms$1;->this$0:Lwgu/SchedulerApp/ViewAllTerms;

    invoke-static {v3}, Lwgu/SchedulerApp/ViewAllTerms;->access$000(Lwgu/SchedulerApp/ViewAllTerms;)V

    .line 55
    return-void
.end method
