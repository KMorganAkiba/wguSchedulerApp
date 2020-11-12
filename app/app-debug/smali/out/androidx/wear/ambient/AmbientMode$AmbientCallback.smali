.class public abstract Landroidx/wear/ambient/AmbientMode$AmbientCallback;
.super Ljava/lang/Object;
.source "AmbientMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/ambient/AmbientMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AmbientCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientOffloadInvalidated()V
    .registers 1

    .line 135
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method public onExitAmbient()V
    .registers 1

    .line 129
    return-void
.end method

.method public onUpdateAmbient()V
    .registers 1

    .line 123
    return-void
.end method
