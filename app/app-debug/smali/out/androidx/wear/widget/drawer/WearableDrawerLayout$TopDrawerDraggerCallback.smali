.class Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;
.super Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;
.source "WearableDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopDrawerDraggerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V
    .registers 3

    .line 1039
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerLayout$1;)V

    .line 1040
    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 1044
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_22

    .line 1045
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 1047
    .local v0, "peekHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1049
    .end local v0    # "peekHeight":I
    :cond_22
    return v1
.end method

.method public getDrawerView()Landroidx/wear/widget/drawer/WearableDrawerView;
    .registers 2

    .line 1104
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    return-object v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 6
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 1054
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v0, :cond_59

    const/4 v0, 0x4

    if-ne p1, v0, :cond_59

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 1056
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isLocked()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 1057
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_59

    :cond_23
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 1058
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1060
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mScrollingContentView:Landroid/view/View;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mScrollingContentView:Landroid/view/View;

    const/4 v1, -0x1

    .line 1062
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, 0x1

    .line 1063
    .local v0, "atTop":Z
    :goto_42
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpenOnlyAtTopEnabled()Z

    move-result v1

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_59

    .line 1064
    :cond_4e
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v1, v2, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1067
    .end local v0    # "atTop":Z
    :cond_59
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 10
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 1094
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_1b

    .line 1096
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1097
    .local v0, "height":I
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    add-int v2, p3, v0

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/wear/widget/drawer/WearableDrawerView;->setOpenedPercent(F)V

    .line 1098
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    .line 1100
    .end local v0    # "height":I
    :cond_1b
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 1071
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_45

    .line 1073
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getOpenedPercent()F

    move-result v0

    .line 1076
    .local v0, "openedPercent":F
    const/4 v1, 0x0

    cmpl-float v2, p3, v1

    if-gtz v2, :cond_37

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1e

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1e

    goto :goto_37

    .line 1081
    :cond_1e
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-static {v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->animatePeekVisibleAfterBeingClosed(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 1082
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 1083
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .local v1, "finalTop":I
    goto :goto_38

    .line 1078
    .end local v1    # "finalTop":I
    :cond_37
    :goto_37
    const/4 v1, 0x0

    .line 1086
    .restart local v1    # "finalTop":I
    :goto_38
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1087
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$TopDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    .line 1089
    .end local v0    # "openedPercent":F
    .end local v1    # "finalTop":I
    :cond_45
    return-void
.end method
