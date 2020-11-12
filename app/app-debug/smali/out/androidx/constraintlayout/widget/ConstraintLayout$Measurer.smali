.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 618
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 620
    return-void
.end method

.method private isSimilarSpec(III)Z
    .registers 10
    .param p1, "lastMeasureSpec"    # I
    .param p2, "spec"    # I
    .param p3, "widgetSize"    # I

    .line 898
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 899
    return v0

    .line 901
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 902
    .local v1, "lastMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 903
    .local v2, "lastSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 904
    .local v3, "mode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 905
    .local v4, "size":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_21

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_1e

    if-nez v1, :cond_21

    :cond_1e
    if-ne p3, v4, :cond_21

    .line 908
    return v0

    .line 910
    :cond_21
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .registers 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 610
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 611
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 612
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 613
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 614
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 615
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 616
    return-void
.end method

.method public final didMeasures()V
    .registers 6

    .line 915
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 916
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 917
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 918
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_1b

    .line 919
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 916
    .end local v2    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 923
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 924
    .local v1, "helperCount":I
    if-lez v1, :cond_41

    .line 925
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_41

    .line 926
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 927
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 925
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 930
    .end local v2    # "i":I
    :cond_41
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 34
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    .line 627
    return-void

    .line 629
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 630
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 632
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 633
    return-void

    .line 643
    :cond_1f
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    .local v4, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 649
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 650
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 652
    .local v9, "verticalSpec":I
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 653
    .local v10, "heightPadding":I
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 655
    .local v11, "widthPadding":I
    const/4 v12, 0x0

    .line 656
    .local v12, "didHorizontalWrap":Z
    const/4 v13, 0x0

    .line 658
    .local v13, "didVerticalWrap":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 660
    .local v14, "child":Landroid/view/View;
    sget-object v15, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v5, 0x2

    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .local v20, "horizontalSpec":I
    const/4 v8, 0x1

    if-eq v15, v8, :cond_d2

    if-eq v15, v5, :cond_c0

    const/4 v5, 0x3

    if-eq v15, v5, :cond_aa

    const/4 v5, 0x4

    if-eq v15, v5, :cond_53

    move/from16 v15, v20

    const/4 v8, 0x2

    goto/16 :goto_de

    .line 680
    :cond_53
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 681
    .end local v20    # "horizontalSpec":I
    .local v5, "horizontalSpec":I
    const/4 v12, 0x1

    .line 682
    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v15, v8, :cond_61

    move v15, v8

    goto :goto_62

    :cond_61
    const/4 v15, 0x0

    .line 683
    .local v15, "shouldDoWrap":Z
    :goto_62
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x2

    const/16 v20, 0x0

    aput v20, v8, v16

    .line 684
    iget-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v8, :cond_a4

    .line 685
    if-eqz v15, :cond_87

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x3

    aget v8, v8, v19

    if-eqz v8, :cond_87

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v8, v8, v16

    .line 687
    move/from16 v20, v5

    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-ne v8, v5, :cond_8d

    goto :goto_89

    .line 685
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    :cond_87
    move/from16 v20, v5

    .line 687
    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :goto_89
    instance-of v5, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_8f

    :cond_8d
    const/4 v5, 0x1

    goto :goto_90

    :cond_8f
    const/4 v5, 0x0

    .line 690
    .local v5, "useCurrent":Z
    :goto_90
    if-eqz v15, :cond_94

    if-eqz v5, :cond_a6

    .line 691
    :cond_94
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    move/from16 v22, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "useCurrent":Z
    .local v22, "useCurrent":Z
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 692
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    const/4 v12, 0x0

    move v15, v8

    const/4 v8, 0x2

    goto :goto_de

    .line 684
    .end local v8    # "horizontalSpec":I
    .end local v22    # "useCurrent":Z
    .local v5, "horizontalSpec":I
    :cond_a4
    move/from16 v20, v5

    .line 699
    .end local v5    # "horizontalSpec":I
    .end local v15    # "shouldDoWrap":Z
    .restart local v20    # "horizontalSpec":I
    :cond_a6
    move/from16 v15, v20

    const/4 v8, 0x2

    goto :goto_de

    .line 674
    :cond_aa
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v8

    add-int/2addr v8, v11

    .line 674
    const/4 v15, -0x1

    invoke-static {v5, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 676
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    move/from16 v20, v8

    const/4 v8, 0x2

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    aput v15, v5, v8

    .line 678
    move/from16 v15, v20

    goto :goto_de

    .line 667
    :cond_c0
    move v8, v5

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 668
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    const/4 v12, 0x1

    .line 669
    move/from16 v20, v5

    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v15, v5, v8

    .line 671
    move/from16 v15, v20

    goto :goto_de

    .line 662
    :cond_d2
    move v8, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 663
    .end local v20    # "horizontalSpec":I
    .local v15, "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v8

    .line 665
    nop

    .line 699
    :goto_de
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v20

    aget v5, v5, v20

    move/from16 v20, v6

    const/4 v6, 0x1

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    if-eq v5, v6, :cond_160

    if-eq v5, v8, :cond_152

    const/4 v6, 0x3

    if-eq v5, v6, :cond_140

    const/4 v6, 0x4

    if-eq v5, v6, :cond_f5

    goto/16 :goto_16c

    .line 720
    :cond_f5
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v6, -0x2

    invoke-static {v5, v10, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 722
    const/4 v13, 0x1

    .line 723
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_104

    const/4 v5, 0x1

    goto :goto_105

    :cond_104
    const/4 v5, 0x0

    .line 724
    .local v5, "shouldDoWrap":Z
    :goto_105
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x3

    const/16 v16, 0x0

    aput v16, v6, v8

    .line 725
    iget-boolean v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v6, :cond_13d

    .line 726
    if-eqz v5, :cond_124

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x2

    aget v6, v6, v8

    if-eqz v6, :cond_124

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ne v6, v8, :cond_128

    :cond_124
    instance-of v6, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v6, :cond_12a

    :cond_128
    const/4 v6, 0x1

    goto :goto_12b

    :cond_12a
    const/4 v6, 0x0

    .line 730
    .local v6, "useCurrent":Z
    :goto_12b
    if-eqz v5, :cond_12f

    if-eqz v6, :cond_16c

    .line 731
    :cond_12f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    move/from16 v17, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v17, "shouldDoWrap":Z
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 732
    const/4 v13, 0x0

    goto :goto_16c

    .line 725
    .end local v6    # "useCurrent":Z
    .end local v17    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    :cond_13d
    move/from16 v17, v5

    .end local v5    # "shouldDoWrap":Z
    .restart local v17    # "shouldDoWrap":Z
    goto :goto_16c

    .line 714
    .end local v17    # "shouldDoWrap":Z
    :cond_140
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v6

    add-int/2addr v6, v10

    .line 714
    const/4 v8, -0x1

    invoke-static {v5, v6, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 716
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v6, 0x3

    aput v8, v5, v6

    .line 718
    goto :goto_16c

    .line 706
    :cond_152
    const/4 v6, 0x3

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v8, -0x2

    invoke-static {v5, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 708
    const/4 v13, 0x1

    .line 709
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v5, v6

    .line 711
    goto :goto_16c

    .line 701
    :cond_160
    const/4 v6, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 702
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v5, v6

    .line 704
    nop

    .line 739
    :cond_16c
    :goto_16c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 740
    .local v5, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    if-eqz v5, :cond_1ee

    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    const/16 v8, 0x100

    invoke-static {v6, v8}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v6

    if-eqz v6, :cond_1ee

    .line 741
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_1ee

    .line 744
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_1ee

    .line 745
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ne v6, v8, :cond_1ee

    .line 746
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-ge v6, v8, :cond_1ee

    .line 747
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v8

    if-ne v6, v8, :cond_1ee

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v6

    if-nez v6, :cond_1ee

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-direct {v0, v6, v15, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    invoke-direct {v0, v6, v9, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v6

    if-eqz v6, :cond_1d8

    const/4 v6, 0x1

    goto :goto_1d9

    :cond_1d8
    const/4 v6, 0x0

    .line 752
    .local v6, "similar":Z
    :goto_1d9
    if-eqz v6, :cond_1ee

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    iput v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    iput v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v8

    iput v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 760
    return-void

    .line 765
    .end local v6    # "similar":Z
    :cond_1ee
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_1f4

    const/4 v6, 0x1

    goto :goto_1f5

    :cond_1f4
    const/4 v6, 0x0

    .line 766
    .local v6, "horizontalMatchConstraints":Z
    :goto_1f5
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v8, :cond_1fb

    const/4 v8, 0x1

    goto :goto_1fc

    :cond_1fb
    const/4 v8, 0x0

    .line 768
    .local v8, "verticalMatchConstraints":Z
    :goto_1fc
    move-object/from16 v17, v5

    .end local v5    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .local v17, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_209

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_207

    goto :goto_209

    :cond_207
    const/4 v5, 0x0

    goto :goto_20a

    :cond_209
    :goto_209
    const/4 v5, 0x1

    .line 770
    .local v5, "verticalDimensionKnown":Z
    :goto_20a
    move-object/from16 v18, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v18, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_217

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_215

    goto :goto_217

    :cond_215
    const/4 v4, 0x0

    goto :goto_218

    :cond_217
    :goto_217
    const/4 v4, 0x1

    .line 772
    .local v4, "horizontalDimensionKnown":Z
    :goto_218
    const/16 v22, 0x0

    if-eqz v6, :cond_226

    move-object/from16 v23, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v23, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v22

    if-lez v3, :cond_228

    const/4 v3, 0x1

    goto :goto_229

    .end local v23    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_226
    move-object/from16 v23, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v23    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_228
    const/4 v3, 0x0

    .line 773
    .local v3, "horizontalUseRatio":Z
    :goto_229
    if-eqz v8, :cond_235

    move/from16 v24, v7

    .end local v7    # "verticalDimension":I
    .local v24, "verticalDimension":I
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v22

    if-lez v7, :cond_237

    const/4 v7, 0x1

    goto :goto_238

    .end local v24    # "verticalDimension":I
    .restart local v7    # "verticalDimension":I
    :cond_235
    move/from16 v24, v7

    .end local v7    # "verticalDimension":I
    .restart local v24    # "verticalDimension":I
    :cond_237
    const/4 v7, 0x0

    .line 775
    .local v7, "verticalUseRatio":Z
    :goto_238
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move/from16 v25, v10

    .end local v10    # "heightPadding":I
    .local v25, "heightPadding":I
    move-object/from16 v10, v22

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 777
    .local v10, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v22, 0x0

    .line 778
    .local v22, "width":I
    const/16 v26, 0x0

    .line 779
    .local v26, "height":I
    const/16 v27, 0x0

    .line 781
    .local v27, "baseline":I
    move/from16 v28, v11

    .end local v11    # "widthPadding":I
    .local v28, "widthPadding":I
    iget-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v11, :cond_26d

    if-eqz v6, :cond_26d

    iget v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v11, :cond_26d

    if-eqz v8, :cond_26d

    iget v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v11, :cond_25b

    goto :goto_26d

    :cond_25b
    move/from16 v30, v3

    move/from16 v29, v6

    move/from16 v21, v12

    move/from16 v0, v22

    move/from16 v3, v26

    move/from16 v6, v27

    const/16 v16, 0x0

    move/from16 v26, v8

    goto/16 :goto_37e

    .line 785
    :cond_26d
    :goto_26d
    instance-of v11, v14, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v11, :cond_281

    instance-of v11, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v11, :cond_281

    .line 786
    move-object v11, v1

    check-cast v11, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 787
    .local v11, "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    move/from16 v29, v6

    .end local v6    # "horizontalMatchConstraints":Z
    .local v29, "horizontalMatchConstraints":Z
    move-object v6, v14

    check-cast v6, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v6, v11, v15, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 788
    .end local v11    # "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    goto :goto_289

    .line 785
    .end local v29    # "horizontalMatchConstraints":Z
    .restart local v6    # "horizontalMatchConstraints":Z
    :cond_281
    move/from16 v29, v6

    .line 789
    .end local v6    # "horizontalMatchConstraints":Z
    .restart local v29    # "horizontalMatchConstraints":Z
    invoke-virtual {v14, v15, v9}, Landroid/view/View;->measure(II)V

    .line 790
    invoke-virtual {v1, v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 793
    :goto_289
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 794
    .local v6, "w":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 795
    .local v11, "h":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v27

    .line 797
    move/from16 v30, v6

    .line 798
    .end local v22    # "width":I
    .local v30, "width":I
    move/from16 v22, v11

    .line 805
    .end local v26    # "height":I
    .local v22, "height":I
    if-eqz v12, :cond_2aa

    .line 806
    move/from16 v26, v8

    .end local v8    # "verticalMatchConstraints":Z
    .local v26, "verticalMatchConstraints":Z
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v6, v8, v16

    .line 807
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x2

    aput v11, v8, v21

    goto :goto_2b8

    .line 809
    .end local v26    # "verticalMatchConstraints":Z
    .restart local v8    # "verticalMatchConstraints":Z
    :cond_2aa
    move/from16 v26, v8

    const/16 v16, 0x0

    const/16 v21, 0x2

    .end local v8    # "verticalMatchConstraints":Z
    .restart local v26    # "verticalMatchConstraints":Z
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v16

    .line 810
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v21

    .line 812
    :goto_2b8
    if-eqz v13, :cond_2c9

    .line 813
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x1

    aput v11, v8, v21

    .line 814
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x3

    aput v6, v8, v19

    const/16 v16, 0x0

    goto :goto_2d7

    .line 816
    :cond_2c9
    const/16 v19, 0x3

    const/16 v21, 0x1

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v8, v21

    .line 817
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v19

    .line 820
    :goto_2d7
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_2e8

    .line 821
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v19, v9

    move/from16 v9, v30

    .end local v30    # "width":I
    .local v9, "width":I
    .local v19, "verticalSpec":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v9, v30

    .end local v9    # "width":I
    .restart local v30    # "width":I
    goto :goto_2ec

    .line 820
    .end local v19    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_2e8
    move/from16 v19, v9

    move/from16 v9, v30

    .line 823
    .end local v30    # "width":I
    .local v9, "width":I
    .restart local v19    # "verticalSpec":I
    :goto_2ec
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v8, :cond_2f6

    .line 824
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 826
    :cond_2f6
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v8, :cond_307

    .line 827
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v21, v12

    move/from16 v12, v22

    .end local v22    # "height":I
    .local v12, "height":I
    .local v21, "didHorizontalWrap":Z
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v12, v22

    .end local v12    # "height":I
    .restart local v22    # "height":I
    goto :goto_30b

    .line 826
    .end local v21    # "didHorizontalWrap":Z
    .local v12, "didHorizontalWrap":Z
    :cond_307
    move/from16 v21, v12

    move/from16 v12, v22

    .line 829
    .end local v22    # "height":I
    .local v12, "height":I
    .restart local v21    # "didHorizontalWrap":Z
    :goto_30b
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v8, :cond_315

    .line 830
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 833
    :cond_315
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v8

    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v8

    .line 834
    .local v8, "optimizeDirect":Z
    if-nez v8, :cond_344

    .line 835
    if-eqz v3, :cond_333

    if-eqz v5, :cond_333

    .line 836
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 837
    .local v0, "ratio":F
    move/from16 v30, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v30, "horizontalUseRatio":Z
    int-to-float v3, v12

    mul-float/2addr v3, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v3, v3, v22

    float-to-int v0, v3

    .line 838
    .end local v9    # "width":I
    .local v0, "width":I
    move v9, v0

    goto :goto_346

    .line 835
    .end local v0    # "width":I
    .end local v30    # "horizontalUseRatio":Z
    .restart local v3    # "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_333
    move/from16 v30, v3

    .line 838
    .end local v3    # "horizontalUseRatio":Z
    .restart local v30    # "horizontalUseRatio":Z
    if-eqz v7, :cond_346

    if-eqz v4, :cond_346

    .line 839
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 840
    .local v0, "ratio":F
    int-to-float v3, v9

    div-float/2addr v3, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v3, v3, v22

    float-to-int v3, v3

    move v12, v3

    .end local v12    # "height":I
    .local v3, "height":I
    goto :goto_346

    .line 834
    .end local v0    # "ratio":F
    .end local v30    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v12    # "height":I
    :cond_344
    move/from16 v30, v3

    .line 844
    .end local v3    # "horizontalUseRatio":Z
    .restart local v30    # "horizontalUseRatio":Z
    :cond_346
    :goto_346
    if-ne v6, v9, :cond_352

    if-eq v11, v12, :cond_34b

    goto :goto_352

    :cond_34b
    move v0, v9

    move v3, v12

    move/from16 v9, v19

    move/from16 v6, v27

    goto :goto_37e

    .line 845
    :cond_352
    :goto_352
    if-eq v6, v9, :cond_35c

    .line 846
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v15, v3

    .end local v15    # "horizontalSpec":I
    .local v3, "horizontalSpec":I
    goto :goto_35e

    .line 845
    .end local v3    # "horizontalSpec":I
    .restart local v15    # "horizontalSpec":I
    :cond_35c
    const/high16 v0, 0x40000000    # 2.0f

    .line 848
    :goto_35e
    if-eq v11, v12, :cond_365

    .line 849
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .end local v19    # "verticalSpec":I
    .local v0, "verticalSpec":I
    goto :goto_367

    .line 848
    .end local v0    # "verticalSpec":I
    .restart local v19    # "verticalSpec":I
    :cond_365
    move/from16 v0, v19

    .line 851
    .end local v19    # "verticalSpec":I
    .restart local v0    # "verticalSpec":I
    :goto_367
    invoke-virtual {v14, v15, v0}, Landroid/view/View;->measure(II)V

    .line 852
    invoke-virtual {v1, v15, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 853
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 854
    .end local v9    # "width":I
    .local v22, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 855
    .end local v12    # "height":I
    .local v3, "height":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v27

    move v9, v0

    move/from16 v0, v22

    move/from16 v6, v27

    .line 864
    .end local v8    # "optimizeDirect":Z
    .end local v11    # "h":I
    .end local v22    # "width":I
    .end local v27    # "baseline":I
    .local v0, "width":I
    .local v6, "baseline":I
    .local v9, "verticalSpec":I
    :goto_37e
    const/4 v8, -0x1

    if-eq v6, v8, :cond_383

    const/4 v8, 0x1

    goto :goto_385

    :cond_383
    move/from16 v8, v16

    .line 866
    .local v8, "hasBaseline":Z
    :goto_385
    iget v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v0, v11, :cond_391

    iget v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v3, v11, :cond_38e

    goto :goto_391

    :cond_38e
    move/from16 v11, v16

    goto :goto_392

    :cond_391
    :goto_391
    const/4 v11, 0x1

    :goto_392
    iput-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 868
    iget-boolean v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v11, :cond_399

    .line 869
    const/4 v8, 0x1

    .line 871
    :cond_399
    if-eqz v8, :cond_3a7

    const/4 v11, -0x1

    if-eq v6, v11, :cond_3a7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v11

    if-eq v11, v6, :cond_3a7

    .line 872
    const/4 v11, 0x1

    iput-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 874
    :cond_3a7
    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 875
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 876
    iput-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 877
    iput v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 884
    return-void
.end method
