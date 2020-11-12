.class public Landroidx/wear/widget/CircledImageView;
.super Landroid/view/View;
.source "CircledImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/CircledImageView$OvalShadowPainter;
    }
.end annotation


# static fields
.field private static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final SQUARE_DIMEN_HEIGHT:I = 0x1

.field private static final SQUARE_DIMEN_NONE:I = 0x0

.field private static final SQUARE_DIMEN_WIDTH:I = 0x2


# instance fields
.field private final mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCircleBorderCap:Landroid/graphics/Paint$Cap;

.field private mCircleBorderColor:I

.field private mCircleBorderWidth:F

.field private mCircleColor:Landroid/content/res/ColorStateList;

.field private mCircleHidden:Z

.field private mCircleRadius:F

.field private mCircleRadiusPercent:F

.field private mCircleRadiusPressed:F

.field private mCircleRadiusPressedPercent:F

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mColorChangeAnimationDurationMs:J

.field mCurrentColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mImageCirclePercentage:F

.field private mImageHorizontalOffcenterPercentage:F

.field private mImageTint:Ljava/lang/Integer;

.field private final mIndeterminateBounds:Landroid/graphics/Rect;

.field private final mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

.field private final mInitialCircleRadius:F

.field private final mOval:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mProgress:F

.field private mProgressIndeterminate:Z

.field private mRadiusInset:F

.field private final mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

.field private mSquareDimen:Ljava/lang/Integer;

.field private mVisible:Z

.field private mWindowVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroidx/wear/widget/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroidx/wear/widget/CircledImageView$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/CircledImageView$1;-><init>(Landroidx/wear/widget/CircledImageView;)V

    iput-object v0, p0, Landroidx/wear/widget/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleHidden:Z

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/wear/widget/CircledImageView;->mProgress:F

    .line 93
    iput-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    .line 97
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/wear/widget/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 98
    iput v1, p0, Landroidx/wear/widget/CircledImageView;->mImageCirclePercentage:F

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Landroidx/wear/widget/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 104
    new-instance v2, Landroidx/wear/widget/CircledImageView$2;

    invoke-direct {v2, p0}, Landroidx/wear/widget/CircledImageView$2;-><init>(Landroidx/wear/widget/CircledImageView;)V

    iput-object v2, p0, Landroidx/wear/widget/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 129
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/wear/R$styleable;->CircledImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 130
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_android_src:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 134
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_5e
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 141
    if-nez v3, :cond_74

    .line 142
    const/high16 v3, 0x1060000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 145
    :cond_74
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_background_radius:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadius:F

    .line 146
    iput v3, p0, Landroidx/wear/widget/CircledImageView;->mInitialCircleRadius:F

    .line 147
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_background_radius_pressed:I

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadius:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressed:F

    .line 149
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_background_border_color:I

    const/high16 v4, -0x1000000

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderColor:I

    .line 151
    nop

    .line 152
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v3

    sget v4, Landroidx/wear/R$styleable;->CircledImageView_background_border_cap:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderCap:Landroid/graphics/Paint$Cap;

    .line 153
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_background_border_width:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    .line 156
    cmpl-float v4, v3, v1

    if-lez v4, :cond_b5

    .line 158
    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mRadiusInset:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iput v4, p0, Landroidx/wear/widget/CircledImageView;->mRadiusInset:F

    .line 161
    :cond_b5
    sget v3, Landroidx/wear/R$styleable;->CircledImageView_img_padding:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 162
    .local v3, "circlePadding":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_c4

    .line 163
    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mRadiusInset:F

    add-float/2addr v4, v3

    iput v4, p0, Landroidx/wear/widget/CircledImageView;->mRadiusInset:F

    .line 166
    :cond_c4
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_img_circle_percentage:I

    .line 167
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/wear/widget/CircledImageView;->mImageCirclePercentage:F

    .line 169
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_img_horizontal_offset_percentage:I

    .line 170
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/wear/widget/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 172
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_img_tint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 173
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_img_tint:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroidx/wear/widget/CircledImageView;->mImageTint:Ljava/lang/Integer;

    .line 176
    :cond_e8
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_clip_dimen:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 177
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_clip_dimen:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroidx/wear/widget/CircledImageView;->mSquareDimen:Ljava/lang/Integer;

    .line 180
    :cond_fc
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_background_radius_percent:I

    .line 181
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v5, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    iput v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    .line 183
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_background_radius_pressed_percent:I

    iget v6, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    .line 184
    invoke-virtual {v2, v4, v5, v5, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    iput v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressedPercent:F

    .line 188
    sget v4, Landroidx/wear/R$styleable;->CircledImageView_background_shadow_width:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 190
    .local v4, "shadowWidth":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 193
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    new-instance v5, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v6

    iget v7, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    invoke-direct {v5, v4, v1, v6, v7}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;-><init>(FFFF)V

    iput-object v5, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    .line 198
    new-instance v1, Landroidx/wear/widget/ProgressDrawable;

    invoke-direct {v1}, Landroidx/wear/widget/ProgressDrawable;-><init>()V

    iput-object v1, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    .line 201
    iget-object v5, p0, Landroidx/wear/widget/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v5}, Landroidx/wear/widget/ProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 203
    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircledImageView;->setWillNotDraw(Z)V

    .line 205
    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->setColorForCurrentState()V

    .line 206
    return-void
