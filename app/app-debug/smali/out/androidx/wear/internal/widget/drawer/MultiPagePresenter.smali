.class public Landroidx/wear/internal/widget/drawer/MultiPagePresenter;
.super Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;
.source "MultiPagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

.field private final mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

.field private final mIsAccessibilityEnabled:Z

.field private final mUi:Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;


# direct methods
.method public constructor <init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;Z)V
    .registers 6
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView;
    .param p2, "ui"    # Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;
    .param p3, "isAccessibilityEnabled"    # Z

    .line 72
    invoke-direct {p0}, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;-><init>()V

    .line 73
    if-eqz p1, :cond_19

    .line 76
    if-eqz p2, :cond_11

    .line 79
    iput-object p1, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    .line 80
    iput-object p2, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;

    .line 81
    invoke-interface {p2, p1, p0}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;->initialize(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V

    .line 82
    iput-boolean p3, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mIsAccessibilityEnabled:Z

    .line 83
    return-void

    .line 77
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null ui."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null drawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 2

    .line 87
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;

    invoke-interface {v0}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;->notifyNavigationPagerAdapterDataChanged()V

    .line 88
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;

    invoke-interface {v0}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;->notifyPageIndicatorDataChanged()V

    .line 89
    return-void
.end method

.method public onDrawerTapped()Z
    .registers 2

    .line 113
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 114
    iget-boolean v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_16

    .line 117
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getController()Landroidx/wear/widget/drawer/WearableDrawerController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerController;->peekDrawer()V

    goto :goto_1f

    .line 119
    :cond_16
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getController()Landroidx/wear/widget/drawer/WearableDrawerController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerController;->closeDrawer()V

    .line 121
    :goto_1f
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public onNewAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    .line 93
    if-eqz p1, :cond_d

    .line 96
    iput-object p1, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    .line 97
    invoke-virtual {p1, p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->setPresenter(Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V

    .line 98
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;

    invoke-interface {v0, p1}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;->setNavigationPagerAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V

    .line 99
    return-void

    .line 94
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null adapter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSelected(I)V
    .registers 2
    .param p1, "index"    # I

    .line 103
    invoke-virtual {p0, p1}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->notifyItemSelectedListeners(I)V

    .line 104
    return-void
.end method

.method public onSetCurrentItemRequested(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "smoothScrollTo"    # Z

    .line 108
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;

    invoke-interface {v0, p1, p2}, Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;->setNavigationPagerSelectedItem(IZ)V

    .line 109
    return-void
.end method
