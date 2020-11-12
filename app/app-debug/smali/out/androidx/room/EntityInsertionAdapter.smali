.class public abstract Landroidx/room/EntityInsertionAdapter;
.super Landroidx/room/SharedSQLiteStatement;
.source "EntityInsertionAdapter.java"


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

    .line 43
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 44
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

.method public final insert(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 95
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v2}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 97
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1f

    .line 98
    nop

    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 100
    :cond_1a
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_1f
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 101
    throw v1
.end method

.method public final insert(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 63
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    .line 66
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_f
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 67
    throw v1
.end method

.method public final insert([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 78
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, p1, v2

    .line 79
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v3}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 80
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 78
    nop

    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 83
    :cond_14
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 84
    nop

    .line 85
    return-void

    .line 83
    :catchall_19
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 84
    throw v1
.end method

.method public final insertAndReturnId(Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 111
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 113
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 114
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 116
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 114
    return-wide v1

    .line 116
    :catchall_f
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 117
    throw v1
.end method

.method public final insertAndReturnIdsArray(Ljava/util/Collection;)[J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)[J"
        }
    .end annotation

    .line 127
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 129
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 130
    .local v1, "result":[J
    const/4 v2, 0x0

    .line 131
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 132
    .local v4, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v4}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v5

    aput-wide v5, v1, v2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 134
    nop

    .end local v4    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_f

    .line 136
    :cond_26
    nop

    .line 138
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 136
    return-object v1

    .line 138
    .end local v1    # "result":[J
    .end local v2    # "index":I
    :catchall_2b
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 139
    throw v1
.end method

.method public final insertAndReturnIdsArray([Ljava/lang/Object;)[J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[J"
        }
    .end annotation

    .line 149
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 151
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    array-length v1, p1

    new-array v1, v1, [J

    .line 152
    .local v1, "result":[J
    const/4 v2, 0x0

    .line 153
    .local v2, "index":I
    array-length v3, p1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_1d

    aget-object v5, p1, v4

    .line 154
    .local v5, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v5}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    aput-wide v6, v1, v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_22

    .line 156
    nop

    .end local v5    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 158
    :cond_1d
    nop

    .line 160
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 158
    return-object v1

    .line 160
    .end local v1    # "result":[J
    .end local v2    # "index":I
    :catchall_22
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 161
    throw v1
.end method

.method public final insertAndReturnIdsArrayBox(Ljava/util/Collection;)[Ljava/lang/Long;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 171
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 173
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    .line 174
    .local v1, "result":[Ljava/lang/Long;
    const/4 v2, 0x0

    .line 175
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 176
    .local v4, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v4}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 177
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2f

    .line 178
    nop

    .end local v4    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 179
    goto :goto_f

    .line 180
    :cond_2a
    nop

    .line 182
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 180
    return-object v1

    .line 182
    .end local v1    # "result":[Ljava/lang/Long;
    .end local v2    # "index":I
    :catchall_2f
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 183
    throw v1
.end method

.method public final insertAndReturnIdsArrayBox([Ljava/lang/Object;)[Ljava/lang/Long;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 193
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 195
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Long;

    .line 196
    .local v1, "result":[Ljava/lang/Long;
    const/4 v2, 0x0

    .line 197
    .local v2, "index":I
    array-length v3, p1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_21

    aget-object v5, p1, v4

    .line 198
    .local v5, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v5}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 199
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_26

    .line 200
    nop

    .end local v5    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 202
    :cond_21
    nop

    .line 204
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 202
    return-object v1

    .line 204
    .end local v1    # "result":[Ljava/lang/Long;
    .end local v2    # "index":I
    :catchall_26
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 205
    throw v1
.end method

.method public final insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 237
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 239
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 241
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 242
    .local v4, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v4}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 244
    nop

    .end local v4    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 245
    goto :goto_12

    .line 246
    :cond_2e
    nop

    .line 248
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 246
    return-object v1

    .line 248
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "index":I
    :catchall_33
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 249
    throw v1
.end method

.method public final insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 215
    .local p0, "this":Landroidx/room/EntityInsertionAdapter;, "Landroidx/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/room/EntityInsertionAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 217
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 219
    .local v2, "index":I
    array-length v3, p1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_25

    aget-object v5, p1, v4

    .line 220
    .local v5, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v5}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 221
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_2a

    .line 222
    nop

    .end local v5    # "entity":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 224
    :cond_25
    nop

    .line 226
    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 224
    return-object v1

    .line 226
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "index":I
    :catchall_2a
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 227
    throw v1
.end method