.end method

.method private setColorForCurrentState()V
    .registers 6

    .line 292
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 293
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 294
    .local v0, "newColor":I
    iget-wide v1, p0, Landroidx/wear/widget/CircledImageView;->mColorChangeAnimationDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_52

    .line 295
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_20

    .line 296
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_27

    .line 298
    :cond_20
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 300
    :goto_27
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCurrentColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 301
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroidx/wear/widget/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 302
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroidx/wear/widget/CircledImageView;->mColorChangeAnimationDurationMs:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroidx/wear/widget/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5b

    .line 306
    :cond_52
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mCurrentColor:I

    if-eq v0, v1, :cond_5b

    .line 307
    iput v0, p0, Landroidx/wear/widget/CircledImageView;->mCurrentColor:I

    .line 308
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 311
    :cond_5b
    :goto_5b
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 517
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 518
    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->setColorForCurrentState()V

    .line 519
    return-void
.end method

.method public getCircleColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 528
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCircleRadius()F
    .registers 4

    .line 437
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadius:F

    .line 438
    .local v0, "radius":F
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadius:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_20

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    .line 439
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    mul-float v0, v1, v2

    .line 442
    :cond_20
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mRadiusInset:F

    sub-float v1, v0, v1

    return v1
.end method

.method public getCircleRadiusPercent()F
    .registers 2

    .line 457
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    return v0
.end method

.method public getCircleRadiusPressed()F
    .registers 4

    .line 476
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressed:F

    .line 478
    .local v0, "radius":F
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressed:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_21

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressedPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    .line 479
    nop

    .line 480
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressedPercent:F

    mul-float v0, v1, v2

    .line 483
    :cond_21
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mRadiusInset:F

    sub-float v1, v0, v1

    return v1
.end method

.method public getCircleRadiusPressedPercent()F
    .registers 2

    .line 496
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressedPercent:F

    return v0
.end method

.method public getColorChangeAnimationDuration()J
    .registers 3

    .line 702
    iget-wide v0, p0, Landroidx/wear/widget/CircledImageView;->mColorChangeAnimationDurationMs:J

    return-wide v0
.end method

