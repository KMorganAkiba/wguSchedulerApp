.class Landroidx/wear/widget/ConfirmationOverlay$1;
.super Ljava/lang/Object;
.source "ConfirmationOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/ConfirmationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/ConfirmationOverlay;


# direct methods
.method constructor <init>(Landroidx/wear/widget/ConfirmationOverlay;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/widget/ConfirmationOverlay;

    .line 133
    iput-object p1, p0, Landroidx/wear/widget/ConfirmationOverlay$1;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 136
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay$1;->this$0:Landroidx/wear/widget/ConfirmationOverlay;

    invoke-virtual {v0}, Landroidx/wear/widget/ConfirmationOverlay;->hide()V

    .line 137
    return-void
.end method
