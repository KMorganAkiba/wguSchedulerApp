.class public Landroidx/wear/widget/drawer/WearableDrawerView;
.super Landroid/widget/FrameLayout;
.source "WearableDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/WearableDrawerView$DrawerState;
    }
.end annotation


# static fields
.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mCanAutoPeek:Z

.field private mContent:Landroid/view/View;

.field private mContentResId:I

.field private mController:Landroidx/wear/widget/drawer/WearableDrawerController;

.field private mDrawerState:I

.field private mIsLocked:Z

.field private mIsPeeking:Z

.field private mLockWhenClosed:Z

.field private mOpenOnlyAtTop:Z

.field private mOpenedPercent:F

.field private final mPeekContainer:Landroid/view/ViewGroup;

.field private final mPeekIcon:Landroid/widget/ImageView;

.field private mPeekOnScrollDown:Z

.field private mPeekResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mIsLocked:Z

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mCanAutoPeek:Z

    .line 128
    iput-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mLockWhenClosed:Z

    .line 129
    iput-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenOnlyAtTop:Z

    .line 130
    iput-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekOnScrollDown:Z

    .line 133
    iput v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekResId:I

    .line 134
    iput v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mContentResId:I

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroidx/wear/R$layout;->ws_wearable_drawer_view:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setClickable(Z)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/wear/R$dimen;->ws_wearable_drawer_view_elevation:I

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 153
    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->setElevation(F)V

    .line 156
    sget v0, Landroidx/wear/R$id;->ws_drawer_view_peek_container:I

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    .line 157
    sget v0, Landroidx/wear/R$id;->ws_drawer_view_peek_icon:I

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekIcon:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/wear/widget/drawer/WearableDrawerView$1;

    invoke-direct {v1, p0}, Landroidx/wear/widget/drawer/WearableDrawerView$1;-><init>(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/wear/widget/drawer/WearableDrawerView;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 173
    nop

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 175
    .local v0, "backgroundResId":I
    if-nez v0, :cond_d

    .line 176
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    goto :goto_11

    .line 178
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    :goto_11
    return-object v1
.end method

.method private parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 461
    if-nez p2, :cond_3

    .line 462
    return-void

    .line 465
    :cond_3
    sget-object v0, Landroidx/wear/R$styleable;->WearableDrawerView:[I

    sget v1, Landroidx/wear/R$style;->Widget_Wear_WearableDrawerView:I

    .line 466
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 470
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Landroidx/wear/R$styleable;->WearableDrawerView_android_background:I

    .line 471
    invoke-static {p1, v0, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 472
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    sget v2, Landroidx/wear/R$styleable;->WearableDrawerView_android_elevation:I

    .line 473
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 474
    .local v2, "elevation":I
    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 475
    int-to-float v4, v2

    invoke-virtual {p0, v4}, Landroidx/wear/widget/drawer/WearableDrawerView;->setElevation(F)V

    .line 477
    sget v4, Landroidx/wear/R$styleable;->WearableDrawerView_drawerContent:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mContentResId:I

    .line 478
    sget v4, Landroidx/wear/R$styleable;->WearableDrawerView_peekView:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekResId:I

    .line 479
    sget v3, Landroidx/wear/R$styleable;->WearableDrawerView_enableAutoPeek:I

    iget-boolean v4, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mCanAutoPeek:Z

    .line 480
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mCanAutoPeek:Z

    .line 481
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 482
    return-void
.end method

.method private setDrawerContentWithoutAdding(Landroid/view/View;)Z
    .registers 4
    .param p1, "content"    # Landroid/view/View;

    .line 498
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 499
    return v1

    .line 501
    :cond_6
    if-eqz v0, :cond_b

    .line 502
    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->removeView(Landroid/view/View;)V

    .line 505
    :cond_b
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mContent:Landroid/view/View;

    .line 506
    if-eqz p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private setPeekContent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 485
    if-nez p1, :cond_3

    .line 486
    return-void

    .line 488
    :cond_3
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 489
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 491
    :cond_10
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 492
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 229
    .local v0, "childId":I
    if-eqz v0, :cond_19

    .line 230
    iget v1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekResId:I

    if-ne v0, v1, :cond_e

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroidx/wear/widget/drawer/WearableDrawerView;->setPeekContent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void

    .line 234
    :cond_e
    iget v1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mContentResId:I

    if-ne v0, v1, :cond_19

    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setDrawerContentWithoutAdding(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 235
    return-void

    .line 239
    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-void
.end method

.method public getController()Landroidx/wear/widget/drawer/WearableDrawerController;
    .registers 2

    .line 435
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mController:Landroidx/wear/widget/drawer/WearableDrawerController;

    return-object v0
.end method

.method public getDrawerContent()Landroid/view/View;
    .registers 2

    .line 259
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDrawerState()I
    .registers 2

    .line 363
    iget v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mDrawerState:I

    return v0
.end method

.method getOpenedPercent()F
    .registers 2

    .line 449
    iget v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenedPercent:F

    return v0
.end method

.method getPeekContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 247
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAutoPeekEnabled()Z
    .registers 2

    .line 385
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mCanAutoPeek:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mIsLocked:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isClosed()Z
    .registers 3

    .line 427
    iget v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenedPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isLocked()Z
    .registers 3

    .line 405
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mIsLocked:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isLockedWhenClosed()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenedPercent:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public isLockedWhenClosed()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mLockWhenClosed:Z

    return v0
.end method

.method public isOpenOnlyAtTopEnabled()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenOnlyAtTop:Z

    return v0
.end method

.method public isOpened()Z
    .registers 3

    .line 420
    iget v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenedPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPeekOnScrollDownEnabled()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekOnScrollDown:Z

    return v0
.end method

.method public isPeeking()Z
    .registers 2

    .line 377
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mIsPeeking:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 210
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .local v0, "peekParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 212
    nop

    .line 213
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 215
    .local v1, "isTopDrawer":Z
    :goto_25
    if-eqz v1, :cond_33

    .line 216
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekIcon:Landroid/widget/ImageView;

    sget v3, Landroidx/wear/R$drawable;->ws_ic_more_horiz_24dp_wht:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 219
    :cond_33
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekIcon:Landroid/widget/ImageView;

    sget v3, Landroidx/wear/R$drawable;->ws_ic_more_vert_24dp_wht:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_3c
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .end local v1    # "isTopDrawer":Z
    :cond_41
    return-void
.end method

.method public onDrawerClosed()V
    .registers 1

    .line 298
    return-void
.end method

.method public onDrawerOpened()V
    .registers 1

    .line 292
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 306
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 189
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 190
    return-void
.end method

.method public onPeekContainerClicked(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mController:Landroidx/wear/widget/drawer/WearableDrawerController;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerController;->openDrawer()V

    .line 199
    return-void
.end method

.method preferGravity()I
    .registers 2

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawerContent(Landroid/view/View;)V
    .registers 3
    .param p1, "content"    # Landroid/view/View;

    .line 269
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setDrawerContentWithoutAdding(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    invoke-virtual {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->addView(Landroid/view/View;)V

    .line 272
    :cond_9
    return-void
.end method

.method setDrawerController(Landroidx/wear/widget/drawer/WearableDrawerController;)V
    .registers 2
    .param p1, "controller"    # Landroidx/wear/widget/drawer/WearableDrawerController;

    .line 251
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mController:Landroidx/wear/widget/drawer/WearableDrawerController;

    .line 252
    return-void
.end method

.method setDrawerState(I)V
    .registers 2
    .param p1, "drawerState"    # I

    .line 370
    iput p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mDrawerState:I

    .line 371
    return-void
.end method

.method public setIsAutoPeekEnabled(Z)V
    .registers 2
    .param p1, "canAutoPeek"    # Z

    .line 394
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mCanAutoPeek:Z

    .line 395
    return-void
.end method

.method public setIsLocked(Z)V
    .registers 2
    .param p1, "locked"    # Z

    .line 413
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mIsLocked:Z

    .line 414
    return-void
.end method

.method setIsPeeking(Z)V
    .registers 2
    .param p1, "isPeeking"    # Z

    .line 442
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mIsPeeking:Z

    .line 443
    return-void
.end method

.method public setLockedWhenClosed(Z)V
    .registers 2
    .param p1, "locked"    # Z

    .line 346
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mLockWhenClosed:Z

    .line 347
    return-void
.end method

.method public setOpenOnlyAtTopEnabled(Z)V
    .registers 2
    .param p1, "openOnlyAtTop"    # Z

    .line 313
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenOnlyAtTop:Z

    .line 314
    return-void
.end method

.method setOpenedPercent(F)V
    .registers 2
    .param p1, "openedPercent"    # F

    .line 456
    iput p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mOpenedPercent:F

    .line 457
    return-void
.end method

.method public setPeekContent(Landroid/view/View;)V
    .registers 5
    .param p1, "content"    # Landroid/view/View;

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 281
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_c

    .line 284
    :cond_8
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 281
    :goto_c
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setPeekContent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void
.end method

.method public setPeekOnScrollDownEnabled(Z)V
    .registers 2
    .param p1, "peekOnScrollDown"    # Z

    .line 330
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/WearableDrawerView;->mPeekOnScrollDown:Z

    .line 331
    return-void
.end method