.method public getDefaultCircleColor()I
    .registers 2

    .line 542
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 663
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInitialCircleRadius()F
    .registers 2

    .line 597
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mInitialCircleRadius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 223
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v0

    .line 224
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v1

    .line 226
    .local v1, "paddingTop":I
    iget-boolean v2, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadiusPressed()F

    move-result v2

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v2

    .line 229
    .local v2, "circleRadius":F
    :goto_15
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->draw(Landroid/graphics/Canvas;F)V

    .line 230
    iget v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c5

    .line 232
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    .line 235
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 236
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 232
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 239
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v4, v2

    iget-object v5, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 240
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v2

    iget-object v6, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 241
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    add-float/2addr v6, v2

    iget-object v7, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 242
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    add-float/2addr v7, v2

    .line 238
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 243
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 251
    iget-boolean v3, p0, Landroidx/wear/widget/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v3, :cond_b4

    .line 252
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 253
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroidx/wear/widget/ProgressDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 254
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v3, v4}, Landroidx/wear/widget/ProgressDrawable;->setRingColor(I)V

    .line 255
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v3, v4}, Landroidx/wear/widget/ProgressDrawable;->setRingWidth(F)V

    .line 256
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    invoke-virtual {v3, p1}, Landroidx/wear/widget/ProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c5

    .line 258
    :cond_b4
    iget-object v5, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mProgress:F

    mul-float v7, v4, v3

    const/4 v8, 0x0

    iget-object v9, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 261
    :cond_c5
    :goto_c5
    iget-boolean v3, p0, Landroidx/wear/widget/CircledImageView;->mCircleHidden:Z

    if-nez v3, :cond_116

    .line 262
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    .line 265
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 266
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 262
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->mCurrentColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 274
    .local v3, "centerX":F
    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 276
    .local v4, "centerY":F
    iget-object v5, p0, Landroidx/wear/widget/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    .end local v3    # "centerX":F
    .end local v4    # "centerY":F
    :cond_116
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13a

    .line 280
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mImageTint:Ljava/lang/Integer;

    if-eqz v3, :cond_135

    .line 283
    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 285
    :cond_135
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 288
    :cond_13a
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 289
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 365
    move-object v0, p0

    iget-object v1, v0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_66

    .line 367
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 368
    .local v1, "nativeDrawableWidth":I
    iget-object v2, v0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 369
    .local v2, "nativeDrawableHeight":I
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v3

    .line 370
    .local v3, "viewWidth":I
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v4

    .line 371
    .local v4, "viewHeight":I
    iget v5, v0, Landroidx/wear/widget/CircledImageView;->mImageCirclePercentage:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v7, :cond_21

    goto :goto_22

    :cond_21
    move v5, v8

    .line 374
    .local v5, "imageCirclePercentage":F
    :goto_22
    int-to-float v7, v1

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_2c

    int-to-float v7, v3

    mul-float/2addr v7, v5

    int-to-float v9, v1

    div-float/2addr v7, v9

    goto :goto_2d

    :cond_2c
    move v7, v8

    :goto_2d
    int-to-float v9, v2

    cmpl-float v6, v9, v6

    if-eqz v6, :cond_37

    int-to-float v6, v4

    mul-float/2addr v6, v5

    int-to-float v9, v2

    div-float/2addr v6, v9

    goto :goto_38

    :cond_37
    move v6, v8

    .line 377
    :goto_38
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 375
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 388
    .local v6, "scaleFactor":F
    int-to-float v7, v1

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 389
    .local v7, "drawableWidth":I
    int-to-float v8, v2

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 392
    .local v8, "drawableHeight":I
    sub-int v9, v3, v7

    div-int/lit8 v9, v9, 0x2

    iget v10, v0, Landroidx/wear/widget/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    int-to-float v11, v7

    mul-float/2addr v10, v11

    .line 394
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    .line 395
    .local v9, "drawableLeft":I
    sub-int v10, v4, v8

    div-int/lit8 v10, v10, 0x2

    .line 397
    .local v10, "drawableTop":I
    iget-object v11, v0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v12, v9, v7

    add-int v13, v10, v8

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    .end local v1    # "nativeDrawableWidth":I
    .end local v2    # "nativeDrawableHeight":I
    .end local v3    # "viewWidth":I
    .end local v4    # "viewHeight":I
    .end local v5    # "imageCirclePercentage":F
    .end local v6    # "scaleFactor":F
    .end local v7    # "drawableWidth":I
    .end local v8    # "drawableHeight":I
    .end local v9    # "drawableLeft":I
    .end local v10    # "drawableTop":I
    :cond_66
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 403
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 316
    nop

    .line 317
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v0

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    iget v1, v1, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->mShadowWidth:F

    iget-object v2, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    iget v2, v2, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->mShadowVisibility:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 320
    .local v0, "radius":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    .line 321
    .local v2, "desiredWidth":F
    mul-float/2addr v1, v0

    .line 323
    .local v1, "desiredHeight":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 324
    .local v3, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 325
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 326
    .local v5, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 331
    .local v6, "heightSize":I
    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v3, v8, :cond_2f

    .line 332
    move v9, v4

    .local v9, "width":I
    goto :goto_39

    .line 333
    .end local v9    # "width":I
    :cond_2f
    if-ne v3, v7, :cond_38

    .line 334
    int-to-float v9, v4

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .restart local v9    # "width":I
    goto :goto_39

    .line 336
    .end local v9    # "width":I
    :cond_38
    float-to-int v9, v2

    .line 339
    .restart local v9    # "width":I
    :goto_39
    if-ne v5, v8, :cond_3d

    .line 340
    move v7, v6

    .local v7, "height":I
    goto :goto_47

    .line 341
    .end local v7    # "height":I
    :cond_3d
    if-ne v5, v7, :cond_46

    .line 342
    int-to-float v7, v6

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    .restart local v7    # "height":I
    goto :goto_47

    .line 344
    .end local v7    # "height":I
    :cond_46
    float-to-int v7, v1

    .line 347
    .restart local v7    # "height":I
    :goto_47
    iget-object v10, p0, Landroidx/wear/widget/CircledImageView;->mSquareDimen:Ljava/lang/Integer;

    if-eqz v10, :cond_59

    .line 348
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_58

    const/4 v11, 0x2

    if-eq v10, v11, :cond_56

    goto :goto_59

    .line 353
    :cond_56
    move v7, v9

    goto :goto_59

    .line 350
    :cond_58
    move v9, v7

    .line 358
    :cond_59
    :goto_59
    nop

    .line 359
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 360
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 358
    invoke-super {p0, v10, v8}, Landroid/view/View;->onMeasure(II)V

    .line 361
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .param p1, "alpha"    # I

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public onSizeChanged(IIII)V
    .registers 10
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 653
    if-ne p1, p3, :cond_4

    if-eq p2, p4, :cond_1d

    .line 654
    :cond_4
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    .line 655
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v1

    .line 656
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v2

    .line 657
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    .line 658
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    .line 654
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setBounds(IIII)V

    .line 660
    :cond_1d
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 564
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 565
    if-nez p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mVisible:Z

    .line 566
    iget-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mProgressIndeterminate:Z

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircledImageView;->showIndeterminateProgress(Z)V

    .line 567
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 571
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 572
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mWindowVisible:Z

    .line 573
    iget-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mProgressIndeterminate:Z

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircledImageView;->showIndeterminateProgress(Z)V

    .line 574
    return-void
