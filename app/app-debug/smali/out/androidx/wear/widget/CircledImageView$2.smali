.class Landroidx/wear/widget/CircledImageView$2;
.super Ljava/lang/Object;
.source "CircledImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/CircledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/CircledImageView;


# direct methods
.method constructor <init>(Landroidx/wear/widget/CircledImageView;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/widget/CircledImageView;

    .line 105
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView$2;->this$0:Landroidx/wear/widget/CircledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 108
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    .local v0, "color":I
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView$2;->this$0:Landroidx/wear/widget/CircledImageView;

    iget v1, v1, Landroidx/wear/widget/CircledImageView;->mCurrentColor:I

    if-eq v0, v1, :cond_19

    .line 110
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView$2;->this$0:Landroidx/wear/widget/CircledImageView;

    iput v0, v1, Landroidx/wear/widget/CircledImageView;->mCurrentColor:I

    .line 111
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView$2;->this$0:Landroidx/wear/widget/CircledImageView;

    invoke-virtual {v1}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 113
    :cond_19
    return-void
.end method
