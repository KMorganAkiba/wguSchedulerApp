.class public Landroidx/wear/widget/WearableRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "WearableRecyclerView.java"


# static fields
.field private static final NO_VALUE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "WearableRecyclerView"


# instance fields
.field mCenterEdgeItemsWhenThereAreChildren:Z

.field private mCircularScrollingEnabled:Z

.field private mEdgeItemsCenteringEnabled:Z

.field private mOriginalPaddingBottom:I

.field private mOriginalPaddingTop:I

.field private final mPaddingPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mScrollManager:Landroidx/wear/widget/ScrollManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/WearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/WearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/WearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroidx/wear/widget/ScrollManager;

    invoke-direct {v0}, Landroidx/wear/widget/ScrollManager;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingTop:I

    .line 48
    iput v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingBottom:I

    .line 51
    new-instance v0, Landroidx/wear/widget/WearableRecyclerView$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/WearableRecyclerView$1;-><init>(Landroidx/wear/widget/WearableRecyclerView;)V

    iput-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mPaddingPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/wear/widget/WearableRecyclerView;->setHasFixedSize(Z)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/WearableRecyclerView;->setClipToPadding(Z)V

    .line 84
    if-eqz p2, :cond_53

    .line 85
    sget-object v0, Landroidx/wear/R$styleable;->WearableRecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/wear/R$styleable;->WearableRecyclerView_circularScrollingGestureEnabled:I

    iget-boolean v2, p0, Landroidx/wear/widget/WearableRecyclerView;->mCircularScrollingEnabled:Z

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 88
    invoke-virtual {p0, v1}, Landroidx/wear/widget/WearableRecyclerView;->setCircularScrollingGestureEnabled(Z)V

    .line 92
    sget v1, Landroidx/wear/R$styleable;->WearableRecyclerView_bezelWidth:I

    iget-object v2, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    .line 94
    invoke-virtual {v2}, Landroidx/wear/widget/ScrollManager;->getBezelWidth()F

    move-result v2

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 92
    invoke-virtual {p0, v1}, Landroidx/wear/widget/WearableRecyclerView;->setBezelFraction(F)V

    .line 95
    sget v1, Landroidx/wear/R$styleable;->WearableRecyclerView_scrollDegreesPerScreen:I

    iget-object v2, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    .line 98
    invoke-virtual {v2}, Landroidx/wear/widget/ScrollManager;->getScrollDegreesPerScreen()F

    move-result v2

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 95
    invoke-virtual {p0, v1}, Landroidx/wear/widget/WearableRecyclerView;->setScrollDegreesPerScreen(F)V

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_53
    return-void
.end method

.method private setupOriginalPadding()V
    .registers 5

    .line 131
    iget v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingTop:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_7

    .line 132
    return-void

    .line 134
    :cond_7
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingTop:I

    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/wear/widget/WearableRecyclerView;->setPadding(IIII)V

    .line 137
    return-void
.end method


# virtual methods
.method public getBezelFraction()F
    .registers 2

    .line 226
    iget-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    invoke-virtual {v0}, Landroidx/wear/widget/ScrollManager;->getBezelWidth()F

    move-result v0

    return v0
.end method

.method public getScrollDegreesPerScreen()F
    .registers 2

    .line 207
    iget-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    invoke-virtual {v0}, Landroidx/wear/widget/ScrollManager;->getScrollDegreesPerScreen()F

    move-result v0

    return v0
.end method

.method public isCircularScrollingGestureEnabled()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mCircularScrollingEnabled:Z

    return v0
.end method

.method public isEdgeItemsCenteringEnabled()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mEdgeItemsCenteringEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 149
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 150
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 151
    .local v0, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 152
    iget-object v1, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, p0, v2, v3}, Landroidx/wear/widget/ScrollManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 153
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/widget/WearableRecyclerView;->mPaddingPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 158
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 159
    iget-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    invoke-virtual {v0}, Landroidx/wear/widget/ScrollManager;->clearRecyclerView()V

    .line 160
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/WearableRecyclerView;->mPaddingPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 161
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 141
    iget-boolean v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mCircularScrollingEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/ScrollManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_e
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBezelFraction(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 216
    iget-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/ScrollManager;->setBezelWidth(F)V

    .line 217
    return-void
.end method

.method public setCircularScrollingGestureEnabled(Z)V
    .registers 2
    .param p1, "circularScrollingGestureEnabled"    # Z

    .line 173
    iput-boolean p1, p0, Landroidx/wear/widget/WearableRecyclerView;->mCircularScrollingEnabled:Z

    .line 174
    return-void
.end method

.method public setEdgeItemsCenteringEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 239
    iput-boolean p1, p0, Landroidx/wear/widget/WearableRecyclerView;->mEdgeItemsCenteringEnabled:Z

    .line 240
    if-eqz p1, :cond_12

    .line 241
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 242
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->setupCenteredPadding()V

    goto :goto_18

    .line 244
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mCenterEdgeItemsWhenThereAreChildren:Z

    goto :goto_18

    .line 247
    :cond_12
    invoke-direct {p0}, Landroidx/wear/widget/WearableRecyclerView;->setupOriginalPadding()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mCenterEdgeItemsWhenThereAreChildren:Z

    .line 250
    :goto_18
    return-void
.end method

.method public setScrollDegreesPerScreen(F)V
    .registers 3
    .param p1, "degreesPerScreen"    # F

    .line 196
    iget-object v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mScrollManager:Landroidx/wear/widget/ScrollManager;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/ScrollManager;->setScrollDegreesPerScreen(F)V

    .line 197
    return-void
.end method

.method setupCenteredPadding()V
    .registers 7

    .line 104
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_56

    iget-boolean v0, p0, Landroidx/wear/widget/WearableRecyclerView;->mEdgeItemsCenteringEnabled:Z

    if-nez v0, :cond_c

    goto :goto_56

    .line 109
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/WearableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 112
    .local v2, "height":I
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    int-to-float v5, v2

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 114
    .local v3, "desiredPadding":I
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingTop()I

    move-result v4

    if-eq v4, v3, :cond_55

    .line 115
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingTop()I

    move-result v4

    iput v4, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingTop:I

    .line 116
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingBottom()I

    move-result v4

    iput v4, p0, Landroidx/wear/widget/WearableRecyclerView;->mOriginalPaddingBottom:I

    .line 119
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0, v4, v3, v5, v3}, Landroidx/wear/widget/WearableRecyclerView;->setPadding(IIII)V

    .line 122
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 123
    .local v4, "focusedChild":Landroid/view/View;
    if-eqz v4, :cond_4d

    .line 124
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_4e

    :cond_4d
    nop

    .line 126
    .local v0, "focusedPosition":I
    :goto_4e
    invoke-virtual {p0}, Landroidx/wear/widget/WearableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 128
    .end local v0    # "focusedPosition":I
    .end local v4    # "focusedChild":Landroid/view/View;
    :cond_55
    return-void

    .line 105
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":I
    .end local v3    # "desiredPadding":I
    :cond_56
    :goto_56
    return-void
.end method
