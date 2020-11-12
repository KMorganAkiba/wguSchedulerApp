.class Landroidx/room/MultiInstanceInvalidationClient$5;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/MultiInstanceInvalidationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/room/MultiInstanceInvalidationClient;

    .line 141
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 144
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationClient;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 146
    :try_start_b
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationClient;->mService:Landroidx/room/IMultiInstanceInvalidationService;

    .line 147
    .local v0, "service":Landroidx/room/IMultiInstanceInvalidationService;
    if-eqz v0, :cond_1c

    .line 148
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationClient;->mCallback:Landroidx/room/IMultiInstanceInvalidationCallback;

    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget v2, v2, Landroidx/room/MultiInstanceInvalidationClient;->mClientId:I

    invoke-interface {v0, v1, v2}, Landroidx/room/IMultiInstanceInvalidationService;->unregisterCallback(Landroidx/room/IMultiInstanceInvalidationCallback;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 152
    .end local v0    # "service":Landroidx/room/IMultiInstanceInvalidationService;
    :cond_1c
    goto :goto_25

    .line 150
    :catch_1d
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationClient;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 154
    return-void
.end method
