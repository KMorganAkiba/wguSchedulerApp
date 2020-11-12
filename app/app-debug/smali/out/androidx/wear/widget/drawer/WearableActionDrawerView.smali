.class public Landroidx/wear/widget/drawer/WearableActionDrawerView;
.super Landroidx/wear/widget/drawer/WearableDrawerView;
.source "WearableActionDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionItemViewHolder;,
        Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;,
        Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableActionDrawer"


# instance fields
.field final mActionList:Landroidx/recyclerview/widget/RecyclerView;

.field final mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mBottomPadding:I

.field final mFirstItemTopPadding:I

.field final mIconRightMargin:I

.field final mLastItemBottomPadding:I

.field final mLeftPadding:I

.field private mMenu:Landroid/view/Menu;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mPeekActionIcon:Landroid/widget/ImageView;

.field private final mPeekExpandIcon:Landroid/widget/ImageView;

.field final mRightPadding:I

.field private final mShowOverflowInPeek:Z

.field mTitle:Ljava/lang/CharSequence;

.field final mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/wear/widget/drawer/WearableDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->setLockedWhenClosed(Z)V

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "showOverflowInPeek":Z
    const/4 v2, 0x0

    .line 118
    .local v2, "menuRes":I
    const/4 v3, 0x0

    if-eqz p2, :cond_31

    .line 119
    sget-object v4, Landroidx/wear/R$styleable;->WearableActionDrawerView:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 123
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    :try_start_12
    sget v5, Landroidx/wear/R$styleable;->WearableActionDrawerView_drawerTitle:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTitle:Ljava/lang/CharSequence;

    .line 124
    sget v5, Landroidx/wear/R$styleable;->WearableActionDrawerView_showOverflowInPeek:I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v1, v5

    .line 126
    sget v5, Landroidx/wear/R$styleable;->WearableActionDrawerView_actionMenu:I

    .line 127
    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2c

    move v2, v5

    .line 129
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    goto :goto_31

    .line 129
    :catchall_2c
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 133
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_31
    :goto_31
    nop

    .line 134
    const-string v4, "accessibility"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 135
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v1, :cond_44

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_43

    goto :goto_44

    :cond_43
    move v0, v3

    :cond_44
    :goto_44
    iput-boolean v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mShowOverflowInPeek:Z

    .line 137
    if-nez v0, :cond_6e

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v5, Landroidx/wear/R$layout;->ws_action_drawer_peek_view:I

    .line 140
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v6

    .line 139
    invoke-virtual {v0, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, "peekView":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->setPeekContent(Landroid/view/View;)V

    .line 142
    sget v5, Landroidx/wear/R$id;->ws_action_drawer_peek_action_icon:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekActionIcon:Landroid/widget/ImageView;

    .line 143
    sget v5, Landroidx/wear/R$id;->ws_action_drawer_expand_icon:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekExpandIcon:Landroid/widget/ImageView;

    .line 144
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "peekView":Landroid/view/View;
    goto :goto_80

    .line 145
    :cond_6e
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekActionIcon:Landroid/widget/ImageView;

    .line 146
    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekExpandIcon:Landroid/widget/ImageView;

    .line 147
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getPeekContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v3, Landroidx/wear/R$string;->ws_action_drawer_content_description:I

    .line 148
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    :goto_80
    if-eqz v2, :cond_8e

    .line 154
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_8e
    invoke-static {p1}, Landroidx/wear/internal/widget/ResourcesUtil;->getScreenWidthPx(Landroid/content/Context;)I

    move-result v0

    .line 159
    .local v0, "screenWidthPx":I
    invoke-static {p1}, Landroidx/wear/internal/widget/ResourcesUtil;->getScreenHeightPx(Landroid/content/Context;)I

    move-result v3

    .line 161
    .local v3, "screenHeightPx":I
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 162
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Landroidx/wear/R$dimen;->ws_action_drawer_item_top_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTopPadding:I

    .line 163
    sget v6, Landroidx/wear/R$dimen;->ws_action_drawer_item_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mBottomPadding:I

    .line 164
    sget v6, Landroidx/wear/R$fraction;->ws_action_drawer_item_left_padding:I

    .line 165
    invoke-static {p1, v0, v6}, Landroidx/wear/internal/widget/ResourcesUtil;->getFractionOfScreenPx(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mLeftPadding:I

    .line 167
    sget v6, Landroidx/wear/R$fraction;->ws_action_drawer_item_right_padding:I

    .line 168
    invoke-static {p1, v0, v6}, Landroidx/wear/internal/widget/ResourcesUtil;->getFractionOfScreenPx(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mRightPadding:I

    .line 171
    sget v6, Landroidx/wear/R$fraction;->ws_action_drawer_item_first_item_top_padding:I

    .line 172
    invoke-static {p1, v3, v6}, Landroidx/wear/internal/widget/ResourcesUtil;->getFractionOfScreenPx(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mFirstItemTopPadding:I

    .line 175
    sget v6, Landroidx/wear/R$fraction;->ws_action_drawer_item_last_item_bottom_padding:I

    .line 176
    invoke-static {p1, v3, v6}, Landroidx/wear/internal/widget/ResourcesUtil;->getFractionOfScreenPx(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mLastItemBottomPadding:I

    .line 180
    sget v6, Landroidx/wear/R$dimen;->ws_action_drawer_item_icon_right_margin:I

    .line 181
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mIconRightMargin:I

    .line 183
    new-instance v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionList:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v7, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    new-instance v6, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;

    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroidx/wear/widget/drawer/WearableActionDrawerView$ActionListAdapter;-><init>(Landroidx/wear/widget/drawer/WearableActionDrawerView;Landroid/view/Menu;)V

    iput-object v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 186
    iget-object v7, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    iget-object v6, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v6}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->setDrawerContent(Landroid/view/View;)V

    .line 188
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 204
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->isOpened()Z

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    .line 307
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_14

    .line 308
    new-instance v0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;

    .line 309
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;

    invoke-direct {v2, p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView$1;-><init>(Landroidx/wear/widget/drawer/WearableActionDrawerView;)V

    invoke-direct {v0, v1, v2}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;-><init>(Landroid/content/Context;Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mMenu:Landroid/view/Menu;

    .line 359
    :cond_14
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method hasTitle()Z
    .registers 2

    .line 249
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDrawerOpened()V
    .registers 4

    .line 192
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1c

    .line 193
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 194
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1c

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 195
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 198
    .end local v0    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1c
    return-void
.end method

.method onMenuItemClicked(I)V
    .registers 4
    .param p1, "position"    # I

    .line 253
    if-ltz p1, :cond_25

    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 254
    nop

    .line 255
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;

    .line 256
    .local v0, "menuItem":Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;
    invoke-virtual {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->invoke()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 257
    return-void

    .line 260
    :cond_1e
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_25

    .line 261
    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 264
    .end local v0    # "menuItem":Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;
    :cond_25
    return-void
.end method

.method public onPeekContainerClicked(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 209
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mShowOverflowInPeek:Z

    if-eqz v0, :cond_8

    .line 210
    invoke-super {p0, p1}, Landroidx/wear/widget/drawer/WearableDrawerView;->onPeekContainerClicked(Landroid/view/View;)V

    goto :goto_c

    .line 212
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->onMenuItemClicked(I)V

    .line 214
    :goto_c
    return-void
.end method

.method preferGravity()I
    .registers 2

    .line 218
    const/16 v0, 0x50

    return v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 225
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 226
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 233
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 234
    return-void

    .line 237
    :cond_9
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTitle:Ljava/lang/CharSequence;

    .line 238
    .local v0, "oldTitle":Ljava/lang/CharSequence;
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mTitle:Ljava/lang/CharSequence;

    .line 239
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 240
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_23

    .line 241
    :cond_16
    if-nez p1, :cond_1e

    .line 242
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_23

    .line 244
    :cond_1e
    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 246
    :goto_23
    return-void
.end method

.method updatePeekIcons()V
    .registers 7

    .line 267
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekActionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekExpandIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    goto :goto_59

    .line 271
    :cond_9
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 272
    .local v0, "menu":Landroid/view/Menu;
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    .line 275
    .local v1, "numberOfActions":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_20

    .line 276
    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mActionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->setDrawerContent(Landroid/view/View;)V

    .line 277
    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    .line 279
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroidx/wear/widget/drawer/WearableActionDrawerView;->setDrawerContent(Landroid/view/View;)V

    .line 280
    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekExpandIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    :goto_2b
    if-lt v1, v2, :cond_58

    .line 284
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 288
    .local v2, "firstActionDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_46

    .line 289
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 293
    :cond_46
    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView;->mPeekActionIcon:Landroid/widget/ImageView;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 296
    .end local v2    # "firstActionDrawable":Landroid/graphics/drawable/Drawable;
    :cond_58
    return-void

    .line 268
    .end local v0    # "menu":Landroid/view/Menu;
    .end local v1    # "numberOfActions":I
    :cond_59
    :goto_59
    return-void
.end method
