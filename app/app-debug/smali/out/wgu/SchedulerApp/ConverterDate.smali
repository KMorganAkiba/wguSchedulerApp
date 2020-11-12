.class public Lwgu/SchedulerApp/ConverterDate;
.super Ljava/lang/Object;
.source "ConverterDate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateTimeStamps(Ljava/util/Date;)Ljava/lang/Long;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;

    .line 11
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;
    .registers 4
    .param p0, "value"    # Ljava/lang/Long;

    .line 9
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_d

    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_d
    return-object v0
.end method
