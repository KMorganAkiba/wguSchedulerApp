.class Landroidx/wear/widget/ScrollManager;
.super Ljava/lang/Object;
.source "ScrollManager.java"


# static fields
.field private static final FLING_EDGE_RATIO:F = 1.5f

.field private static final ONE_SEC_IN_MS:I = 0x3e8

.field private static final VELOCITY_MULTIPLIER:F = 1.5f


# instance fields
.field private mDown:Z

.field private mLastAngleRadians:F

.field private mMinRadiusFraction:F

.field private mMinRadiusFractionSquared:F

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenRadiusPx:F

.field private mScreenRadiusPxSquared:F

.field private mScrollDegreesPerScreen:F

.field private mScrollPixelsPerRadian:F

.field private mScrollRadiansPerScreen:F

.field private mScrolling:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFraction:F

    .line 44
    mul-float/2addr v0, v0

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFractionSquared:F

    .line 47
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mScrollDegreesPerScreen:F

    .line 49
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mScrollRadiansPerScreen:F

    return-void
.end method

.method private static normalizeAngleRadians(F)F
    .registers 8
    .param p0, "angleRadians"    # F

    .line 187
    float-to-double v0, p0

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, v0, v2

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v0, :cond_12

    .line 188
    float-to-double v3, p0

    add-double/2addr v3, v1

    double-to-float p0, v3

    .line 190
    :cond_12
    float-to-double v3, p0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1f

    .line 191
    float-to-double v3, p0

    sub-double/2addr v3, v1

    double-to-float p0, v3

    .line 193
    :cond_1f
    return p0
.end method


# virtual methods
.method clearRecyclerView()V
    .registers 2

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    return-void
.end method

.method public getBezelWidth()F
    .registers 3

    .line 231
    iget v0, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1
.end method

