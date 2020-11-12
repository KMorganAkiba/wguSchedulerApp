.class Landroidx/wear/ambient/WearableControllerProvider$1;
.super Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;
.source "WearableControllerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/wear/ambient/WearableControllerProvider;->getWearableController(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)Lcom/google/android/wearable/compat/WearableActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/ambient/WearableControllerProvider;

.field final synthetic val$callback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# direct methods
.method constructor <init>(Landroidx/wear/ambient/WearableControllerProvider;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/wear/ambient/WearableControllerProvider;

    .line 52
    iput-object p1, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->this$0:Landroidx/wear/ambient/WearableControllerProvider;

    iput-object p2, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->val$callback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-direct {p0}, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterAmbient(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .line 55
    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->val$callback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0, p1}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onExitAmbient()V
    .registers 2

    .line 65
    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->val$callback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onExitAmbient()V

    .line 66
    return-void
.end method

.method public onInvalidateAmbientOffload()V
    .registers 2

    .line 70
    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->val$callback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onAmbientOffloadInvalidated()V

    .line 71
    return-void
.end method

.method public onUpdateAmbient()V
    .registers 2

    .line 60
    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->val$callback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onUpdateAmbient()V

    .line 61
    return-void
.end method
