.class public Landroidx/wear/activity/ConfirmationActivity;
.super Landroid/app/Activity;
.source "ConfirmationActivity.java"


# static fields
.field private static final CONFIRMATION_OVERLAY_TYPES:Landroid/util/SparseIntArray;

.field public static final EXTRA_ANIMATION_TYPE:Ljava/lang/String; = "androidx.wear.activity.extra.ANIMATION_TYPE"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "androidx.wear.activity.extra.MESSAGE"

.field public static final FAILURE_ANIMATION:I = 0x3

.field public static final OPEN_ON_PHONE_ANIMATION:I = 0x2

.field public static final SUCCESS_ANIMATION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/wear/activity/ConfirmationActivity;->CONFIRMATION_OVERLAY_TYPES:Landroid/util/SparseIntArray;

    .line 66
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 67
    sget-object v0, Landroidx/wear/activity/ConfirmationActivity;->CONFIRMATION_OVERLAY_TYPES:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 69
    sget-object v0, Landroidx/wear/activity/ConfirmationActivity;->CONFIRMATION_OVERLAY_TYPES:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAnimationFinished()V
    .registers 1

    .line 105
    invoke-virtual {p0}, Landroidx/wear/activity/ConfirmationActivity;->finish()V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Landroidx/wear/R$style;->ConfirmationActivity:I

    invoke-virtual {p0, v0}, Landroidx/wear/activity/ConfirmationActivity;->setTheme(I)V

    .line 77
    invoke-virtual {p0}, Landroidx/wear/activity/ConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "androidx.wear.activity.extra.ANIMATION_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "requestedType":I
    sget-object v2, Landroidx/wear/activity/ConfirmationActivity;->CONFIRMATION_OVERLAY_TYPES:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_41

    .line 84
    sget-object v2, Landroidx/wear/activity/ConfirmationActivity;->CONFIRMATION_OVERLAY_TYPES:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 85
    .local v2, "type":I
    const-string v3, "androidx.wear.activity.extra.MESSAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Landroidx/wear/widget/ConfirmationOverlay;

    invoke-direct {v4}, Landroidx/wear/widget/ConfirmationOverlay;-><init>()V

    .line 88
    invoke-virtual {v4, v2}, Landroidx/wear/widget/ConfirmationOverlay;->setType(I)Landroidx/wear/widget/ConfirmationOverlay;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v3}, Landroidx/wear/widget/ConfirmationOverlay;->setMessage(Ljava/lang/String;)Landroidx/wear/widget/ConfirmationOverlay;

    move-result-object v4

    new-instance v5, Landroidx/wear/activity/ConfirmationActivity$1;

    invoke-direct {v5, p0}, Landroidx/wear/activity/ConfirmationActivity$1;-><init>(Landroidx/wear/activity/ConfirmationActivity;)V

    .line 90
    invoke-virtual {v4, v5}, Landroidx/wear/widget/ConfirmationOverlay;->setFinishedAnimationListener(Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;)Landroidx/wear/widget/ConfirmationOverlay;

    move-result-object v4

    .line 97
    invoke-virtual {v4, p0}, Landroidx/wear/widget/ConfirmationOverlay;->showOn(Landroid/app/Activity;)V

    .line 98
    return-void

    .line 81
    .end local v2    # "type":I
    .end local v3    # "message":Ljava/lang/String;
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type of animation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
