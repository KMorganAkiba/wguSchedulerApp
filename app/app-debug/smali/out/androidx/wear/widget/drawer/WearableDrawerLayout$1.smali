.class final Landroidx/wear/widget/drawer/WearableDrawerLayout$1;
.super Ljava/lang/Object;
.source "WearableDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/wear/widget/drawer/WearableDrawerLayout;->animatePeekVisibleAfterBeingClosed(Landroidx/wear/widget/drawer/WearableDrawerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 265
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$1;->val$content:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 268
    iget-object v0, p0, Landroidx/wear/widget/drawer/WearableDrawerLayout$1;->val$content:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void
.end method
