.class public final Landroidx/wear/ambient/AmbientMode;
.super Landroid/app/Fragment;
.source "AmbientMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/ambient/AmbientMode$AmbientController;,
        Landroidx/wear/ambient/AmbientMode$AmbientCallback;,
        Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_BURN_IN_PROTECTION:Ljava/lang/String; = "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

.field public static final EXTRA_LOWBIT_AMBIENT:Ljava/lang/String; = "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "android.support.wearable.ambient.AmbientMode"

.field private static final TAG:Ljava/lang/String; = "AmbientMode"


# instance fields
.field private final mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

.field private mController:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field mDelegate:Landroidx/wear/ambient/AmbientDelegate;

.field mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 176
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 138
    new-instance v0, Landroidx/wear/ambient/AmbientMode$1;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$1;-><init>(Landroidx/wear/ambient/AmbientMode;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    .line 177
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/wear/ambient/AmbientMode;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mController:Landroidx/wear/ambient/AmbientMode$AmbientController;

    .line 178
    return-void
.end method

.method public static attachAmbientSupport(Landroid/app/Activity;)Landroidx/wear/ambient/AmbientMode$AmbientController;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;)",
            "Landroidx/wear/ambient/AmbientMode$AmbientController;"
        }
    .end annotation

    .line 252
    .local p0, "activity":Landroid/app/Activity;, "TT;"
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 253
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v1, "android.support.wearable.ambient.AmbientMode"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/wear/ambient/AmbientMode;

    .line 254
    .local v2, "ambientFragment":Landroidx/wear/ambient/AmbientMode;
    if-nez v2, :cond_20

    .line 255
    new-instance v3, Landroidx/wear/ambient/AmbientMode;

    invoke-direct {v3}, Landroidx/wear/ambient/AmbientMode;-><init>()V

    .line 256
    .local v3, "fragment":Landroidx/wear/ambient/AmbientMode;
    nop

    .line 257
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 258
    invoke-virtual {v4, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 260
    move-object v2, v3

    .line 262
    .end local v3    # "fragment":Landroidx/wear/ambient/AmbientMode;
    :cond_20
    iget-object v1, v2, Landroidx/wear/ambient/AmbientMode;->mController:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 267
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    if-eqz v0, :cond_7

    .line 268
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 270
    :cond_7
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 184
    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroidx/wear/ambient/WearableControllerProvider;

    invoke-direct {v2}, Landroidx/wear/ambient/WearableControllerProvider;-><init>()V

    iget-object v3, p0, Landroidx/wear/ambient/AmbientMode;->mCallback:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-direct {v0, v1, v2, v3}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/WearableControllerProvider;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    .line 186
    instance-of v0, p1, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;

    if-eqz v0, :cond_23

    .line 187
    move-object v0, p1

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;->getAmbientCallback()Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    goto :goto_2a

    .line 189
    :cond_23
    const-string v0, "AmbientMode"

    const-string v1, "No callback provided - enabling only smart resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_2a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 196
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onCreate()V

    .line 198
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mSuppliedCallback:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->setAmbientEnabled()V

    .line 201
    :cond_11
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 227
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onDestroy()V

    .line 228
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 229
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    .line 235
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 236
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 213
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onPause()V

    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 215
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 207
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onResume()V

    .line 208
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 220
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->onStop()V

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 222
    return-void
.end method

.method setAmbientDelegate(Landroidx/wear/ambient/AmbientDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroidx/wear/ambient/AmbientDelegate;

    .line 274
    iput-object p1, p0, Landroidx/wear/ambient/AmbientMode;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    .line 275
    return-void
.end method
