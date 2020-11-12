.class final Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;
.super Ljava/lang/Object;
.source "SwipeDismissFrameLayout.java"

# interfaces
.implements Landroidx/wear/widget/SwipeDismissLayout$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/SwipeDismissFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyOnDismissedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;


# direct methods
.method constructor <init>(Landroidx/wear/widget/SwipeDismissFrameLayout;)V
    .registers 2

    .line 228
    iput-object p1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method


# virtual methods
.method public onDismissed(Landroidx/wear/widget/SwipeDismissLayout;)V
    .registers 5
    .param p1, "layout"    # Landroidx/wear/widget/SwipeDismissLayout;

    .line 233
    const-string v0, "SwipeDismissFrameLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 234
    const-string v1, "onDismissed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_e
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/SwipeDismissFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    .line 237
    invoke-virtual {v1}, Landroidx/wear/widget/SwipeDismissFrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mAnimationTime:I

    int-to-long v1, v1

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-boolean v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mStarted:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCompleteDismissGestureInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_3c

    :cond_38
    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mDismissInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 240
    :goto_3c
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener$1;

    invoke-direct {v1, p0}, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener$1;-><init>(Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnDismissedListener;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 253
    return-void
.end method
