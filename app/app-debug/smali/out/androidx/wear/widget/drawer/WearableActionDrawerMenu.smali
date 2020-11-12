.class Landroidx/wear/widget/drawer/WearableActionDrawerMenu;
.super Ljava/lang/Object;
.source "WearableActionDrawerMenu.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;,
        Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

.field final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final mListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    .line 43
    new-instance v0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;-><init>(Landroidx/wear/widget/drawer/WearableActionDrawerMenu;)V

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

    .line 56
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;

    .line 58
    return-void
.end method

.method private findItemIndex(I)I
    .registers 6
    .param p1, "id"    # I

    .line 124
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    .line 125
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 126
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_19

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;

    invoke-virtual {v3}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 128
    return v2

    .line 126
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 132
    .end local v2    # "i":I
    :cond_19
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "titleRes"    # I

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 72
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 77
    new-instance v0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

    invoke-direct {v0, v1, p2, p4, v2}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;)V

    .line 79
    .local v0, "item":Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;

    iget-object v2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;->menuItemAdded(I)V

    .line 81
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 11
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addIntentOptions is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 4
    .param p1, "titleRes"    # I

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addSubMenu is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 7
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addSubMenu is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 7
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addSubMenu is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addSubMenu is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;

    invoke-interface {v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;->menuChanged()V

    .line 88
    return-void
.end method

.method public close()V
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "close is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "id"    # I

    .line 102
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->findItemIndex(I)I

    move-result v0

    .line 103
    .local v0, "index":I
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    goto :goto_18

    .line 106
    :cond_f
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    return-object v1

    .line 104
    :cond_18
    :goto_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "index"    # I

    .line 117
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 120
    :cond_b
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0

    .line 118
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "performIdentifierAction is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "performShortcut is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGroup(I)V
    .registers 2
    .param p1, "groupId"    # I

    .line 175
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .param p1, "id"    # I

    .line 92
    invoke-direct {p0, p1}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->findItemIndex(I)I

    move-result v0

    .line 93
    .local v0, "index":I
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    goto :goto_1a

    .line 96
    :cond_f
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;

    invoke-interface {v1, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;->menuItemRemoved(I)V

    .line 98
    return-void

    .line 94
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 6
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setGroupCheckable is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupEnabled(IZ)V
    .registers 5
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setGroupEnabled is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupVisible(IZ)V
    .registers 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setGroupVisible is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQwertyMode(Z)V
    .registers 2
    .param p1, "isQwerty"    # Z

    .line 214
    return-void
.end method

.method public size()I
    .registers 2

    .line 111
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
