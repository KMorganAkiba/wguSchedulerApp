.class final Lcom/google/android/gms/maps/zzaf;
.super Lcom/google/android/gms/maps/internal/zzbm;


# instance fields
.field private final synthetic zzbr:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzaf;->zzbr:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzaf;->zzbr:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;->onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    .line 3
    return-void
.end method
