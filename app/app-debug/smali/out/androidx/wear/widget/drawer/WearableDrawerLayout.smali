.class public Landroidx/wear/widget/drawer/WearableDrawerLayout;
.super Landroid/widget/FrameLayout;
.source "WearableDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;,
        Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;,
        Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;,
        Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;,
        Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;
    }
.end annotation


# static fields
.field private static final DOWN:I = 0x1

.field private static final GRAVITY_UNDEFINED:I = -0x1

.field private static final NESTED_SCROLL_SLOP_DP:I = 0x5

.field private static final OPENED_PERCENT_THRESHOLD:F = 0.5f

.field private static final PEEK_AUTO_CLOSE_DELAY_MS:I = 0x3e8

.field private static final PEEK_FADE_DURATION_MS:I = 0x96

.field private static final TAG:Ljava/lang/String; = "WearableDrawerLayout"

.field private static final UP:I = -0x1


# instance fields
.field final mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

.field final mBottomDrawerDraggerCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

.field mCanBottomDrawerBeClosed:Z

.field mCanTopDrawerBeClosed:Z

.field private final mCloseBottomPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

.field private final mCloseTopPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

.field private mCurrentNestedScrollSlopTracker:I

.field private mDrawerOpenLastInterceptedTouchEvent:Landroid/view/MotionEvent;

.field mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

.field private final mFlingWatcher:Landroidx/wear/widget/drawer/FlingWatcherFactory;

.field private final mIsAccessibilityEnabled:Z

.field private mLastScrollWasFling:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mNestedScrollSlopPx:I

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field mScrollingContentView:Landroid/view/View;

.field mShouldOpenBottomDrawerAfterLayout:Z

.field mShouldOpenTopDrawerAfterLayout:Z

.field mShouldPeekBottomDrawerAfterLayout:Z

.field mShouldPeekTopDrawerAfterLayout:Z

.field private mSystemWindowInsetBottom:I

.field final mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

.field final mTopDrawerDraggerCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mMainThreadHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    const/16 v1, 0x30

    invoke-direct {v0, p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;I)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCloseTopPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    .line 156
    new-instance v0, Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;I)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCloseBottomPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    .line 236
    new-instance v0, Landroidx/wear/widget/drawer/FlingWatcherFactory;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/FlingWatcherFactory;-><init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mFlingWatcher:Landroidx/wear/widget/drawer/FlingWatcherFactory;

    .line 237
    new-instance v0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDraggerCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 238
    nop

    .line 239
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 240
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 242
    new-instance v0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDraggerCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 243
    nop

    .line 244
    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 245
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 247
    nop

    .line 248
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 249
    .local v0, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 250
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 251
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mNestedScrollSlopPx:I

    .line 253
    nop

    .line 254
    const-string v2, "accessibility"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 255
    .local v2, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mIsAccessibilityEnabled:Z

    .line 256
    return-void
.end method

