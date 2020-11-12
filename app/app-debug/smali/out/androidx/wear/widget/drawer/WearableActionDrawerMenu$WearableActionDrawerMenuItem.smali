.class public final Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;
.super Ljava/lang/Object;
.source "WearableActionDrawerMenu.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableActionDrawerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableActionDrawerMenuItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mId:I

.field private final mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mContext:Landroid/content/Context;

    .line 240
    iput p2, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mId:I

    .line 241
    iput-object p3, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 242
    iput-object p4, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

    .line 243
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 3

    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "collapseActionView is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandActionView()Z
    .registers 3

    .line 441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "expandActionView is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 285
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .line 247
    iget v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 266
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method invoke()Z
    .registers 2

    .line 465
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 3

    .line 451
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isActionViewExpanded is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .line 431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setActionProvider is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "resId"    # I

    .line 421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setActionView is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setActionView is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .param p1, "alphaChar"    # C

    .line 341
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 2
    .param p1, "checkable"    # Z

    .line 351
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 2
    .param p1, "checked"    # Z

    .line 361
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 2
    .param p1, "enabled"    # Z

    .line 381
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "iconRes"    # I

    .line 280
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 271
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

    if-eqz v0, :cond_9

    .line 273
    invoke-interface {v0, p0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;->itemChanged(Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;)V

    .line 275
    :cond_9
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setIntent is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .param p1, "numericChar"    # C

    .line 331
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setOnActionExpandListener is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 290
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 291
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 5
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setShortcut is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsAction(I)V
    .registers 4
    .param p1, "actionEnum"    # I

    .line 406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setShowAsAction is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "actionEnum"    # I

    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setShowAsActionFlags is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # I

    .line 261
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 252
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 253
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;->mItemChangedListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;

    if-eqz v0, :cond_9

    .line 254
    invoke-interface {v0, p0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;->itemChanged(Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;)V

    .line 256
    :cond_9
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 306
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2
    .param p1, "visible"    # Z

    .line 371
    return-object p0
.end method
