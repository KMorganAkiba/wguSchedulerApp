.class public final Landroidx/wear/ambient/AmbientModeSupport;
.super Landroidx/fragment/app/Fragment;
.source "AmbientModeSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/ambient/AmbientModeSupport$AmbientController;,
        Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;,
        Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;
    }
.end annotation


# static fields
.field public static final EXTRA_BURN_IN_PROTECTION:Ljava/lang/String; = "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

.field public static final EXTRA_LOWBIT_AMBIENT:Ljava/lang/String; = "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "android.support.wearable.ambient.AmbientMode"

.field private static final TAG:Ljava/lang/String; = "AmbientMode"


# instance fields
.field private final mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

.field private mController:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field mDelegate:Landroidx/wear/ambient/AmbientDelegate;

.field mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 177
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 137
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$1;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$1;-><init>(Landroidx/wear/ambient/AmbientModeSupport;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    .line 178
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Landroidx/wear/ambient/AmbientModeSupport;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mController:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    .line 179
    return-void
.end method

.method public static attach(Landroidx/fragment/app/FragmentActivity;)Landroidx/wear/ambient/AmbientModeSupport$AmbientController;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/FragmentActivity;",
            ">(TT;)",
            "Landroidx/wear/ambient/AmbientModeSupport$AmbientController;"
        }
    .end annotation

    .line 253
    .local p0, "activity":Landroidx/fragment/app/FragmentActivity;, "TT;"
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 254
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 255
    const-string v1, "android.support.wearable.ambient.AmbientMode"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/wear/ambient/AmbientModeSupport;

    .line 256
    .local v2, "ambientFragment":Landroidx/wear/ambient/AmbientModeSupport;
    if-nez v2, :cond_21

    .line 257
    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport;

    invoke-direct {v3}, Landroidx/wear/ambient/AmbientModeSupport;-><init>()V

    .line 258
    .local v3, "fragment":Landroidx/wear/ambient/AmbientModeSupport;
    nop

    .line 259
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 260
    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 262
    move-object v2, v3

    .line 264
    .end local v3    # "fragment":Landroidx/wear/ambient/AmbientModeSupport;
    :cond_21
    iget-object v1, v2, Landroidx/wear/ambient/AmbientModeSupport;->mController:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 269
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    if-eqz v0, :cond_7

    .line 270
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 272
    :cond_7
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 185
    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientModeSupport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroidx/wear/ambient/WearableControllerProvider;

    invoke-direct {v2}, Landroidx/wear/ambient/WearableControllerProvider;-><init>()V

    iget-object v3, p0, Landroidx/wear/ambient/AmbientModeSupport;->mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-direct {v0, v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/WearableControllerProvider;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    .line 187
    instance-of v0, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;

    if-eqz v0, :cond_23

    .line 188
    move-object v0, p1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;->getAmbientCallback()Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    goto :goto_2a

    .line 190
    :cond_23
    const-string v0, "AmbientMode"

    const-string v1, "No callback provided - enabling only smart resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_2a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 197
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onCreate()V

    .line 199
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mSuppliedCallback:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    if-eqz v0, :cond_11

    .line 200
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->setAmbientEnabled()V

    .line 202
    :cond_11
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 228
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onDestroy()V

    .line 229
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 230
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    .line 236
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 237
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 214
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onPause()V

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 216
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 207
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 208
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onResume()V

    .line 209
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 221
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onStop()V

    .line 222
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 223
    return-void
.end method

.method setAmbientDelegate(Landroidx/wear/ambient/AmbientDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroidx/wear/ambient/AmbientDelegate;

    .line 276
    iput-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    .line 277
    return-void
.end method
