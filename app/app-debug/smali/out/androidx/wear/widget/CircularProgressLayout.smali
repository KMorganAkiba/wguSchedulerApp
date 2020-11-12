.class public Landroidx/wear/widget/CircularProgressLayout;
.super Landroid/widget/FrameLayout;
.source "CircularProgressLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROTATION:F = 0.75f

.field private static final DEFAULT_UPDATE_INTERVAL:J = 0x10L


# instance fields
.field private mController:Landroidx/wear/widget/CircularProgressLayoutController;

.field private mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mStartingRotation:F

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CircularProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CircularProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/CircularProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mStartingRotation:F

    .line 114
    new-instance v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {v1, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 115
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 116
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircularProgressLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    new-instance v0, Landroidx/wear/widget/CircularProgressLayout$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/CircularProgressLayout$1;-><init>(Landroidx/wear/widget/CircularProgressLayout;)V

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircularProgressLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 135
    new-instance v0, Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-direct {v0, p0}, Landroidx/wear/widget/CircularProgressLayoutController;-><init>(Landroidx/wear/widget/CircularProgressLayout;)V

    iput-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    .local v0, "r":Landroid/content/res/Resources;
    sget-object v1, Landroidx/wear/R$styleable;->CircularProgressLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 140
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroidx/wear/R$styleable;->CircularProgressLayout_colorSchemeColors:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_59

    sget v2, Landroidx/wear/R$styleable;->CircularProgressLayout_colorSchemeColors:I

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_49

    goto :goto_59

    .line 147
    :cond_49
    new-array v2, v4, [I

    sget v4, Landroidx/wear/R$styleable;->CircularProgressLayout_colorSchemeColors:I

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroidx/wear/widget/CircularProgressLayout;->setColorSchemeColors([I)V

    goto :goto_69

    .line 143
    :cond_59
    :goto_59
    sget v2, Landroidx/wear/R$styleable;->CircularProgressLayout_colorSchemeColors:I

    sget v4, Landroidx/wear/R$array;->circular_progress_layout_color_scheme_colors:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 145
    .local v2, "arrayResId":I
    invoke-direct {p0, v0, v2}, Landroidx/wear/widget/CircularProgressLayout;->getColorListFromResources(Landroid/content/res/Resources;I)[I

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/wear/widget/CircularProgressLayout;->setColorSchemeColors([I)V

    .line 146
    .end local v2    # "arrayResId":I
    nop

    .line 151
    :goto_69
    sget v2, Landroidx/wear/R$styleable;->CircularProgressLayout_strokeWidth:I

    sget v4, Landroidx/wear/R$dimen;->circular_progress_layout_stroke_width:I

    .line 152
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 151
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroidx/wear/widget/CircularProgressLayout;->setStrokeWidth(F)V

    .line 155
    sget v2, Landroidx/wear/R$styleable;->CircularProgressLayout_backgroundColor:I

    sget v4, Landroidx/wear/R$color;->circular_progress_layout_background_color:I

    .line 156
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 155
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/wear/widget/CircularProgressLayout;->setBackgroundColor(I)V

    .line 159
    sget v2, Landroidx/wear/R$styleable;->CircularProgressLayout_indeterminate:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/wear/widget/CircularProgressLayout;->setIndeterminate(Z)V

    .line 161
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    return-void
.end method

.method private getColorListFromResources(Landroid/content/res/Resources;I)[I
    .registers 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "arrayResId"    # I

    .line 165
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, "colorArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [I

    .line 167
    .local v1, "colors":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 168
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v1, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 170
    .end local v2    # "i":I
    :cond_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    return-object v1
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 2

    .line 212
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getColorSchemeColors()[I
    .registers 2

    .line 349
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getColorSchemeColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getOnTimerFinishedListener()Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;
    .registers 2

    .line 359
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayoutController;->getOnTimerFinishedListener()Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
    .registers 2

    .line 222
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    return-object v0
.end method

.method public getStartingRotation()F
    .registers 2

    .line 311
    iget v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mStartingRotation:F

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 329
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getTotalTime()J
    .registers 3

    .line 263
    iget-wide v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mTotalTime:J

    return-wide v0
.end method

.method public isIndeterminate()Z
    .registers 2

    .line 241
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayoutController;->isIndeterminate()Z

    move-result v0

    return v0
.end method

.method public isTimerRunning()Z
    .registers 2

    .line 292
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayoutController;->isTimerRunning()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 191
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayoutController;->reset()V

    .line 192
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 176
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 177
    invoke-virtual {p0}, Landroidx/wear/widget/CircularProgressLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_24

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircularProgressLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "childView":Landroid/view/View;
    iget-object v1, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 180
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    .line 182
    .end local v0    # "childView":Landroid/view/View;
    goto :goto_2a

    .line 184
    :cond_24
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    .line 186
    :goto_2a
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 202
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setBackgroundColor(I)V

    .line 203
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3
    .param p1, "colors"    # [I

    .line 340
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 341
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3
    .param p1, "indeterminate"    # Z

    .line 232
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/CircularProgressLayoutController;->setIndeterminate(Z)V

    .line 233
    return-void
.end method

.method public setOnTimerFinishedListener(Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;

    .line 368
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/CircularProgressLayoutController;->setOnTimerFinishedListener(Landroidx/wear/widget/CircularProgressLayout$OnTimerFinishedListener;)V

    .line 369
    return-void
.end method

.method public setStartingRotation(F)V
    .registers 2
    .param p1, "rotation"    # F

    .line 302
    iput p1, p0, Landroidx/wear/widget/CircularProgressLayout;->mStartingRotation:F

    .line 303
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3
    .param p1, "strokeWidth"    # F

    .line 320
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 321
    return-void
.end method

.method public setTotalTime(J)V
    .registers 5
    .param p1, "totalTime"    # J

    .line 251
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 254
    iput-wide p1, p0, Landroidx/wear/widget/CircularProgressLayout;->mTotalTime:J

    .line 255
    return-void

    .line 252
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Total time should be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTimer()V
    .registers 6

    .line 274
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    iget-wide v1, p0, Landroidx/wear/widget/CircularProgressLayout;->mTotalTime:J

    const-wide/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/wear/widget/CircularProgressLayoutController;->startTimer(JJ)V

    .line 275
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v1, p0, Landroidx/wear/widget/CircularProgressLayout;->mStartingRotation:F

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 276
    return-void
.end method

.method public stopTimer()V
    .registers 2

    .line 283
    iget-object v0, p0, Landroidx/wear/widget/CircularProgressLayout;->mController:Landroidx/wear/widget/CircularProgressLayoutController;

    invoke-virtual {v0}, Landroidx/wear/widget/CircularProgressLayoutController;->stopTimer()V

    .line 284
    return-void
.end method
