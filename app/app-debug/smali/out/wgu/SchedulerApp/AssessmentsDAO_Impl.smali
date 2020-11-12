.class public final Lwgu/SchedulerApp/AssessmentsDAO_Impl;
.super Ljava/lang/Object;
.source "AssessmentsDAO_Impl.java"

# interfaces
.implements Lwgu/SchedulerApp/AssessmentsDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfAssessments:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Assessments;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfAssessments:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lwgu/SchedulerApp/Assessments;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfAssessments:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Assessments;",
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
    iput-object p1, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    new-instance v0, Lwgu/SchedulerApp/AssessmentsDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/AssessmentsDAO_Impl$1;-><init>(Lwgu/SchedulerApp/AssessmentsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__insertionAdapterOfAssessments:Landroidx/room/EntityInsertionAdapter;

    .line 65
    new-instance v0, Lwgu/SchedulerApp/AssessmentsDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/AssessmentsDAO_Impl$2;-><init>(Lwgu/SchedulerApp/AssessmentsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__deletionAdapterOfAssessments:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 76
    new-instance v0, Lwgu/SchedulerApp/AssessmentsDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/AssessmentsDAO_Impl$3;-><init>(Lwgu/SchedulerApp/AssessmentsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__updateAdapterOfAssessments:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 111
    return-void
.end method


# virtual methods
.method public deleteAssessment(Lwgu/SchedulerApp/Assessments;)V
    .registers 4
    .param p1, "assessments"    # Lwgu/SchedulerApp/Assessments;

    .line 139
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 140
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 142
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__deletionAdapterOfAssessments:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 143
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 145
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 146
    throw v0
.end method

.method public getAllAssessments()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Assessments;",
            ">;"
        }
    .end annotation

    .line 267
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM assessments_table"

    .line 268
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM assessments_table"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 269
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 270
    iget-object v0, v1, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 272
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_17
    const-string v0, "assessment_id"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, "_cursorIndexOfAssessmentId":I
    const-string v5, "course_id_fk"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 274
    .local v5, "_cursorIndexOfCourseIdFk":I
    const-string v6, "assessment_type"

    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 275
    .local v6, "_cursorIndexOfAssessmentType":I
    const-string v7, "assessment_name"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 276
    .local v7, "_cursorIndexOfAssessmentName":I
    const-string v8, "assessment_due_date"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 277
    .local v8, "_cursorIndexOfAssessmentDueDate":I
    const-string v9, "assessment_status"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 278
    .local v9, "_cursorIndexOfAssessmentStatus":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    :goto_44
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 281
    new-instance v11, Lwgu/SchedulerApp/Assessments;

    invoke-direct {v11}, Lwgu/SchedulerApp/Assessments;-><init>()V

    .line 283
    .local v11, "_item":Lwgu/SchedulerApp/Assessments;
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 284
    .local v12, "_tmpAssessment_id":I
    invoke-virtual {v11, v12}, Lwgu/SchedulerApp/Assessments;->setAssessment_id(I)V

    .line 286
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 287
    .local v13, "_tmpCourse_id_fk":I
    invoke-virtual {v11, v13}, Lwgu/SchedulerApp/Assessments;->setCourse_id_fk(I)V

    .line 289
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 290
    .local v14, "_tmpAssessment_type":Ljava/lang/String;
    invoke-virtual {v11, v14}, Lwgu/SchedulerApp/Assessments;->setAssessment_type(Ljava/lang/String;)V

    .line 292
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, "_tmpAssessment_name":Ljava/lang/String;
    invoke-virtual {v11, v15}, Lwgu/SchedulerApp/Assessments;->setAssessment_name(Ljava/lang/String;)V

    .line 296
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_74

    .line 297
    const/16 v16, 0x0

    .local v16, "_tmp":Ljava/lang/Long;
    goto :goto_7c

    .line 299
    .end local v16    # "_tmp":Ljava/lang/Long;
    :cond_74
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 301
    .restart local v16    # "_tmp":Ljava/lang/Long;
    :goto_7c
    invoke-static/range {v16 .. v16}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v18, v17

    .line 302
    .local v18, "_tmpAssessment_due_date":Ljava/util/Date;
    move/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "_tmpAssessment_due_date":Ljava/util/Date;
    .local v0, "_tmpAssessment_due_date":Ljava/util/Date;
    .local v17, "_cursorIndexOfAssessmentId":I
    invoke-virtual {v11, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_due_date(Ljava/util/Date;)V

    .line 304
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 305
    .local v19, "_tmpAssessment_status":Ljava/lang/String;
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "_tmpAssessment_status":Ljava/lang/String;
    .local v0, "_tmpAssessment_status":Ljava/lang/String;
    .restart local v18    # "_tmpAssessment_due_date":Ljava/util/Date;
    invoke-virtual {v11, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_status(Ljava/lang/String;)V

    .line 306
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catchall {:try_start_17 .. :try_end_99} :catchall_a4

    .line 307
    move/from16 v0, v17

    .end local v0    # "_tmpAssessment_status":Ljava/lang/String;
    .end local v11    # "_item":Lwgu/SchedulerApp/Assessments;
    .end local v12    # "_tmpAssessment_id":I
    .end local v13    # "_tmpCourse_id_fk":I
    .end local v14    # "_tmpAssessment_type":Ljava/lang/String;
    .end local v15    # "_tmpAssessment_name":Ljava/lang/String;
    .end local v16    # "_tmp":Ljava/lang/Long;
    .end local v18    # "_tmpAssessment_due_date":Ljava/util/Date;
    goto :goto_44

    .line 308
    .end local v17    # "_cursorIndexOfAssessmentId":I
    .local v0, "_cursorIndexOfAssessmentId":I
    :cond_9c
    nop

    .line 310
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 311
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 308
    return-object v10

    .line 310
    .end local v0    # "_cursorIndexOfAssessmentId":I
    .end local v5    # "_cursorIndexOfCourseIdFk":I
    .end local v6    # "_cursorIndexOfAssessmentType":I
    .end local v7    # "_cursorIndexOfAssessmentName":I
    .end local v8    # "_cursorIndexOfAssessmentDueDate":I
    .end local v9    # "_cursorIndexOfAssessmentStatus":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    :catchall_a4
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 311
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 312
    throw v0
.end method

.method public getAssessment(I)Lwgu/SchedulerApp/Assessments;
    .registers 23
    .param p1, "courseId"    # I

    .line 215
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM assessments_table WHERE course_id_fk = ? ORDER BY assessment_id"

    .line 216
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM assessments_table WHERE course_id_fk = ? ORDER BY assessment_id"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 217
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 218
    .local v4, "_argIndex":I
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 219
    iget-object v0, v1, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 220
    iget-object v0, v1, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "assessment_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, "_cursorIndexOfAssessmentId":I
    const-string v7, "course_id_fk"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 224
    .local v7, "_cursorIndexOfCourseIdFk":I
    const-string v8, "assessment_type"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 225
    .local v8, "_cursorIndexOfAssessmentType":I
    const-string v9, "assessment_name"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 226
    .local v9, "_cursorIndexOfAssessmentName":I
    const-string v10, "assessment_due_date"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 227
    .local v10, "_cursorIndexOfAssessmentDueDate":I
    const-string v11, "assessment_status"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 229
    .local v11, "_cursorIndexOfAssessmentStatus":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_9c

    .line 230
    new-instance v12, Lwgu/SchedulerApp/Assessments;

    invoke-direct {v12}, Lwgu/SchedulerApp/Assessments;-><init>()V

    .line 232
    .local v12, "_result":Lwgu/SchedulerApp/Assessments;
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 233
    .local v13, "_tmpAssessment_id":I
    invoke-virtual {v12, v13}, Lwgu/SchedulerApp/Assessments;->setAssessment_id(I)V

    .line 235
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 236
    .local v14, "_tmpCourse_id_fk":I
    invoke-virtual {v12, v14}, Lwgu/SchedulerApp/Assessments;->setCourse_id_fk(I)V

    .line 238
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 239
    .local v15, "_tmpAssessment_type":Ljava/lang/String;
    invoke-virtual {v12, v15}, Lwgu/SchedulerApp/Assessments;->setAssessment_type(Ljava/lang/String;)V

    .line 241
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 242
    .local v17, "_tmpAssessment_name":Ljava/lang/String;
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "_tmpAssessment_name":Ljava/lang/String;
    .local v0, "_tmpAssessment_name":Ljava/lang/String;
    .local v16, "_cursorIndexOfAssessmentId":I
    invoke-virtual {v12, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_name(Ljava/lang/String;)V

    .line 245
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 246
    const/16 v17, 0x0

    .local v17, "_tmp":Ljava/lang/Long;
    goto :goto_81

    .line 248
    .end local v17    # "_tmp":Ljava/lang/Long;
    :cond_79
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 250
    .restart local v17    # "_tmp":Ljava/lang/Long;
    :goto_81
    invoke-static/range {v17 .. v17}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v19, v18

    .line 251
    .local v19, "_tmpAssessment_due_date":Ljava/util/Date;
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "_tmpAssessment_due_date":Ljava/util/Date;
    .local v0, "_tmpAssessment_due_date":Ljava/util/Date;
    .local v18, "_tmpAssessment_name":Ljava/lang/String;
    invoke-virtual {v12, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_due_date(Ljava/util/Date;)V

    .line 253
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .line 254
    .local v20, "_tmpAssessment_status":Ljava/lang/String;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "_tmpAssessment_status":Ljava/lang/String;
    .local v0, "_tmpAssessment_status":Ljava/lang/String;
    .restart local v19    # "_tmpAssessment_due_date":Ljava/util/Date;
    invoke-virtual {v12, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_status(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_1f .. :try_end_9b} :catchall_a7

    .line 255
    .end local v0    # "_tmpAssessment_status":Ljava/lang/String;
    .end local v13    # "_tmpAssessment_id":I
    .end local v14    # "_tmpCourse_id_fk":I
    .end local v15    # "_tmpAssessment_type":Ljava/lang/String;
    .end local v17    # "_tmp":Ljava/lang/Long;
    .end local v18    # "_tmpAssessment_name":Ljava/lang/String;
    .end local v19    # "_tmpAssessment_due_date":Ljava/util/Date;
    goto :goto_9f

    .line 256
    .end local v12    # "_result":Lwgu/SchedulerApp/Assessments;
    .end local v16    # "_cursorIndexOfAssessmentId":I
    .local v0, "_cursorIndexOfAssessmentId":I
    :cond_9c
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfAssessmentId":I
    .restart local v16    # "_cursorIndexOfAssessmentId":I
    const/4 v12, 0x0

    .line 258
    .restart local v12    # "_result":Lwgu/SchedulerApp/Assessments;
    :goto_9f
    nop

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 258
    return-object v12

    .line 260
    .end local v7    # "_cursorIndexOfCourseIdFk":I
    .end local v8    # "_cursorIndexOfAssessmentType":I
    .end local v9    # "_cursorIndexOfAssessmentName":I
    .end local v10    # "_cursorIndexOfAssessmentDueDate":I
    .end local v11    # "_cursorIndexOfAssessmentStatus":I
    .end local v12    # "_result":Lwgu/SchedulerApp/Assessments;
    .end local v16    # "_cursorIndexOfAssessmentId":I
    :catchall_a7
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 262
    throw v0
.end method

.method public getAssessmentsList(I)Ljava/util/List;
    .registers 24
    .param p1, "courseId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Assessments;",
            ">;"
        }
    .end annotation

    .line 163
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM assessments_table WHERE course_id_fk = ? ORDER BY assessment_id"

    .line 164
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM assessments_table WHERE course_id_fk = ? ORDER BY assessment_id"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 165
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 166
    .local v4, "_argIndex":I
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 167
    iget-object v0, v1, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 168
    iget-object v0, v1, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "assessment_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "_cursorIndexOfAssessmentId":I
    const-string v7, "course_id_fk"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 172
    .local v7, "_cursorIndexOfCourseIdFk":I
    const-string v8, "assessment_type"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 173
    .local v8, "_cursorIndexOfAssessmentType":I
    const-string v9, "assessment_name"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 174
    .local v9, "_cursorIndexOfAssessmentName":I
    const-string v10, "assessment_due_date"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 175
    .local v10, "_cursorIndexOfAssessmentDueDate":I
    const-string v11, "assessment_status"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 176
    .local v11, "_cursorIndexOfAssessmentStatus":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    :goto_4c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_b0

    .line 179
    new-instance v13, Lwgu/SchedulerApp/Assessments;

    invoke-direct {v13}, Lwgu/SchedulerApp/Assessments;-><init>()V

    .line 181
    .local v13, "_item":Lwgu/SchedulerApp/Assessments;
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 182
    .local v14, "_tmpAssessment_id":I
    invoke-virtual {v13, v14}, Lwgu/SchedulerApp/Assessments;->setAssessment_id(I)V

    .line 184
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 185
    .local v15, "_tmpCourse_id_fk":I
    invoke-virtual {v13, v15}, Lwgu/SchedulerApp/Assessments;->setCourse_id_fk(I)V

    .line 187
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 188
    .local v17, "_tmpAssessment_type":Ljava/lang/String;
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "_tmpAssessment_type":Ljava/lang/String;
    .local v0, "_tmpAssessment_type":Ljava/lang/String;
    .local v16, "_cursorIndexOfAssessmentId":I
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_type(Ljava/lang/String;)V

    .line 190
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 191
    .local v18, "_tmpAssessment_name":Ljava/lang/String;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "_tmpAssessment_name":Ljava/lang/String;
    .local v0, "_tmpAssessment_name":Ljava/lang/String;
    .restart local v17    # "_tmpAssessment_type":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_name(Ljava/lang/String;)V

    .line 194
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_88

    .line 195
    const/16 v18, 0x0

    .local v18, "_tmp":Ljava/lang/Long;
    goto :goto_90

    .line 197
    .end local v18    # "_tmp":Ljava/lang/Long;
    :cond_88
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 199
    .restart local v18    # "_tmp":Ljava/lang/Long;
    :goto_90
    invoke-static/range {v18 .. v18}, Lwgu/SchedulerApp/ConverterDate;->fromTimeStamps(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v20, v19

    .line 200
    .local v20, "_tmpAssessment_due_date":Ljava/util/Date;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "_tmpAssessment_due_date":Ljava/util/Date;
    .local v0, "_tmpAssessment_due_date":Ljava/util/Date;
    .local v19, "_tmpAssessment_name":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_due_date(Ljava/util/Date;)V

    .line 202
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    .line 203
    .local v21, "_tmpAssessment_status":Ljava/lang/String;
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    .end local v21    # "_tmpAssessment_status":Ljava/lang/String;
    .local v0, "_tmpAssessment_status":Ljava/lang/String;
    .restart local v20    # "_tmpAssessment_due_date":Ljava/util/Date;
    invoke-virtual {v13, v0}, Lwgu/SchedulerApp/Assessments;->setAssessment_status(Ljava/lang/String;)V

    .line 204
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_1f .. :try_end_ad} :catchall_b8

    .line 205
    move/from16 v0, v16

    .end local v0    # "_tmpAssessment_status":Ljava/lang/String;
    .end local v13    # "_item":Lwgu/SchedulerApp/Assessments;
    .end local v14    # "_tmpAssessment_id":I
    .end local v15    # "_tmpCourse_id_fk":I
    .end local v17    # "_tmpAssessment_type":Ljava/lang/String;
    .end local v18    # "_tmp":Ljava/lang/Long;
    .end local v19    # "_tmpAssessment_name":Ljava/lang/String;
    .end local v20    # "_tmpAssessment_due_date":Ljava/util/Date;
    goto :goto_4c

    .line 206
    .end local v16    # "_cursorIndexOfAssessmentId":I
    .local v0, "_cursorIndexOfAssessmentId":I
    :cond_b0
    nop

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 206
    return-object v12

    .line 208
    .end local v0    # "_cursorIndexOfAssessmentId":I
    .end local v7    # "_cursorIndexOfCourseIdFk":I
    .end local v8    # "_cursorIndexOfAssessmentType":I
    .end local v9    # "_cursorIndexOfAssessmentName":I
    .end local v10    # "_cursorIndexOfAssessmentDueDate":I
    .end local v11    # "_cursorIndexOfAssessmentStatus":I
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Assessments;>;"
    :catchall_b8
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 210
    throw v0
.end method

.method public varargs insertAll([Lwgu/SchedulerApp/Assessments;)V
    .registers 4
    .param p1, "assessments"    # [Lwgu/SchedulerApp/Assessments;

    .line 127
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 128
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 130
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__insertionAdapterOfAssessments:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 133
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 134
    throw v0
.end method

.method public insertAssessment(Lwgu/SchedulerApp/Assessments;)V
    .registers 4
    .param p1, "assessments"    # Lwgu/SchedulerApp/Assessments;

    .line 115
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 116
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 118
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__insertionAdapterOfAssessments:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 121
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 122
    throw v0
.end method

.method public updateAssessment(Lwgu/SchedulerApp/Assessments;)V
    .registers 4
    .param p1, "assessments"    # Lwgu/SchedulerApp/Assessments;

    .line 151
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 152
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 154
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__updateAdapterOfAssessments:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 155
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 157
    iget-object v0, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/AssessmentsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 158
    throw v0
.end method
