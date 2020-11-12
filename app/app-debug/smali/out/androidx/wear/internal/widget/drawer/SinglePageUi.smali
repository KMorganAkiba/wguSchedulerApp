.class public Landroidx/wear/internal/widget/drawer/SinglePageUi;
.super Ljava/lang/Object;
.source "SinglePageUi.java"

# interfaces
.implements Landroidx/wear/internal/widget/drawer/SinglePagePresenter$Ui;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/internal/widget/drawer/SinglePageUi$OnSelectedClickHandler;
    }
.end annotation


# static fields
.field private static final SINGLE_PAGE_BUTTON_IDS:[I

.field private static final SINGLE_PAGE_LAYOUT_RES:[I


# instance fields
.field private final mCloseDrawerRunnable:Ljava/lang/Runnable;

.field final mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

.field private mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 46
    const/4 v0, 0x7

    new-array v1, v0, [I

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_5:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Landroidx/wear/R$id;->ws_nav_drawer_icon_6:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sput-object v1, Landroidx/wear/internal/widget/drawer/SinglePageUi;->SINGLE_PAGE_BUTTON_IDS:[I

    .line 58
    const/16 v1, 0x8

    new-array v1, v1, [I

    aput v3, v1, v3

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_1_item:I

    aput v2, v1, v4

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_2_item:I

    aput v2, v1, v5

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_3_item:I

    aput v2, v1, v6

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_4_item:I

    aput v2, v1, v7

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_5_item:I

    aput v2, v1, v8

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_6_item:I

    aput v2, v1, v9

    sget v2, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_7_item:I

    aput v2, v1, v0

    sput-object v1, Landroidx/wear/internal/widget/drawer/SinglePageUi;->SINGLE_PAGE_LAYOUT_RES:[I

    return-void
.end method

.method public constructor <init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;)V
    .registers 4
    .param p1, "navigationDrawer"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mMainThreadHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroidx/wear/internal/widget/drawer/SinglePageUi$1;

    invoke-direct {v0, p0}, Landroidx/wear/internal/widget/drawer/SinglePageUi$1;-><init>(Landroidx/wear/internal/widget/drawer/SinglePageUi;)V

    iput-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    .line 89
    if-eqz p1, :cond_1a

    .line 92
    iput-object p1, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    .line 93
    return-void

    .line 90
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null navigationDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeDrawerDelayed(J)V
    .registers 5
    .param p1, "delayMs"    # J

    .line 157
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method

.method public deselectItem(I)V
    .registers 4
    .param p1, "index"    # I

    .line 152
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/wear/widget/CircledImageView;->setCircleHidden(Z)V

    .line 153
    return-void
.end method

.method public initialize(I)V
    .registers 10
    .param p1, "count"    # I

    .line 102
    if-ltz p1, :cond_6a

    sget-object v0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->SINGLE_PAGE_LAYOUT_RES:[I

    array-length v1, v0

    if-ge p1, v1, :cond_6a

    aget v1, v0, p1

    if-nez v1, :cond_c

    goto :goto_6a

    .line 108
    :cond_c
    aget v0, v0, p1

    .line 109
    .local v0, "layoutRes":I
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "content":Landroid/view/View;
    sget v4, Landroidx/wear/R$layout;->ws_single_page_nav_drawer_peek_view:I

    iget-object v5, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    .line 112
    invoke-virtual {v1, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, "peek":Landroid/view/View;
    sget v4, Landroidx/wear/R$id;->ws_nav_drawer_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mTextView:Landroid/widget/TextView;

    .line 117
    new-array v4, p1, [Landroidx/wear/widget/CircledImageView;

    iput-object v4, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    .line 118
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, p1, :cond_5f

    .line 119
    iget-object v5, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    sget-object v6, Landroidx/wear/internal/widget/drawer/SinglePageUi;->SINGLE_PAGE_BUTTON_IDS:[I

    aget v6, v6, v4

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/wear/widget/CircledImageView;

    aput-object v6, v5, v4

    .line 120
    iget-object v5, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    aget-object v5, v5, v4

    new-instance v6, Landroidx/wear/internal/widget/drawer/SinglePageUi$OnSelectedClickHandler;

    iget-object v7, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    invoke-direct {v6, v4, v7}, Landroidx/wear/internal/widget/drawer/SinglePageUi$OnSelectedClickHandler;-><init>(ILandroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V

    invoke-virtual {v5, v6}, Landroidx/wear/widget/CircledImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v5, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    aget-object v5, v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/wear/widget/CircledImageView;->setCircleHidden(Z)V

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 124
    .end local v4    # "i":I
    :cond_5f
    iget-object v4, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v4, v2}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->setDrawerContent(Landroid/view/View;)V

    .line 125
    iget-object v4, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v4, v3}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->setPeekContent(Landroid/view/View;)V

    .line 126
    return-void

    .line 104
    .end local v0    # "layoutRes":I
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "content":Landroid/view/View;
    .end local v3    # "peek":Landroid/view/View;
    :cond_6a
    :goto_6a
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->setDrawerContent(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public peekDrawer()V
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getController()Landroidx/wear/widget/drawer/WearableDrawerController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerController;->peekDrawer()V

    .line 164
    return-void
.end method

.method public selectItem(I)V
    .registers 4
    .param p1, "index"    # I

    .line 147
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/wear/widget/CircledImageView;->setCircleHidden(Z)V

    .line 148
    return-void
.end method

.method public setIcon(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroidx/wear/widget/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mSinglePageImageViews:[Landroidx/wear/widget/CircledImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3}, Landroidx/wear/widget/CircledImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public setPresenter(Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V
    .registers 2
    .param p1, "presenter"    # Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    .line 97
    iput-object p1, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    .line 98
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 6
    .param p1, "itemText"    # Ljava/lang/CharSequence;
    .param p2, "showToastIfNoTextView"    # Z

    .line 136
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 138
    :cond_8
    if-eqz p2, :cond_1d

    .line 139
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/SinglePageUi;->mDrawer:Landroidx/wear/widget/drawer/WearableNavigationDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 140
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 141
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1d
    :goto_1d
    return-void
.end method
