.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;
.super Lcom/google/android/gms/common/internal/BaseGmsClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient$zza;"
    }
.end annotation


# instance fields
.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    .line 3
    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 6
    return-void

    .line 7
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 9
    return-void
.end method

.method protected final zzm()Z
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 11
    const/4 v0, 0x1

    return v0
.end method