.end method

.method public setCircleBorderCap(Landroid/graphics/Paint$Cap;)V
    .registers 3
    .param p1, "circleBorderCap"    # Landroid/graphics/Paint$Cap;

    .line 623
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderCap:Landroid/graphics/Paint$Cap;

    if-eq p1, v0, :cond_9

    .line 624
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderCap:Landroid/graphics/Paint$Cap;

    .line 625
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 627
    :cond_9
    return-void
.end method

.method public setCircleBorderColor(I)V
    .registers 2
    .param p1, "circleBorderColor"    # I

    .line 601
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderColor:I

    .line 602
    return-void
.end method

.method public setCircleBorderWidth(F)V
    .registers 3
    .param p1, "circleBorderWidth"    # F

    .line 610
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    .line 611
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleBorderWidth:F

    .line 612
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setInnerCircleBorderWidth(F)V

    .line 613
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 615
    :cond_10
    return-void
.end method

.method public setCircleColor(I)V
    .registers 3
    .param p1, "circleColor"    # I

    .line 523
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircledImageView;->setCircleColorStateList(Landroid/content/res/ColorStateList;)V

    .line 524
    return-void
.end method

.method public setCircleColorStateList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "circleColor"    # Landroid/content/res/ColorStateList;

    .line 533
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 534
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 535
    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->setColorForCurrentState()V

    .line 536
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 538
    :cond_10
    return-void
.end method

.method public setCircleHidden(Z)V
    .registers 3
    .param p1, "circleHidden"    # Z

    .line 210
    iget-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleHidden:Z

    if-eq p1, v0, :cond_9

    .line 211
    iput-boolean p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleHidden:Z

    .line 212
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 214
    :cond_9
    return-void
.end method

.method public setCircleRadius(F)V
    .registers 4
    .param p1, "circleRadius"    # F

    .line 447
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1d

    .line 448
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadius:F

    .line 449
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    iget-boolean v1, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    if-eqz v1, :cond_13

    .line 450
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadiusPressed()F

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v1

    :goto_17
    invoke-virtual {v0, v1}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setInnerCircleRadius(F)V

    .line 451
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 453
    :cond_1d
    return-void
.end method

.method public setCircleRadiusPercent(F)V
    .registers 4
    .param p1, "circleRadiusPercent"    # F

    .line 466
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1d

    .line 467
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPercent:F

    .line 468
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    iget-boolean v1, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    if-eqz v1, :cond_13

    .line 469
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadiusPressed()F

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v1

    :goto_17
    invoke-virtual {v0, v1}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setInnerCircleRadius(F)V

    .line 470
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 472
    :cond_1d
    return-void
.end method

.method public setCircleRadiusPressed(F)V
    .registers 3
    .param p1, "circleRadiusPressed"    # F

    .line 488
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressed:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 489
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressed:F

    .line 490
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 492
    :cond_b
    return-void
.end method

.method public setCircleRadiusPressedPercent(F)V
    .registers 4
    .param p1, "circleRadiusPressedPercent"    # F

    .line 507
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressedPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1d

    .line 508
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mCircleRadiusPressedPercent:F

    .line 509
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    iget-boolean v1, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    if-eqz v1, :cond_13

    .line 510
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadiusPressed()F

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v1

    :goto_17
    invoke-virtual {v0, v1}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setInnerCircleRadius(F)V

    .line 511
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 513
    :cond_1d
    return-void
