.class final Landroidx/wear/ambient/AmbientDelegate;
.super Ljava/lang/Object;
.source "AmbientDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientDelegate"

.field private static sHasAutoResumeEnabledMethod:Z

.field private static sInitAutoResumeEnabledMethod:Z


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

.field private mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

.field private final mWearableControllerProvider:Landroidx/wear/ambient/WearableControllerProvider;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/wear/ambient/WearableControllerProvider;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wearableControllerProvider"    # Landroidx/wear/ambient/WearableControllerProvider;
    .param p3, "callback"    # Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    .line 92
    iput-object p3, p0, Landroidx/wear/ambient/AmbientDelegate;->mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    .line 93
    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableControllerProvider:Landroidx/wear/ambient/WearableControllerProvider;

    .line 94
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/wearable/compat/WearableActivityController;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 181
    :cond_7
    return-void
.end method

.method isAmbient()Z
    .registers 2

    .line 167
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->isAmbient()Z

    move-result v0

    return v0

    .line 170
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method onCreate()V
    .registers 4

    .line 100
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_14

    .line 102
    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableControllerProvider:Landroidx/wear/ambient/WearableControllerProvider;

    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    .line 103
    invoke-virtual {v1, v0, v2}, Landroidx/wear/ambient/WearableControllerProvider;->getWearableController(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)Lcom/google/android/wearable/compat/WearableActivityController;

    move-result-object v1

    iput-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    .line 105
    :cond_14
    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v1, :cond_1b

    .line 106
    invoke-virtual {v1}, Lcom/google/android/wearable/compat/WearableActivityController;->onCreate()V

    .line 108
    :cond_1b
    return-void
.end method

.method onDestroy()V
    .registers 2

    .line 141
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onDestroy()V

    .line 144
    :cond_7
    return-void
.end method

.method onPause()V
    .registers 2

    .line 123
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onPause()V

    .line 126
    :cond_7
    return-void
.end method

.method onResume()V
    .registers 2

    .line 114
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 115
    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onResume()V

    .line 117
    :cond_7
    return-void
.end method

.method onStop()V
    .registers 2

    .line 132
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onStop()V

    .line 135
    :cond_7
    return-void
.end method

.method setAmbientEnabled()V
    .registers 2

    .line 151
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->setAmbientEnabled()V

    .line 154
    :cond_7
    return-void
.end method

.method public setAmbientOffloadEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 158
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v0, p1}, Lcom/google/android/wearable/compat/WearableActivityController;->setAmbientOffloadEnabled(Z)V

    .line 161
    :cond_7
    return-void
.end method
