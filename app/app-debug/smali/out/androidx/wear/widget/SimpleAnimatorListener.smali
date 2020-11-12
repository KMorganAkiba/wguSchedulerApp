.class public Landroidx/wear/widget/SimpleAnimatorListener;
.super Ljava/lang/Object;
.source "SimpleAnimatorListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mWasCanceled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/SimpleAnimatorListener;->mWasCanceled:Z

    .line 38
    return-void
.end method

.method public onAnimationComplete(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 58
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 42
    iget-boolean v0, p0, Landroidx/wear/widget/SimpleAnimatorListener;->mWasCanceled:Z

    if-nez v0, :cond_7

    .line 43
    invoke-virtual {p0, p1}, Landroidx/wear/widget/SimpleAnimatorListener;->onAnimationComplete(Landroid/animation/Animator;)V

    .line 45
    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 48
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/wear/widget/SimpleAnimatorListener;->mWasCanceled:Z

    .line 53
    return-void
.end method

.method public wasCanceled()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Landroidx/wear/widget/SimpleAnimatorListener;->mWasCanceled:Z

    return v0
.end method
