.class public Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "BoxInsetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/BoxInsetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/BoxInsetLayout$LayoutParams$BoxedEdges;
    }
.end annotation


# static fields
.field public static final BOX_ALL:I = 0xf

.field public static final BOX_BOTTOM:I = 0x8

.field public static final BOX_LEFT:I = 0x1

.field public static final BOX_NONE:I = 0x0

.field public static final BOX_RIGHT:I = 0x4

.field public static final BOX_TOP:I = 0x2


# instance fields
.field public boxedEdges:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 444
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 445
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 460
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 461
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I
    .param p4, "boxed"    # I

    .line 465
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 466
    iput p4, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 467
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 428
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 429
    sget-object v1, Landroidx/wear/R$styleable;->BoxInsetLayout_Layout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 431
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroidx/wear/R$styleable;->BoxInsetLayout_Layout_boxedEdges:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 432
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 475
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 476
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 484
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 485
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 494
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 495
    return-void
.end method

.method public constructor <init>(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    .line 504
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 505
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 506
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->gravity:I

    .line 507
    return-void
.end method