.method static animatePeekVisibleAfterBeingClosed(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 6
    .param p0, "drawer"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 259
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "content":Landroid/view/View;
    const-wide/16 v1, 0x96

    if-eqz v0, :cond_21

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 263
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroidx/wear/widget/drawer/WearableDrawerLayout$1;

    invoke-direct {v4, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$1;-><init>(Landroid/view/View;)V

    .line 264
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 274
    :cond_21
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v3

    .line 275
    .local v3, "peek":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 277
    invoke-virtual {v4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 278
    invoke-virtual {v4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 279
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setIsPeeking(Z)V

    .line 285
    return-void
.end method

.method private closeDrawerDelayed(IJ)V
    .registers 6
    .param p1, "gravity"    # I
    .param p2, "delayMs"    # J

    .line 337
    const/16 v0, 0x30

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1f

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoked a delayed drawer close with an invalid gravity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableDrawerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 343
    :cond_1f
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCloseBottomPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCloseBottomPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    goto :goto_3d

    .line 339
    :cond_2e
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCloseTopPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCloseTopPeekRunnable:Landroidx/wear/widget/drawer/WearableDrawerLayout$ClosePeekRunnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    nop

    .line 349
    :goto_3d
    return-void
.end method

.method private isClosingPeek(Landroidx/wear/widget/drawer/WearableDrawerView;)Z
    .registers 4
    .param p1, "drawerView"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 872
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isDrawerOrChildOfDrawer(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 860
    :goto_0
    if-eqz p1, :cond_12

    if-eq p1, p0, :cond_12

    .line 861
    instance-of v0, p1, Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v0, :cond_a

    .line 862
    const/4 v0, 0x1

    return v0

    .line 865
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 868
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private maybePeekDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 10
    .param p1, "drawerView"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 765
    if-nez p1, :cond_3

    .line 766
    return-void

    .line 768
    :cond_3
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 769
    .local v0, "peekView":Landroid/view/View;
    if-nez v0, :cond_a

    .line 770
    return-void

    .line 773
    :cond_a
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v1

    .line 774
    .local v1, "drawerContent":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 775
    .local v2, "layoutGravity":I
    if-nez v2, :cond_1d

    .line 776
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->preferGravity()I

    move-result v3

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 778
    .local v3, "gravity":I
    :goto_1e
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroidx/wear/widget/drawer/WearableDrawerView;->setIsPeeking(Z)V

    .line 779
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 780
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 781
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 782
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 783
    if-eqz v1, :cond_3c

    .line 784
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 785
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 788
    :cond_3c
    const/16 v5, 0x50

    if-ne v3, v5, :cond_4f

    .line 789
    iget-object v5, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 790
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 789
    invoke-virtual {v5, p1, v4, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_6b

    .line 791
    :cond_4f
    const/16 v5, 0x30

    if-ne v3, v5, :cond_6b

    .line 792
    iget-object v5, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 794
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    neg-int v6, v6

    .line 792
    invoke-virtual {v5, p1, v4, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 795
    iget-boolean v4, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mIsAccessibilityEnabled:Z

    if-nez v4, :cond_6b

    .line 797
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v3, v4, v5}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->closeDrawerDelayed(IJ)V

    .line 801
    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    .line 802
    return-void
.end method

.method private maybeUpdateScrollingContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 851
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mScrollingContentView:Landroid/view/View;

    if-eq p1, v0, :cond_c

    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isDrawerOrChildOfDrawer(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 852
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mScrollingContentView:Landroid/view/View;

    .line 854
    :cond_c
    return-void
.end method

.method static showDrawerContentMaybeAnimate(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 8
    .param p0, "drawerView"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 292
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->bringToFront()V

    .line 293
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_d
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeeking()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 299
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 300
    .local v1, "peekView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 303
    if-eqz v0, :cond_4c

    .line 304
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 305
    nop

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 307
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 308
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 309
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 312
    .end local v1    # "peekView":Landroid/view/View;
    :cond_4c
    goto :goto_59

    .line 313
    :cond_4d
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 314
    if-eqz v0, :cond_59

    .line 315
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 318
    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 538
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 540
    instance-of v0, p1, Landroidx/wear/widget/drawer/WearableDrawerView;

    if-nez v0, :cond_8

    .line 541
    return-void

    .line 544
    :cond_8
    move-object v0, p1

    check-cast v0, Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 545
    .local v0, "drawerChild":Landroidx/wear/widget/drawer/WearableDrawerView;
    new-instance v1, Landroidx/wear/widget/drawer/WearableDrawerController;

    invoke-direct {v1, p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerController;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerView;)V

    invoke-virtual {v0, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setDrawerController(Landroidx/wear/widget/drawer/WearableDrawerController;)V

    .line 546
    move-object v1, p3

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 548
    .local v1, "childGravity":I
    if-eqz v1, :cond_1d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    .line 549
    :cond_1d
    move-object v2, p3

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->preferGravity()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 550
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->preferGravity()I

    move-result v1

    .line 551
    invoke-virtual {v0, p3}, Landroidx/wear/widget/drawer/WearableDrawerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    :cond_2d
    const/16 v2, 0x30

    if-ne v1, v2, :cond_36

    .line 555
    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 556
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .local v2, "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    goto :goto_40

    .line 557
    .end local v2    # "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    :cond_36
    const/16 v2, 0x50

    if-ne v1, v2, :cond_3f

    .line 558
    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 559
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .restart local v2    # "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    goto :goto_40

    .line 561
    .end local v2    # "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    :cond_3f
    const/4 v2, 0x0

    .line 564
    .restart local v2    # "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    :goto_40
    if-eqz v2, :cond_45

    .line 565
    invoke-virtual {v2, p0}, Landroidx/wear/widget/drawer/WearableDrawerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 567
    :cond_45
    return-void
.end method

.method allowAccessibilityFocusOnAllChildren()V
    .registers 4

    .line 935
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_5

    .line 936
    return-void

    .line 939
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 940
    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 942
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method allowAccessibilityFocusOnOnly(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 5
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 945
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_5

    .line 946
    return-void

    .line 949
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 950
    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 951
    .local v1, "child":Landroid/view/View;
    if-eq v1, p1, :cond_16

    .line 952
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 949
    .end local v1    # "child":Landroid/view/View;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 956
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method canDrawerContentScrollVertically(Landroidx/wear/widget/drawer/WearableDrawerView;I)Z
    .registers 5
    .param p1, "drawerView"    # Landroidx/wear/widget/drawer/WearableDrawerView;
    .param p2, "direction"    # I

    .line 895
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 896
    return v0

    .line 899
    :cond_4
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v1

    .line 900
    .local v1, "drawerContent":Landroid/view/View;
    if-nez v1, :cond_b

    .line 901
    return v0

    .line 904
    :cond_b
    invoke-virtual {v1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method closeDrawer(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 357
    invoke-virtual {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->findDrawerWithGravity(I)Landroidx/wear/widget/drawer/WearableDrawerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->closeDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 358
    return-void
.end method

.method closeDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 6
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 366
    if-nez p1, :cond_3

    .line 367
    return-void

    .line 369
    :cond_3
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    .line 370
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 371
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getHeight()I

    move-result v3

    neg-int v3, v3

    .line 370
    invoke-virtual {v2, v0, v1, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 372
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    goto :goto_2e

    .line 373
    :cond_16
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_27

    .line 374
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 375
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 376
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    goto :goto_2e

    .line 378
    :cond_27
    const-string v0, "WearableDrawerLayout"

    const-string v1, "closeDrawer(View) should be passed in the top or bottom drawer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_2e
    return-void
.end method

.method public computeScroll()V
    .registers 4

    .line 528
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    .line 529
    .local v0, "topSettling":Z
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    .line 531
    .local v1, "bottomSettling":Z
    if-nez v0, :cond_11

    if-eqz v1, :cond_14

    .line 532
    :cond_11
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 534
    :cond_14
    return-void
.end method

.method findDrawerWithGravity(I)Landroidx/wear/widget/drawer/WearableDrawerView;
    .registers 4
    .param p1, "gravity"    # I

    .line 835
    const/16 v0, 0x30

    if-eq p1, v0, :cond_23

    const/16 v0, 0x50

    if-eq p1, v0, :cond_20

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid drawer gravity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableDrawerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v0, 0x0

    return-object v0

    .line 839
    :cond_20
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    return-object v0

    .line 837
    :cond_23
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 652
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 322
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mSystemWindowInsetBottom:I

    .line 324
    if-eqz v0, :cond_15

    .line 325
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 326
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mSystemWindowInsetBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 327
    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_15
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onFlingComplete(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 637
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isAutoPeekEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 638
    .local v0, "canTopPeek":Z
    :goto_f
    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroidx/wear/widget/drawer/WearableDrawerView;->isAutoPeekEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v1, v2

    .line 639
    .local v1, "canBottomPeek":Z
    :cond_1a
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    .line 640
    .local v3, "canScrollUp":Z
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    .line 642
    .local v2, "canScrollDown":Z
    if-eqz v0, :cond_34

    if-nez v3, :cond_34

    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v4}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeeking()Z

    move-result v4

    if-nez v4, :cond_34

    .line 643
    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    .line 645
    :cond_34
    if-eqz v1, :cond_47

    if-eqz v3, :cond_3a

    if-nez v2, :cond_47

    :cond_3a
    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v4}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeeking()Z

    move-result v4

    if-nez v4, :cond_47

    .line 646
    const/16 v4, 0x50

    invoke-virtual {p0, v4}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    .line 648
    :cond_47
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 500
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCanBottomDrawerBeClosed:Z

    if-eqz v0, :cond_1d

    :cond_f
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v0, :cond_20

    .line 501
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCanTopDrawerBeClosed:Z

    if-nez v0, :cond_20

    .line 503
    :cond_1d
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerOpenLastInterceptedTouchEvent:Landroid/view/MotionEvent;

    .line 504
    return v1

    .line 508
    :cond_20
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 509
    .local v0, "shouldInterceptTop":Z
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 510
    .local v2, "shouldInterceptBottom":Z
    if-nez v0, :cond_30

    if-eqz v2, :cond_31

    :cond_30
    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 604
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 605
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekBottomDrawerAfterLayout:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekTopDrawerAfterLayout:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenTopDrawerAfterLayout:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenBottomDrawerAfterLayout:Z

    if-eqz v0, :cond_1f

    .line 609
    :cond_13
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;

    invoke-direct {v1, p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 633
    :cond_1f
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 580
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_1f

    .line 582
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getOpenedPercent()F

    move-result v0

    .line 583
    .local v0, "openedPercent":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 584
    .local v1, "height":I
    neg-int v2, v1

    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 585
    .local v2, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int v5, v2, v1

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .end local v0    # "openedPercent":F
    .end local v1    # "height":I
    .end local v2    # "childTop":I
    goto :goto_42

    .line 586
    :cond_1f
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_42

    .line 588
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getOpenedPercent()F

    move-result v0

    .line 589
    .restart local v0    # "openedPercent":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 590
    .restart local v1    # "height":I
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 591
    .restart local v2    # "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int v5, v2, v1

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_43

    .line 586
    .end local v0    # "openedPercent":F
    .end local v1    # "height":I
    .end local v2    # "childTop":I
    :cond_42
    :goto_42
    nop

    .line 593
    :goto_43
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 663
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->maybeUpdateScrollingContentView(Landroid/view/View;)V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mLastScrollWasFling:Z

    .line 666
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mScrollingContentView:Landroid/view/View;

    if-ne p1, v0, :cond_15

    .line 667
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mFlingWatcher:Landroidx/wear/widget/drawer/FlingWatcherFactory;

    invoke-virtual {v1, v0}, Landroidx/wear/widget/drawer/FlingWatcherFactory;->getFor(Landroid/view/View;)Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;

    move-result-object v0

    .line 668
    .local v0, "flingWatcher":Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
    if-eqz v0, :cond_15

    .line 669
    invoke-interface {v0}, Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;->watch()V

    .line 673
    .end local v0    # "flingWatcher":Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 678
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->maybeUpdateScrollingContentView(Landroid/view/View;)V

    .line 679
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 21
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 685
    move-object v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p3, :cond_7

    move v3, v1

    goto :goto_8

    :cond_7
    move v3, v2

    .line 686
    .local v3, "scrolledUp":Z
    :goto_8
    if-lez p3, :cond_c

    move v4, v1

    goto :goto_d

    :cond_c
    move v4, v2

    .line 687
    .local v4, "scrolledDown":Z
    :goto_d
    if-gez p5, :cond_11

    move v5, v1

    goto :goto_12

    :cond_11
    move v5, v2

    .line 688
    .local v5, "overScrolledUp":Z
    :goto_12
    if-lez p5, :cond_16

    move v6, v1

    goto :goto_17

    :cond_16
    move v6, v2

    .line 691
    .local v6, "overScrolledDown":Z
    :goto_17
    iget-object v7, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v7, :cond_43

    invoke-virtual {v7}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 694
    if-nez v6, :cond_32

    iget-object v7, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 695
    invoke-virtual {v7}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v7

    .line 696
    invoke-virtual {v7, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_33

    :cond_32
    :goto_32
    nop

    :goto_33
    iput-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCanTopDrawerBeClosed:Z

    .line 700
    if-eqz v1, :cond_40

    iget-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mLastScrollWasFling:Z

    if-eqz v1, :cond_40

    .line 701
    iget-object v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerOpenLastInterceptedTouchEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 703
    :cond_40
    iput-boolean v2, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mLastScrollWasFling:Z

    .line 704
    return-void

    .line 708
    :cond_43
    iget-object v7, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 710
    iput-boolean v5, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCanBottomDrawerBeClosed:Z

    .line 714
    if-eqz v5, :cond_5a

    iget-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mLastScrollWasFling:Z

    if-eqz v1, :cond_5a

    .line 715
    iget-object v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerOpenLastInterceptedTouchEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 717
    :cond_5a
    iput-boolean v2, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mLastScrollWasFling:Z

    .line 718
    return-void

    .line 721
    :cond_5d
    iput-boolean v2, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mLastScrollWasFling:Z

    .line 727
    iget-object v7, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v7, :cond_6b

    invoke-virtual {v7}, Landroidx/wear/widget/drawer/WearableDrawerView;->isAutoPeekEnabled()Z

    move-result v7

    if-eqz v7, :cond_6b

    move v7, v1

    goto :goto_6c

    :cond_6b
    move v7, v2

    .line 728
    .local v7, "canTopAutoPeek":Z
    :goto_6c
    iget-object v8, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v8, :cond_78

    .line 729
    invoke-virtual {v8}, Landroidx/wear/widget/drawer/WearableDrawerView;->isAutoPeekEnabled()Z

    move-result v8

    if-eqz v8, :cond_78

    move v8, v1

    goto :goto_79

    :cond_78
    move v8, v2

    .line 730
    .local v8, "canBottomAutoPeek":Z
    :goto_79
    iget-object v9, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v9, :cond_85

    invoke-virtual {v9}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeeking()Z

    move-result v9

    if-eqz v9, :cond_85

    move v9, v1

    goto :goto_86

    :cond_85
    move v9, v2

    .line 731
    .local v9, "isTopDrawerPeeking":Z
    :goto_86
    iget-object v10, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v10, :cond_92

    invoke-virtual {v10}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeeking()Z

    move-result v10

    if-eqz v10, :cond_92

    move v10, v1

    goto :goto_93

    :cond_92
    move v10, v2

    .line 732
    .local v10, "isBottomDrawerPeeking":Z
    :goto_93
    const/4 v11, 0x0

    .line 733
    .local v11, "scrolledDownPastSlop":Z
    iget-object v12, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v12, :cond_a0

    .line 734
    invoke-virtual {v12}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeekOnScrollDownEnabled()Z

    move-result v12

    if-eqz v12, :cond_a0

    move v12, v1

    goto :goto_a1

    :cond_a0
    move v12, v2

    .line 735
    .local v12, "shouldPeekOnScrollDown":Z
    :goto_a1
    if-eqz v4, :cond_b0

    .line 736
    iget v13, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCurrentNestedScrollSlopTracker:I

    add-int v13, v13, p3

    iput v13, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCurrentNestedScrollSlopTracker:I

    .line 737
    iget v14, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mNestedScrollSlopPx:I

    if-le v13, v14, :cond_ae

    goto :goto_af

    :cond_ae
    move v1, v2

    :goto_af
    move v11, v1

    .line 740
    :cond_b0
    if-eqz v7, :cond_cb

    .line 741
    const/16 v1, 0x30

    if-eqz v5, :cond_bc

    if-nez v9, :cond_bc

    .line 742
    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    goto :goto_cb

    .line 743
    :cond_bc
    if-eqz v4, :cond_cb

    if-eqz v9, :cond_cb

    iget-object v2, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-direct {p0, v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isClosingPeek(Landroidx/wear/widget/drawer/WearableDrawerView;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 744
    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->closeDrawer(I)V

    .line 748
    :cond_cb
    :goto_cb
    if-eqz v8, :cond_f8

    .line 749
    const/16 v1, 0x50

    if-nez v6, :cond_d3

    if-eqz v5, :cond_d9

    :cond_d3
    if-nez v10, :cond_d9

    .line 750
    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    goto :goto_f8

    .line 751
    :cond_d9
    if-eqz v12, :cond_e3

    if-eqz v11, :cond_e3

    if-nez v10, :cond_e3

    .line 752
    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    goto :goto_f8

    .line 753
    :cond_e3
    if-nez v3, :cond_e9

    if-nez v12, :cond_f8

    if-eqz v4, :cond_f8

    :cond_e9
    if-eqz v10, :cond_f8

    iget-object v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 755
    invoke-direct {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isClosingPeek(Landroidx/wear/widget/drawer/WearableDrawerView;)Z

    move-result v1

    if-nez v1, :cond_f8

    .line 756
    iget-object v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {p0, v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->closeDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 759
    :cond_f8
    :goto_f8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 878
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 879
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 884
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCurrentNestedScrollSlopTracker:I

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 890
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 891
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 515
    if-nez p1, :cond_b

    .line 516
    const-string v0, "WearableDrawerLayout"

    const-string v1, "null MotionEvent passed to onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_b
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 521
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method openDrawer(I)V
    .registers 4
    .param p1, "gravity"    # I

    .line 388
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_17

    .line 389
    const/16 v0, 0x30

    const/4 v1, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0x50

    if-eq p1, v0, :cond_10

    goto :goto_16

    .line 394
    :cond_10
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenBottomDrawerAfterLayout:Z

    .line 395
    goto :goto_16

    .line 391
    :cond_13
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenTopDrawerAfterLayout:Z

    .line 392
    nop

    .line 398
    :goto_16
    return-void

    .line 400
    :cond_17
    invoke-virtual {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->findDrawerWithGravity(I)Landroidx/wear/widget/drawer/WearableDrawerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->openDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 401
    return-void
.end method

.method openDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 7
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 409
    if-nez p1, :cond_3

    .line 410
    return-void

    .line 412
    :cond_3
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_18

    .line 413
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_11

    .line 414
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenTopDrawerAfterLayout:Z

    goto :goto_17

    .line 415
    :cond_11
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_17

    .line 416
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenBottomDrawerAfterLayout:Z

    .line 418
    :cond_17
    :goto_17
    return-void

    .line 421
    :cond_18
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2b

    .line 422
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 423
    invoke-virtual {v2, v0, v1, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 424
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-static {v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->showDrawerContentMaybeAnimate(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 425
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    goto :goto_4f

    .line 426
    :cond_2b
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_48

    .line 427
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 429
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v4}, Landroidx/wear/widget/drawer/WearableDrawerView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 427
    invoke-virtual {v2, v0, v1, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 430
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-static {v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->showDrawerContentMaybeAnimate(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 431
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    goto :goto_4f

    .line 433
    :cond_48
    const-string v0, "WearableDrawerLayout"

    const-string v1, "openDrawer(View) should be passed in the top or bottom drawer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_4f
    return-void
.end method

.method openDrawerWithoutAnimation(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 4
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 805
    if-nez p1, :cond_3

    .line 806
    return-void

    .line 810
    :cond_3
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_c

    .line 811
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getHeight()I

    move-result v0

    .local v0, "offset":I
    goto :goto_15

    .line 812
    .end local v0    # "offset":I
    :cond_c
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_2e

    .line 813
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 819
    .restart local v0    # "offset":I
    :goto_15
    invoke-virtual {p1, v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->offsetTopAndBottom(I)V

    .line 820
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setOpenedPercent(F)V

    .line 821
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->onDrawerOpened()V

    .line 822
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    if-eqz v1, :cond_27

    .line 823
    invoke-virtual {v1, p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;->onDrawerOpened(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 825
    :cond_27
    invoke-static {p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->showDrawerContentMaybeAnimate(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 826
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    .line 827
    return-void

    .line 815
    .end local v0    # "offset":I
    :cond_2e
    const-string v0, "WearableDrawerLayout"

    const-string v1, "openDrawer(View) should be passed in the top or bottom drawer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void
.end method

.method peekDrawer(I)V
    .registers 4
    .param p1, "gravity"    # I

    .line 444
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_25

    .line 446
    const/4 v0, 0x3

    const-string v1, "WearableDrawerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 447
    const-string v0, "WearableDrawerLayout not laid out yet. Postponing peek."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_14
    const/16 v0, 0x30

    const/4 v1, 0x1

    if-eq p1, v0, :cond_21

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1e

    goto :goto_24

    .line 454
    :cond_1e
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekBottomDrawerAfterLayout:Z

    .line 455
    goto :goto_24

    .line 451
    :cond_21
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekTopDrawerAfterLayout:Z

    .line 452
    nop

    .line 458
    :goto_24
    return-void

    .line 460
    :cond_25
    invoke-virtual {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->findDrawerWithGravity(I)Landroidx/wear/widget/drawer/WearableDrawerView;

    move-result-object v0

    .line 461
    .local v0, "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    invoke-direct {p0, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->maybePeekDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 462
    return-void
.end method

.method peekDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 4
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 470
    if-eqz p1, :cond_3a

    .line 473
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_b

    goto :goto_13

    .line 474
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "peekDrawer(WearableDrawerView) received a drawer that isn\'t a child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_36

    .line 480
    const/4 v0, 0x3

    const-string v1, "WearableDrawerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 481
    const-string v0, "WearableDrawerLayout not laid out yet. Postponing peek."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_27
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2f

    .line 484
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekTopDrawerAfterLayout:Z

    goto :goto_35

    .line 485
    :cond_2f
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_35

    .line 486
    iput-boolean v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekBottomDrawerAfterLayout:Z

    .line 488
    :cond_35
    :goto_35
    return-void

    .line 491
    :cond_36
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->maybePeekDrawer(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 492
    return-void

    .line 471
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "peekDrawer(WearableDrawerView) received a null drawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawerStateCallback(Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    .line 599
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    .line 600
    return-void
.end method
