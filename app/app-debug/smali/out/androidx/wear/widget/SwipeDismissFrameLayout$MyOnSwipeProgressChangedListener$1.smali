.class Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;
.super Ljava/lang/Object;
.source "SwipeDismissFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->onSwipeCanceled(Landroidx/wear/widget/SwipeDismissLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;


# direct methods
.method constructor <init>(Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;)V
    .registers 2
    .param p1, "this$1"    # Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;

    .line 289
    iput-object p1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;->this$1:Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 292
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;->this$1:Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;

    iget-object v0, v0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v0, v0, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_24

    .line 293
    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;->this$1:Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;

    iget-object v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v1, v1, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;

    .line 294
    .local v1, "callbacks":Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;
    iget-object v2, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;->this$1:Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;

    iget-object v2, v2, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v1, v2}, Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;->onSwipeCanceled(Landroidx/wear/widget/SwipeDismissFrameLayout;)V

    .line 292
    .end local v1    # "callbacks":Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 296
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener$1;->this$1:Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;

    iget-object v0, v0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnSwipeProgressChangedListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v0}, Landroidx/wear/widget/SwipeDismissFrameLayout;->resetTranslationAndAlpha()V

    .line 297
    return-void
.end method
