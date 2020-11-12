.class Landroidx/wear/widget/drawer/FlingWatcherFactory;
.super Ljava/lang/Object;
.source "FlingWatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;,
        Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;
    }
.end annotation


# instance fields
.field private final mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

.field private final mWatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;)V
    .registers 4
    .param p1, "listener"    # Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mWatchers:Ljava/util/Map;

    .line 60
    if-eqz p1, :cond_f

    .line 64
    iput-object p1, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    .line 65
    return-void

    .line 61
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FlingListener was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createFor(Landroid/view/View;)Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 88
    if-eqz p1, :cond_40

    .line 92
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_11

    .line 93
    new-instance v0, Landroidx/wear/widget/drawer/RecyclerViewFlingWatcher;

    iget-object v1, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Landroidx/wear/widget/drawer/RecyclerViewFlingWatcher;-><init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 94
    :cond_11
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_20

    .line 95
    new-instance v0, Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;

    iget-object v1, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    move-object v2, p1

    check-cast v2, Landroid/widget/AbsListView;

    invoke-direct {v0, v1, v2}, Landroidx/wear/widget/drawer/AbsListViewFlingWatcher;-><init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;Landroid/widget/AbsListView;)V

    return-object v0

    .line 96
    :cond_20
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_2f

    .line 97
    new-instance v0, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;

    iget-object v1, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    move-object v2, p1

    check-cast v2, Landroid/widget/ScrollView;

    invoke-direct {v0, v1, v2}, Landroidx/wear/widget/drawer/ScrollViewFlingWatcher;-><init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;Landroid/widget/ScrollView;)V

    return-object v0

    .line 98
    :cond_2f
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_3e

    .line 99
    new-instance v0, Landroidx/wear/widget/drawer/NestedScrollViewFlingWatcher;

    iget-object v1, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mListener:Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;

    move-object v2, p1

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v0, v1, v2}, Landroidx/wear/widget/drawer/NestedScrollViewFlingWatcher;-><init>(Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingListener;Landroidx/core/widget/NestedScrollView;)V

    return-object v0

    .line 101
    :cond_3e
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getFor(Landroid/view/View;)Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mWatchers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;

    .line 73
    .local v0, "watcher":Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;
    if-nez v0, :cond_15

    .line 74
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/FlingWatcherFactory;->createFor(Landroid/view/View;)Landroidx/wear/widget/drawer/FlingWatcherFactory$FlingWatcher;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_15

    .line 76
    iget-object v1, p0, Landroidx/wear/widget/drawer/FlingWatcherFactory;->mWatchers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_15
    return-object v0
.end method
