.class Landroidx/wear/ambient/AmbientMode$1;
.super Ljava/lang/Object;
.source "AmbientMode.java"

# interfaces
.implements Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/ambient/AmbientMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/ambient/AmbientMode;


# direct methods
.method constructor <init>(Landroidx/wear/ambient/AmbientMode;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/ambient/AmbientMode;

    .line 139
    iput-object p1, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientOffloadInvalidated()V
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    if-eqz v0, :cond_d

    .line 164
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->onAmbientOffloadInvalidated()V

    .line 166
    :cond_d
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .line 142
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 145
    :cond_d
    return-void
.end method

.method public onExitAmbient()V
    .registers 2

    .line 149
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    if-eqz v0, :cond_d

    .line 150
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->onExitAmbient()V

    .line 152
    :cond_d
    return-void
.end method

.method public onUpdateAmbient()V
    .registers 2

    .line 156
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    if-eqz v0, :cond_d

    .line 157
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$1;->this$0:Landroidx/wear/ambient/AmbientMode;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->onUpdateAmbient()V

    .line 159
    :cond_d
    return-void
.end method
