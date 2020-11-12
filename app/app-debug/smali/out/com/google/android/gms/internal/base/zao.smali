.class final Lcom/google/android/gms/internal/base/zao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/base/zal;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/base/zan;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zao;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;
    .registers 4

    .line 2
    const/4 p1, 0x2

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method
