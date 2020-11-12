.class abstract Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "WearableDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DrawerDraggerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;


# direct methods
.method private constructor <init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V
    .registers 2

    .line 961
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerLayout$1;)V
    .registers 3
    .param p1, "x0"    # Landroidx/wear/widget/drawer/WearableDrawerLayout;
    .param p2, "x1"    # Landroidx/wear/widget/drawer/WearableDrawerLayout$1;

    .line 961
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V

    return-void
.end method


# virtual methods
.method public abstract getDrawerView()Landroidx/wear/widget/drawer/WearableDrawerView;
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 976
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->getDrawerView()Landroidx/wear/widget/drawer/WearableDrawerView;

    move-result-object v0

    if-ne p1, v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 4
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 981
    move-object v0, p1

    check-cast v0, Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-static {v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->showDrawerContentMaybeAnimate(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 982
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 8
    .param p1, "state"    # I

    .line 986
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->getDrawerView()Landroidx/wear/widget/drawer/WearableDrawerView;

    move-result-object v0

    .line 987
    .local v0, "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    if-eqz p1, :cond_7

    goto :goto_77

    .line 989
    :cond_7
    const/4 v1, 0x0

    .line 990
    .local v1, "openedOrClosed":Z
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 991
    const/4 v1, 0x1

    .line 992
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->onDrawerOpened()V

    .line 993
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v2, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->allowAccessibilityFocusOnOnly(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 994
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    if-eqz v2, :cond_26

    .line 995
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    .line 996
    invoke-virtual {v2, v3, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;->onDrawerOpened(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 1000
    :cond_26
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v3, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->canDrawerContentScrollVertically(Landroidx/wear/widget/drawer/WearableDrawerView;I)Z

    move-result v3

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCanTopDrawerBeClosed:Z

    .line 1002
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v3, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->canDrawerContentScrollVertically(Landroidx/wear/widget/drawer/WearableDrawerView;I)Z

    move-result v3

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mCanBottomDrawerBeClosed:Z

    goto :goto_63

    .line 1004
    :cond_3f
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1005
    const/4 v1, 0x1

    .line 1006
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->onDrawerClosed()V

    .line 1007
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->allowAccessibilityFocusOnAllChildren()V

    .line 1008
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    if-eqz v2, :cond_63

    .line 1009
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    .line 1010
    invoke-virtual {v2, v3, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;->onDrawerClosed(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerView;)V

    goto :goto_63

    .line 1013
    :cond_5e
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->allowAccessibilityFocusOnAllChildren()V

    .line 1017
    :cond_63
    :goto_63
    if-eqz v1, :cond_77

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isPeeking()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1018
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/wear/widget/drawer/WearableDrawerView;->setIsPeeking(Z)V

    .line 1019
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1025
    .end local v1    # "openedOrClosed":Z
    :cond_77
    :goto_77
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerState()I

    move-result v1

    if-eq v1, p1, :cond_92

    .line 1026
    invoke-virtual {v0, p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->setDrawerState(I)V

    .line 1027
    invoke-virtual {v0, p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->onDrawerStateChanged(I)V

    .line 1028
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    if-eqz v1, :cond_92

    .line 1029
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mDrawerStateCallback:Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;

    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v1, v2, p1}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;->onDrawerStateChanged(Landroidx/wear/widget/drawer/WearableDrawerLayout;I)V

    .line 1032
    :cond_92
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 967
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;->getDrawerView()Landroidx/wear/widget/drawer/WearableDrawerView;

    move-result-object v0

    .line 969
    .local v0, "drawerView":Landroidx/wear/widget/drawer/WearableDrawerView;
    if-ne p1, v0, :cond_14

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isLocked()Z

    move-result v1

    if-nez v1, :cond_14

    .line 970
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method
