.class Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;
.super Ljava/lang/Object;
.source "AbsListViewFlingWatcher.java"

# interfaces
.implements Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;Landroid/widget/AbsListView;)V
    .registers 4
    .param p1, "listener"    # Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;
    .param p2, "listView"    # Landroid/widget/AbsListView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;->mListView:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 65
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 57
    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 59
    iget-object v0, p0, Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    invoke-interface {v0, p1}, Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;->onFlingComplete(Landroid/view/View;)V

    .line 61
    :cond_c
    return-void
.end method

.method public watch()V
    .registers 2

    .line 49
    iget-object v0, p0, Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 50
    .local v0, "absListView":Landroid/widget/AbsListView;
    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    :cond_d
    return-void
.end method
