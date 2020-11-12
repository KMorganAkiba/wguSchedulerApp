.class public abstract Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;
.super Ljava/lang/Object;
.source "WearableNavigationDrawerPresenter.java"


# instance fields
.field private final mOnItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->mOnItemSelectedListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method notifyItemSelectedListeners(I)V
    .registers 4
    .param p1, "selectedPos"    # I

    .line 91
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->mOnItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;

    .line 92
    .local v1, "listener":Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;
    invoke-interface {v1, p1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;->onItemSelected(I)V

    .line 93
    .end local v1    # "listener":Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;
    goto :goto_6

    .line 94
    :cond_16
    return-void
.end method

.method public abstract onDataSetChanged()V
.end method

.method public abstract onDrawerTapped()Z
.end method

.method public onItemSelectedListenerAdded(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;

    .line 75
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->mOnItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public onItemSelectedListenerRemoved(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$OnItemSelectedListener;

    .line 83
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;->mOnItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public abstract onNewAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V
.end method

.method public abstract onSelected(I)V
.end method

.method public abstract onSetCurrentItemRequested(IZ)V
.end method
