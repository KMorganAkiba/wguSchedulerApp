.class Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;
.super Ljava/lang/Object;
.source "WearableActionDrawerMenu.java"

# interfaces
.implements Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem$MenuItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableActionDrawerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/drawer/WearableActionDrawerMenu;


# direct methods
.method constructor <init>(Landroidx/wear/widget/drawer/WearableActionDrawerMenu;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/widget/drawer/WearableActionDrawerMenu;

    .line 44
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemChanged(Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;)V
    .registers 4
    .param p1, "item"    # Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuItem;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerMenu;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 48
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerMenu;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1c

    .line 49
    iget-object v1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$1;->this$0:Landroidx/wear/widget/drawer/WearableActionDrawerMenu;

    iget-object v1, v1, Landroidx/wear/widget/drawer/WearableActionDrawerMenu;->mListener:Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;

    invoke-interface {v1, v0}, Landroidx/wear/widget/drawer/WearableActionDrawerMenu$WearableActionDrawerMenuListener;->menuItemChanged(I)V

    .line 47
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method
