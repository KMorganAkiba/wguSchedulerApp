.class public Landroidx/wear/widget/BoxInsetLayout;
.super Landroid/view/ViewGroup;
.source "BoxInsetLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static final FACTOR:F = 0.146447f


# instance fields
.field private mForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mForegroundPadding:Landroid/graphics/Rect;

.field private mInsets:Landroid/graphics/Rect;

.field private mIsRound:Z

.field private final mScreenHeight:I

.field private final mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_e

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    .line 106
    :cond_e
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_19

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    .line 109
    :cond_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mScreenHeight:I

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mScreenWidth:I

    .line 111
    return-void
.end method

.method private calculateChildBottomMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I
    .registers 6
    .param p1, "lp"    # Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .param p2, "verticalGravity"    # I
    .param p3, "desiredMinInset"    # I

    .line 373
    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mIsRound:Z

    if-eqz v0, :cond_17

    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_17

    .line 374
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/16 v0, 0x50

    if-ne p2, v0, :cond_17

    .line 375
    :cond_13
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, p3

    return v0

    .line 378
    :cond_17
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method private calculateChildLeftMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I
    .registers 6
    .param p1, "lp"    # Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .param p2, "horizontalGravity"    # I
    .param p3, "desiredMinInset"    # I

    .line 344
    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mIsRound:Z

    if-eqz v0, :cond_16

    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 345
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x3

    if-ne p2, v0, :cond_16

    .line 346
    :cond_12
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, p3

    return v0

    .line 349
    :cond_16
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->leftMargin:I

    return v0
.end method

.method private calculateChildRightMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I
    .registers 6
    .param p1, "lp"    # Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .param p2, "horizontalGravity"    # I
    .param p3, "desiredMinInset"    # I

    .line 354
    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mIsRound:Z

    if-eqz v0, :cond_16

    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    .line 355
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x5

    if-ne p2, v0, :cond_16

    .line 356
    :cond_12
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    return v0

    .line 359
    :cond_16
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method private calculateChildTopMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I
    .registers 6
    .param p1, "lp"    # Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .param p2, "verticalGravity"    # I
    .param p3, "desiredMinInset"    # I

    .line 363
    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mIsRound:Z

    if-eqz v0, :cond_17

    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17

    .line 364
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/16 v0, 0x30

    if-ne p2, v0, :cond_17

    .line 365
    :cond_13
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p3

    return v0

    .line 368
    :cond_17
    iget v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->topMargin:I

    return v0
.end method

