.class Landroidx/fragment/app/FragmentManager$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .line 2929
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2930
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    .line 2931
    iput p3, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    .line 2932
    iput p4, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mFlags:I

    .line 2933
    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2938
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1e

    iget v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    if-gez v0, :cond_1e

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 2941
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2942
    .local v0, "childManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2945
    const/4 v1, 0x0

    return v1

    .line 2948
    .end local v0    # "childManager":Landroidx/fragment/app/FragmentManager;
    :cond_1e
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    iget v6, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    iget v7, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mFlags:I

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
