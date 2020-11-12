.class Lwgu/SchedulerApp/TermAppDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "TermAppDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwgu/SchedulerApp/TermAppDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;


# direct methods
.method constructor <init>(Lwgu/SchedulerApp/TermAppDatabase_Impl;I)V
    .registers 3
    .param p1, "this$0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;
    .param p2, "version"    # I

    .line 37
    iput-object p1, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS `terms_table` (`term_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `term_name` TEXT, `term_start` INTEGER, `term_end` INTEGER)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `course_Table` (`course_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `term_id_fk` INTEGER NOT NULL, `course_name` TEXT, `course_start` INTEGER, `course_end` INTEGER, `course_status` TEXT, `course_notes` TEXT, `course_alert_date` TEXT, FOREIGN KEY(`term_id_fk`) REFERENCES `terms_table`(`term_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string v0, "CREATE TABLE IF NOT EXISTS `mentor_table` (`mentor_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `course_id_fk` INTEGER NOT NULL, `mentor_name` TEXT, `mentor_phone` TEXT, `mentor_email` TEXT, FOREIGN KEY(`course_id_fk`) REFERENCES `course_Table`(`course_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "CREATE TABLE IF NOT EXISTS `assessments_table` (`assessment_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `course_id_fk` INTEGER NOT NULL, `assessment_type` TEXT, `assessment_name` TEXT, `assessment_due_date` INTEGER, `assessment_status` TEXT, FOREIGN KEY(`course_id_fk`) REFERENCES `course_Table`(`course_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'fe081d8b617d258c5c93bfbffc6c0036\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 50
    const-string v0, "DROP TABLE IF EXISTS `terms_table`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "DROP TABLE IF EXISTS `course_Table`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "DROP TABLE IF EXISTS `mentor_table`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "DROP TABLE IF EXISTS `assessments_table`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$000(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 55
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v1}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$100(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_27
    if-ge v0, v1, :cond_3b

    .line 56
    iget-object v2, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v2}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$200(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 59
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_3b
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 63
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$300(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 64
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v1}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$400(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_13
    if-ge v0, v1, :cond_27

    .line 65
    iget-object v2, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v2}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$500(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 68
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_27
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 72
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v0, p1}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$602(Lwgu/SchedulerApp/TermAppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 73
    const-string v0, "PRAGMA foreign_keys = ON"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v0, p1}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$700(Lwgu/SchedulerApp/TermAppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 75
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v0}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$800(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 76
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v1}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$900(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_22
    if-ge v0, v1, :cond_36

    .line 77
    iget-object v2, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;->this$0:Lwgu/SchedulerApp/TermAppDatabase_Impl;

    invoke-static {v2}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->access$1000(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 80
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_36
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 89
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 84
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 85
    return-void
.end method

.method protected onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .registers 39
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 93
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 94
    .local v1, "_columnsTermsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "term_id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "term_id"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v11, "term_name"

    const-string v12, "TEXT"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "term_name"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "term_start"

    const-string v7, "INTEGER"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "term_start"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "term_end"

    const-string v7, "INTEGER"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "term_end"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 99
    .local v3, "_foreignKeysTermsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    .local v5, "_indicesTermsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v6, Landroidx/room/util/TableInfo;

    const-string v7, "terms_table"

    invoke-direct {v6, v7, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 101
    .local v6, "_infoTermsTable":Landroidx/room/util/TableInfo;
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v7

    .line 102
    .local v7, "_existingTermsTable":Landroidx/room/util/TableInfo;
    invoke-virtual {v6, v7}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "\n Found:\n"

    if-nez v8, :cond_8c

    .line 103
    new-instance v2, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "terms_table(wgu.SchedulerApp.Terms).\n Expected:\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 107
    :cond_8c
    new-instance v8, Ljava/util/HashMap;

    const/16 v10, 0x8

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 108
    .local v8, "_columnsCourseTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v11, "course_id"

    const-string v12, "INTEGER"

    move-object v10, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "course_id"

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v12, "term_id_fk"

    const-string v13, "INTEGER"

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "term_id_fk"

    invoke-virtual {v8, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "course_name"

    const-string v20, "TEXT"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "course_name"

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const-string v19, "course_start"

    const-string v20, "INTEGER"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "course_start"

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const-string v19, "course_end"

    const-string v20, "INTEGER"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "course_end"

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const-string v19, "course_status"

    const-string v20, "TEXT"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "course_status"

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const-string v19, "course_notes"

    const-string v20, "TEXT"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "course_notes"

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const-string v19, "course_alert_date"

    const-string v20, "TEXT"

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "course_alert_date"

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v4, Ljava/util/HashSet;

    const/4 v12, 0x1

    invoke-direct {v4, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 117
    .local v4, "_foreignKeysCourseTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    const-string v19, "terms_table"

    const-string v20, "NO ACTION"

    const-string v21, "NO ACTION"

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v23}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    .local v2, "_indicesCourseTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v11, Landroidx/room/util/TableInfo;

    const-string v13, "course_Table"

    invoke-direct {v11, v13, v8, v4, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 120
    .local v11, "_infoCourseTable":Landroidx/room/util/TableInfo;
    invoke-static {v0, v13}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v13

    .line 121
    .local v13, "_existingCourseTable":Landroidx/room/util/TableInfo;
    invoke-virtual {v11, v13}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_182

    .line 122
    new-instance v10, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "course_Table(wgu.SchedulerApp.Courses).\n Expected:\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-direct {v10, v12, v9}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v10

    .line 126
    :cond_182
    new-instance v14, Ljava/util/HashMap;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 127
    .local v14, "_columnsMentorTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "mentor_id"

    const-string v20, "INTEGER"

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "mentor_id"

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v12, Landroidx/room/util/TableInfo$Column;

    const/16 v22, 0x0

    const-string v19, "course_id_fk"

    const-string v20, "INTEGER"

    move-object/from16 v18, v12

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "course_id_fk"

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v12, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const-string v19, "mentor_name"

    const-string v20, "TEXT"

    move-object/from16 v18, v12

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v17, v1

    .end local v1    # "_columnsTermsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v17, "_columnsTermsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v1, "mentor_name"

    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v19, "mentor_phone"

    const-string v20, "TEXT"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "mentor_phone"

    invoke-virtual {v14, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v19, "mentor_email"

    const-string v20, "TEXT"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "mentor_email"

    invoke-virtual {v14, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/util/HashSet;

    const/4 v12, 0x1

    invoke-direct {v1, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 133
    .local v1, "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v12, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    const-string v19, "course_Table"

    const-string v20, "NO ACTION"

    const-string v21, "NO ACTION"

    move-object/from16 v18, v12

    invoke-direct/range {v18 .. v23}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "_indicesCourseTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .local v18, "_indicesCourseTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    invoke-direct {v12, v2}, Ljava/util/HashSet;-><init>(I)V

    move-object v2, v12

    .line 135
    .local v2, "_indicesMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v12, Landroidx/room/util/TableInfo;

    move-object/from16 v19, v3

    .end local v3    # "_foreignKeysTermsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v19, "_foreignKeysTermsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    const-string v3, "mentor_table"

    invoke-direct {v12, v3, v14, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 136
    .local v12, "_infoMentorTable":Landroidx/room/util/TableInfo;
    invoke-static {v0, v3}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v3

    .line 137
    .local v3, "_existingMentorTable":Landroidx/room/util/TableInfo;
    invoke-virtual {v12, v3}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_248

    .line 138
    new-instance v10, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    .end local v1    # "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v20, "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    const-string v1, "mentor_table(wgu.SchedulerApp.Mentors).\n Expected:\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    invoke-direct {v10, v9, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v10

    .line 142
    .end local v20    # "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v1    # "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_248
    move-object/from16 v20, v1

    .end local v1    # "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v20    # "_foreignKeysMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v21, v2

    .end local v2    # "_indicesMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .local v21, "_indicesMentorTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v1, "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    const-string v23, "assessment_id"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v22, v3

    .end local v3    # "_existingMentorTable":Landroidx/room/util/TableInfo;
    .local v22, "_existingMentorTable":Landroidx/room/util/TableInfo;
    const-string v3, "assessment_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "course_id_fk"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const-string v31, "assessment_type"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "assessment_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v26, 0x0

    const-string v24, "assessment_name"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "assessment_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v24, "assessment_due_date"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "assessment_due_date"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v24, "assessment_status"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "assessment_status"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 150
    .local v2, "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string v24, "course_Table"

    const-string v25, "NO ACTION"

    const-string v26, "NO ACTION"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v28}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v3, Ljava/util/HashSet;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 152
    .local v3, "_indicesAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v10, Landroidx/room/util/TableInfo;

    const-string v15, "assessments_table"

    invoke-direct {v10, v15, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 153
    .local v10, "_infoAssessmentsTable":Landroidx/room/util/TableInfo;
    invoke-static {v0, v15}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v15

    .line 154
    .local v15, "_existingAssessmentsTable":Landroidx/room/util/TableInfo;
    invoke-virtual {v10, v15}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_329

    .line 155
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    move-object/from16 v23, v1

    .end local v1    # "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v23, "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .end local v2    # "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v24, "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    const-string v2, "assessments_table(wgu.SchedulerApp.Assessments).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 159
    .end local v23    # "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v24    # "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v1    # "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v2    # "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_329
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    .end local v1    # "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v2    # "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v23    # "_columnsAssessmentsTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v24    # "_foreignKeysAssessmentsTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
