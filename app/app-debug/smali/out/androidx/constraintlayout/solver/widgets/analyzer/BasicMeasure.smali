.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 72
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 73
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .registers 13
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "useCurrentDimensions"    # Z

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 446
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 448
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 449
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_34

    move v0, v3

    goto :goto_35

    :cond_34
    move v0, v1

    .line 452
    .local v0, "horizontalMatchConstraints":Z
    :goto_35
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_3f

    move v2, v3

    goto :goto_40

    :cond_3f
    move v2, v1

    .line 453
    .local v2, "verticalMatchConstraints":Z
    :goto_40
    const/4 v4, 0x0

    if-eqz v0, :cond_4b

    iget v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4b

    move v5, v3

    goto :goto_4c

    :cond_4b
    move v5, v1

    .line 454
    .local v5, "horizontalUseRatio":Z
    :goto_4c
    if-eqz v2, :cond_56

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_56

    move v4, v3

    goto :goto_57

    :cond_56
    move v4, v1

    .line 456
    .local v4, "verticalUseRatio":Z
    :goto_57
    const/4 v6, 0x4

    if-eqz v5, :cond_66

    .line 457
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_66

    .line 458
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 461
    :cond_66
    if-eqz v4, :cond_74

    .line 462
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v7, v3

    if-ne v3, v6, :cond_74

    .line 463
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 467
    :cond_74
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 468
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 469
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 470
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 471
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 472
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 473
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 16
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 76
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 77
    .local v0, "childCount":I
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    .line 78
    .local v1, "optimize":Z
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    .line 79
    .local v2, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_b0

    .line 80
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 81
    .local v4, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v5, :cond_21

    .line 82
    goto/16 :goto_ac

    .line 84
    :cond_21
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v5, :cond_27

    .line 85
    goto/16 :goto_ac

    .line 87
    :cond_27
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 88
    goto/16 :goto_ac

    .line 91
    :cond_2f
    if-eqz v1, :cond_4a

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v5, :cond_4a

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v5, :cond_4a

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_4a

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_4a

    .line 94
    goto :goto_ac

    .line 97
    :cond_4a
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 98
    .local v6, "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    .line 100
    .local v8, "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_66

    iget v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v9, v7, :cond_66

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_66

    iget v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v9, v7, :cond_66

    move v9, v7

    goto :goto_67

    :cond_66
    move v9, v5

    .line 105
    .local v9, "skip":Z
    :goto_67
    if-nez v9, :cond_99

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-eqz v7, :cond_99

    instance-of v7, v4, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v7, :cond_99

    .line 107
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_86

    iget v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_86

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v7, :cond_86

    .line 110
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_86

    .line 111
    const/4 v9, 0x1

    .line 113
    :cond_86
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_99

    iget v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_99

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_99

    .line 116
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_99

    .line 117
    const/4 v9, 0x1

    .line 121
    :cond_99
    if-eqz v9, :cond_9c

    .line 124
    goto :goto_ac

    .line 127
    :cond_9c
    invoke-direct {p0, v2, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 128
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_ac

    .line 129
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v10, v5, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v5, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    .line 79
    .end local v4    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v8    # "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v9    # "skip":Z
    :cond_ac
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 132
    .end local v3    # "i":I
    :cond_b0
    invoke-interface {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 133
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .registers 8
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 141
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 142
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 143
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 144
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 145
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 146
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 147
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 148
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 152
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 157
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .registers 43
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 179
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v6, 0x0

    .line 181
    .local v6, "layoutTime":J
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 182
    .local v8, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    .line 183
    .local v9, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    .line 185
    .local v10, "startingHeight":I
    const/16 v11, 0x80

    invoke-static {v2, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v11

    .line 186
    .local v11, "optimizeWrap":Z
    if-nez v11, :cond_31

    const/16 v14, 0x40

    invoke-static {v2, v14}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v14

    if-eqz v14, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v14, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v14, 0x1

    .line 188
    .local v14, "optimize":Z
    :goto_32
    if-eqz v14, :cond_a5

    .line 189
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_35
    if-ge v15, v8, :cond_a2

    .line 190
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 191
    .local v13, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    .line 192
    .local v2, "matchWidth":Z
    :goto_4a
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_56

    const/4 v12, 0x1

    goto :goto_57

    :cond_56
    const/4 v12, 0x0

    .line 193
    .local v12, "matchHeight":Z
    :goto_57
    if-eqz v2, :cond_67

    if-eqz v12, :cond_67

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v19, 0x0

    cmpl-float v14, v14, v19

    if-lez v14, :cond_67

    const/4 v14, 0x1

    goto :goto_68

    :cond_67
    const/4 v14, 0x0

    .line 194
    .local v14, "ratio":Z
    :goto_68
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-eqz v19, :cond_75

    if-eqz v14, :cond_75

    .line 195
    const/16 v18, 0x0

    .line 196
    move/from16 v14, v18

    goto :goto_a9

    .line 198
    :cond_75
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_82

    if-eqz v14, :cond_82

    .line 199
    const/16 v18, 0x0

    .line 200
    move/from16 v14, v18

    goto :goto_a9

    .line 202
    :cond_82
    move/from16 v19, v2

    .end local v2    # "matchWidth":Z
    .local v19, "matchWidth":Z
    instance-of v2, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_8b

    .line 203
    const/4 v2, 0x0

    .line 204
    .end local v18    # "optimize":Z
    .local v2, "optimize":Z
    move v14, v2

    goto :goto_a9

    .line 206
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :cond_8b
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 207
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_9f

    .line 189
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "ratio":Z
    .end local v19    # "matchWidth":Z
    :cond_98
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move/from16 v14, v18

    goto :goto_35

    .line 208
    .restart local v12    # "matchHeight":Z
    .restart local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v14    # "ratio":Z
    .restart local v19    # "matchWidth":Z
    :cond_9f
    :goto_9f
    const/4 v2, 0x0

    .line 209
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    move v14, v2

    goto :goto_a9

    .line 189
    .end local v2    # "optimize":Z
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .local v14, "optimize":Z
    :cond_a2
    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_a7

    .line 188
    .end local v15    # "i":I
    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :cond_a5
    move/from16 v18, v14

    .line 214
    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_a7
    move/from16 v14, v18

    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :goto_a9
    const-wide/16 v12, 0x1

    if-eqz v14, :cond_bb

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_bb

    .line 215
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-wide/from16 v18, v6

    .end local v6    # "layoutTime":J
    .local v18, "layoutTime":J
    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    add-long/2addr v6, v12

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    goto :goto_bd

    .line 214
    .end local v18    # "layoutTime":J
    .restart local v6    # "layoutTime":J
    :cond_bb
    move-wide/from16 v18, v6

    .line 218
    .end local v6    # "layoutTime":J
    .restart local v18    # "layoutTime":J
    :goto_bd
    const/4 v2, 0x0

    .line 220
    .local v2, "allSolved":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_c4

    if-eq v4, v6, :cond_c6

    :cond_c4
    if-eqz v11, :cond_c8

    :cond_c6
    const/4 v7, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v7, 0x0

    :goto_c9
    and-int/2addr v7, v14

    .line 222
    .end local v14    # "optimize":Z
    .local v7, "optimize":Z
    const/4 v14, 0x0

    .line 224
    .local v14, "computations":I
    if-eqz v7, :cond_134

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v15

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 229
    .end local p6    # "widthSize":I
    .local v12, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v13

    move/from16 v15, p8

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 231
    .end local p8    # "heightSize":I
    .local v13, "heightSize":I
    if-ne v3, v6, :cond_ef

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_ef

    .line 232
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 235
    :cond_ef
    if-ne v4, v6, :cond_fd

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v13, :cond_fd

    .line 236
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 239
    :cond_fd
    if-ne v3, v6, :cond_107

    if-ne v4, v6, :cond_107

    .line 240
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    .line 241
    const/4 v14, 0x2

    goto :goto_123

    .line 243
    :cond_107
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    .line 244
    if-ne v3, v6, :cond_117

    .line 245
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    .line 246
    add-int/lit8 v14, v14, 0x1

    goto :goto_118

    .line 244
    :cond_117
    const/4 v15, 0x0

    .line 248
    :goto_118
    if-ne v4, v6, :cond_123

    .line 249
    const/4 v15, 0x1

    invoke-virtual {v1, v11, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v22

    and-int v2, v2, v22

    .line 250
    add-int/lit8 v14, v14, 0x1

    .line 253
    :cond_123
    :goto_123
    if-eqz v2, :cond_132

    .line 254
    if-ne v3, v6, :cond_129

    const/4 v15, 0x1

    goto :goto_12a

    :cond_129
    const/4 v15, 0x0

    :goto_12a
    if-ne v4, v6, :cond_12e

    const/4 v6, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v6, 0x0

    :goto_12f
    invoke-virtual {v1, v15, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 267
    :cond_132
    const/4 v6, 0x0

    goto :goto_13a

    .line 224
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .restart local p6    # "widthSize":I
    .restart local p8    # "heightSize":I
    :cond_134
    move/from16 v12, p6

    move/from16 v15, p8

    const/4 v6, 0x0

    move v13, v15

    .line 267
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v12    # "widthSize":I
    .restart local v13    # "heightSize":I
    :goto_13a
    if-eqz v2, :cond_154

    const/4 v15, 0x2

    if-eq v14, v15, :cond_140

    goto :goto_154

    :cond_140
    move/from16 p6, v2

    move-object v6, v5

    move/from16 v16, v7

    move/from16 v17, v8

    move v7, v9

    move/from16 v22, v11

    move/from16 p8, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_3db

    .line 268
    :cond_154
    :goto_154
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v15

    .line 269
    .local v15, "optimizations":I
    if-lez v8, :cond_15d

    .line 270
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 277
    :cond_15d
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 280
    .local v6, "sizeDependentWidgetsCount":I
    if-lez v8, :cond_16d

    .line 281
    move/from16 p6, v2

    .end local v2    # "allSolved":Z
    .local p6, "allSolved":Z
    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_16f

    .line 280
    .end local p6    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_16d
    move/from16 p6, v2

    .line 288
    .end local v2    # "allSolved":Z
    .restart local p6    # "allSolved":Z
    :goto_16f
    if-lez v6, :cond_3c2

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, "needSolverPass":Z
    move/from16 p8, v2

    .end local v2    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_17e

    const/4 v2, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v2, 0x0

    .line 292
    .local v2, "containerWrapWidth":Z
    :goto_17f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_18a

    const/16 v17, 0x1

    goto :goto_18c

    :cond_18a
    const/16 v17, 0x0

    :goto_18c
    move/from16 v3, v17

    .line 294
    .local v3, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v17, v8

    .end local v8    # "childCount":I
    .local v17, "childCount":I
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 295
    .local v4, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    move/from16 v22, v4

    .end local v4    # "minWidth":I
    .local v22, "minWidth":I
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 300
    .local v4, "minHeight":I
    const/4 v8, 0x0

    move/from16 v31, v4

    move/from16 v4, p8

    move/from16 p8, v12

    move v12, v8

    move/from16 v8, v22

    move/from16 v22, v11

    move/from16 v11, v31

    .local v4, "needSolverPass":Z
    .local v8, "minWidth":I
    .local v11, "minHeight":I
    .local v12, "i":I
    .local v22, "optimizeWrap":Z
    .local p8, "widthSize":I
    :goto_1bc
    if-ge v12, v6, :cond_275

    .line 301
    move/from16 v23, v13

    .end local v13    # "heightSize":I
    .local v23, "heightSize":I
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 302
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v24, v14

    .end local v14    # "computations":I
    .local v24, "computations":I
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v14, :cond_1d6

    .line 303
    move-object/from16 v27, v5

    move/from16 v26, v9

    move/from16 v25, v15

    goto/16 :goto_267

    .line 305
    :cond_1d6
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 306
    .local v14, "preWidth":I
    move/from16 v25, v15

    .end local v15    # "optimizations":I
    .local v25, "optimizations":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    .line 307
    .local v15, "preHeight":I
    move/from16 v26, v9

    const/4 v9, 0x1

    .end local v9    # "startingWidth":I
    .local v26, "startingWidth":I
    invoke-direct {v0, v5, v13, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v27

    or-int v4, v4, v27

    .line 308
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v9, :cond_1fc

    .line 309
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move/from16 v28, v4

    move-object/from16 v27, v5

    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v27, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v28, "needSolverPass":Z
    iget-wide v4, v9, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v9, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_200

    .line 308
    .end local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v28    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_1fc
    move/from16 v28, v4

    move-object/from16 v27, v5

    .line 311
    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v28    # "needSolverPass":Z
    :goto_200
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 312
    .local v4, "measuredWidth":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 313
    .local v5, "measuredHeight":I
    if-eq v4, v14, :cond_230

    .line 314
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 315
    if-eqz v2, :cond_22c

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    if-le v9, v8, :cond_22c

    .line 316
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move/from16 v29, v4

    .end local v4    # "measuredWidth":I
    .local v29, "measuredWidth":I
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 317
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 318
    .local v9, "w":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v4

    .end local v8    # "minWidth":I
    .local v4, "minWidth":I
    goto :goto_22e

    .line 315
    .end local v9    # "w":I
    .end local v29    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v8    # "minWidth":I
    :cond_22c
    move/from16 v29, v4

    .line 320
    .end local v4    # "measuredWidth":I
    .restart local v29    # "measuredWidth":I
    :goto_22e
    const/4 v4, 0x1

    .end local v28    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    goto :goto_234

    .line 313
    .end local v29    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v28    # "needSolverPass":Z
    :cond_230
    move/from16 v29, v4

    .end local v4    # "measuredWidth":I
    .restart local v29    # "measuredWidth":I
    move/from16 v4, v28

    .line 322
    .end local v28    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_234
    if-eq v5, v15, :cond_25c

    .line 323
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 324
    if-eqz v3, :cond_258

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    if-le v9, v11, :cond_258

    .line 325
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move/from16 v28, v4

    .end local v4    # "needSolverPass":Z
    .restart local v28    # "needSolverPass":Z
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 326
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 327
    .local v9, "h":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v11, v4

    .end local v11    # "minHeight":I
    .local v4, "minHeight":I
    goto :goto_25a

    .line 324
    .end local v9    # "h":I
    .end local v28    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .restart local v11    # "minHeight":I
    :cond_258
    move/from16 v28, v4

    .line 329
    .end local v4    # "needSolverPass":Z
    .restart local v28    # "needSolverPass":Z
    :goto_25a
    const/4 v4, 0x1

    .end local v28    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    goto :goto_25e

    .line 322
    :cond_25c
    move/from16 v28, v4

    .line 331
    :goto_25e
    move-object v9, v13

    check-cast v9, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 332
    .local v9, "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v28

    or-int v4, v4, v28

    .line 300
    .end local v5    # "measuredHeight":I
    .end local v9    # "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "preWidth":I
    .end local v15    # "preHeight":I
    .end local v29    # "measuredWidth":I
    :goto_267
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v9, v26

    move-object/from16 v5, v27

    goto/16 :goto_1bc

    .end local v23    # "heightSize":I
    .end local v24    # "computations":I
    .end local v25    # "optimizations":I
    .end local v26    # "startingWidth":I
    .end local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v9, "startingWidth":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .local v15, "optimizations":I
    :cond_275
    move-object/from16 v27, v5

    move/from16 v26, v9

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 336
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v9    # "startingWidth":I
    .end local v12    # "i":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .restart local v23    # "heightSize":I
    .restart local v24    # "computations":I
    .restart local v25    # "optimizations":I
    .restart local v26    # "startingWidth":I
    .restart local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v5, 0x2

    .line 337
    .local v5, "maxIterations":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_281
    if-ge v9, v5, :cond_392

    .line 338
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_284
    if-ge v12, v6, :cond_365

    .line 339
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 340
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v14, :cond_296

    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_2bc

    :cond_296
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v14, :cond_29b

    .line 341
    goto :goto_2bc

    .line 343
    :cond_29b
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2a4

    .line 344
    goto :goto_2bc

    .line 346
    :cond_2a4
    if-eqz v7, :cond_2b7

    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v14, :cond_2b7

    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v14, :cond_2b7

    .line 348
    goto :goto_2bc

    .line 350
    :cond_2b7
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_2c8

    .line 351
    nop

    .line 338
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2bc
    :goto_2bc
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v16, v7

    move-object/from16 v6, v27

    const-wide/16 v20, 0x1

    goto/16 :goto_355

    .line 354
    .restart local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2c8
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 355
    .local v14, "preWidth":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    .line 356
    .local v15, "preHeight":I
    move/from16 v28, v5

    .end local v5    # "maxIterations":I
    .local v28, "maxIterations":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    .line 358
    .local v5, "preBaselineDistance":I
    move/from16 v29, v6

    move/from16 v16, v7

    move-object/from16 v6, v27

    const/4 v7, 0x1

    .end local v7    # "optimize":Z
    .end local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v16, "optimize":Z
    .local v29, "sizeDependentWidgetsCount":I
    invoke-direct {v0, v6, v13, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v27

    .line 362
    .local v27, "hasMeasure":Z
    or-int v4, v4, v27

    .line 366
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_2f2

    .line 367
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v0, v7, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v0, v0, v20

    iput-wide v0, v7, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_2f4

    .line 366
    :cond_2f2
    const-wide/16 v20, 0x1

    .line 370
    :goto_2f4
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    .line 371
    .local v0, "measuredWidth":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 373
    .local v1, "measuredHeight":I
    if-eq v0, v14, :cond_323

    .line 374
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 375
    if-eqz v2, :cond_31f

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v7

    if-le v7, v8, :cond_31f

    .line 376
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v7

    move/from16 v30, v0

    .end local v0    # "measuredWidth":I
    .local v30, "measuredWidth":I
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 377
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v7, v0

    .line 378
    .local v7, "w":I
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_321

    .line 375
    .end local v7    # "w":I
    .end local v30    # "measuredWidth":I
    .restart local v0    # "measuredWidth":I
    :cond_31f
    move/from16 v30, v0

    .line 383
    .end local v0    # "measuredWidth":I
    .restart local v30    # "measuredWidth":I
    :goto_321
    const/4 v4, 0x1

    goto :goto_325

    .line 373
    .end local v30    # "measuredWidth":I
    .restart local v0    # "measuredWidth":I
    :cond_323
    move/from16 v30, v0

    .line 385
    .end local v0    # "measuredWidth":I
    .restart local v30    # "measuredWidth":I
    :goto_325
    if-eq v1, v15, :cond_348

    .line 386
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 387
    if-eqz v3, :cond_346

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    if-le v0, v11, :cond_346

    .line 388
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 389
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v0, v7

    .line 390
    .local v0, "h":I
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v11, v7

    .line 395
    .end local v0    # "h":I
    :cond_346
    const/4 v0, 0x1

    move v4, v0

    .line 397
    :cond_348
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v0

    if-eqz v0, :cond_355

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v5, v0, :cond_355

    .line 401
    const/4 v4, 0x1

    .line 338
    .end local v1    # "measuredHeight":I
    .end local v5    # "preBaselineDistance":I
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "preWidth":I
    .end local v15    # "preHeight":I
    .end local v27    # "hasMeasure":Z
    .end local v30    # "measuredWidth":I
    :cond_355
    :goto_355
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v27, v6

    move/from16 v7, v16

    move/from16 v5, v28

    move/from16 v6, v29

    goto/16 :goto_284

    .end local v16    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .local v5, "maxIterations":I
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .local v27, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_365
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v16, v7

    move-object/from16 v6, v27

    const-wide/16 v20, 0x1

    .line 404
    .end local v5    # "maxIterations":I
    .end local v7    # "optimize":Z
    .end local v12    # "i":I
    .end local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v16    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    if-eqz v4, :cond_38b

    .line 405
    const-string v0, "intermediate pass"

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v7, v26

    .end local v26    # "startingWidth":I
    .local v7, "startingWidth":I
    invoke-direct {v1, v5, v0, v7, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 406
    const/4 v4, 0x0

    .line 337
    add-int/lit8 v9, v9, 0x1

    move-object v0, v1

    move-object v1, v5

    move-object/from16 v27, v6

    move/from16 v7, v16

    move/from16 v5, v28

    move/from16 v6, v29

    goto/16 :goto_281

    .line 404
    .end local v7    # "startingWidth":I
    .restart local v26    # "startingWidth":I
    :cond_38b
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v7, v26

    .end local v26    # "startingWidth":I
    .restart local v7    # "startingWidth":I
    goto :goto_39e

    .line 337
    .end local v16    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .restart local v5    # "maxIterations":I
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .restart local v26    # "startingWidth":I
    .restart local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_392
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v16, v7

    move/from16 v7, v26

    move-object/from16 v6, v27

    move-object v5, v1

    move-object v1, v0

    .line 411
    .end local v5    # "maxIterations":I
    .end local v9    # "j":I
    .end local v26    # "startingWidth":I
    .end local v27    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v7, "startingWidth":I
    .restart local v16    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    :goto_39e
    if-eqz v4, :cond_3d6

    .line 412
    const-string v0, "2nd pass"

    invoke-direct {v1, v5, v0, v7, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 413
    const/4 v0, 0x0

    .line 414
    .end local v4    # "needSolverPass":Z
    .local v0, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v8, :cond_3b0

    .line 415
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 416
    const/4 v0, 0x1

    .line 418
    :cond_3b0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v11, :cond_3ba

    .line 419
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 420
    const/4 v0, 0x1

    .line 422
    :cond_3ba
    if-eqz v0, :cond_3d6

    .line 423
    const-string v4, "3rd pass"

    invoke-direct {v1, v5, v4, v7, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_3d6

    .line 288
    .end local v0    # "needSolverPass":Z
    .end local v2    # "containerWrapWidth":Z
    .end local v3    # "containerWrapHeight":Z
    .end local v16    # "optimize":Z
    .end local v17    # "childCount":I
    .end local v22    # "optimizeWrap":Z
    .end local v23    # "heightSize":I
    .end local v24    # "computations":I
    .end local v25    # "optimizations":I
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local p8    # "widthSize":I
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .local v8, "childCount":I
    .local v9, "startingWidth":I
    .local v11, "optimizeWrap":Z
    .local v12, "widthSize":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .local v15, "optimizations":I
    :cond_3c2
    move/from16 v29, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move v7, v9

    move/from16 v22, v11

    move/from16 p8, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v6, v5

    move-object v5, v1

    move-object v1, v0

    .line 427
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v8    # "childCount":I
    .end local v9    # "startingWidth":I
    .end local v11    # "optimizeWrap":Z
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .local v6, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v7, "startingWidth":I
    .restart local v16    # "optimize":Z
    .restart local v17    # "childCount":I
    .restart local v22    # "optimizeWrap":Z
    .restart local v23    # "heightSize":I
    .restart local v24    # "computations":I
    .restart local v25    # "optimizations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local p8    # "widthSize":I
    :cond_3d6
    :goto_3d6
    move/from16 v0, v25

    .end local v25    # "optimizations":I
    .local v0, "optimizations":I
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 432
    .end local v0    # "optimizations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    :goto_3db
    return-wide v18
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 7
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_2e

    .line 60
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 61
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_26

    .line 62
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_2b

    .line 63
    :cond_26
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 66
    .end local v1    # "i":I
    :cond_2e
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 67
    return-void
.end method
