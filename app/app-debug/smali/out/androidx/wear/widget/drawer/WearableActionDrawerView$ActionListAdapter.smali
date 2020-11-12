.class final Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WearableActionDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableActionDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ACTION:I = 0x0

.field public static final TYPE_TITLE:I = 0x1


# instance fields
.field private final mActionMenu:Landroid/view/Menu;

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/WearableActionDrawerView;Landroid/view/Menu;)V
    .registers 4
    .param p2, "menu"    # Landroid/view/Menu;

    .line 393
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 379
    new-instance v0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter$1;-><init>(Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 394
    invoke-virtual {p1}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->mActionMenu:Landroid/view/Menu;

    .line 395
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .line 399
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->mActionMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v1}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->hasTitle()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 449
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 10
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 404
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p2, -0x1

    goto :goto_c

    :cond_b
    move v0, p2

    .line 405
    .local v0, "titleAwarePosition":I
    :goto_c
    instance-of v1, p1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;

    if-eqz v1, :cond_6c

    .line 406
    move-object v1, p1

    check-cast v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;

    .line 407
    .local v1, "holder":Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;
    iget-object v2, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;->view:Landroid/view/View;

    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget v3, v3, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mLeftPadding:I

    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    if-nez p2, :cond_20

    iget v4, v4, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mFirstItemTopPadding:I

    goto :goto_22

    :cond_20
    iget v4, v4, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTopPadding:I

    :goto_22
    iget-object v5, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget v5, v5, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mRightPadding:I

    .line 411
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_33

    iget-object v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget v6, v6, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mLastItemBottomPadding:I

    goto :goto_37

    :cond_33
    iget-object v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget v6, v6, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mBottomPadding:I

    .line 407
    :goto_37
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 413
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->mActionMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 414
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_52

    .line 415
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 417
    :cond_52
    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->mActionMenu:Landroid/view/Menu;

    invoke-interface {v3, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 418
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "holder":Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_8b

    .line 421
    :cond_6c
    instance-of v1, p1, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;

    if-eqz v1, :cond_8b

    .line 422
    move-object v1, p1

    check-cast v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;

    .line 423
    .local v1, "holder":Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;
    iget-object v2, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget v3, v3, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mFirstItemTopPadding:I

    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget v4, v4, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mBottomPadding:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 424
    iget-object v2, v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    iget-object v3, v3, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    .line 421
    .end local v1    # "holder":Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;
    :cond_8b
    :goto_8b
    nop

    .line 426
    :goto_8c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 430
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_20

    .line 439
    nop

    .line 440
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/wear/R$layout;->ws_action_drawer_item_view:I

    .line 441
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "actionView":Landroid/view/View;
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    new-instance v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;

    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerView;

    invoke-direct {v1, v2, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;-><init>(Landroidx/wear/widget/drawer/WearableActionDrawerView;Landroid/view/View;)V

    return-object v1

    .line 432
    .end local v0    # "actionView":Landroid/view/View;
    :cond_20
    nop

    .line 433
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/wear/R$layout;->ws_action_drawer_title_view:I

    .line 434
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, "titleView":Landroid/view/View;
    new-instance v1, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;

    invoke-direct {v1, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
