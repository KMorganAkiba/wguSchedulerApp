.class public Lwgu/SchedulerApp/Terms;
.super Ljava/lang/Object;
.source "Terms.java"


# instance fields
.field private term_end:Ljava/util/Date;

.field private term_id:I

.field private term_name:Ljava/lang/String;

.field private term_start:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerm_end()Ljava/util/Date;
    .registers 2

    .line 36
    iget-object v0, p0, Lwgu/SchedulerApp/Terms;->term_end:Ljava/util/Date;

    return-object v0
.end method

.method public getTerm_id()I
    .registers 2

    .line 24
    iget v0, p0, Lwgu/SchedulerApp/Terms;->term_id:I

    return v0
.end method

.method public getTerm_name()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lwgu/SchedulerApp/Terms;->term_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTerm_start()Ljava/util/Date;
    .registers 2

    .line 32
    iget-object v0, p0, Lwgu/SchedulerApp/Terms;->term_start:Ljava/util/Date;

    return-object v0
.end method

.method public setTerm_end(Ljava/util/Date;)V
    .registers 2
    .param p1, "term_end"    # Ljava/util/Date;

    .line 54
    iput-object p1, p0, Lwgu/SchedulerApp/Terms;->term_end:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public setTerm_id(I)V
    .registers 2
    .param p1, "term_id"    # I

    .line 42
    iput p1, p0, Lwgu/SchedulerApp/Terms;->term_id:I

    .line 43
    return-void
.end method

.method public setTerm_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "term_name"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lwgu/SchedulerApp/Terms;->term_name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTerm_start(Ljava/util/Date;)V
    .registers 2
    .param p1, "term_start"    # Ljava/util/Date;

    .line 50
    iput-object p1, p0, Lwgu/SchedulerApp/Terms;->term_start:Ljava/util/Date;

    .line 51
    return-void
.end method
