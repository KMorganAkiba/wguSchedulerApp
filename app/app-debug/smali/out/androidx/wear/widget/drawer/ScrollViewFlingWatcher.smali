.class Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;
.super Ljava/lang/Object;
.source "ScrollViewFlingWatcher.java"

# interfaces
.implements Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
.implements Landroid/view/View$OnScrollChangeListener;


# static fields
.field static final MAX_WAIT_TIME_MS:I = 0x64


# instance fields
.field private final mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mNotifyListenerRunnable:Ljava/lang/Runnable;

.field private final mScrollView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;Landroid/widget/ScrollView;)V
    .registers 5
    .param p1, "listener"    # Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;
    .param p2, "scrollView"    # Landroid/widget/ScrollView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mMainThreadHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher$1;-><init>(Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mNotifyListenerRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mScrollView:Ljava/lang/ref/WeakReference;

    .line 59
    return-void
.end method

.method private static isViewAtTopOrBottom(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 62
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method private scheduleNext()V
    .registers 5

    .line 96
    iget-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mNotifyListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mNotifyListenerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method


# virtual methods
.method onEndOfFlingFound()V
    .registers 3

    .line 86
    iget-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mNotifyListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mScrollView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 89
    .local v0, "scrollView":Landroid/widget/ScrollView;
    if-eqz v0, :cond_1a

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 91
    iget-object v1, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    invoke-interface {v1, v0}, Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;->onFlingComplete(Landroid/view/View;)V

    .line 93
    :cond_1a
    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 77
    invoke-static {p1}, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->isViewAtTopOrBottom(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->onEndOfFlingFound()V

    goto :goto_d

    .line 80
    :cond_a
    invoke-direct {p0}, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->scheduleNext()V

    .line 82
    :goto_d
    return-void
.end method

.method public watch()V
    .registers 2

    .line 67
    iget-object v0, p0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->mScrollView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 68
    .local v0, "scrollView":Landroid/widget/ScrollView;
    if-eqz v0, :cond_10

    .line 69
    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 70
    invoke-direct {p0}, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;->scheduleNext()V

    .line 72
    :cond_10
    return-void
.end method
