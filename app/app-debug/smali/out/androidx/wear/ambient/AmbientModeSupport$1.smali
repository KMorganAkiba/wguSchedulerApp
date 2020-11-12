.class Landroidx/wear/ambient/AmbientModeSupport$1;
.super Ljava/lang/Object;
.source "AmbientModeSupport.java"

# interfaces
.implements Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/ambient/AmbientModeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/ambient/AmbientModeSupport;


# direct methods
.method constructor <init>(Landroidx/wear/ambient/AmbientModeSupport;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/ambient/AmbientModeSupport;

    .line 138
    iput-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientOffloadInvalidated()V
    .registers 2

    .line 162
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->onAmbientOffloadInvalidated()V

    .line 165
    :cond_d
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .line 141
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 144
    :cond_d
    return-void
.end method

.method public onExitAmbient()V
    .registers 2

    .line 148
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    if-eqz v0, :cond_d

    .line 149
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->onExitAmbient()V

    .line 151
    :cond_d
    return-void
.end method

.method public onUpdateAmbient()V
    .registers 2

    .line 155
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$1;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->onUpdateAmbient()V

    .line 158
    :cond_d
    return-void
.end method
