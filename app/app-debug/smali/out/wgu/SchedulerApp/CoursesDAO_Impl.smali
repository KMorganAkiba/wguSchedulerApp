.class public final Lwgu/SchedulerApp/CoursesDAO_Impl;
.super Ljava/lang/Object;
.source "CoursesDAO_Impl.java"

# interfaces
.implements Lwgu/SchedulerApp/CoursesDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfCourses:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCourses:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfAddCourse:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfCourses:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lwgu/SchedulerApp/CoursesDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/CoursesDAO_Impl$1;-><init>(Lwgu/SchedulerApp/CoursesDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__insertionAdapterOfCourses:Landroidx/room/EntityInsertionAdapter;

    .line 80
    new-instance v0, Lwgu/SchedulerApp/CoursesDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/CoursesDAO_Impl$2;-><init>(Lwgu/SchedulerApp/CoursesDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__deletionAdapterOfCourses:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 91
    new-instance v0, Lwgu/SchedulerApp/CoursesDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/CoursesDAO_Impl$3;-><init>(Lwgu/SchedulerApp/CoursesDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__updateAdapterOfCourses:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 138
    new-instance v0, Lwgu/SchedulerApp/CoursesDAO_Impl$4;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/CoursesDAO_Impl$4;-><init>(Lwgu/SchedulerApp/CoursesDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__preparedStmtOfAddCourse:Landroidx/room/SharedSQLiteStatement;

    .line 146
    return-void
.end method


# virtual methods
.method public addCourse(I)V
    .registers 6
    .param p1, "termId"    # I

    .line 198
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 199
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__preparedStmtOfAddCourse:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 200
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 201
    .local v1, "_argIndex":I
    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 202
    iget-object v2, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 204
    :try_start_15
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    .line 205
    iget-object v2, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_29

    .line 207
    iget-object v2, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    iget-object v2, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__preparedStmtOfAddCourse:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 209
    nop

    .line 210
    return-void

    .line 207
    :catchall_29
    move-exception v2

    iget-object v3, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    iget-object v3, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__preparedStmtOfAddCourse:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 209
    throw v2
.end method

.method public deleteCourse(Lwgu/SchedulerApp/Courses;)V
    .registers 4
    .param p1, "courses"    # Lwgu/SchedulerApp/Courses;

    .line 174
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 175
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 177
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__deletionAdapterOfCourses:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 178
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 180
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 181
    throw v0
.end method

.method public getAllCourses()Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation

    .line 348
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM course_Table"

    .line 349
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM course_Table"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 350
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 351
    iget-object v0, v1, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 353
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_17
    const-string v0, "course_id"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, "_cursorIndexOfCourseId":I
    const-string v5, "term_id_fk"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 355
    .local v5, "_cursorIndexOfTermIdFk":I
    const-string v6, "course_name"

    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 356
    .local v6, "_cursorIndexOfCourseName":I
    const-string v7, "course_start"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 357
    .local v7, "_cursorIndexOfCourseStart":I
    const-string v8, "course_end"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 358
    .local v8, "_cursorIndexOfCourseEnd":I
    const-string v9, "course_status"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 359
    .local v9, "_cursorIndexOfCourseStatus":I
    const-string v10, "course_notes"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 360
    .local v10, "_cursorIndexOfCourseNotes":I
    const-string v11, "course_alert_date"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 361
    .local v11, "_cursorIndexOfCourseAlertDate":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    :goto_50
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_e0

    .line 364
    new-instance v13, Lwgu/SchedulerApp/Courses;

    invoke-direct {v13}, Lwgu/SchedulerApp/Courses;-><init>()V

    .line 366
    .local v13, "_item":Lwgu/SchedulerApp/Courses;
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 367
    .local v14, "_tmpCourse_id":I
    invoke-virtual {v13, v14}, Lwgu/SchedulerApp/Courses;->setCourse_id(I)V

    .line 369
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 370
    .local v15, "_tmpTerm_id_fk":I
    invoke-virtual {v13, v15}, Lwgu/SchedulerApp/Courses;->setTerm_id_fk(I)V

    .line 372
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 373
    .local v17, "_tmpCourse_name":Ljava/lang/String;
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "_tmpCourse_name":Ljava/lang/String;
    .local v0, "_tmpCourse_name":Ljava/lang/String;
    .local v16, "_cursorIndexOfCourseId":I
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Courses;->setCourse_name(Ljava/lang/String;)V

    .line 376
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7f

    .line 377
    const/16 v17, 0x0

    .local v17, "_tmp":Ljava/lang/Long;
    goto :goto_87

    .line 379
    .end local v17    # "_tmp":Ljava/lang/Long;
    :cond_7f
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 381
    .restart local v17    # "_tmp":Ljava/lang/Long;
    :goto_87
    invoke-static/range {v17 .. v17}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v19, v18

    .line 382
    .local v19, "_tmpCourse_start":Ljava/util/Date;
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "_tmpCourse_start":Ljava/util/Date;
    .local v0, "_tmpCourse_start":Ljava/util/Date;
    .local v18, "_tmpCourse_name":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Courses;->setCourse_start(Ljava/util/Date;)V

    .line 385
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_9d

    .line 386
    const/16 v19, 0x0

    .local v19, "_tmp_1":Ljava/lang/Long;
    goto :goto_a5

    .line 388
    .end local v19    # "_tmp_1":Ljava/lang/Long;
    :cond_9d
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 390
    .restart local v19    # "_tmp_1":Ljava/lang/Long;
    :goto_a5
    invoke-static/range {v19 .. v19}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v21, v20

    .line 391
    .local v21, "_tmpCourse_end":Ljava/util/Date;
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    .end local v21    # "_tmpCourse_end":Ljava/util/Date;
    .local v0, "_tmpCourse_end":Ljava/util/Date;
    .local v20, "_tmpCourse_start":Ljava/util/Date;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Courses;->setCourse_end(Ljava/util/Date;)V

    .line 393
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v21

    .line 394
    .local v22, "_tmpCourse_status":Ljava/lang/String;
    move-object/from16 v21, v0

    move-object/from16 v0, v22

    .end local v22    # "_tmpCourse_status":Ljava/lang/String;
    .local v0, "_tmpCourse_status":Ljava/lang/String;
    .restart local v21    # "_tmpCourse_end":Ljava/util/Date;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Courses;->setCourse_status(Ljava/lang/String;)V

    .line 396
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 397
    .local v23, "_tmpCourse_notes":Ljava/lang/String;
    move-object/from16 v22, v0

    move-object/from16 v0, v23

    .end local v23    # "_tmpCourse_notes":Ljava/lang/String;
    .local v0, "_tmpCourse_notes":Ljava/lang/String;
    .restart local v22    # "_tmpCourse_status":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Courses;->setCourse_notes(Ljava/lang/String;)V

    .line 399
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 400
    .local v24, "_tmpCourse_alert_date":Ljava/lang/String;
    move-object/from16 v23, v0

    move-object/from16 v0, v24

    .end local v24    # "_tmpCourse_alert_date":Ljava/lang/String;
    .local v0, "_tmpCourse_alert_date":Ljava/lang/String;
    .restart local v23    # "_tmpCourse_notes":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Courses;->setCourse_alert_date(Ljava/lang/String;)V

    .line 401
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catchall {:try_start_17 .. :try_end_dc} :catchall_e8

    .line 402
    move/from16 v0, v16

    .end local v0    # "_tmpCourse_alert_date":Ljava/lang/String;
    .end local v13    # "_item":Lwgu/SchedulerApp/Courses;
    .end local v14    # "_tmpCourse_id":I
    .end local v15    # "_tmpTerm_id_fk":I
    .end local v17    # "_tmp":Ljava/lang/Long;
    .end local v18    # "_tmpCourse_name":Ljava/lang/String;
    .end local v19    # "_tmp_1":Ljava/lang/Long;
    .end local v20    # "_tmpCourse_start":Ljava/util/Date;
    .end local v21    # "_tmpCourse_end":Ljava/util/Date;
    .end local v22    # "_tmpCourse_status":Ljava/lang/String;
    .end local v23    # "_tmpCourse_notes":Ljava/lang/String;
    goto/16 :goto_50

    .line 403
    .end local v16    # "_cursorIndexOfCourseId":I
    .local v0, "_cursorIndexOfCourseId":I
    :cond_e0
    nop

    .line 405
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 406
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 403
    return-object v12

    .line 405
    .end local v0    # "_cursorIndexOfCourseId":I
    .end local v5    # "_cursorIndexOfTermIdFk":I
    .end local v6    # "_cursorIndexOfCourseName":I
    .end local v7    # "_cursorIndexOfCourseStart":I
    .end local v8    # "_cursorIndexOfCourseEnd":I
    .end local v9    # "_cursorIndexOfCourseStatus":I
    .end local v10    # "_cursorIndexOfCourseNotes":I
    .end local v11    # "_cursorIndexOfCourseAlertDate":I
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    :catchall_e8
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 406
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 407
    throw v0
.end method

.method public getCourses(II)Lwgu/SchedulerApp/Courses;
    .registers 30
    .param p1, "coursesId"    # I
    .param p2, "termId"    # I

    .line 280
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM course_Table WHERE course_id = ? AND term_id_fk = ?"

    .line 281
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM course_Table WHERE course_id = ? AND term_id_fk = ?"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 282
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 283
    .local v0, "_argIndex":I
    move/from16 v4, p1

    int-to-long v5, v4

    invoke-virtual {v3, v0, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 284
    const/4 v5, 0x2

    .line 285
    .end local v0    # "_argIndex":I
    .local v5, "_argIndex":I
    move/from16 v6, p2

    int-to-long v7, v6

    invoke-virtual {v3, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 286
    iget-object v0, v1, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 287
    iget-object v0, v1, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v3, v7, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 289
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_26
    const-string v0, "course_id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "_cursorIndexOfCourseId":I
    const-string v8, "term_id_fk"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 291
    .local v8, "_cursorIndexOfTermIdFk":I
    const-string v9, "course_name"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 292
    .local v9, "_cursorIndexOfCourseName":I
    const-string v10, "course_start"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 293
    .local v10, "_cursorIndexOfCourseStart":I
    const-string v11, "course_end"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 294
    .local v11, "_cursorIndexOfCourseEnd":I
    const-string v12, "course_status"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 295
    .local v12, "_cursorIndexOfCourseStatus":I
    const-string v13, "course_notes"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 296
    .local v13, "_cursorIndexOfCourseNotes":I
    const-string v14, "course_alert_date"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 298
    .local v14, "_cursorIndexOfCourseAlertDate":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_ec

    .line 299
    new-instance v15, Lwgu/SchedulerApp/Courses;

    invoke-direct {v15}, Lwgu/SchedulerApp/Courses;-><init>()V

    .line 301
    .local v15, "_result":Lwgu/SchedulerApp/Courses;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v17, v16

    .line 302
    .local v17, "_tmpCourse_id":I
    move/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "_tmpCourse_id":I
    .local v0, "_tmpCourse_id":I
    .local v16, "_cursorIndexOfCourseId":I
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_id(I)V

    .line 304
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v18, v17

    .line 305
    .local v18, "_tmpTerm_id_fk":I
    move/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "_tmpTerm_id_fk":I
    .local v0, "_tmpTerm_id_fk":I
    .restart local v17    # "_tmpCourse_id":I
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setTerm_id_fk(I)V

    .line 307
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 308
    .local v19, "_tmpCourse_name":Ljava/lang/String;
    move/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "_tmpCourse_name":Ljava/lang/String;
    .local v0, "_tmpCourse_name":Ljava/lang/String;
    .restart local v18    # "_tmpTerm_id_fk":I
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_name(Ljava/lang/String;)V

    .line 311
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_91

    .line 312
    const/16 v19, 0x0

    .local v19, "_tmp":Ljava/lang/Long;
    goto :goto_99

    .line 314
    .end local v19    # "_tmp":Ljava/lang/Long;
    :cond_91
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 316
    .restart local v19    # "_tmp":Ljava/lang/Long;
    :goto_99
    invoke-static/range {v19 .. v19}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v21, v20

    .line 317
    .local v21, "_tmpCourse_start":Ljava/util/Date;
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    .end local v21    # "_tmpCourse_start":Ljava/util/Date;
    .local v0, "_tmpCourse_start":Ljava/util/Date;
    .local v20, "_tmpCourse_name":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_start(Ljava/util/Date;)V

    .line 320
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_af

    .line 321
    const/16 v21, 0x0

    .local v21, "_tmp_1":Ljava/lang/Long;
    goto :goto_b7

    .line 323
    .end local v21    # "_tmp_1":Ljava/lang/Long;
    :cond_af
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 325
    .restart local v21    # "_tmp_1":Ljava/lang/Long;
    :goto_b7
    invoke-static/range {v21 .. v21}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v22

    move-object/from16 v23, v22

    .line 326
    .local v23, "_tmpCourse_end":Ljava/util/Date;
    move-object/from16 v22, v0

    move-object/from16 v0, v23

    .end local v23    # "_tmpCourse_end":Ljava/util/Date;
    .local v0, "_tmpCourse_end":Ljava/util/Date;
    .local v22, "_tmpCourse_start":Ljava/util/Date;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_end(Ljava/util/Date;)V

    .line 328
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 329
    .local v24, "_tmpCourse_status":Ljava/lang/String;
    move-object/from16 v23, v0

    move-object/from16 v0, v24

    .end local v24    # "_tmpCourse_status":Ljava/lang/String;
    .local v0, "_tmpCourse_status":Ljava/lang/String;
    .restart local v23    # "_tmpCourse_end":Ljava/util/Date;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_status(Ljava/lang/String;)V

    .line 331
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    .line 332
    .local v25, "_tmpCourse_notes":Ljava/lang/String;
    move-object/from16 v24, v0

    move-object/from16 v0, v25

    .end local v25    # "_tmpCourse_notes":Ljava/lang/String;
    .local v0, "_tmpCourse_notes":Ljava/lang/String;
    .restart local v24    # "_tmpCourse_status":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_notes(Ljava/lang/String;)V

    .line 334
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 335
    .local v26, "_tmpCourse_alert_date":Ljava/lang/String;
    move-object/from16 v25, v0

    move-object/from16 v0, v26

    .end local v26    # "_tmpCourse_alert_date":Ljava/lang/String;
    .local v0, "_tmpCourse_alert_date":Ljava/lang/String;
    .restart local v25    # "_tmpCourse_notes":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_alert_date(Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_26 .. :try_end_eb} :catchall_f7

    .line 336
    .end local v0    # "_tmpCourse_alert_date":Ljava/lang/String;
    .end local v17    # "_tmpCourse_id":I
    .end local v18    # "_tmpTerm_id_fk":I
    .end local v19    # "_tmp":Ljava/lang/Long;
    .end local v20    # "_tmpCourse_name":Ljava/lang/String;
    .end local v21    # "_tmp_1":Ljava/lang/Long;
    .end local v22    # "_tmpCourse_start":Ljava/util/Date;
    .end local v23    # "_tmpCourse_end":Ljava/util/Date;
    .end local v24    # "_tmpCourse_status":Ljava/lang/String;
    .end local v25    # "_tmpCourse_notes":Ljava/lang/String;
    goto :goto_ef

    .line 337
    .end local v15    # "_result":Lwgu/SchedulerApp/Courses;
    .end local v16    # "_cursorIndexOfCourseId":I
    .local v0, "_cursorIndexOfCourseId":I
    :cond_ec
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfCourseId":I
    .restart local v16    # "_cursorIndexOfCourseId":I
    const/4 v15, 0x0

    .line 339
    .restart local v15    # "_result":Lwgu/SchedulerApp/Courses;
    :goto_ef
    nop

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 339
    return-object v15

    .line 341
    .end local v8    # "_cursorIndexOfTermIdFk":I
    .end local v9    # "_cursorIndexOfCourseName":I
    .end local v10    # "_cursorIndexOfCourseStart":I
    .end local v11    # "_cursorIndexOfCourseEnd":I
    .end local v12    # "_cursorIndexOfCourseStatus":I
    .end local v13    # "_cursorIndexOfCourseNotes":I
    .end local v14    # "_cursorIndexOfCourseAlertDate":I
    .end local v15    # "_result":Lwgu/SchedulerApp/Courses;
    .end local v16    # "_cursorIndexOfCourseId":I
    :catchall_f7
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 343
    throw v0
.end method

.method public getCoursesList(I)Ljava/util/List;
    .registers 29
    .param p1, "termId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Courses;",
            ">;"
        }
    .end annotation

    .line 214
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM course_Table WHERE term_id_fk = ?  ORDER BY course_id"

    .line 215
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM course_Table WHERE term_id_fk = ?  ORDER BY course_id"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 216
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 217
    .local v4, "_argIndex":I
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 218
    iget-object v0, v1, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 219
    iget-object v0, v1, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "course_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "_cursorIndexOfCourseId":I
    const-string v7, "term_id_fk"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 223
    .local v7, "_cursorIndexOfTermIdFk":I
    const-string v8, "course_name"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 224
    .local v8, "_cursorIndexOfCourseName":I
    const-string v9, "course_start"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 225
    .local v9, "_cursorIndexOfCourseStart":I
    const-string v10, "course_end"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 226
    .local v10, "_cursorIndexOfCourseEnd":I
    const-string v11, "course_status"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 227
    .local v11, "_cursorIndexOfCourseStatus":I
    const-string v12, "course_notes"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 228
    .local v12, "_cursorIndexOfCourseNotes":I
    const-string v13, "course_alert_date"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 229
    .local v13, "_cursorIndexOfCourseAlertDate":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    :goto_58
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_f4

    .line 232
    new-instance v15, Lwgu/SchedulerApp/Courses;

    invoke-direct {v15}, Lwgu/SchedulerApp/Courses;-><init>()V

    .line 234
    .local v15, "_item":Lwgu/SchedulerApp/Courses;
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v17, v16

    .line 235
    .local v17, "_tmpCourse_id":I
    move/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "_tmpCourse_id":I
    .local v0, "_tmpCourse_id":I
    .local v16, "_cursorIndexOfCourseId":I
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_id(I)V

    .line 237
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v18, v17

    .line 238
    .local v18, "_tmpTerm_id_fk":I
    move/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "_tmpTerm_id_fk":I
    .local v0, "_tmpTerm_id_fk":I
    .restart local v17    # "_tmpCourse_id":I
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setTerm_id_fk(I)V

    .line 240
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 241
    .local v19, "_tmpCourse_name":Ljava/lang/String;
    move/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "_tmpCourse_name":Ljava/lang/String;
    .local v0, "_tmpCourse_name":Ljava/lang/String;
    .restart local v18    # "_tmpTerm_id_fk":I
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_name(Ljava/lang/String;)V

    .line 244
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_93

    .line 245
    const/16 v19, 0x0

    .local v19, "_tmp":Ljava/lang/Long;
    goto :goto_9b

    .line 247
    .end local v19    # "_tmp":Ljava/lang/Long;
    :cond_93
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 249
    .restart local v19    # "_tmp":Ljava/lang/Long;
    :goto_9b
    invoke-static/range {v19 .. v19}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v21, v20

    .line 250
    .local v21, "_tmpCourse_start":Ljava/util/Date;
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    .end local v21    # "_tmpCourse_start":Ljava/util/Date;
    .local v0, "_tmpCourse_start":Ljava/util/Date;
    .local v20, "_tmpCourse_name":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_start(Ljava/util/Date;)V

    .line 253
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_b1

    .line 254
    const/16 v21, 0x0

    .local v21, "_tmp_1":Ljava/lang/Long;
    goto :goto_b9

    .line 256
    .end local v21    # "_tmp_1":Ljava/lang/Long;
    :cond_b1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 258
    .restart local v21    # "_tmp_1":Ljava/lang/Long;
    :goto_b9
    invoke-static/range {v21 .. v21}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v22

    move-object/from16 v23, v22

    .line 259
    .local v23, "_tmpCourse_end":Ljava/util/Date;
    move-object/from16 v22, v0

    move-object/from16 v0, v23

    .end local v23    # "_tmpCourse_end":Ljava/util/Date;
    .local v0, "_tmpCourse_end":Ljava/util/Date;
    .local v22, "_tmpCourse_start":Ljava/util/Date;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_end(Ljava/util/Date;)V

    .line 261
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 262
    .local v24, "_tmpCourse_status":Ljava/lang/String;
    move-object/from16 v23, v0

    move-object/from16 v0, v24

    .end local v24    # "_tmpCourse_status":Ljava/lang/String;
    .local v0, "_tmpCourse_status":Ljava/lang/String;
    .restart local v23    # "_tmpCourse_end":Ljava/util/Date;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_status(Ljava/lang/String;)V

    .line 264
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    .line 265
    .local v25, "_tmpCourse_notes":Ljava/lang/String;
    move-object/from16 v24, v0

    move-object/from16 v0, v25

    .end local v25    # "_tmpCourse_notes":Ljava/lang/String;
    .local v0, "_tmpCourse_notes":Ljava/lang/String;
    .restart local v24    # "_tmpCourse_status":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_notes(Ljava/lang/String;)V

    .line 267
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 268
    .local v26, "_tmpCourse_alert_date":Ljava/lang/String;
    move-object/from16 v25, v0

    move-object/from16 v0, v26

    .end local v26    # "_tmpCourse_alert_date":Ljava/lang/String;
    .local v0, "_tmpCourse_alert_date":Ljava/lang/String;
    .restart local v25    # "_tmpCourse_notes":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lwgu/SchedulerApp/Courses;->setCourse_alert_date(Ljava/lang/String;)V

    .line 269
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f0
    .catchall {:try_start_1f .. :try_end_f0} :catchall_fc

    .line 270
    move/from16 v0, v16

    .end local v0    # "_tmpCourse_alert_date":Ljava/lang/String;
    .end local v15    # "_item":Lwgu/SchedulerApp/Courses;
    .end local v17    # "_tmpCourse_id":I
    .end local v18    # "_tmpTerm_id_fk":I
    .end local v19    # "_tmp":Ljava/lang/Long;
    .end local v20    # "_tmpCourse_name":Ljava/lang/String;
    .end local v21    # "_tmp_1":Ljava/lang/Long;
    .end local v22    # "_tmpCourse_start":Ljava/util/Date;
    .end local v23    # "_tmpCourse_end":Ljava/util/Date;
    .end local v24    # "_tmpCourse_status":Ljava/lang/String;
    .end local v25    # "_tmpCourse_notes":Ljava/lang/String;
    goto/16 :goto_58

    .line 271
    .end local v16    # "_cursorIndexOfCourseId":I
    .local v0, "_cursorIndexOfCourseId":I
    :cond_f4
    nop

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 271
    return-object v14

    .line 273
    .end local v0    # "_cursorIndexOfCourseId":I
    .end local v7    # "_cursorIndexOfTermIdFk":I
    .end local v8    # "_cursorIndexOfCourseName":I
    .end local v9    # "_cursorIndexOfCourseStart":I
    .end local v10    # "_cursorIndexOfCourseEnd":I
    .end local v11    # "_cursorIndexOfCourseStatus":I
    .end local v12    # "_cursorIndexOfCourseNotes":I
    .end local v13    # "_cursorIndexOfCourseAlertDate":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Courses;>;"
    :catchall_fc
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 275
    throw v0
.end method

.method public varargs insertAll([Lwgu/SchedulerApp/Courses;)V
    .registers 4
    .param p1, "courses"    # [Lwgu/SchedulerApp/Courses;

    .line 162
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 163
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 165
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__insertionAdapterOfCourses:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 168
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 169
    throw v0
.end method

.method public insertCourse(Lwgu/SchedulerApp/Courses;)V
    .registers 4
    .param p1, "courses"    # Lwgu/SchedulerApp/Courses;

    .line 150
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 151
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 153
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__insertionAdapterOfCourses:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 156
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 157
    throw v0
.end method

.method public updateCourse(Lwgu/SchedulerApp/Courses;)V
    .registers 4
    .param p1, "courses"    # Lwgu/SchedulerApp/Courses;

    .line 186
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 187
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 189
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__updateAdapterOfCourses:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 190
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 192
    iget-object v0, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/CoursesDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 193
    throw v0
.end method
