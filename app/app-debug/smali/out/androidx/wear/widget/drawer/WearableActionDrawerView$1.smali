.class Landroidx/wear/widget/drawer/WearableActionDrawerView$1;
.super Ljava/lang/Object;
.source "WearableActionDrawerView.java"

# interfaces
.implements Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/WearableActionDrawerView;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/widget/drawer/WearableActionDrawerView;

    .line 310
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public menuChanged()V
    .registers 2

    .line 351
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_d

    .line 352
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 354
    :cond_d
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->updatePeekIcons()V

    .line 355
    return-void
.end method

.method public menuItemAdded(I)V
    .registers 4
    .param p1, "position"    # I

    .line 324
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_19

    .line 325
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v0, p1, 0x1

    goto :goto_12

    :cond_11
    move v0, p1

    .line 326
    .local v0, "listPosition":I
    :goto_12
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 330
    .end local v0    # "listPosition":I
    :cond_19
    const/4 v0, 0x1

    if-gt p1, v0, :cond_21

    .line 331
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->updatePeekIcons()V

    .line 333
    :cond_21
    return-void
.end method

.method public menuItemChanged(I)V
    .registers 4
    .param p1, "position"    # I

    .line 313
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_19

    .line 314
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v0, p1, 0x1

    goto :goto_12

    :cond_11
    move v0, p1

    .line 315
    .local v0, "listPosition":I
    :goto_12
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 317
    .end local v0    # "listPosition":I
    :cond_19
    if-nez p1, :cond_20

    .line 318
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->updatePeekIcons()V

    .line 320
    :cond_20
    return-void
.end method

.method public menuItemRemoved(I)V
    .registers 4
    .param p1, "position"    # I

    .line 337
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v0, v0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_19

    .line 338
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v0, p1, 0x1

    goto :goto_12

    :cond_11
    move v0, p1

    .line 339
    .local v0, "listPosition":I
    :goto_12
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 344
    .end local v0    # "listPosition":I
    :cond_19
    const/4 v0, 0x1

    if-gt p1, v0, :cond_21

    .line 345
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->updatePeekIcons()V

    .line 347
    :cond_21
    return-void
.end method
