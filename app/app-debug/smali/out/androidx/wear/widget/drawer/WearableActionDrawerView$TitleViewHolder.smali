.class final Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WearableActionDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/drawer/WearableActionDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TitleViewHolder"
.end annotation


# instance fields
.field public final textView:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 368
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 369
    iput-object p1, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;->view:Landroid/view/View;

    .line 370
    sget v0, Landroidx/wear/R$id;->ws_action_drawer_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/wear/widget/drawer/WearableActionDrawerView$TitleViewHolder;->textView:Landroid/widget/TextView;

    .line 371
    return-void
.end method
