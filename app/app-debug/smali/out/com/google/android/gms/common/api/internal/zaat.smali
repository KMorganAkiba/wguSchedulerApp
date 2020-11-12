.class final Lcom/google/android/gms/common/api/internal/zaat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private final synthetic zagj:Lcom/google/android/gms/common/api/internal/zaak;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/api/internal/zaal;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaat;-><init>(Lcom/google/android/gms/common/api/internal/zaak;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zai(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ClientSettings;->isSignInClientDisconnectFixEnabled()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_15
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zaf(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/signin/zad;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_41

    if-nez p1, :cond_27

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    return-void

    .line 7
    :cond_27
    :try_start_27
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zaf(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/signin/zad;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaar;-><init>(Lcom/google/android/gms/common/api/internal/zaak;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zad;->zaa(Lcom/google/android/gms/signin/internal/zad;)V
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_41

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    return-void

    .line 10
    :catchall_41
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 11
    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zaf(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/signin/zad;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaar;-><init>(Lcom/google/android/gms/common/api/internal/zaak;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zad;->zaa(Lcom/google/android/gms/signin/internal/zad;)V

    .line 12
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaak;->zab(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zaj(Lcom/google/android/gms/common/api/internal/zaak;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zak(Lcom/google/android/gms/common/api/internal/zaak;)V

    goto :goto_21

    .line 18
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaak;->zaa(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2b

    .line 19
    :goto_21
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    return-void

    .line 21
    :catchall_2b
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaat;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    .line 13
    return-void
.end method
