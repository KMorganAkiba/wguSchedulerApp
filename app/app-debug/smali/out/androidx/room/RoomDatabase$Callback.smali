.class public abstract Landroidx/room/RoomDatabase$Callback;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1066
    return-void
.end method

.method public onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1082
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1074
    return-void
.end method
