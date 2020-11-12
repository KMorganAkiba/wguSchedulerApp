.class public final Landroidx/wear/ambient/AmbientModeSupport$AmbientController;
.super Ljava/lang/Object;
.source "AmbientModeSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/ambient/AmbientModeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AmbientController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientController"


# instance fields
.field final synthetic this$0:Landroidx/wear/ambient/AmbientModeSupport;


# direct methods
.method constructor <init>(Landroidx/wear/ambient/AmbientModeSupport;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/wear/ambient/AmbientModeSupport;

    .line 288
    iput-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAmbient()Z
    .registers 2

    .line 294
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->isAmbient()Z

    move-result v0

    :goto_10
    return v0
.end method

.method public setAmbientOffloadEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 301
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->this$0:Landroidx/wear/ambient/AmbientModeSupport;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport;->mDelegate:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->setAmbientOffloadEnabled(Z)V

    .line 304
    :cond_d
    return-void
.end method
