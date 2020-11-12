.class public Landroidx/wear/internal/widget/drawer/MultiPageUi;
.super Ljava/lang/Object;
.source "MultiPageUi.java"

# interfaces
.implements Landroidx/wear/internal/widget/drawer/MultiPagePresenter$Ui;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/internal/widget/drawer/MultiPageUi$NavigationPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiPageUi"


# instance fields
.field private mNavigationPager:Landroidx/viewpager/widget/ViewPager;

.field private mPageIndicatorView:Landroidx/wear/widget/drawer/PageIndicatorView;

.field mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public initialize(Landroidx/wear/widget/drawer/WearableNavigationDrawerView;Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;)V
    .registers 6
    .param p1, "drawer"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView;
    .param p2, "presenter"    # Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    .line 56
    if-eqz p1, :cond_35

    .line 59
    if-eqz p2, :cond_2d

    .line 62
    iput-object p2, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mPresenter:Landroidx/wear/internal/widget/drawer/WearableNavigationDrawerPresenter;

    .line 64
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroidx/wear/R$layout;->ws_navigation_drawer_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "content":Landroid/view/View;
    sget v2, Landroidx/wear/R$id;->ws_navigation_drawer_view_pager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    .line 69
    sget v2, Landroidx/wear/R$id;->ws_navigation_drawer_page_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/wear/widget/drawer/PageIndicatorView;

    iput-object v2, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mPageIndicatorView:Landroidx/wear/widget/drawer/PageIndicatorView;

    .line 71
    invoke-virtual {p1, v1}, Landroidx/wear/widget/drawer/WearableNavigationDrawerView;->setDrawerContent(Landroid/view/View;)V

    .line 72
    return-void

    .line 60
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "content":Landroid/view/View;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null presenter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received null drawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyNavigationPagerAdapterDataChanged()V
    .registers 2

    .line 107
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_d

    .line 108
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 109
    .local v0, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 113
    .end local v0    # "adapter":Landroidx/viewpager/widget/PagerAdapter;
    :cond_d
    return-void
.end method

.method public notifyPageIndicatorDataChanged()V
    .registers 2

    .line 100
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mPageIndicatorView:Landroidx/wear/widget/drawer/PageIndicatorView;

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/PageIndicatorView;->notifyDataSetChanged()V

    .line 103
    :cond_7
    return-void
.end method

.method public setNavigationPagerAdapter(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;

    .line 76
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mPageIndicatorView:Landroidx/wear/widget/drawer/PageIndicatorView;

    if-nez v0, :cond_9

    goto :goto_2a

    .line 81
    :cond_9
    new-instance v0, Landroidx/wear/internal/widget/drawer/MultiPageUi$NavigationPagerAdapter;

    invoke-direct {v0, p1}, Landroidx/wear/internal/widget/drawer/MultiPageUi$NavigationPagerAdapter;-><init>(Landroidx/wear/widget/drawer/WearableNavigationDrawerView$WearableNavigationDrawerAdapter;)V

    .line 82
    .local v0, "navigationPagerAdapter":Landroidx/wear/internal/widget/drawer/MultiPageUi$NavigationPagerAdapter;
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 85
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 86
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Landroidx/wear/internal/widget/drawer/MultiPageUi$1;

    invoke-direct {v2, p0}, Landroidx/wear/internal/widget/drawer/MultiPageUi$1;-><init>(Landroidx/wear/internal/widget/drawer/MultiPageUi;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 95
    iget-object v1, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mPageIndicatorView:Landroidx/wear/widget/drawer/PageIndicatorView;

    iget-object v2, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Landroidx/wear/widget/drawer/PageIndicatorView;->setPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 96
    return-void

    .line 77
    .end local v0    # "navigationPagerAdapter":Landroidx/wear/internal/widget/drawer/MultiPageUi$NavigationPagerAdapter;
    :cond_2a
    :goto_2a
    const-string v0, "MultiPageUi"

    const-string v1, "setNavigationPagerAdapter was called before initialize."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public setNavigationPagerSelectedItem(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "smoothScrollTo"    # Z

    .line 117
    iget-object v0, p0, Landroidx/wear/internal/widget/drawer/MultiPageUi;->mNavigationPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 120
    :cond_7
    return-void
.end method
