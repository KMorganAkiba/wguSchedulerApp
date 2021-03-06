.class Landroidx/room/InvalidationTracker$1;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroidx/room/InvalidationTracker;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/room/InvalidationTracker;

    .line 359
    iput-object p1, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdatedTable()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 415
    .local v0, "invalidatedTableIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v1, v1, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 418
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_14
    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 419
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 420
    .local v2, "tableId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_3a

    .line 421
    nop

    .end local v2    # "tableId":I
    goto :goto_14

    .line 423
    :cond_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 424
    nop

    .line 425
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 426
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v2, v2, Landroidx/room/InvalidationTracker;->mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 428
    :cond_39
    return-object v0

    .line 423
    :catchall_3a
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 424
    throw v2
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 362
    iget-object v0, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v0, v0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 363
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    const/4 v1, 0x0

    .line 365
    .local v1, "invalidatedTableIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 367
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    invoke-virtual {v2}, Landroidx/room/InvalidationTracker;->ensureInitialization()Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_12} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_12} :catch_68
    .catchall {:try_start_9 .. :try_end_12} :catchall_66

    if-nez v2, :cond_18

    .line 402
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 368
    return-void

    .line 371
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v2, v2, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_22} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_22} :catch_68
    .catchall {:try_start_18 .. :try_end_22} :catchall_66

    if-nez v2, :cond_28

    .line 402
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 373
    return-void

    .line 376
    :cond_28
    :try_start_28
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v2, v2, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v2
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_30} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_30} :catch_68
    .catchall {:try_start_28 .. :try_end_30} :catchall_66

    if-eqz v2, :cond_36

    .line 402
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 380
    return-void

    .line 383
    :cond_36
    :try_start_36
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v2, v2, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    iget-boolean v2, v2, Landroidx/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    if-eqz v2, :cond_60

    .line 386
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v2, v2, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 387
    .local v2, "db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_4d} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_4d} :catch_68
    .catchall {:try_start_36 .. :try_end_4d} :catchall_66

    .line 389
    :try_start_4d
    invoke-direct {p0}, Landroidx/room/InvalidationTracker$1;->checkUpdatedTable()Ljava/util/Set;

    move-result-object v3

    move-object v1, v3

    .line 390
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_5a

    .line 392
    :try_start_55
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 393
    nop

    .line 394
    .end local v2    # "db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    goto :goto_65

    .line 392
    .restart local v2    # "db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :catchall_5a
    move-exception v3

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 393
    nop

    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .end local v1    # "invalidatedTableIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    throw v3

    .line 395
    .end local v2    # "db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "invalidatedTableIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_60
    invoke-direct {p0}, Landroidx/room/InvalidationTracker$1;->checkUpdatedTable()Ljava/util/Set;

    move-result-object v2
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_64} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_64} :catch_68
    .catchall {:try_start_55 .. :try_end_64} :catchall_66

    move-object v1, v2

    .line 402
    :goto_65
    goto :goto_73

    :catchall_66
    move-exception v2

    goto :goto_a8

    .line 397
    :catch_68
    move-exception v2

    goto :goto_6b

    :catch_6a
    move-exception v2

    .line 399
    .local v2, "exception":Ljava/lang/RuntimeException;
    :goto_6b
    :try_start_6b
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_66

    .line 402
    nop

    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :goto_73
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    nop

    .line 404
    if-eqz v1, :cond_a7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 405
    iget-object v2, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v2, v2, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v2

    .line 406
    :try_start_84
    iget-object v3, p0, Landroidx/room/InvalidationTracker$1;->this$0:Landroidx/room/InvalidationTracker;

    iget-object v3, v3, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v3}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 407
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/room/InvalidationTracker$Observer;Landroidx/room/InvalidationTracker$ObserverWrapper;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-virtual {v5, v1}, Landroidx/room/InvalidationTracker$ObserverWrapper;->notifyByTableInvalidStatus(Ljava/util/Set;)V

    .line 408
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/room/InvalidationTracker$Observer;Landroidx/room/InvalidationTracker$ObserverWrapper;>;"
    goto :goto_8c

    .line 409
    :cond_a2
    monitor-exit v2

    goto :goto_a7

    :catchall_a4
    move-exception v3

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_84 .. :try_end_a6} :catchall_a4

    throw v3

    .line 411
    :cond_a7
    :goto_a7
    return-void

    .line 402
    :goto_a8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    throw v2
.end method
