.class public Landroidx/wear/widget/drawer/WearableNavigationDrawerView;
.super Landroidx/wear/widget/drawer/WearableDrawerView;
.source "WearableNavigationDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;,
        Landroidx/wear/widget/drawer/WearableNavigationDrawerView$NavigationStyle;,
        Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_DRAWER_DELAY_MS:J

.field private static final DEFAULT_STYLE:I = 0x0

.field public static final MULTI_PAGE:I = 0x1

.field public static final SINGLE_PAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WearableNavDrawer"


# instance fields
.field private final mCloseDrawerRunnable:Ljava/lang/Runnable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mIsAccessibilityEnabled:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mNavigationStyle:I

.field private final mOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field final mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->AUTO_CLOSE_DRAWER_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/wear/widget/drawer/WearableDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mMainThreadHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$1;-><init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$2;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$2;-><init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 136
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "navStyle":I
    if-eqz p2, :cond_3c

    .line 140
    sget-object v1, Landroidx/wear/R$styleable;->WearableNavigationDrawerView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 147
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v3, Landroidx/wear/R$styleable;->WearableNavigationDrawerView_navigationStyle:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 149
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3c
    iput v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mNavigationStyle:I

    .line 153
    nop

    .line 154
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 155
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mIsAccessibilityEnabled:Z

    .line 157
    iget v2, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mNavigationStyle:I

    if-nez v2, :cond_5e

    new-instance v2, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;

    new-instance v3, Landroidx/wear/internal/widget/drawer/SinglePageUi;

    invoke-direct {v3, p0}, Landroidx/wear/internal/widget/drawer/SinglePageUi;-><init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;)V

    iget-boolean v4, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mIsAccessibilityEnabled:Z

    invoke-direct {v2, v3, v4}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;-><init>(Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;Z)V

    goto :goto_6a

    :cond_5e
    new-instance v2, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;

    new-instance v3, Landroidx/wear/internal/widget/drawer/MultiPageUi;

    invoke-direct {v3}, Landroidx/wear/internal/widget/drawer/MultiPageUi;-><init>()V

    iget-boolean v4, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mIsAccessibilityEnabled:Z

    invoke-direct {v2, p0, v3, v4}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;-><init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;Z)V

    :goto_6a
    iput-object v2, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    .line 162
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Landroidx/wear/R$string;->ws_navigation_drawer_content_description:I

    .line 164
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->setOpenOnlyAtTopEnabled(Z)V

    .line 167
    return-void
.end method

.method private autoCloseDrawerAfterDelay()V
    .registers 5

    .line 231
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_14

    .line 232
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->AUTO_CLOSE_DRAWER_DELAY_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :cond_14
    return-void
.end method


# virtual methods
.method public addOnItemSelectedListener(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;

    .line 180
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    invoke-virtual {v0, p1}, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->onItemSelectedListenerAdded(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;)V

    .line 181
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 217
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->isOpened()Z

    move-result v0

    return v0
.end method

.method public getNavigationStyle()I
    .registers 2

    .line 204
    iget v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mNavigationStyle:I

    return v0
.end method

.method public onDrawerClosed()V
    .registers 3

    .line 227
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public onDrawerOpened()V
    .registers 1

    .line 222
    invoke-direct {p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->autoCloseDrawerAfterDelay()V

    .line 223
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 209
    invoke-direct {p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->autoCloseDrawerAfterDelay()V

    .line 210
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method preferGravity()I
    .registers 2

    .line 239
    const/16 v0, 0x30

    return v0
.end method

.method public removeOnItemSelectedListener(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;

    .line 187
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    invoke-virtual {v0, p1}, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->onItemSelectedListenerRemoved(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;)V

    .line 188
    return-void
.end method

.method public setAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    .line 173
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    invoke-virtual {v0, p1}, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->onNewAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V

    .line 174
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "smoothScrollTo"    # Z

    .line 196
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    invoke-virtual {v0, p1, p2}, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->onSetCurrentItemRequested(IZ)V

    .line 197
    return-void
.end method
