.class Lwgu/SchedulerApp/TermsDAO_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "TermsDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/TermsDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lwgu/SchedulerApp/Terms;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/TermsDAO_Impl;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/TermsDAO_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lwgu/SchedulerApp/TermsDAO_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;

    .line 31
    iput-object p1, p0, Lwgu/SchedulerApp/TermsDAO_Impl$1;->this$0:Lwgu/SchedulerApp/TermsDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 31
    check-cast p2, Lwgu/SchedulerApp/Terms;

    invoke-virtual {p0, p1, p2}, Lwgu/SchedulerApp/TermsDAO_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Terms;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lwgu/SchedulerApp/Terms;)V
    .registers 8
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lwgu/SchedulerApp/Terms;

    .line 39
    invoke-virtual {p2}, Lwgu/SchedulerApp/Terms;->getTerm_id()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 40
    invoke-virtual {p2}, Lwgu/SchedulerApp/Terms;->getTerm_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_14

    .line 41
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1b

    .line 43
    :cond_14
    invoke-virtual {p2}, Lwgu/SchedulerApp/Terms;->getTerm_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_1b
    invoke-virtual {p2}, Lwgu/SchedulerApp/Terms;->getTerm_start()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lwgu/SchedulerApp/ConverterDate;->dateTimeStamps(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    .line 47
    .local v0, "_tmp":Ljava/lang/Long;
    const/4 v1, 0x3

    if-nez v0, :cond_2a

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_31

    .line 50
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 53
    :goto_31
    invoke-virtual {p2}, Lwgu/SchedulerApp/Terms;->getTerm_end()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lwgu/SchedulerApp/ConverterDate;->dateTimeStamps(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v1

    .line 54
    .local v1, "_tmp_1":Ljava/lang/Long;
    const/4 v2, 0x4

    if-nez v1, :cond_40

    .line 55
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_47

    .line 57
    :cond_40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 59
    :goto_47
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "INSERT OR ABORT INTO `terms_table` (`term_id`,`term_name`,`term_start`,`term_end`) VALUES (nullif(?, 0),?,?,?)"

    return-object v0
.end method