.method public getScrollDegreesPerScreen()F
    .registers 2

    .line 223
    iget v0, p0, Landroidx/wear/widget/ScrollManager;->mScrollDegreesPerScreen:F

    return v0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPx:F

    sub-float/2addr v0, v1

    .line 98
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPx:F

    sub-float/2addr v1, v2

    .line 99
    .local v1, "deltaY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 100
    .local v2, "radiusSquared":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 101
    .local v3, "vtev":Landroid/view/MotionEvent;
    iget-object v4, p0, Landroidx/wear/widget/ScrollManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 102
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_f2

    if-eq v4, v6, :cond_b0

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3f

    const/4 v7, 0x3

    if-eq v4, v7, :cond_31

    goto/16 :goto_ff

    .line 168
    :cond_31
    iget-boolean v4, p0, Landroidx/wear/widget/ScrollManager;->mDown:Z

    if-eqz v4, :cond_ff

    .line 169
    iput-boolean v5, p0, Landroidx/wear/widget/ScrollManager;->mDown:Z

    .line 170
    iput-boolean v5, p0, Landroidx/wear/widget/ScrollManager;->mScrolling:Z

    .line 171
    iget-object v4, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 172
    return v6

    .line 113
    :cond_3f
    iget-boolean v4, p0, Landroidx/wear/widget/ScrollManager;->mScrolling:Z

    if-eqz v4, :cond_71

    .line 114
    float-to-double v7, v1

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v4, v7

    .line 115
    .local v4, "angleRadians":F
    iget v7, p0, Landroidx/wear/widget/ScrollManager;->mLastAngleRadians:F

    sub-float v7, v4, v7

    .line 116
    .local v7, "deltaRadians":F
    invoke-static {v7}, Landroidx/wear/widget/ScrollManager;->normalizeAngleRadians(F)F

    move-result v7

    .line 117
    iget v8, p0, Landroidx/wear/widget/ScrollManager;->mScrollPixelsPerRadian:F

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 118
    .local v8, "scrollPixels":I
    if-eqz v8, :cond_70

    .line 119
    iget-object v9, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 121
    int-to-float v5, v8

    iget v9, p0, Landroidx/wear/widget/ScrollManager;->mScrollPixelsPerRadian:F

    div-float v7, v5, v9

    .line 122
    iget v5, p0, Landroidx/wear/widget/ScrollManager;->mLastAngleRadians:F

    add-float/2addr v5, v7

    iput v5, p0, Landroidx/wear/widget/ScrollManager;->mLastAngleRadians:F

    .line 123
    invoke-static {v5}, Landroidx/wear/widget/ScrollManager;->normalizeAngleRadians(F)F

    move-result v5

    iput v5, p0, Landroidx/wear/widget/ScrollManager;->mLastAngleRadians:F

    .line 127
    :cond_70
    return v6

    .line 130
    .end local v4    # "angleRadians":F
    .end local v7    # "deltaRadians":F
    .end local v8    # "scrollPixels":I
    :cond_71
    iget-boolean v4, p0, Landroidx/wear/widget/ScrollManager;->mDown:Z

    if-eqz v4, :cond_a3

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v7, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPx:F

    sub-float/2addr v4, v7

    .line 132
    .local v4, "deltaXFromCenter":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPx:F

    sub-float/2addr v7, v8

    .line 133
    .local v7, "deltaYFromCenter":F
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 134
    .local v8, "distFromCenter":F
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_a2

    .line 135
    div-float/2addr v4, v8

    .line 136
    div-float/2addr v7, v8

    .line 138
    iput-boolean v6, p0, Landroidx/wear/widget/ScrollManager;->mScrolling:Z

    .line 139
    iget-object v5, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 140
    float-to-double v9, v7

    float-to-double v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v5, v9

    iput v5, p0, Landroidx/wear/widget/ScrollManager;->mLastAngleRadians:F

    .line 141
    return v6

    .line 143
    .end local v4    # "deltaXFromCenter":F
    .end local v7    # "deltaYFromCenter":F
    .end local v8    # "distFromCenter":F
    :cond_a2
    goto :goto_ff

    .line 145
    :cond_a3
    iget v4, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPxSquared:F

    div-float v4, v2, v4

    iget v7, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFractionSquared:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_ff

    .line 146
    iput-boolean v6, p0, Landroidx/wear/widget/ScrollManager;->mDown:Z

    .line 147
    return v6

    .line 153
    :cond_b0
    iput-boolean v5, p0, Landroidx/wear/widget/ScrollManager;->mDown:Z

    .line 154
    iput-boolean v5, p0, Landroidx/wear/widget/ScrollManager;->mScrolling:Z

    .line 155
    iget-object v4, p0, Landroidx/wear/widget/ScrollManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget-object v7, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    .line 155
    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 157
    iget-object v4, p0, Landroidx/wear/widget/ScrollManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 158
    .local v4, "velocityY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPx:F

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_d7

    .line 159
    neg-int v4, v4

    .line 161
    :cond_d7
    iget-object v6, p0, Landroidx/wear/widget/ScrollManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 162
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v7

    if-le v6, v7, :cond_ff

    .line 163
    iget-object v6, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v7, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v5

    return v5

    .line 106
    .end local v4    # "velocityY":I
    :cond_f2
    iget v4, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPxSquared:F

    div-float v4, v2, v4

    iget v7, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFractionSquared:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_ff

    .line 107
    iput-boolean v6, p0, Landroidx/wear/widget/ScrollManager;->mDown:Z

    .line 108
    return v6

    .line 177
    :cond_ff
    :goto_ff
    return v5
.end method

.method public setBezelWidth(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 214
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFraction:F

    .line 215
    mul-float/2addr v0, v0

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mMinRadiusFractionSquared:F

    .line 216
    return-void
.end method

.method setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 6
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 78
    iput-object p1, p0, Landroidx/wear/widget/ScrollManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPx:F

    .line 80
    mul-float/2addr v0, v0

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mScreenRadiusPxSquared:F

    .line 81
    int-to-float v0, p3

    iget v1, p0, Landroidx/wear/widget/ScrollManager;->mScrollRadiansPerScreen:F

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mScrollPixelsPerRadian:F

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/ScrollManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    return-void
.end method

.method public setScrollDegreesPerScreen(F)V
    .registers 4
    .param p1, "degreesPerScreen"    # F

    .line 202
    iput p1, p0, Landroidx/wear/widget/ScrollManager;->mScrollDegreesPerScreen:F

    .line 203
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroidx/wear/widget/ScrollManager;->mScrollRadiansPerScreen:F

    .line 204
    return-void
.end method
