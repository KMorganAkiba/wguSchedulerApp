.class Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final NO_OP:I = 0x0

.field static final REMOVE:I = 0x2


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .registers 5
    .param p1, "tableCount"    # I

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 747
    new-array v1, p1, [Z

    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 748
    new-array v1, p1, [I

    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 749
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 750
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 751
    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .registers 10

    .line 797
    monitor-enter p0

    .line 798
    :try_start_1
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v0, :cond_a

    goto :goto_41

    .line 801
    :cond_a
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v0, v0

    .line 802
    .local v0, "tableCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_39

    .line 803
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 804
    .local v4, "newState":Z
    :goto_1f
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v5, v5, v1

    if-eq v4, v5, :cond_2e

    .line 805
    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x2

    :goto_2b
    aput v3, v2, v1

    goto :goto_32

    .line 807
    :cond_2e
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    aput v2, v3, v1

    .line 809
    :goto_32
    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v4, v2, v1

    .line 802
    .end local v4    # "newState":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 811
    .end local v1    # "i":I
    :cond_39
    iput-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 812
    iput-boolean v2, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 813
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0

    return-object v1

    .line 799
    .end local v0    # "tableCount":I
    :cond_41
    :goto_41
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 814
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method

.method varargs onAdded([I)Z
    .registers 11
    .param p1, "tableIds"    # [I

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 759
    :try_start_2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_21

    aget v3, p1, v2

    .line 760
    .local v3, "tableId":I
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v3

    move-wide v4, v5

    .line 761
    .local v4, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v4

    aput-wide v7, v6, v3

    .line 762
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1e

    .line 763
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 764
    const/4 v0, 0x1

    .line 759
    .end local v3    # "tableId":I
    .end local v4    # "prevObserverCount":J
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 767
    :cond_21
    monitor-exit p0

    .line 768
    return v0

    .line 767
    :catchall_23
    move-exception v1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_23

    throw v1
.end method

.method varargs onRemoved([I)Z
    .registers 13
    .param p1, "tableIds"    # [I

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 777
    :try_start_2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_20

    aget v3, p1, v2

    .line 778
    .local v3, "tableId":I
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v3

    move-wide v4, v5

    .line 779
    .local v4, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    sub-long v9, v4, v7

    aput-wide v9, v6, v3

    .line 780
    cmp-long v6, v4, v7

    if-nez v6, :cond_1d

    .line 781
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 782
    const/4 v0, 0x1

    .line 777
    .end local v3    # "tableId":I
    .end local v4    # "prevObserverCount":J
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 785
    :cond_20
    monitor-exit p0

    .line 786
    return v0

    .line 785
    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_22

    throw v1
.end method

.method onSyncCompleted()V
    .registers 2

    .line 822
    monitor-enter p0

    .line 823
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 824
    monitor-exit p0

    .line 825
    return-void

    .line 824
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method
