.class public Landroidx/wear/internal/widget/drawer/SinglePagePresenter;
.super Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;
.source "SinglePagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;
    }
.end annotation


# static fields
.field private static final DRAWER_CLOSE_DELAY_MS:J = 0x1f4L


# instance fields
.field private mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

.field private mCount:I

.field private final mIsAccessibilityEnabled:Z

.field private mSelected:I

.field private final mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;


# direct methods
.method public constructor <init>(Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;Z)V
    .registers 5
    .param p1, "ui"    # Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;
    .param p2, "isAccessibilityEnabled"    # Z

    .line 93
    invoke-direct {p0}, Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mCount:I

    .line 43
    iput v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    .line 94
    if-eqz p1, :cond_15

    .line 98
    iput-boolean p2, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mIsAccessibilityEnabled:Z

    .line 99
    iput-object p1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    .line 100
    invoke-interface {p1, p0}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->setPresenter(Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V

    .line 101
    invoke-virtual {p0}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->onDataSetChanged()V

    .line 102
    return-void

    .line 95
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null ui."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 6

    .line 106
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    if-nez v0, :cond_5

    .line 107
    return-void

    .line 109
    :cond_5
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->getCount()I

    move-result v0

    .line 110
    .local v0, "count":I
    iget v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mCount:I

    if-eq v1, v0, :cond_1e

    .line 111
    iput v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mCount:I

    .line 112
    iget v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    .line 113
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    invoke-interface {v1, v0}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->initialize(I)V

    .line 115
    :cond_1e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_35

    .line 116
    iget-object v2, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    iget-object v3, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    invoke-virtual {v3, v1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->getItemDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    invoke-virtual {v4, v1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->setIcon(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 119
    .end local v1    # "i":I
    :cond_35
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    iget-object v2, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    iget v3, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    invoke-virtual {v2, v3}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->setText(Ljava/lang/CharSequence;Z)V

    .line 120
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    iget v2, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    invoke-interface {v1, v2}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->selectItem(I)V

    .line 121
    return-void
.end method

.method public onDrawerTapped()Z
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onNewAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    .line 125
    if-eqz p1, :cond_b

    .line 128
    iput-object p1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    .line 129
    invoke-virtual {p1, p0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->setPresenter(Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V

    .line 130
    invoke-virtual {p0}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->onDataSetChanged()V

    .line 131
    return-void

    .line 126
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null adapter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSelected(I)V
    .registers 5
    .param p1, "index"    # I

    .line 135
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    iget v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    invoke-interface {v0, v1}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->deselectItem(I)V

    .line 136
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    invoke-interface {v0, p1}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->selectItem(I)V

    .line 137
    iput p1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    .line 138
    iget-boolean v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_18

    .line 141
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    invoke-interface {v0}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->peekDrawer()V

    goto :goto_1f

    .line 143
    :cond_18
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->closeDrawerDelayed(J)V

    .line 146
    :goto_1f
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    if-eqz v0, :cond_2d

    .line 147
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->setText(Ljava/lang/CharSequence;Z)V

    .line 149
    :cond_2d
    invoke-virtual {p0, p1}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->notifyItemSelectedListeners(I)V

    .line 150
    return-void
.end method

.method public onSetCurrentItemRequested(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "smoothScrollTo"    # Z

    .line 154
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    iget v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    invoke-interface {v0, v1}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->deselectItem(I)V

    .line 155
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    invoke-interface {v0, p1}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->selectItem(I)V

    .line 156
    iput p1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mSelected:I

    .line 157
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mAdapter:Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    if-eqz v0, :cond_1c

    .line 158
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->mUi:Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;

    invoke-virtual {v0, p1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;->setText(Ljava/lang/CharSequence;Z)V

    .line 160
    :cond_1c
    invoke-virtual {p0, p1}, Landroidx/wear/internal/widget/drawer/SinglePagePresenter;->notifyItemSelectedListeners(I)V

    .line 161
    return-void
.end method
