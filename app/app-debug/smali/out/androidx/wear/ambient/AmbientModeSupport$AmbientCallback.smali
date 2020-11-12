.class public abstract Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;
.super Ljava/lang/Object;
.source "AmbientModeSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/ambient/AmbientModeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AmbientCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientOffloadInvalidated()V
    .registers 1

    .line 134
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method public onExitAmbient()V
    .registers 1

    .line 128
    return-void
.end method

.method public onUpdateAmbient()V
    .registers 1

    .line 122
    return-void
.end method
