.class final Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;
.super Ljava/lang/Object;
.source "SwipeDismissFrameLayout.java"

# interfaces
.implements Landroidx/wear/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/SwipeDismissFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyOnSwipeProgressChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;


# direct methods
.method constructor <init>(Landroidx/wear/widget/SwipeDismissFrameLayout;)V
    .registers 2

    .line 257
    iput-object p1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method public onSwipeCanceled(Landroidx/wear/widget/SwipeDismissLayout;)V
    .registers 5
    .param p1, "layout"    # Landroidx/wear/widget/SwipeDismissLayout;

    .line 279
    const-string v0, "SwipeDismissFrameLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 280
    const-string v1, "onSwipeCanceled() run swipe cancel animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_e
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/wear/widget/SwipeDismissFrameLayout;->mStarted:Z

    .line 283
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/SwipeDismissFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mAnimationTime:I

    int-to-long v1, v1

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCancelInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;

    invoke-direct {v1, p0}, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;-><init>(Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;)V

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 299
    return-void
.end method

.method public onSwipeProgressChanged(Landroidx/wear/widget/SwipeDismissLayout;FF)V
    .registers 8
    .param p1, "layout"    # Landroidx/wear/widget/SwipeDismissLayout;
    .param p2, "progress"    # F
    .param p3, "translate"    # F

    .line 263
    const-string v0, "SwipeDismissFrameLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwipeProgressChanged() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1d
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v0, p3}, Landroidx/wear/widget/SwipeDismissFrameLayout;->setTranslationX(F)V

    .line 267
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/wear/widget/SwipeDismissFrameLayout;->setAlpha(F)V

    .line 268
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-boolean v0, v0, Landroidx/wear/widget/SwipeDismissFrameLayout;->mStarted:Z

    if-nez v0, :cond_55

    .line 269
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v0, v0, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_3d
    if-ltz v0, :cond_51

    .line 270
    iget-object v2, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v2, v2, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;

    .line 271
    .local v2, "callbacks":Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;
    iget-object v3, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v2, v3}, Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;->onSwipeStarted(Landroidx/wear/widget/SwipeDismissFrameLayout;)V

    .line 269
    .end local v2    # "callbacks":Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 273
    .end local v0    # "i":I
    :cond_51
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iput-boolean v1, v0, Landroidx/wear/widget/SwipeDismissFrameLayout;->mStarted:Z

    .line 275
    :cond_55
    return-void
.end method
