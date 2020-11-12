.class public Landroidx/wear/widget/ConfirmationOverlay;
.super Ljava/lang/Object;
.source "ConfirmationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/wear/widget/ConfirmationOverlay$OverlayType;,
        Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_DURATION_MS:I = 0x3e8

.field public static final FAILURE_ANIMATION:I = 0x1

.field public static final OPEN_ON_PHONE_ANIMATION:I = 0x2

.field public static final SUCCESS_ANIMATION:I


# instance fields
.field private mDurationMillis:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mIsShowing:Z

.field mListener:Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/String;

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field mOverlayView:Landroid/view/View;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mType:I

    .line 121
    const/16 v1, 0x3e8

    iput v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mDurationMillis:I

    .line 128
    iput-boolean v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mIsShowing:Z

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mMainThreadHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroidx/wear/widget/ConfirmationOverlay$1;

    invoke-direct {v0, p0}, Landroidx/wear/widget/ConfirmationOverlay$1;-><init>(Landroidx/wear/widget/ConfirmationOverlay;)V

    iput-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private animateAndHideAfterDelay()V
    .registers 5

    .line 217
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_b

    .line 218
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 219
    .local v0, "animatable":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 221
    .end local v0    # "animatable":Landroid/graphics/drawable/Animatable;
    :cond_b
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mHideRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroidx/wear/widget/ConfirmationOverlay;->mDurationMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method private updateImageView(Landroid/content/Context;Landroid/view/View;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlayView"    # Landroid/view/View;

    .line 308
    iget v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mType:I

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 317
    sget v0, Landroidx/wear/R$drawable;->ws_open_on_phone_animation:I

    .line 318
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    goto :goto_3e

    .line 321
    :cond_13
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/wear/widget/ConfirmationOverlay;->mType:I

    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid ConfirmationOverlay type [%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2c
    sget v0, Landroidx/wear/R$drawable;->ws_full_sad:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 315
    goto :goto_3e

    .line 310
    :cond_35
    sget v0, Landroidx/wear/R$drawable;->generic_confirmation_animation:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 312
    nop

    .line 326
    :goto_3e
    sget v0, Landroidx/wear/R$id;->wearable_support_confirmation_overlay_image:I

    .line 327
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 328
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method private updateMessageView(Landroid/content/Context;Landroid/view/View;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlayView"    # Landroid/view/View;

    .line 281
    sget v0, Landroidx/wear/R$id;->wearable_support_confirmation_overlay_message:I

    .line 282
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    .local v0, "messageView":Landroid/widget/TextView;
    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 285
    invoke-static {p1}, Landroidx/wear/widget/ResourcesUtil;->getScreenWidthPx(Landroid/content/Context;)I

    move-result v1

    .line 286
    .local v1, "screenWidthPx":I
    sget v2, Landroidx/wear/R$fraction;->confirmation_overlay_margin_above_text:I

    invoke-static {p1, v1, v2}, Landroidx/wear/widget/ResourcesUtil;->getFractionOfScreenPx(Landroid/content/Context;II)I

    move-result v2

    .line 288
    .local v2, "topMarginPx":I
    sget v3, Landroidx/wear/R$fraction;->confirmation_overlay_margin_side:I

    .line 289
    invoke-static {p1, v1, v3}, Landroidx/wear/widget/ResourcesUtil;->getFractionOfScreenPx(Landroid/content/Context;II)I

    move-result v3

    .line 292
    .local v3, "sideMarginPx":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 293
    .local v4, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 294
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 295
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 297
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v5, p0, Landroidx/wear/widget/ConfirmationOverlay;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    .end local v1    # "screenWidthPx":I
    .end local v2    # "topMarginPx":I
    .end local v3    # "sideMarginPx":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_3a

    .line 302
    :cond_35
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :goto_3a
    return-void
.end method

.method private updateOverlayView(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 261
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    if-nez v0, :cond_12

    .line 263
    nop

    .line 264
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/wear/R$layout;->ws_overlay_confirmation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    .line 266
    :cond_12
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    new-instance v1, Landroidx/wear/widget/ConfirmationOverlay$3;

    invoke-direct {v1, p0}, Landroidx/wear/widget/ConfirmationOverlay$3;-><init>(Landroidx/wear/widget/ConfirmationOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/ConfirmationOverlay;->updateImageView(Landroid/content/Context;Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/ConfirmationOverlay;->updateMessageView(Landroid/content/Context;Landroid/view/View;)V

    .line 277
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 234
    iget-object v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 236
    .local v0, "fadeOut":Landroid/view/animation/Animation;
    new-instance v1, Landroidx/wear/widget/ConfirmationOverlay$2;

    invoke-direct {v1, p0}, Landroidx/wear/widget/ConfirmationOverlay$2;-><init>(Landroidx/wear/widget/ConfirmationOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 256
    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    return-void
.end method

.method public setDuration(I)Landroidx/wear/widget/ConfirmationOverlay;
    .registers 2
    .param p1, "millis"    # I

    .line 167
    iput p1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mDurationMillis:I

    .line 168
    return-object p0
.end method

.method public setFinishedAnimationListener(Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;)Landroidx/wear/widget/ConfirmationOverlay;
    .registers 2
    .param p1, "listener"    # Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;

    .line 179
    iput-object p1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mListener:Landroidx/wear/widget/ConfirmationOverlay$OnAnimationFinishedListener;

    .line 180
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroidx/wear/widget/ConfirmationOverlay;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mMessage:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public setType(I)Landroidx/wear/widget/ConfirmationOverlay;
    .registers 2
    .param p1, "type"    # I

    .line 156
    iput p1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mType:I

    .line 157
    return-object p0
.end method

.method public showAbove(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 189
    iget-boolean v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mIsShowing:Z

    if-eqz v0, :cond_5

    .line 190
    return-void

    .line 192
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mIsShowing:Z

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/wear/widget/ConfirmationOverlay;->updateOverlayView(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    invoke-direct {p0}, Landroidx/wear/widget/ConfirmationOverlay;->animateAndHideAfterDelay()V

    .line 197
    return-void
.end method

.method public showOn(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 205
    iget-boolean v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mIsShowing:Z

    if-eqz v0, :cond_5

    .line 206
    return-void

    .line 208
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/ConfirmationOverlay;->mIsShowing:Z

    .line 210
    invoke-direct {p0, p1}, Landroidx/wear/widget/ConfirmationOverlay;->updateOverlayView(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/ConfirmationOverlay;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-direct {p0}, Landroidx/wear/widget/ConfirmationOverlay;->animateAndHideAfterDelay()V

    .line 213
    return-void
.end method
