.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .registers 15

    .line 2
    if-eqz p0, :cond_c5

    array-length v0, p0

    if-eqz v0, :cond_c5

    if-ltz p1, :cond_c5

    if-lez p2, :cond_c5

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_10

    goto/16 :goto_c5

    .line 4
    :cond_10
    const/16 v0, 0x39

    .line 5
    if-eqz p3, :cond_16

    .line 6
    const/16 v0, 0x4b

    .line 7
    :cond_16
    add-int/lit8 v1, p2, 0x10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x10

    div-int/2addr v1, v3

    mul-int/2addr v0, v1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    nop

    .line 10
    nop

    .line 11
    nop

    .line 12
    const/4 v0, 0x0

    move v4, p2

    move v5, v0

    move v6, v5

    :goto_2a
    if-lez v4, :cond_c0

    .line 13
    const/16 v7, 0x8

    if-nez v5, :cond_5a

    .line 14
    nop

    .line 15
    const/high16 v6, 0x10000

    if-ge p2, v6, :cond_47

    .line 16
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v8, "%04X:"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 17
    :cond_47
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v8, "%08X:"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_58
    move v6, p1

    goto :goto_61

    .line 18
    :cond_5a
    if-ne v5, v7, :cond_61

    .line 19
    const-string v8, " -"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_61
    :goto_61
    new-array v8, v2, [Ljava/lang/Object;

    aget-byte v9, p0, p1

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, " %02X"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    add-int/lit8 v4, v4, -0x1

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    if-eqz p3, :cond_b2

    if-eq v5, v3, :cond_80

    if-nez v4, :cond_b2

    .line 24
    :cond_80
    rsub-int/lit8 v8, v5, 0x10

    .line 25
    if-lez v8, :cond_8f

    .line 26
    move v9, v0

    :goto_85
    if-ge v9, v8, :cond_8f

    .line 27
    const-string v10, "   "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v9, v9, 0x1

    goto :goto_85

    .line 29
    :cond_8f
    const-string v9, "  "

    if-lt v8, v7, :cond_96

    .line 30
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_96
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move v7, v0

    :goto_9a
    if-ge v7, v5, :cond_b2

    .line 33
    add-int v8, v6, v7

    aget-byte v8, p0, v8

    int-to-char v8, v8

    .line 34
    const/16 v9, 0x20

    if-lt v8, v9, :cond_aa

    const/16 v9, 0x7e

    if-gt v8, v9, :cond_aa

    goto :goto_ac

    :cond_aa
    const/16 v8, 0x2e

    :goto_ac
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v7, v7, 0x1

    goto :goto_9a

    .line 36
    :cond_b2
    if-eq v5, v3, :cond_b6

    if-nez v4, :cond_bc

    .line 37
    :cond_b6
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    move v5, v0

    .line 39
    :cond_bc
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2a

    .line 40
    :cond_c0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_c5
    :goto_c5
    const/4 p0, 0x0

    return-object p0
.end method
