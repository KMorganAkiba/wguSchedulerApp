.class public final enum Landroidx/room/RoomDatabase$JournalMode;
.super Ljava/lang/Enum;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JournalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/room/RoomDatabase$JournalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/room/RoomDatabase$JournalMode;

.field public static final enum AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

.field public static final enum TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

.field public static final enum WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 493
    new-instance v0, Landroidx/room/RoomDatabase$JournalMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    .line 498
    new-instance v0, Landroidx/room/RoomDatabase$JournalMode;

    const-string v1, "TRUNCATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    .line 503
    new-instance v0, Landroidx/room/RoomDatabase$JournalMode;

    const-string v1, "WRITE_AHEAD_LOGGING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 484
    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/room/RoomDatabase$JournalMode;

    sget-object v5, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    aput-object v5, v1, v2

    sget-object v2, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroidx/room/RoomDatabase$JournalMode;->$VALUES:[Landroidx/room/RoomDatabase$JournalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .registers 3
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 527
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 529
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/RoomDatabase$JournalMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 484
    const-class v0, Landroidx/room/RoomDatabase$JournalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomDatabase$JournalMode;

    return-object v0
.end method

.method public static values()[Landroidx/room/RoomDatabase$JournalMode;
    .registers 1

    .line 484
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->$VALUES:[Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v0}, [Landroidx/room/RoomDatabase$JournalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/RoomDatabase$JournalMode;

    return-object v0
.end method


# virtual methods
.method resolve(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 512
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    if-eq p0, v0, :cond_5

    .line 513
    return-object p0

    .line 515
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1f

    .line 516
    nop

    .line 517
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 518
    .local v0, "manager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1f

    invoke-static {v0}, Landroidx/room/RoomDatabase$JournalMode;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 519
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    return-object v1

    .line 522
    .end local v0    # "manager":Landroid/app/ActivityManager;
    :cond_1f
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    return-object v0
.end method
