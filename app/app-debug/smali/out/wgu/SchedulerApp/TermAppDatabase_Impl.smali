.class public final Lwgu/SchedulerApp/TermAppDatabase_Impl;
.super Lwgu/SchedulerApp/TermAppDatabase;
.source "TermAppDatabase_Impl.java"


# instance fields
.field private volatile _assessmentsDAO:Lwgu/SchedulerApp/AssessmentsDAO;

.field private volatile _coursesDAO:Lwgu/SchedulerApp/CoursesDAO;

.field private volatile _mentorsDAO:Lwgu/SchedulerApp/MentorsDAO;

.field private volatile _termsDAO:Lwgu/SchedulerApp/TermsDAO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lwgu/SchedulerApp/TermAppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lwgu/SchedulerApp/TermAppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 26
    iput-object p1, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lwgu/SchedulerApp/TermAppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 26
    invoke-virtual {p0, p1}, Lwgu/SchedulerApp/TermAppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lwgu/SchedulerApp/TermAppDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lwgu/SchedulerApp/TermAppDatabase_Impl;

    .line 26
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public assessmentsDAO()Lwgu/SchedulerApp/AssessmentsDAO;
    .registers 2

    .line 251
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_assessmentsDAO:Lwgu/SchedulerApp/AssessmentsDAO;

    if-eqz v0, :cond_7

    .line 252
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_assessmentsDAO:Lwgu/SchedulerApp/AssessmentsDAO;

    return-object v0

    .line 254
    :cond_7
    monitor-enter p0

    .line 255
    :try_start_8
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_assessmentsDAO:Lwgu/SchedulerApp/AssessmentsDAO;

    if-nez v0, :cond_13

    .line 256
    new-instance v0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;

    invoke-direct {v0, p0}, Lwgu/SchedulerApp/AssessmentsDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_assessmentsDAO:Lwgu/SchedulerApp/AssessmentsDAO;

    .line 258
    :cond_13
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_assessmentsDAO:Lwgu/SchedulerApp/AssessmentsDAO;

    monitor-exit p0

    return-object v0

    .line 259
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public clearAllTables()V
    .registers 7

    .line 179
    invoke-super {p0}, Lwgu/SchedulerApp/TermAppDatabase;->assertNotMainThread()V

    .line 180
    invoke-super {p0}, Lwgu/SchedulerApp/TermAppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 181
    .local v0, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 183
    .local v1, "_supportsDeferForeignKeys":Z
    :goto_14
    const-string v2, "VACUUM"

    const-string v3, "PRAGMA foreign_keys = TRUE"

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    if-nez v1, :cond_21

    .line 184
    :try_start_1c
    const-string v5, "PRAGMA foreign_keys = FALSE"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    :cond_21
    invoke-super {p0}, Lwgu/SchedulerApp/TermAppDatabase;->beginTransaction()V

    .line 187
    if-eqz v1, :cond_2b

    .line 188
    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    :cond_2b
    const-string v5, "DELETE FROM `mentor_table`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v5, "DELETE FROM `assessments_table`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v5, "DELETE FROM `course_Table`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v5, "DELETE FROM `terms_table`"

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    invoke-super {p0}, Lwgu/SchedulerApp/TermAppDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_5b

    .line 196
    invoke-super {p0}, Lwgu/SchedulerApp/TermAppDatabase;->endTransaction()V

    .line 197
    if-nez v1, :cond_4a

    .line 198
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    :cond_4a
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 202
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    :cond_5a
    return-void

    .line 196
    :catchall_5b
    move-exception v5

    invoke-super {p0}, Lwgu/SchedulerApp/TermAppDatabase;->endTransaction()V

    .line 197
    if-nez v1, :cond_64

    .line 198
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    :cond_64
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_74

    .line 202
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    :cond_74
    throw v5
.end method

.method public coursesDAO()Lwgu/SchedulerApp/CoursesDAO;
    .registers 2

    .line 223
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_coursesDAO:Lwgu/SchedulerApp/CoursesDAO;

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_coursesDAO:Lwgu/SchedulerApp/CoursesDAO;

    return-object v0

    .line 226
    :cond_7
    monitor-enter p0

    .line 227
    :try_start_8
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_coursesDAO:Lwgu/SchedulerApp/CoursesDAO;

    if-nez v0, :cond_13

    .line 228
    new-instance v0, Lwgu/SchedulerApp/CoursesDAO_Impl;

    invoke-direct {v0, p0}, Lwgu/SchedulerApp/CoursesDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_coursesDAO:Lwgu/SchedulerApp/CoursesDAO;

    .line 230
    :cond_13
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_coursesDAO:Lwgu/SchedulerApp/CoursesDAO;

    monitor-exit p0

    return-object v0

    .line 231
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .registers 8

    .line 172
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 173
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v2

    .line 174
    .local v1, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "terms_table"

    const-string v4, "course_Table"

    const-string v5, "mentor_table"

    const-string v6, "assessments_table"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .registers 6
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 37
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lwgu/SchedulerApp/TermAppDatabase_Impl$1;-><init>(Lwgu/SchedulerApp/TermAppDatabase_Impl;I)V

    const-string v2, "fe081d8b617d258c5c93bfbffc6c0036"

    const-string v3, "2d163df2d1ba07ff4a945d508c22718c"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 166
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 167
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public mentorsDAO()Lwgu/SchedulerApp/MentorsDAO;
    .registers 2

    .line 237
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_mentorsDAO:Lwgu/SchedulerApp/MentorsDAO;

    if-eqz v0, :cond_7

    .line 238
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_mentorsDAO:Lwgu/SchedulerApp/MentorsDAO;

    return-object v0

    .line 240
    :cond_7
    monitor-enter p0

    .line 241
    :try_start_8
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_mentorsDAO:Lwgu/SchedulerApp/MentorsDAO;

    if-nez v0, :cond_13

    .line 242
    new-instance v0, Lwgu/SchedulerApp/MentorsDAO_Impl;

    invoke-direct {v0, p0}, Lwgu/SchedulerApp/MentorsDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_mentorsDAO:Lwgu/SchedulerApp/MentorsDAO;

    .line 244
    :cond_13
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_mentorsDAO:Lwgu/SchedulerApp/MentorsDAO;

    monitor-exit p0

    return-object v0

    .line 245
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public termsDAO()Lwgu/SchedulerApp/TermsDAO;
    .registers 2

    .line 209
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_termsDAO:Lwgu/SchedulerApp/TermsDAO;

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_termsDAO:Lwgu/SchedulerApp/TermsDAO;

    return-object v0

    .line 212
    :cond_7
    monitor-enter p0

    .line 213
    :try_start_8
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_termsDAO:Lwgu/SchedulerApp/TermsDAO;

    if-nez v0, :cond_13

    .line 214
    new-instance v0, Lwgu/SchedulerApp/TermsDAO_Impl;

    invoke-direct {v0, p0}, Lwgu/SchedulerApp/TermsDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_termsDAO:Lwgu/SchedulerApp/TermsDAO;

    .line 216
    :cond_13
    iget-object v0, p0, Lwgu/SchedulerApp/TermAppDatabase_Impl;->_termsDAO:Lwgu/SchedulerApp/TermsDAO;

    monitor-exit p0

    return-object v0

    .line 217
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method
