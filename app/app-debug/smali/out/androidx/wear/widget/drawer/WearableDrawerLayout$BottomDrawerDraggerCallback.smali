.class Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;
.super Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;
.source "WearableDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomDrawerDraggerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V
    .registers 3

    .line 1112
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerDraggerCallback;-><init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerLayout$1;)V

    .line 1113
    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 1117
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne v0, p1, :cond_29

    .line 1120
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v0

    .line 1121
    .local v0, "parentHeight":I
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 1122
    .local v1, "peekHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    sub-int v3, v0, v1

    .line 1123
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1122
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 1125
    .end local v0    # "parentHeight":I
    .end local v1    # "peekHeight":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerView()Landroidx/wear/widget/drawer/WearableDrawerView;
    .registers 2

    .line 1175
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    return-object v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 1130
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v0, :cond_39

    const/16 v0, 0x8

    if-ne p1, v0, :cond_39

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 1132
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isLocked()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 1133
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_24
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 1134
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerView;->getDrawerContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1136
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1138
    :cond_39
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 1163
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_21

    .line 1165
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1166
    .local v0, "height":I
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v1

    .line 1168
    .local v1, "parentHeight":I
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    sub-int v3, v1, p3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/wear/widget/drawer/WearableDrawerView;->setOpenedPercent(F)V

    .line 1169
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    .line 1171
    .end local v0    # "height":I
    .end local v1    # "parentHeight":I
    :cond_21
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 1142
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    if-ne p1, v0, :cond_52

    .line 1144
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v0

    .line 1145
    .local v0, "parentHeight":I
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableDrawerView;->getOpenedPercent()F

    move-result v1

    .line 1147
    .local v1, "openedPercent":F
    const/4 v2, 0x0

    cmpg-float v3, p3, v2

    if-ltz v3, :cond_3f

    cmpl-float v2, p3, v2

    if-nez v2, :cond_24

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_24

    goto :goto_3f

    .line 1152
    :cond_24
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v2, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-static {v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->animatePeekVisibleAfterBeingClosed(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 1153
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v3, v3, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v3}, Landroidx/wear/widget/drawer/WearableDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "finalTop":I
    goto :goto_45

    .line 1149
    .end local v2    # "finalTop":I
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    .line 1155
    .restart local v2    # "finalTop":I
    :goto_45
    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v3, v3, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1156
    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$BottomDrawerDraggerCallback;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v3}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->invalidate()V

    .line 1158
    .end local v0    # "parentHeight":I
    .end local v1    # "openedPercent":F
    .end local v2    # "finalTop":I
    :cond_52
    return-void
.end method
