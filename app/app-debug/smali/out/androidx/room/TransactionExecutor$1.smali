.class Landroidx/room/TransactionExecutor$1;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/TransactionExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/room/TransactionExecutor;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/room/TransactionExecutor;

    .line 42
    iput-object p1, p0, Landroidx/room/TransactionExecutor$1;->this$0:Landroidx/room/TransactionExecutor;

    iput-object p2, p0, Landroidx/room/TransactionExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 45
    :try_start_0
    iget-object v0, p0, Landroidx/room/TransactionExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 47
    iget-object v0, p0, Landroidx/room/TransactionExecutor$1;->this$0:Landroidx/room/TransactionExecutor;

    invoke-virtual {v0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 48
    nop

    .line 49
    return-void

    .line 47
    :catchall_c
    move-exception v0

    iget-object v1, p0, Landroidx/room/TransactionExecutor$1;->this$0:Landroidx/room/TransactionExecutor;

    invoke-virtual {v1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 48
    throw v0
.end method
