.class Landroidx/wear/widget/ConfirmationOverlay$2;
.super Ljava/lang/Object;
.source "ConfirmationOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/wear/widget/ConfirmationOverlay;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/ConfirmationOverlay;


# direct methods
.method constructor <init>(Landroidx/wear/widget/ConfirmationOverlay;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/widget/ConfirmationOverlay;

    .line 237
    iput-object p1, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 245
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    iget-object v0, v0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    iget-object v1, v1, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/wear/widget/ConfirmationOverlay;->mIsShowing:Z

    .line 247
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    iget-object v0, v0, Landroidx/wear/widget/ConfirmationOverlay;->mListener:Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;

    if-eqz v0, :cond_23

    .line 248
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    iget-object v0, v0, Landroidx/wear/widget/ConfirmationOverlay;->mListener:Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;

    invoke-interface {v0}, Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;->onAnimationFinished()V

    .line 250
    :cond_23
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 254
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 240
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay$2;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    iget-object v0, v0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 241
    return-void
.end method
