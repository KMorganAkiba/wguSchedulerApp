.class public Landroidx/wear/widget/drawer/WearableDrawerLayout$DrawerStateCallback;
.super Ljava/lang/Object;
.source "WearableDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawerStateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 3
    .param p1, "layout"    # Landroidx/wear/widget/drawer/WearableDrawerLayout;
    .param p2, "drawerView"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 923
    return-void
.end method

.method public onDrawerOpened(Landroidx/wear/widget/drawer/WearableDrawerLayout;Landroidx/wear/widget/drawer/WearableDrawerView;)V
    .registers 3
    .param p1, "layout"    # Landroidx/wear/widget/drawer/WearableDrawerLayout;
    .param p2, "drawerView"    # Landroidx/wear/widget/drawer/WearableDrawerView;

    .line 917
    return-void
.end method

.method public onDrawerStateChanged(Landroidx/wear/widget/drawer/WearableDrawerLayout;I)V
    .registers 3
    .param p1, "layout"    # Landroidx/wear/widget/drawer/WearableDrawerLayout;
    .param p2, "newState"    # I

    .line 931
    return-void
.end method
