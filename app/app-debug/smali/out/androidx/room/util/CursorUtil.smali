.class public Landroidx/room/util/CursorUtil;
.super Ljava/lang/Object;
.source "CursorUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static copyAndClose(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 6
    .param p0, "c"    # Landroid/database/Cursor;

    .line 46
    :try_start_0
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 47
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    :goto_d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 48
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .local v1, "row":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 50
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    const/4 v4, 0x2

    if-eq v3, v4, :cond_46

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x4

    if-ne v3, v4, :cond_39

    .line 64
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 65
    goto :goto_60

    .line 67
    :cond_39
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "c":Landroid/database/Cursor;
    throw v3

    .line 61
    .restart local p0    # "c":Landroid/database/Cursor;
    :cond_3f
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    goto :goto_60

    .line 58
    :cond_46
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    goto :goto_60

    .line 55
    :cond_51
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    goto :goto_60

    .line 52
    :cond_5c
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 53
    nop

    .line 49
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 70
    .end local v2    # "i":I
    :cond_63
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_6c

    .line 71
    .end local v1    # "row":[Ljava/lang/Object;
    goto :goto_d

    .line 73
    :cond_67
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 74
    nop

    .line 75
    return-object v0

    .line 73
    .end local v0    # "matrixCursor":Landroid/database/MatrixCursor;
    :catchall_6c
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 74
    throw v0
.end method

.method public static getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 5
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "index":I
    if-ltz v0, :cond_7

    .line 89
    return v0

    .line 91
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 5
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "index":I
    if-ltz v0, :cond_7

    .line 106
    return v0

    .line 108
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
