.class public final Lwgu/SchedulerApp/MentorsDAO_Impl;
.super Ljava/lang/Object;
.source "MentorsDAO_Impl.java"

# interfaces
.implements Lwgu/SchedulerApp/MentorsDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfMentors:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfMentors:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfMentors:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lwgu/SchedulerApp/MentorsDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/MentorsDAO_Impl$1;-><init>(Lwgu/SchedulerApp/MentorsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__insertionAdapterOfMentors:Landroidx/room/EntityInsertionAdapter;

    .line 56
    new-instance v0, Lwgu/SchedulerApp/MentorsDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/MentorsDAO_Impl$2;-><init>(Lwgu/SchedulerApp/MentorsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__deletionAdapterOfMentors:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 67
    new-instance v0, Lwgu/SchedulerApp/MentorsDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lwgu/SchedulerApp/MentorsDAO_Impl$3;-><init>(Lwgu/SchedulerApp/MentorsDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__updateAdapterOfMentors:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 95
    return-void
.end method


# virtual methods
.method public deleteMentor(Lwgu/SchedulerApp/Mentors;)V
    .registers 4
    .param p1, "mentors"    # Lwgu/SchedulerApp/Mentors;

    .line 123
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 124
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 126
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__deletionAdapterOfMentors:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 127
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 129
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 130
    throw v0
.end method

.method public getAllMentors()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation

    .line 229
    const-string v0, "SELECT * FROM mentor_table"

    .line 230
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM mentor_table"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 231
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 232
    iget-object v3, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 234
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_15
    const-string v3, "mentor_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "_cursorIndexOfMentorId":I
    const-string v4, "course_id_fk"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 236
    .local v4, "_cursorIndexOfCourseIdFk":I
    const-string v5, "mentor_name"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 237
    .local v5, "_cursorIndexOfMentorName":I
    const-string v6, "mentor_phone"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 238
    .local v6, "_cursorIndexOfMentorPhone":I
    const-string v7, "mentor_email"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 239
    .local v7, "_cursorIndexOfMentorEmail":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Mentors;>;"
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 242
    new-instance v9, Lwgu/SchedulerApp/Mentors;

    invoke-direct {v9}, Lwgu/SchedulerApp/Mentors;-><init>()V

    .line 244
    .local v9, "_item":Lwgu/SchedulerApp/Mentors;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 245
    .local v10, "_tmpMentor_id":I
    invoke-virtual {v9, v10}, Lwgu/SchedulerApp/Mentors;->setMentor_id(I)V

    .line 247
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 248
    .local v11, "_tmpCourse_id_fk":I
    invoke-virtual {v9, v11}, Lwgu/SchedulerApp/Mentors;->setCourse_id_fk(I)V

    .line 250
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, "_tmpMentor_name":Ljava/lang/String;
    invoke-virtual {v9, v12}, Lwgu/SchedulerApp/Mentors;->setMentor_name(Ljava/lang/String;)V

    .line 253
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, "_tmpMentor_phone":Ljava/lang/String;
    invoke-virtual {v9, v13}, Lwgu/SchedulerApp/Mentors;->setMentor_phone(Ljava/lang/String;)V

    .line 256
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 257
    .local v14, "_tmpMentor_email":Ljava/lang/String;
    invoke-virtual {v9, v14}, Lwgu/SchedulerApp/Mentors;->setMentor_email(Ljava/lang/String;)V

    .line 258
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_15 .. :try_end_6d} :catchall_77

    .line 259
    nop

    .end local v9    # "_item":Lwgu/SchedulerApp/Mentors;
    .end local v10    # "_tmpMentor_id":I
    .end local v11    # "_tmpCourse_id_fk":I
    .end local v12    # "_tmpMentor_name":Ljava/lang/String;
    .end local v13    # "_tmpMentor_phone":Ljava/lang/String;
    .end local v14    # "_tmpMentor_email":Ljava/lang/String;
    goto :goto_3c

    .line 260
    :cond_6f
    nop

    .line 262
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 260
    return-object v8

    .line 262
    .end local v3    # "_cursorIndexOfMentorId":I
    .end local v4    # "_cursorIndexOfCourseIdFk":I
    .end local v5    # "_cursorIndexOfMentorName":I
    .end local v6    # "_cursorIndexOfMentorPhone":I
    .end local v7    # "_cursorIndexOfMentorEmail":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Mentors;>;"
    :catchall_77
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 264
    throw v3
.end method

.method public getMentor(I)Lwgu/SchedulerApp/Mentors;
    .registers 20
    .param p1, "mentorID"    # I

    .line 187
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM mentor_table WHERE mentor_id = ? ORDER BY mentor_id"

    .line 188
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM mentor_table WHERE mentor_id = ? ORDER BY mentor_id"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 189
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 190
    .local v4, "_argIndex":I
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 191
    iget-object v0, v1, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 192
    iget-object v0, v1, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "mentor_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "_cursorIndexOfMentorId":I
    const-string v7, "course_id_fk"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 196
    .local v7, "_cursorIndexOfCourseIdFk":I
    const-string v8, "mentor_name"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 197
    .local v8, "_cursorIndexOfMentorName":I
    const-string v9, "mentor_phone"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 198
    .local v9, "_cursorIndexOfMentorPhone":I
    const-string v10, "mentor_email"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 200
    .local v10, "_cursorIndexOfMentorEmail":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 201
    new-instance v11, Lwgu/SchedulerApp/Mentors;

    invoke-direct {v11}, Lwgu/SchedulerApp/Mentors;-><init>()V

    .line 203
    .local v11, "_result":Lwgu/SchedulerApp/Mentors;
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 204
    .local v12, "_tmpMentor_id":I
    invoke-virtual {v11, v12}, Lwgu/SchedulerApp/Mentors;->setMentor_id(I)V

    .line 206
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 207
    .local v13, "_tmpCourse_id_fk":I
    invoke-virtual {v11, v13}, Lwgu/SchedulerApp/Mentors;->setCourse_id_fk(I)V

    .line 209
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    .local v14, "_tmpMentor_name":Ljava/lang/String;
    invoke-virtual {v11, v14}, Lwgu/SchedulerApp/Mentors;->setMentor_name(Ljava/lang/String;)V

    .line 212
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 213
    .local v15, "_tmpMentor_phone":Ljava/lang/String;
    invoke-virtual {v11, v15}, Lwgu/SchedulerApp/Mentors;->setMentor_phone(Ljava/lang/String;)V

    .line 215
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 216
    .local v17, "_tmpMentor_email":Ljava/lang/String;
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "_tmpMentor_email":Ljava/lang/String;
    .local v0, "_tmpMentor_email":Ljava/lang/String;
    .local v16, "_cursorIndexOfMentorId":I
    invoke-virtual {v11, v0}, Lwgu/SchedulerApp/Mentors;->setMentor_email(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_1f .. :try_end_71} :catchall_7d

    .line 217
    .end local v0    # "_tmpMentor_email":Ljava/lang/String;
    .end local v12    # "_tmpMentor_id":I
    .end local v13    # "_tmpCourse_id_fk":I
    .end local v14    # "_tmpMentor_name":Ljava/lang/String;
    .end local v15    # "_tmpMentor_phone":Ljava/lang/String;
    goto :goto_75

    .line 218
    .end local v11    # "_result":Lwgu/SchedulerApp/Mentors;
    .end local v16    # "_cursorIndexOfMentorId":I
    .local v0, "_cursorIndexOfMentorId":I
    :cond_72
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfMentorId":I
    .restart local v16    # "_cursorIndexOfMentorId":I
    const/4 v11, 0x0

    .line 220
    .restart local v11    # "_result":Lwgu/SchedulerApp/Mentors;
    :goto_75
    nop

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 220
    return-object v11

    .line 222
    .end local v7    # "_cursorIndexOfCourseIdFk":I
    .end local v8    # "_cursorIndexOfMentorName":I
    .end local v9    # "_cursorIndexOfMentorPhone":I
    .end local v10    # "_cursorIndexOfMentorEmail":I
    .end local v11    # "_result":Lwgu/SchedulerApp/Mentors;
    .end local v16    # "_cursorIndexOfMentorId":I
    :catchall_7d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 224
    throw v0
.end method

.method public getMentorsList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwgu/SchedulerApp/Mentors;",
            ">;"
        }
    .end annotation

    .line 147
    const-string v0, "SELECT * FROM mentor_table ORDER BY mentor_id"

    .line 148
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM mentor_table ORDER BY mentor_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 149
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 150
    iget-object v3, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 152
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_15
    const-string v3, "mentor_id"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 153
    .local v3, "_cursorIndexOfMentorId":I
    const-string v4, "course_id_fk"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "_cursorIndexOfCourseIdFk":I
    const-string v5, "mentor_name"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, "_cursorIndexOfMentorName":I
    const-string v6, "mentor_phone"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 156
    .local v6, "_cursorIndexOfMentorPhone":I
    const-string v7, "mentor_email"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 157
    .local v7, "_cursorIndexOfMentorEmail":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Mentors;>;"
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 160
    new-instance v9, Lwgu/SchedulerApp/Mentors;

    invoke-direct {v9}, Lwgu/SchedulerApp/Mentors;-><init>()V

    .line 162
    .local v9, "_item":Lwgu/SchedulerApp/Mentors;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 163
    .local v10, "_tmpMentor_id":I
    invoke-virtual {v9, v10}, Lwgu/SchedulerApp/Mentors;->setMentor_id(I)V

    .line 165
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 166
    .local v11, "_tmpCourse_id_fk":I
    invoke-virtual {v9, v11}, Lwgu/SchedulerApp/Mentors;->setCourse_id_fk(I)V

    .line 168
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "_tmpMentor_name":Ljava/lang/String;
    invoke-virtual {v9, v12}, Lwgu/SchedulerApp/Mentors;->setMentor_name(Ljava/lang/String;)V

    .line 171
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, "_tmpMentor_phone":Ljava/lang/String;
    invoke-virtual {v9, v13}, Lwgu/SchedulerApp/Mentors;->setMentor_phone(Ljava/lang/String;)V

    .line 174
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 175
    .local v14, "_tmpMentor_email":Ljava/lang/String;
    invoke-virtual {v9, v14}, Lwgu/SchedulerApp/Mentors;->setMentor_email(Ljava/lang/String;)V

    .line 176
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_15 .. :try_end_6d} :catchall_77

    .line 177
    nop

    .end local v9    # "_item":Lwgu/SchedulerApp/Mentors;
    .end local v10    # "_tmpMentor_id":I
    .end local v11    # "_tmpCourse_id_fk":I
    .end local v12    # "_tmpMentor_name":Ljava/lang/String;
    .end local v13    # "_tmpMentor_phone":Ljava/lang/String;
    .end local v14    # "_tmpMentor_email":Ljava/lang/String;
    goto :goto_3c

    .line 178
    :cond_6f
    nop

    .line 180
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 178
    return-object v8

    .line 180
    .end local v3    # "_cursorIndexOfMentorId":I
    .end local v4    # "_cursorIndexOfCourseIdFk":I
    .end local v5    # "_cursorIndexOfMentorName":I
    .end local v6    # "_cursorIndexOfMentorPhone":I
    .end local v7    # "_cursorIndexOfMentorEmail":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lwgu/SchedulerApp/Mentors;>;"
    :catchall_77
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 182
    throw v3
.end method

.method public varargs insertAll([Lwgu/SchedulerApp/Mentors;)V
    .registers 4
    .param p1, "mentors"    # [Lwgu/SchedulerApp/Mentors;

    .line 111
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 112
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 114
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__insertionAdapterOfMentors:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 117
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 118
    throw v0
.end method

.method public insertMentor(Lwgu/SchedulerApp/Mentors;)V
    .registers 4
    .param p1, "mentors"    # Lwgu/SchedulerApp/Mentors;

    .line 99
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 100
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 102
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__insertionAdapterOfMentors:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 105
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 106
    throw v0
.end method

.method public updateMentor(Lwgu/SchedulerApp/Mentors;)V
    .registers 4
    .param p1, "mentors"    # Lwgu/SchedulerApp/Mentors;

    .line 135
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 136
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 138
    :try_start_a
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__updateAdapterOfMentors:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 139
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 141
    iget-object v0, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 142
    nop

    .line 143
    return-void

    .line 141
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lwgu/SchedulerApp/MentorsDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 142
    throw v0
.end method
