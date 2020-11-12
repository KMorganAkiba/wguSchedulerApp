.class public Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;
.super Ljava/lang/Object;
.source "Grouping.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_GROUPING:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .registers 9
    .param p0, "constraintWidget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p3, "group"    # Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ">;",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ")",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;"
        }
    .end annotation

    .line 367
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    const/4 v0, -0x1

    .line 368
    .local v0, "groupId":I
    if-nez p1, :cond_6

    .line 369
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    goto :goto_8

    .line 371
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 377
    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    if-eqz p3, :cond_11

    iget v2, p3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    if-eq v0, v2, :cond_32

    .line 382
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 383
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 384
    .local v3, "widgetGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v4

    if-ne v4, v0, :cond_2e

    .line 385
    if-eqz p3, :cond_2c

    .line 389
    invoke-virtual {p3, p1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 390
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    :cond_2c
    move-object p3, v3

    .line 393
    goto :goto_31

    .line 382
    .end local v3    # "widgetGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v2    # "i":I
    :cond_31
    :goto_31
    goto :goto_35

    .line 396
    :cond_32
    if-eq v0, v1, :cond_35

    .line 397
    return-object p3

    .line 399
    :cond_35
    :goto_35
    if-nez p3, :cond_67

    .line 400
    instance-of v2, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    if-eqz v2, :cond_5c

    .line 401
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 402
    .local v2, "helper":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->findGroupInDependents(I)I

    move-result v0

    .line 403
    if-eq v0, v1, :cond_5c

    .line 404
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_45
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5c

    .line 405
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 406
    .restart local v3    # "widgetGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v4

    if-ne v4, v0, :cond_59

    .line 407
    move-object p3, v3

    .line 408
    goto :goto_5c

    .line 404
    .end local v3    # "widgetGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 413
    .end local v1    # "i":I
    .end local v2    # "helper":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    :cond_5c
    :goto_5c
    if-nez p3, :cond_64

    .line 414
    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    invoke-direct {v1, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;-><init>(I)V

    move-object p3, v1

    .line 419
    :cond_64
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_67
    invoke-virtual {p3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 422
    instance-of v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v1, :cond_84

    .line 423
    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 424
    .local v1, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->getAnchor()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v3

    if-nez v3, :cond_80

    const/4 v3, 0x1

    goto :goto_81

    :cond_80
    const/4 v3, 0x0

    :goto_81
    invoke-virtual {v2, v3, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 426
    .end local v1    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_84
    if-nez p1, :cond_97

    .line 427
    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 431
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 432
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    goto :goto_ac

    .line 434
    :cond_97
    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 438
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 439
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 440
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 442
    :goto_ac
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 444
    :cond_b1
    return-object p3
.end method

.method private static findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .registers 6
    .param p1, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ">;I)",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;"
        }
    .end annotation

    .line 356
    .local p0, "horizontalDependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 357
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 358
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 359
    .local v2, "group":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    iget v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    if-ne p1, v3, :cond_12

    .line 360
    return-object v2

    .line 357
    .end local v2    # "group":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 363
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public static simpleSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)Z
    .registers 24
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 63
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 67
    .local v2, "count":I
    const/4 v3, 0x0

    .line 68
    .local v3, "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    const/4 v4, 0x0

    .line 69
    .local v4, "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    const/4 v5, 0x0

    .line 70
    .local v5, "horizontalBarriers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/HelperWidget;>;"
    const/4 v6, 0x0

    .line 71
    .local v6, "verticalBarriers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/HelperWidget;>;"
    const/4 v7, 0x0

    .line 72
    .local v7, "isolatedHorizontalChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    const/4 v8, 0x0

    .line 74
    .local v8, "isolatedVerticalChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11
    const/4 v10, 0x0

    if-ge v9, v2, :cond_39

    .line 75
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 76
    .local v11, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    .line 77
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    .line 76
    invoke-static {v12, v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v12

    if-nez v12, :cond_31

    .line 81
    return v10

    .line 83
    :cond_31
    instance-of v12, v11, Landroidx/constraintlayout/solver/widgets/Flow;

    if-eqz v12, :cond_36

    .line 84
    return v10

    .line 74
    .end local v11    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 87
    .end local v9    # "i":I
    :cond_39
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v9, :cond_46

    .line 88
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v9, Landroidx/constraintlayout/solver/Metrics;->grouping:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v9, Landroidx/constraintlayout/solver/Metrics;->grouping:J

    .line 90
    :cond_46
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_47
    if-ge v9, v2, :cond_129

    .line 91
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 92
    .local v12, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    .line 93
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    .line 92
    invoke-static {v13, v14, v15, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v11

    if-nez v11, :cond_6d

    .line 94
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v13, p1

    invoke-static {v12, v13, v11, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    goto :goto_6f

    .line 92
    :cond_6d
    move-object/from16 v13, p1

    .line 96
    :goto_6f
    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v11, :cond_99

    .line 97
    move-object v11, v12

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 98
    .local v11, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v14

    if-nez v14, :cond_87

    .line 99
    if-nez v4, :cond_84

    .line 100
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 102
    :cond_84
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_87
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_99

    .line 105
    if-nez v3, :cond_96

    .line 106
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v14

    .line 108
    :cond_96
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v11    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_99
    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    if-eqz v11, :cond_e1

    .line 112
    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v11, :cond_c8

    .line 113
    move-object v11, v12

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 114
    .local v11, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v14

    if-nez v14, :cond_b5

    .line 115
    if-nez v5, :cond_b2

    .line 116
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v14

    .line 118
    :cond_b2
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_b5
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c7

    .line 121
    if-nez v6, :cond_c4

    .line 122
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    .line 124
    :cond_c4
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v11    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    :cond_c7
    goto :goto_e1

    .line 127
    :cond_c8
    move-object v11, v12

    check-cast v11, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 128
    .local v11, "helper":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    if-nez v5, :cond_d3

    .line 129
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v14

    .line 131
    :cond_d3
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    if-nez v6, :cond_de

    .line 133
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    .line 135
    :cond_de
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v11    # "helper":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    :cond_e1
    :goto_e1
    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v11, :cond_100

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v11, :cond_100

    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v11, :cond_100

    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v11, :cond_100

    .line 140
    if-nez v7, :cond_fd

    .line 141
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    .line 143
    :cond_fd
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_100
    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v11, :cond_125

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v11, :cond_125

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v11, :cond_125

    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v11, :cond_125

    instance-of v11, v12, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v11, :cond_125

    .line 148
    if-nez v8, :cond_122

    .line 149
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v11

    .line 151
    :cond_122
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v12    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_125
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_47

    :cond_129
    move-object/from16 v13, p1

    .line 154
    .end local v9    # "i":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v9, "allDependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    move-object v11, v9

    .line 159
    .local v11, "dependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    const/4 v12, 0x0

    if-eqz v3, :cond_148

    .line 160
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_138
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_148

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 161
    .local v15, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-static {v15, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 162
    .end local v15    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    goto :goto_138

    .line 164
    :cond_148
    if-eqz v5, :cond_16c

    .line 165
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_14e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_169

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 166
    .local v15, "barrier":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    move-object/from16 v16, v3

    .end local v3    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .local v16, "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    invoke-static {v15, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v3

    .line 167
    .local v3, "group":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v15, v11, v10, v3}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 168
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 169
    .end local v3    # "group":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v15    # "barrier":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    move-object/from16 v3, v16

    goto :goto_14e

    .line 165
    .end local v16    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .local v3, "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    :cond_169
    move-object/from16 v16, v3

    .end local v3    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v16    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    goto :goto_16e

    .line 164
    .end local v16    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v3    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    :cond_16c
    move-object/from16 v16, v3

    .line 172
    .end local v3    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v16    # "verticalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    :goto_16e
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 173
    .local v3, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    if-eqz v14, :cond_19b

    .line 174
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_182
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_198

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 175
    .local v15, "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v17, v3

    .end local v3    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v17, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v3, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 176
    .end local v15    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v3, v17

    goto :goto_182

    .line 174
    .end local v17    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_198
    move-object/from16 v17, v3

    .end local v3    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v17    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_19d

    .line 173
    .end local v17    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_19b
    move-object/from16 v17, v3

    .line 179
    .end local v3    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v17    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_19d
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 180
    .local v3, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    if-eqz v14, :cond_1ca

    .line 181
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1b1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 182
    .restart local v15    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v18, v3

    .end local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v18, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v3, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 183
    .end local v15    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v3, v18

    goto :goto_1b1

    .line 181
    .end local v18    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1c7
    move-object/from16 v18, v3

    .end local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v18    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_1cc

    .line 180
    .end local v18    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1ca
    move-object/from16 v18, v3

    .line 186
    .end local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v18    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1cc
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 187
    .local v3, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    if-eqz v14, :cond_1f9

    .line 188
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1e0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 189
    .restart local v15    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v19, v3

    .end local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v19, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v3, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 190
    .end local v15    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v3, v19

    goto :goto_1e0

    .line 188
    .end local v19    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1f6
    move-object/from16 v19, v3

    .end local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v19    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_1fb

    .line 187
    .end local v19    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1f9
    move-object/from16 v19, v3

    .line 193
    .end local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v19    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1fb
    if-eqz v7, :cond_211

    .line 194
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_201
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_211

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 195
    .local v14, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-static {v14, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 196
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_201

    .line 201
    .end local v11    # "dependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    .end local v17    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v18    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v19    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_211
    move-object v3, v9

    .line 203
    .local v3, "dependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    if-eqz v4, :cond_229

    .line 204
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_218
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_229

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 205
    .local v14, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    const/4 v15, 0x1

    invoke-static {v14, v15, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 206
    .end local v14    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    goto :goto_218

    .line 208
    :cond_229
    if-eqz v6, :cond_248

    .line 209
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_22f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_248

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 210
    .local v14, "barrier":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    const/4 v15, 0x1

    invoke-static {v14, v15, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v10

    .line 211
    .local v10, "group":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v14, v3, v15, v10}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 212
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 213
    .end local v10    # "group":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v14    # "barrier":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    const/4 v10, 0x0

    goto :goto_22f

    .line 216
    :cond_248
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    .line 217
    .local v10, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    if-eqz v11, :cond_276

    .line 218
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_25c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_273

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 219
    .local v14, "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .local v18, "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    invoke-static {v15, v4, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 220
    .end local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, v18

    goto :goto_25c

    .line 218
    .end local v18    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v4    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    :cond_273
    move-object/from16 v18, v4

    .end local v4    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v18    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    goto :goto_278

    .line 217
    .end local v18    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v4    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    :cond_276
    move-object/from16 v18, v4

    .line 223
    .end local v4    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    .restart local v18    # "horizontalGuidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    :goto_278
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 224
    .local v4, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    if-eqz v11, :cond_2a6

    .line 225
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_28c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 226
    .restart local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v19, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-static {v15, v4, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 227
    .end local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, v19

    goto :goto_28c

    .line 225
    .end local v19    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2a3
    move-object/from16 v19, v4

    .end local v4    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v19    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_2a8

    .line 224
    .end local v19    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2a6
    move-object/from16 v19, v4

    .line 230
    .end local v4    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v19    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_2a8
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 231
    .local v4, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    if-eqz v11, :cond_2d6

    .line 232
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2bc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2d3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 233
    .restart local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v20, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-static {v15, v4, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 234
    .end local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, v20

    goto :goto_2bc

    .line 232
    .end local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2d3
    move-object/from16 v20, v4

    .end local v4    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_2d8

    .line 231
    .end local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2d6
    move-object/from16 v20, v4

    .line 237
    .end local v4    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_2d8
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 238
    .local v4, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    if-eqz v11, :cond_306

    .line 239
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2ec
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_303

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 240
    .restart local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v21, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-static {v15, v4, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 241
    .end local v14    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, v21

    goto :goto_2ec

    .line 239
    .end local v21    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_303
    move-object/from16 v21, v4

    .end local v4    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v21    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_308

    .line 238
    .end local v21    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_306
    move-object/from16 v21, v4

    .line 244
    .end local v4    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v21    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_308
    if-eqz v8, :cond_31f

    .line 245
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 246
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v14, 0x1

    invoke-static {v11, v14, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 247
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_30e

    .line 251
    .end local v3    # "dependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;>;"
    .end local v10    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v19    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v21    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_31f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_320
    if-ge v3, v2, :cond_34c

    .line 252
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 253
    .local v4, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->oppositeDimensionsTied()Z

    move-result v10

    if-eqz v10, :cond_349

    .line 254
    iget v10, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    invoke-static {v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v10

    .line 255
    .local v10, "horizontalGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    iget v11, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    invoke-static {v9, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v11

    .line 256
    .local v11, "verticalGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    if-eqz v10, :cond_349

    if-eqz v11, :cond_349

    .line 260
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 261
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setOrientation(I)V

    .line 262
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    .end local v4    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "horizontalGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v11    # "verticalGroup":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    :cond_349
    add-int/lit8 v3, v3, 0x1

    goto :goto_320

    .line 270
    .end local v3    # "i":I
    :cond_34c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_355

    .line 271
    const/4 v3, 0x0

    return v3

    .line 294
    :cond_355
    const/4 v3, 0x0

    .line 295
    .local v3, "horizontalPick":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    const/4 v4, 0x0

    .line 297
    .local v4, "verticalPick":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_3a3

    .line 298
    const/4 v10, 0x0

    .line 299
    .local v10, "maxWrap":I
    const/4 v11, 0x0

    .line 300
    .local v11, "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_365
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_391

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 301
    .local v14, "list":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getOrientation()I

    move-result v15

    move-object/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v19, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    if-ne v15, v1, :cond_37d

    .line 302
    move-object/from16 v1, v19

    goto :goto_365

    .line 304
    :cond_37d
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getSystem()Landroidx/constraintlayout/solver/LinearSystem;

    move-result-object v15

    invoke-virtual {v14, v15, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/solver/LinearSystem;I)I

    move-result v15

    .line 306
    .local v15, "wrap":I
    if-le v15, v10, :cond_38e

    .line 307
    move-object v1, v14

    .line 308
    .end local v11    # "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .local v1, "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    move v10, v15

    move-object v11, v1

    .line 313
    .end local v1    # "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v14    # "list":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v15    # "wrap":I
    .restart local v11    # "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    :cond_38e
    move-object/from16 v1, v19

    goto :goto_365

    .line 314
    .end local v19    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_391
    move-object/from16 v19, v1

    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v19    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    if-eqz v11, :cond_3a5

    .line 318
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 319
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 320
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 321
    move-object v3, v11

    goto :goto_3a5

    .line 297
    .end local v10    # "maxWrap":I
    .end local v11    # "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v19    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_3a3
    move-object/from16 v19, v1

    .line 325
    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v19    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_3a5
    :goto_3a5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v10, :cond_3ea

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "maxWrap":I
    const/4 v10, 0x0

    .line 328
    .local v10, "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3b3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3d8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 329
    .local v12, "list":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getOrientation()I

    move-result v14

    if-nez v14, :cond_3c6

    .line 330
    goto :goto_3b3

    .line 332
    :cond_3c6
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getSystem()Landroidx/constraintlayout/solver/LinearSystem;

    move-result-object v15

    const/4 v14, 0x1

    invoke-virtual {v12, v15, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/solver/LinearSystem;I)I

    move-result v15

    .line 334
    .restart local v15    # "wrap":I
    if-le v15, v1, :cond_3d7

    .line 335
    move-object v10, v12

    .line 336
    move v1, v15

    .line 341
    .end local v12    # "list":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .end local v15    # "wrap":I
    :cond_3d7
    goto :goto_3b3

    .line 342
    :cond_3d8
    if-eqz v10, :cond_3e8

    .line 346
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 347
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 348
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 349
    move-object v4, v10

    goto :goto_3eb

    .line 342
    :cond_3e8
    const/4 v11, 0x1

    goto :goto_3eb

    .line 325
    .end local v1    # "maxWrap":I
    .end local v10    # "picked":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    :cond_3ea
    const/4 v11, 0x1

    .line 352
    :goto_3eb
    if-nez v3, :cond_3f2

    if-eqz v4, :cond_3f0

    goto :goto_3f2

    :cond_3f0
    const/4 v10, 0x0

    goto :goto_3f3

    :cond_3f2
    :goto_3f2
    move v10, v11

    :goto_3f3
    return v10
.end method

.method public static validInGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .registers 8
    .param p0, "layoutHorizontal"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p1, "layoutVertical"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p2, "widgetHorizontal"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p3, "widgetVertical"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_15

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v0, :cond_15

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_13

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p0, v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    .line 50
    .local v0, "fixedHorizontal":Z
    :goto_16
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p3, v3, :cond_29

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p3, v3, :cond_29

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p3, v3, :cond_27

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v3, :cond_27

    goto :goto_29

    :cond_27
    move v3, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v3, v2

    .line 52
    .local v3, "fixedVertical":Z
    :goto_2a
    if-nez v0, :cond_30

    if-eqz v3, :cond_2f

    goto :goto_30

    .line 55
    :cond_2f
    return v1

    .line 53
    :cond_30
    :goto_30
    return v2
.end method
