.class public Landroidx/wear/widget/WearableLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "WearableLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;
    }
.end annotation


# instance fields
.field private mLayoutCallback:Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    new-instance v0, Landroidx/wear/widget/CurvingLayoutCallback;

    invoke-direct {v0, p1}, Landroidx/wear/widget/CurvingLayoutCallback;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/WearableLinearLayoutManager;-><init>(Landroid/content/Context;Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutCallback"    # Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 63
    iput-object p2, p0, Landroidx/wear/widget/WearableLinearLayoutManager;->mLayoutCallback:Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    .line 64
    return-void
.end method

.method private updateLayout()V
    .registers 6

    .line 114
    iget-object v0, p0, Landroidx/wear/widget/WearableLinearLayoutManager;->mLayoutCallback:Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    if-nez v0, :cond_5

    .line 115
    return-void

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroidx/wear/widget/WearableLinearLayoutManager;->getChildCount()I

    move-result v0

    .line 118
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 119
    invoke-virtual {p0, v1}, Landroidx/wear/widget/WearableLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Landroidx/wear/widget/WearableLinearLayoutManager;->mLayoutCallback:Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/wear/widget/WearableRecyclerView;

    invoke-virtual {v3, v2, v4}, Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;->onLayoutFinished(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 118
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 122
    .end local v1    # "count":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public getLayoutCallback()Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;
    .registers 2

    .line 91
    iget-object v0, p0, Landroidx/wear/widget/WearableLinearLayoutManager;->mLayoutCallback:Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 105
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 106
    invoke-virtual {p0}, Landroidx/wear/widget/WearableLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 107
    return-void

    .line 110
    :cond_a
    invoke-direct {p0}, Landroidx/wear/widget/WearableLinearLayoutManager;->updateLayout()V

    .line 111
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 99
    .local v0, "scrolled":I
    invoke-direct {p0}, Landroidx/wear/widget/WearableLinearLayoutManager;->updateLayout()V

    .line 100
    return v0
.end method

.method public setLayoutCallback(Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;)V
    .registers 2
    .param p1, "layoutCallback"    # Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    .line 82
    iput-object p1, p0, Landroidx/wear/widget/WearableLinearLayoutManager;->mLayoutCallback:Landroidx/wear/widget/WearableLinearLayoutManager$LayoutCallback;

    .line 83
    return-void
.end method
