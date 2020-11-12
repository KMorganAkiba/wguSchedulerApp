.class Landroidx/wear/widget/CircularProgressLayoutController;
.super Ljava/lang/Object;
.source "CircularProgressLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/CircularProgressLayoutController$CircularProgressTimer;
    }
.end annotation


# instance fields
.field private mIsIndeterminate:Z

.field mIsTimerRunning:Z

.field final mLayout:Landroidx/wear/widget/CircularProgressLayout;

.field mOnTimerFinishedListener:Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;

.field mTimer:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroidx/wear/widget/CircularProgressLayout;)V
    .registers 2
    .param p1, "layout"    # Landroidx/wear/widget/CircularProgressLayout;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mLayout:Landroidx/wear/widget/CircularProgressLayout;

    .line 45
    return-void
.end method


# virtual methods
.method public getOnTimerFinishedListener()Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;
    .registers 2

    .line 52
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mOnTimerFinishedListener:Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;

    return-object v0
.end method

.method isIndeterminate()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsIndeterminate:Z

    return v0
.end method

.method isTimerRunning()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsTimerRunning:Z

    return v0
.end method

.method reset()V
    .registers 3

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircularProgressLayoutController;->setIndeterminate(Z)V

    .line 110
    invoke-virtual {p0}, Landroidx/wear/widget/CircularProgressLayoutController;->stopTimer()V

    .line 111
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mLayout:Landroidx/wear/widget/CircularProgressLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayout;->getProgressDrawable()Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 112
    return-void
.end method

.method setIndeterminate(Z)V
    .registers 3
    .param p1, "indeterminate"    # Z

    .line 76
    iget-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsIndeterminate:Z

    if-ne v0, p1, :cond_5

    .line 77
    return-void

    .line 79
    :cond_5
    iput-boolean p1, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsIndeterminate:Z

    .line 80
    if-eqz p1, :cond_1a

    .line 81
    iget-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsTimerRunning:Z

    if-eqz v0, :cond_10

    .line 82
    invoke-virtual {p0}, Landroidx/wear/widget/CircularProgressLayoutController;->stopTimer()V

    .line 84
    :cond_10
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mLayout:Landroidx/wear/widget/CircularProgressLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayout;->getProgressDrawable()Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    goto :goto_23

    .line 86
    :cond_1a
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mLayout:Landroidx/wear/widget/CircularProgressLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayout;->getProgressDrawable()Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 88
    :goto_23
    return-void
.end method

.method public setOnTimerFinishedListener(Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;

    .line 61
    iput-object p1, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mOnTimerFinishedListener:Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;

    .line 62
    return-void
.end method

.method startTimer(JJ)V
    .registers 12
    .param p1, "totalTime"    # J
    .param p3, "updateInterval"    # J

    .line 91
    invoke-virtual {p0}, Landroidx/wear/widget/CircularProgressLayoutController;->reset()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsTimerRunning:Z

    .line 93
    new-instance v0, Landroidx/wear/widget/CircularProgressLayoutController$CircularProgressTimer;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/wear/widget/CircularProgressLayoutController$CircularProgressTimer;-><init>(Landroidx/wear/widget/CircularProgressLayoutController;JJ)V

    iput-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mTimer:Landroid/os/CountDownTimer;

    .line 94
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 95
    return-void
.end method

.method stopTimer()V
    .registers 3

    .line 98
    iget-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsTimerRunning:Z

    if-eqz v0, :cond_16

    .line 99
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mIsTimerRunning:Z

    .line 101
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayoutController;->mLayout:Landroidx/wear/widget/CircularProgressLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayout;->getProgressDrawable()Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 103
    :cond_16
    return-void
.end method