.method private calculateInset(II)I
    .registers 7
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .line 382
    iget v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mScreenWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 383
    .local v0, "rightEdge":I
    iget v1, p0, Landroidx/wear/widget/BoxInsetLayout;->mScreenHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 384
    .local v1, "bottomEdge":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e15f634

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private measureChild(IIII)V
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "desiredMinInset"    # I
    .param p4, "i"    # I

    .line 301
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 302
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    .line 304
    .local v4, "childLayoutParams":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    iget v5, v4, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->gravity:I

    .line 305
    .local v5, "gravity":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_18

    .line 306
    const v5, 0x800033

    .line 308
    :cond_18
    and-int/lit8 v6, v5, 0x70

    .line 309
    .local v6, "verticalGravity":I
    and-int/lit8 v7, v5, 0x7

    .line 314
    .local v7, "horizontalGravity":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v8

    iget-object v9, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    .line 315
    .local v8, "leftParentPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v9

    iget-object v10, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    .line 316
    .local v9, "rightParentPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v10

    iget-object v11, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    .line 317
    .local v10, "topParentPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v11

    iget-object v12, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 320
    .local v11, "bottomParentPadding":I
    add-int v12, v8, v9

    invoke-direct {v0, v4, v7, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildLeftMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v13

    add-int/2addr v12, v13

    .line 321
    invoke-direct {v0, v4, v7, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildRightMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v13

    add-int/2addr v12, v13

    .line 325
    .local v12, "totalWidthMargin":I
    add-int v13, v10, v11

    invoke-direct {v0, v4, v6, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildTopMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v14

    add-int/2addr v13, v14

    .line 326
    invoke-direct {v0, v4, v6, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildBottomMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v14

    add-int/2addr v13, v14

    .line 329
    .local v13, "totalHeightMargin":I
    iget v14, v4, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v12, v14}, Landroidx/wear/widget/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v14

    .line 331
    .local v14, "childWidthMeasureSpec":I
    iget v0, v4, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->height:I

    move/from16 v1, p2

    invoke-static {v1, v13, v0}, Landroidx/wear/widget/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 334
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredWidth()I

    move-result v16

    sub-int v1, v16, v12

    .line 335
    .local v1, "maxAllowedWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredHeight()I

    move-result v16

    sub-int v2, v16, v13

    .line 336
    .local v2, "maxAllowedHeight":I
    move-object/from16 v16, v4

    .end local v4    # "childLayoutParams":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .local v16, "childLayoutParams":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v1, :cond_82

    .line 337
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v2, :cond_85

    .line 338
    :cond_82
    invoke-virtual {v3, v14, v0}, Landroid/view/View;->measure(II)V

    .line 340
    :cond_85
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 291
    instance-of v0, p1, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroidx/wear/widget/BoxInsetLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 296
    new-instance v0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 127
    new-instance v0, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .line 132
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 133
    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mIsRound:Z

    .line 134
    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 135
    .local v0, "insets":Landroid/view/WindowInsets;
    iget-object v1, p0, Landroidx/wear/widget/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 136
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    .line 135
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 30
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 213
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getChildCount()I

    move-result v1

    .line 215
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 216
    .local v2, "parentLeft":I
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 218
    .local v3, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 219
    .local v4, "parentTop":I
    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 221
    .local v5, "parentBottom":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_31
    if-ge v6, v1, :cond_e3

    .line 222
    invoke-virtual {v0, v6}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 223
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_d5

    .line 224
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    .line 226
    .local v8, "lp":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 227
    .local v9, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 232
    .local v10, "height":I
    iget v11, v8, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->gravity:I

    .line 233
    .local v11, "gravity":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_55

    .line 234
    const v11, 0x800033

    .line 237
    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getLayoutDirection()I

    move-result v13

    .line 238
    .local v13, "layoutDirection":I
    invoke-static {v11, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    .line 239
    .local v14, "absoluteGravity":I
    and-int/lit8 v15, v11, 0x70

    .line 240
    .local v15, "verticalGravity":I
    and-int/lit8 v12, v11, 0x7

    .line 241
    .local v12, "horizontalGravity":I
    move/from16 v17, v1

    .end local v1    # "count":I
    .local v17, "count":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredWidth()I

    move-result v1

    move/from16 v18, v11

    .end local v11    # "gravity":I
    .local v18, "gravity":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredHeight()I

    move-result v11

    invoke-direct {v0, v1, v11}, Landroidx/wear/widget/BoxInsetLayout;->calculateInset(II)I

    move-result v1

    .line 244
    .local v1, "desiredInset":I
    invoke-direct {v0, v8, v12, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildLeftMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v11

    .line 245
    .local v11, "leftChildMargin":I
    invoke-direct {v0, v8, v12, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildRightMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v19

    .line 247
    .local v19, "rightChildMargin":I
    move/from16 v20, v12

    .end local v12    # "horizontalGravity":I
    .local v20, "horizontalGravity":I
    iget v12, v8, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->width:I

    move/from16 v21, v13

    const/4 v13, -0x1

    .end local v13    # "layoutDirection":I
    .local v21, "layoutDirection":I
    if-ne v12, v13, :cond_85

    .line 248
    add-int v12, v2, v11

    .local v12, "childLeft":I
    goto :goto_9f

    .line 250
    .end local v12    # "childLeft":I
    :cond_85
    and-int/lit8 v12, v14, 0x7

    const/4 v13, 0x1

    if-eq v12, v13, :cond_95

    const/4 v13, 0x5

    if-eq v12, v13, :cond_90

    .line 260
    add-int v12, v2, v11

    .restart local v12    # "childLeft":I
    goto :goto_9f

    .line 256
    .end local v12    # "childLeft":I
    :cond_90
    sub-int v12, v3, v9

    sub-int v12, v12, v19

    .line 257
    .restart local v12    # "childLeft":I
    goto :goto_9f

    .line 252
    .end local v12    # "childLeft":I
    :cond_95
    sub-int v12, v3, v2

    sub-int/2addr v12, v9

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v12, v11

    sub-int v12, v12, v19

    .line 254
    .restart local v12    # "childLeft":I
    nop

    .line 265
    :goto_9f
    invoke-direct {v0, v8, v15, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildTopMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v13

    .line 266
    .local v13, "topChildMargin":I
    invoke-direct {v0, v8, v15, v1}, Landroidx/wear/widget/BoxInsetLayout;->calculateChildBottomMargin(Landroidx/wear/widget/BoxInsetLayout$LayoutParams;II)I

    move-result v22

    .line 268
    .local v22, "bottomChildMargin":I
    iget v0, v8, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->height:I

    move/from16 v23, v1

    const/4 v1, -0x1

    .end local v1    # "desiredInset":I
    .local v23, "desiredInset":I
    if-ne v0, v1, :cond_b1

    .line 269
    add-int v0, v4, v13

    .local v0, "childTop":I
    goto :goto_cb

    .line 271
    .end local v0    # "childTop":I
    :cond_b1
    const/16 v0, 0x10

    if-eq v15, v0, :cond_c1

    const/16 v0, 0x50

    if-eq v15, v0, :cond_bc

    .line 281
    add-int v0, v4, v13

    .restart local v0    # "childTop":I
    goto :goto_cb

    .line 277
    .end local v0    # "childTop":I
    :cond_bc
    sub-int v0, v5, v10

    sub-int v0, v0, v22

    .line 278
    .restart local v0    # "childTop":I
    goto :goto_cb

    .line 273
    .end local v0    # "childTop":I
    :cond_c1
    sub-int v0, v5, v4

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    add-int/2addr v0, v13

    sub-int v0, v0, v22

    .line 275
    .restart local v0    # "childTop":I
    nop

    .line 284
    :goto_cb
    add-int v1, v12, v9

    move/from16 v16, v2

    .end local v2    # "parentLeft":I
    .local v16, "parentLeft":I
    add-int v2, v0, v10

    invoke-virtual {v7, v12, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_d9

    .line 223
    .end local v0    # "childTop":I
    .end local v8    # "lp":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "leftChildMargin":I
    .end local v12    # "childLeft":I
    .end local v13    # "topChildMargin":I
    .end local v14    # "absoluteGravity":I
    .end local v15    # "verticalGravity":I
    .end local v16    # "parentLeft":I
    .end local v17    # "count":I
    .end local v18    # "gravity":I
    .end local v19    # "rightChildMargin":I
    .end local v20    # "horizontalGravity":I
    .end local v21    # "layoutDirection":I
    .end local v22    # "bottomChildMargin":I
    .end local v23    # "desiredInset":I
    .local v1, "count":I
    .restart local v2    # "parentLeft":I
    :cond_d5
    move/from16 v17, v1

    move/from16 v16, v2

    .line 221
    .end local v1    # "count":I
    .end local v2    # "parentLeft":I
    .end local v7    # "child":Landroid/view/View;
    .restart local v16    # "parentLeft":I
    .restart local v17    # "count":I
    :goto_d9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v1, v17

    goto/16 :goto_31

    .line 287
    .end local v6    # "i":I
    .end local v16    # "parentLeft":I
    .end local v17    # "count":I
    .restart local v1    # "count":I
    .restart local v2    # "parentLeft":I
    :cond_e3
    return-void
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 141
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getChildCount()I

    move-result v9

    .line 143
    .local v9, "count":I
    const/4 v0, 0x0

    .line 144
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 145
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 146
    .local v2, "childState":I
    const/4 v3, 0x0

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "maxWidth":I
    .end local v1    # "maxHeight":I
    .end local v2    # "childState":I
    .local v10, "maxWidth":I
    .local v11, "maxHeight":I
    .local v12, "childState":I
    .local v13, "i":I
    :goto_12
    if-ge v13, v9, :cond_a4

    .line 147
    invoke-virtual {v6, v13}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 148
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a0

    .line 149
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;

    .line 150
    .local v15, "lp":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    const/4 v0, 0x0

    .line 151
    .local v0, "marginLeft":I
    const/4 v2, 0x0

    .line 152
    .local v2, "marginRight":I
    const/4 v3, 0x0

    .line 153
    .local v3, "marginTop":I
    const/4 v4, 0x0

    .line 154
    .local v4, "marginBottom":I
    iget-boolean v5, v6, Landroidx/wear/widget/BoxInsetLayout;->mIsRound:Z

    if-eqz v5, :cond_60

    .line 156
    iget v5, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_37

    .line 157
    iget v0, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->leftMargin:I

    .line 159
    :cond_37
    iget v5, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3f

    .line 160
    iget v2, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->rightMargin:I

    .line 162
    :cond_3f
    iget v5, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_47

    .line 163
    iget v3, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->topMargin:I

    .line 165
    :cond_47
    iget v5, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/2addr v1, v5

    if-nez v1, :cond_57

    .line 166
    iget v4, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_70

    .line 165
    :cond_57
    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_70

    .line 170
    :cond_60
    iget v0, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->leftMargin:I

    .line 171
    iget v3, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->topMargin:I

    .line 172
    iget v2, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->rightMargin:I

    .line 173
    iget v4, v15, Landroidx/wear/widget/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    .line 175
    .end local v0    # "marginLeft":I
    .end local v2    # "marginRight":I
    .end local v3    # "marginTop":I
    .end local v4    # "marginBottom":I
    .local v16, "marginLeft":I
    .local v17, "marginRight":I
    .local v18, "marginTop":I
    .local v19, "marginBottom":I
    :goto_70
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/wear/widget/BoxInsetLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 176
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v0, v16

    add-int v0, v0, v17

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    .end local v10    # "maxWidth":I
    .local v0, "maxWidth":I
    nop

    .line 178
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int v1, v1, v19

    .line 177
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    .end local v11    # "maxHeight":I
    .restart local v1    # "maxHeight":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroidx/wear/widget/BoxInsetLayout;->combineMeasuredStates(II)I

    move-result v2

    move v10, v0

    move v11, v1

    move v12, v2

    .line 146
    .end local v0    # "maxWidth":I
    .end local v1    # "maxHeight":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroidx/wear/widget/BoxInsetLayout$LayoutParams;
    .end local v16    # "marginLeft":I
    .end local v17    # "marginRight":I
    .end local v18    # "marginTop":I
    .end local v19    # "marginBottom":I
    .restart local v10    # "maxWidth":I
    .restart local v11    # "maxHeight":I
    :cond_a0
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12

    .line 183
    .end local v13    # "i":I
    :cond_a4
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 190
    .end local v11    # "maxHeight":I
    .local v0, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 193
    .end local v10    # "maxWidth":I
    .local v1, "maxWidth":I
    iget-object v2, v6, Landroidx/wear/widget/BoxInsetLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f2

    .line 194
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 195
    iget-object v2, v6, Landroidx/wear/widget/BoxInsetLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 198
    :cond_f2
    invoke-static {v1, v7, v12}, Landroidx/wear/widget/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 199
    .local v2, "measuredWidth":I
    shl-int/lit8 v3, v12, 0x10

    invoke-static {v0, v8, v3}, Landroidx/wear/widget/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v3

    .line 201
    .local v3, "measuredHeight":I
    invoke-virtual {v6, v2, v3}, Landroidx/wear/widget/BoxInsetLayout;->setMeasuredDimension(II)V

    .line 204
    invoke-direct {v6, v2, v3}, Landroidx/wear/widget/BoxInsetLayout;->calculateInset(II)I

    move-result v4

    .line 206
    .local v4, "boxInset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_104
    if-ge v5, v9, :cond_10c

    .line 207
    invoke-direct {v6, v7, v8, v4, v5}, Landroidx/wear/widget/BoxInsetLayout;->measureChild(IIII)V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_104

    .line 209
    .end local v5    # "i":I
    :cond_10c
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_10

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    .line 120
    :cond_10
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 121
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 123
    :cond_19
    return-void
.end method