.end method

.method public setColorChangeAnimationDuration(J)V
    .registers 3
    .param p1, "mColorChangeAnimationDurationMs"    # J

    .line 711
    iput-wide p1, p0, Landroidx/wear/widget/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 712
    return-void
.end method

.method public setImageCirclePercentage(F)V
    .registers 4
    .param p1, "percentage"    # F

    .line 412
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 413
    .local v0, "clamped":F
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->mImageCirclePercentage:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_16

    .line 414
    iput v0, p0, Landroidx/wear/widget/CircledImageView;->mImageCirclePercentage:F

    .line 415
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 417
    :cond_16
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 668
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_59

    .line 669
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 670
    .local v0, "existingDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 671
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 674
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 676
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 677
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 678
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 681
    :cond_2c
    if-eqz p1, :cond_46

    if-eqz v0, :cond_46

    .line 684
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 685
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v1, v2, :cond_46

    .line 686
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    .line 688
    .local v1, "skipLayout":Z
    :goto_47
    if-eqz v1, :cond_53

    .line 689
    iget-object v2, p0, Landroidx/wear/widget/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_56

    .line 691
    :cond_53
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->requestLayout()V

    .line 694
    :goto_56
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 696
    .end local v0    # "existingDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "skipLayout":Z
    :cond_59
    return-void
.end method

.method public setImageHorizontalOffcenterPercentage(F)V
    .registers 3
    .param p1, "percentage"    # F

    .line 421
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 422
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 423
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 425
    :cond_b
    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 407
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    return-void
.end method

.method public setImageTint(I)V
    .registers 3
    .param p1, "tint"    # I

    .line 429
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mImageTint:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_13

    .line 430
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/CircledImageView;->mImageTint:Ljava/lang/Integer;

    .line 431
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 433
    :cond_13
    return-void
.end method

.method public setPadding(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 642
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v0

    if-ne p1, v0, :cond_18

    .line 643
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v0

    if-ne p2, v0, :cond_18

    .line 644
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v0

    if-ne p3, v0, :cond_18

    .line 645
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v0

    if-eq p4, v0, :cond_27

    .line 646
    :cond_18
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setBounds(IIII)V

    .line 648
    :cond_27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 649
    return-void
.end method

.method public setPressed(Z)V
    .registers 4
    .param p1, "pressed"    # Z

    .line 631
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 632
    iget-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    if-eq p1, v0, :cond_1c

    .line 633
    iput-boolean p1, p0, Landroidx/wear/widget/CircledImageView;->mPressed:Z

    .line 634
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    if-eqz p1, :cond_12

    .line 635
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadiusPressed()F

    move-result v1

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getCircleRadius()F

    move-result v1

    :goto_16
    invoke-virtual {v0, v1}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setInnerCircleRadius(F)V

    .line 636
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 638
    :cond_1c
    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .param p1, "progress"    # F

    .line 578
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->mProgress:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 579
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->mProgress:F

    .line 580
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 582
    :cond_b
    return-void
.end method

.method public setShadowVisibility(F)V
    .registers 3
    .param p1, "shadowVisibility"    # F

    .line 590
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    iget v0, v0, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->mShadowVisibility:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    .line 591
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mShadowPainter:Landroidx/wear/widget/CircledImageView$OvalShadowPainter;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/CircledImageView$OvalShadowPainter;->setShadowVisibility(F)V

    .line 592
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    .line 594
    :cond_10
    return-void
.end method

.method public showIndeterminateProgress(Z)V
    .registers 4
    .param p1, "show"    # Z

    .line 552
    iput-boolean p1, p0, Landroidx/wear/widget/CircledImageView;->mProgressIndeterminate:Z

    .line 553
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    if-eqz v0, :cond_19

    .line 554
    if-eqz p1, :cond_14

    iget-boolean v1, p0, Landroidx/wear/widget/CircledImageView;->mVisible:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Landroidx/wear/widget/CircledImageView;->mWindowVisible:Z

    if-eqz v1, :cond_14

    .line 555
    invoke-virtual {v0}, Landroidx/wear/widget/ProgressDrawable;->startAnimation()V

    goto :goto_19

    .line 557
    :cond_14
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->mIndeterminateDrawable:Landroidx/wear/widget/ProgressDrawable;

    invoke-virtual {v0}, Landroidx/wear/widget/ProgressDrawable;->stopAnimation()V

    .line 560
    :cond_19
    :goto_19
    return-void
.end method
