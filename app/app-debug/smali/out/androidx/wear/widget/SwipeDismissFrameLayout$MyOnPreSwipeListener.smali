.class final Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnPreSwipeListener;
.super Ljava/lang/Object;
.source "SwipeDismissFrameLayout.java"

# interfaces
.implements Landroidx/wear/widget/SwipeDismissLayout$OnPreSwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/wear/widget/SwipeDismissFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyOnPreSwipeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;


# direct methods
.method constructor <init>(Landroidx/wear/widget/SwipeDismissFrameLayout;)V
    .registers 2

    .line 213
    iput-object p1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnPreSwipeListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method public onPreSwipe(Landroidx/wear/widget/SwipeDismissLayout;FF)Z
    .registers 7
    .param p1, "layout"    # Landroidx/wear/widget/SwipeDismissLayout;
    .param p2, "xDown"    # F
    .param p3, "yDown"    # F

    .line 218
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnPreSwipeListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    iget-object v0, v0, Landroidx/wear/widget/SwipeDismissFrameLayout;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;

    .line 219
    .local v1, "callback":Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;
    iget-object v2, p0, Landroidx/wear/widget/SwipeDismissFrameLayout$MyOnPreSwipeListener;->this$0:Landroidx/wear/widget/SwipeDismissFrameLayout;

    invoke-virtual {v1, v2, p2, p3}, Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;->onPreSwipeStart(Landroidx/wear/widget/SwipeDismissFrameLayout;FF)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    .end local v1    # "callback":Landroidx/wear/widget/SwipeDismissFrameLayout$Callback;
    :cond_1e
    goto :goto_8

    .line 223
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
