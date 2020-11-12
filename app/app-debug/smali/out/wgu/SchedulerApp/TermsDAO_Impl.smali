.class public final Lwgu/SchedulerApp/TermsDAO_Impl;
.super Ljava/lang/Object;
.source "TermsDAO_Impl.java"

# interfaces
.implements Lwgu/SchedulerApp/TermsDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfTerms:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfTerms:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfTerms:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    new-instance v0, Lwgu/SchedulerApp/TermsDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/TermsDAO_Impl$1;-><init>(Lwgu/SchedulerApp/TermsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__insertionAdapterOfTerms:Landroidx/room/EntityInsertionAdapter;

    .line 61
    new-instance v0, Lwgu/SchedulerApp/TermsDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/TermsDAO_Impl$2;-><init>(Lwgu/SchedulerApp/TermsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__deletionAdapterOfTerms:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 72
    new-instance v0, Lwgu/SchedulerApp/TermsDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/TermsDAO_Impl$3;-><init>(Lwgu/SchedulerApp/TermsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__updateAdapterOfTerms:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 103
    return-void
.end method


# virtual methods
.method public deleteTerm(Lwgu/SchedulerApp/Terms;)V
    .registers 4
    .param p1, "terms"    # Lwgu/SchedulerApp/Terms;

    .line 131
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 132
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 134
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__deletionAdapterOfTerms:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 135
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 137
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 138
    throw v0
.end method

.method public getAllTerms()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation

    .line 253
    const-string v0, "SELECT * FROM terms_table"

    .line 254
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM terms_table"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 255
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 256
    iget-object v3, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 258
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_15
    const-string v3, "term_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 259
    .local v3, "_cursorIndexOfTermId":I
    const-string v4, "term_name"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, "_cursorIndexOfTermName":I
    const-string v5, "term_start"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 261
    .local v5, "_cursorIndexOfTermStart":I
    const-string v6, "term_end"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 262
    .local v6, "_cursorIndexOfTermEnd":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    :goto_36
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 265
    new-instance v8, Lwgu/SchedulerApp/Terms;

    invoke-direct {v8}, Lwgu/SchedulerApp/Terms;-><init>()V

    .line 267
    .local v8, "_item":Lwgu/SchedulerApp/Terms;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 268
    .local v9, "_tmpTerm_id":I
    invoke-virtual {v8, v9}, Lwgu/SchedulerApp/Terms;->setTerm_id(I)V

    .line 270
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, "_tmpTerm_name":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lwgu/SchedulerApp/Terms;->setTerm_name(Ljava/lang/String;)V

    .line 274
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 275
    const/4 v11, 0x0

    .local v11, "_tmp":Ljava/lang/Long;
    goto :goto_5f

    .line 277
    .end local v11    # "_tmp":Ljava/lang/Long;
    :cond_57
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 279
    .restart local v11    # "_tmp":Ljava/lang/Long;
    :goto_5f
    invoke-static {v11}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v12

    .line 280
    .local v12, "_tmpTerm_start":Ljava/util/Date;
    invoke-virtual {v8, v12}, Lwgu/SchedulerApp/Terms;->setTerm_start(Ljava/util/Date;)V

    .line 283
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 284
    const/4 v13, 0x0

    .local v13, "_tmp_1":Ljava/lang/Long;
    goto :goto_76

    .line 286
    .end local v13    # "_tmp_1":Ljava/lang/Long;
    :cond_6e
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 288
    .restart local v13    # "_tmp_1":Ljava/lang/Long;
    :goto_76
    invoke-static {v13}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v14

    .line 289
    .local v14, "_tmpTerm_end":Ljava/util/Date;
    invoke-virtual {v8, v14}, Lwgu/SchedulerApp/Terms;->setTerm_end(Ljava/util/Date;)V

    .line 290
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_8a

    .line 291
    nop

    .end local v8    # "_item":Lwgu/SchedulerApp/Terms;
    .end local v9    # "_tmpTerm_id":I
    .end local v10    # "_tmpTerm_name":Ljava/lang/String;
    .end local v11    # "_tmp":Ljava/lang/Long;
    .end local v12    # "_tmpTerm_start":Ljava/util/Date;
    .end local v13    # "_tmp_1":Ljava/lang/Long;
    .end local v14    # "_tmpTerm_end":Ljava/util/Date;
    goto :goto_36

    .line 292
    :cond_82
    nop

    .line 294
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 292
    return-object v7

    .line 294
    .end local v3    # "_cursorIndexOfTermId":I
    .end local v4    # "_cursorIndexOfTermName":I
    .end local v5    # "_cursorIndexOfTermStart":I
    .end local v6    # "_cursorIndexOfTermEnd":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    :catchall_8a
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 296
    throw v3
.end method

.method public getTerm(I)Lwgu/SchedulerApp/Terms;
    .registers 20
    .param p1, "termID"    # I

    .line 203
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM terms_table WHERE term_id = ? ORDER BY term_id"

    .line 204
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM terms_table WHERE term_id = ? ORDER BY term_id"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 205
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 206
    .local v4, "_argIndex":I
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 207
    iget-object v0, v1, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 208
    iget-object v0, v1, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "term_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "_cursorIndexOfTermId":I
    const-string v7, "term_name"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 212
    .local v7, "_cursorIndexOfTermName":I
    const-string v8, "term_start"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 213
    .local v8, "_cursorIndexOfTermStart":I
    const-string v9, "term_end"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 215
    .local v9, "_cursorIndexOfTermEnd":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_85

    .line 216
    new-instance v10, Lwgu/SchedulerApp/Terms;

    invoke-direct {v10}, Lwgu/SchedulerApp/Terms;-><init>()V

    .line 218
    .local v10, "_result":Lwgu/SchedulerApp/Terms;
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 219
    .local v11, "_tmpTerm_id":I
    invoke-virtual {v10, v11}, Lwgu/SchedulerApp/Terms;->setTerm_id(I)V

    .line 221
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 222
    .local v12, "_tmpTerm_name":Ljava/lang/String;
    invoke-virtual {v10, v12}, Lwgu/SchedulerApp/Terms;->setTerm_name(Ljava/lang/String;)V

    .line 225
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_58

    .line 226
    const/4 v13, 0x0

    .local v13, "_tmp":Ljava/lang/Long;
    goto :goto_60

    .line 228
    .end local v13    # "_tmp":Ljava/lang/Long;
    :cond_58
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 230
    .restart local v13    # "_tmp":Ljava/lang/Long;
    :goto_60
    invoke-static {v13}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v14

    .line 231
    .local v14, "_tmpTerm_start":Ljava/util/Date;
    invoke-virtual {v10, v14}, Lwgu/SchedulerApp/Terms;->setTerm_start(Ljava/util/Date;)V

    .line 234
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6f

    .line 235
    const/4 v15, 0x0

    .local v15, "_tmp_1":Ljava/lang/Long;
    goto :goto_77

    .line 237
    .end local v15    # "_tmp_1":Ljava/lang/Long;
    :cond_6f
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 239
    .restart local v15    # "_tmp_1":Ljava/lang/Long;
    :goto_77
    invoke-static {v15}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v17, v16

    .line 240
    .local v17, "_tmpTerm_end":Ljava/util/Date;
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "_tmpTerm_end":Ljava/util/Date;
    .local v0, "_tmpTerm_end":Ljava/util/Date;
    .local v16, "_cursorIndexOfTermId":I
    invoke-virtual {v10, v0}, Lwgu/SchedulerApp/Terms;->setTerm_end(Ljava/util/Date;)V
    :try_end_84
    .catchall {:try_start_1f .. :try_end_84} :catchall_90

    .line 241
    .end local v0    # "_tmpTerm_end":Ljava/util/Date;
    .end local v11    # "_tmpTerm_id":I
    .end local v12    # "_tmpTerm_name":Ljava/lang/String;
    .end local v13    # "_tmp":Ljava/lang/Long;
    .end local v14    # "_tmpTerm_start":Ljava/util/Date;
    .end local v15    # "_tmp_1":Ljava/lang/Long;
    goto :goto_88

    .line 242
    .end local v10    # "_result":Lwgu/SchedulerApp/Terms;
    .end local v16    # "_cursorIndexOfTermId":I
    .local v0, "_cursorIndexOfTermId":I
    :cond_85
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfTermId":I
    .restart local v16    # "_cursorIndexOfTermId":I
    const/4 v10, 0x0

    .line 244
    .restart local v10    # "_result":Lwgu/SchedulerApp/Terms;
    :goto_88
    nop

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 244
    return-object v10

    .line 246
    .end local v7    # "_cursorIndexOfTermName":I
    .end local v8    # "_cursorIndexOfTermStart":I
    .end local v9    # "_cursorIndexOfTermEnd":I
    .end local v10    # "_result":Lwgu/SchedulerApp/Terms;
    .end local v16    # "_cursorIndexOfTermId":I
    :catchall_90
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 248
    throw v0
.end method

.method public getTermsList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Terms;",
            ">;"
        }
    .end annotation

    .line 155
    const-string v0, "SELECT * FROM terms_table ORDER BY term_id"

    .line 156
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM terms_table ORDER BY term_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 157
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 158
    iget-object v3, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 160
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_15
    const-string v3, "term_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 161
    .local v3, "_cursorIndexOfTermId":I
    const-string v4, "term_name"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 162
    .local v4, "_cursorIndexOfTermName":I
    const-string v5, "term_start"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 163
    .local v5, "_cursorIndexOfTermStart":I
    const-string v6, "term_end"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, "_cursorIndexOfTermEnd":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    :goto_36
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 167
    new-instance v8, Lwgu/SchedulerApp/Terms;

    invoke-direct {v8}, Lwgu/SchedulerApp/Terms;-><init>()V

    .line 169
    .local v8, "_item":Lwgu/SchedulerApp/Terms;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 170
    .local v9, "_tmpTerm_id":I
    invoke-virtual {v8, v9}, Lwgu/SchedulerApp/Terms;->setTerm_id(I)V

    .line 172
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "_tmpTerm_name":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lwgu/SchedulerApp/Terms;->setTerm_name(Ljava/lang/String;)V

    .line 176
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 177
    const/4 v11, 0x0

    .local v11, "_tmp":Ljava/lang/Long;
    goto :goto_5f

    .line 179
    .end local v11    # "_tmp":Ljava/lang/Long;
    :cond_57
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 181
    .restart local v11    # "_tmp":Ljava/lang/Long;
    :goto_5f
    invoke-static {v11}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v12

    .line 182
    .local v12, "_tmpTerm_start":Ljava/util/Date;
    invoke-virtual {v8, v12}, Lwgu/SchedulerApp/Terms;->setTerm_start(Ljava/util/Date;)V

    .line 185
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 186
    const/4 v13, 0x0

    .local v13, "_tmp_1":Ljava/lang/Long;
    goto :goto_76

    .line 188
    .end local v13    # "_tmp_1":Ljava/lang/Long;
    :cond_6e
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 190
    .restart local v13    # "_tmp_1":Ljava/lang/Long;
    :goto_76
    invoke-static {v13}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v14

    .line 191
    .local v14, "_tmpTerm_end":Ljava/util/Date;
    invoke-virtual {v8, v14}, Lwgu/SchedulerApp/Terms;->setTerm_end(Ljava/util/Date;)V

    .line 192
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_8a

    .line 193
    nop

    .end local v8    # "_item":Lwgu/SchedulerApp/Terms;
    .end local v9    # "_tmpTerm_id":I
    .end local v10    # "_tmpTerm_name":Ljava/lang/String;
    .end local v11    # "_tmp":Ljava/lang/Long;
    .end local v12    # "_tmpTerm_start":Ljava/util/Date;
    .end local v13    # "_tmp_1":Ljava/lang/Long;
    .end local v14    # "_tmpTerm_end":Ljava/util/Date;
    goto :goto_36

    .line 194
    :cond_82
    nop

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 197
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 194
    return-object v7

    .line 196
    .end local v3    # "_cursorIndexOfTermId":I
    .end local v4    # "_cursorIndexOfTermName":I
    .end local v5    # "_cursorIndexOfTermStart":I
    .end local v6    # "_cursorIndexOfTermEnd":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Terms;>;"
    :catchall_8a
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 197
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 198
    throw v3
.end method

.method public varargs insertAll([Lwgu/SchedulerApp/Terms;)V
    .registers 4
    .param p1, "terms"    # [Lwgu/SchedulerApp/Terms;

    .line 119
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 120
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 122
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__insertionAdapterOfTerms:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 125
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 126
    throw v0
.end method

.method public insertTerm(Lwgu/SchedulerApp/Terms;)V
    .registers 4
    .param p1, "terms"    # Lwgu/SchedulerApp/Terms;

    .line 107
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 108
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 110
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__insertionAdapterOfTerms:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 113
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 114
    throw v0
.end method

.method public updateTerm(Lwgu/SchedulerApp/Terms;)V
    .registers 4
    .param p1, "terms"    # Lwgu/SchedulerApp/Terms;

    .line 143
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 144
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 146
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__updateAdapterOfTerms:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 147
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 149
    iget-object v0, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/TermsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 150
    throw v0
.end method
