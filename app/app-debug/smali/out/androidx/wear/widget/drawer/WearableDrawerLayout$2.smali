.class Landroidx/wear/widget/drawer/WearableDrawerLayout$2;
.super Ljava/lang/Object;
.source "WearableDrawerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/wear/widget/drawer/WearableDrawerLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/WearableDrawerLayout;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/widget/drawer/WearableDrawerLayout;

    .line 611
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 614
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 615
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-boolean v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenBottomDrawerAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 616
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mBottomDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v0, v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->openDrawerWithoutAnimation(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 617
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iput-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenBottomDrawerAfterLayout:Z

    goto :goto_2d

    .line 618
    :cond_1c
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-boolean v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekBottomDrawerAfterLayout:Z

    if-eqz v0, :cond_2d

    .line 619
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    .line 620
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iput-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekBottomDrawerAfterLayout:Z

    .line 623
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-boolean v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenTopDrawerAfterLayout:Z

    if-eqz v0, :cond_3f

    .line 624
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-object v2, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mTopDrawerView:Landroidx/wear/widget/drawer/WearableDrawerView;

    invoke-virtual {v0, v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->openDrawerWithoutAnimation(Landroidx/wear/widget/drawer/WearableDrawerView;)V

    .line 625
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iput-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldOpenTopDrawerAfterLayout:Z

    goto :goto_50

    .line 626
    :cond_3f
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iget-boolean v0, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekTopDrawerAfterLayout:Z

    if-eqz v0, :cond_50

    .line 627
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroidx/wear/widget/drawer/WearableDrawerLayout;->peekDrawer(I)V

    .line 628
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$2;->this$0:Landroidx/wear/widget/drawer/WearableDrawerLayout;

    iput-boolean v1, v0, Landroidx/wear/widget/drawer/WearableDrawerLayout;->mShouldPeekTopDrawerAfterLayout:Z

    .line 630
    :cond_50
    :goto_50
    return-void
.end method
