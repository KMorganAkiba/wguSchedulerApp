.class public abstract Landroidx/room/EntityDeletionOrUpdateAdapter;
.super Landroidx/room/SharedSQLiteStatement;
.source "EntityDeletionOrUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/room/SharedSQLiteStatement;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 2
    .param p1, "database"    # Landroidx/room/RoomDatabase;

    .line 40
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public final handle(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 67
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 69
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 70
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 72
    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 70
    return v1

    .line 72
    :catchall_f
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 73
    throw v1
.end method

.method public final handleMultiple(Ljava/lang/Iterable;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)I"
        }
    .end annotation

    .line 83
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-virtual {p0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 85
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x0

    .line 86
    .local v1, "total":I
    :try_start_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v3}, Landroidx/room/EntityDeletionOrUpdateAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 88
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v4
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    add-int/2addr v1, v4

    .line 89
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    goto :goto_9

    .line 90
    :cond_1c
    nop

    .line 92
    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 90
    return v1

    .line 92
    .end local v1    # "total":I
    :catchall_21
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 93
    throw v1
.end method

.method public final handleMultiple([Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 105
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x0

    .line 106
    .local v1, "total":I
    :try_start_5
    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, p1, v3

    .line 107
    .local v4, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v4}, Landroidx/room/EntityDeletionOrUpdateAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 108
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v5
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1b

    add-int/2addr v1, v5

    .line 106
    .end local v4    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 110
    :cond_16
    nop

    .line 112
    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 110
    return v1

    .line 112
    .end local v1    # "total":I
    :catchall_1b
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 113
    throw v1
.end method
