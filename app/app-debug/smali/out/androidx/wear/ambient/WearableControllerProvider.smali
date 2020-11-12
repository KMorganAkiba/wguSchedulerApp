.class public Landroidx/wear/ambient/WearableControllerProvider;
.super Ljava/lang/Object;
.source "WearableControllerProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableControllerProvider"

.field private static volatile sAmbientCallbacksVerifiedPresent:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static verifyAmbientCallbacksPresent()V
    .registers 6

    .line 80
    sget-boolean v0, Landroidx/wear/ambient/WearableControllerProvider;->sAmbientCallbacksVerifiedPresent:Z

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 84
    :cond_5
    :try_start_5
    const-class v0, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;

    const-string v1, "onEnterAmbient"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    .line 85
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    .local v0, "method":Ljava/lang/reflect/Method;
    const-string v1, ".onEnterAmbient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_30} :catch_3c

    if-eqz v1, :cond_36

    .line 99
    .end local v0    # "method":Ljava/lang/reflect/Method;
    nop

    .line 100
    sput-boolean v2, Landroidx/wear/ambient/WearableControllerProvider;->sAmbientCallbacksVerifiedPresent:Z

    .line 101
    return-void

    .line 91
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_36
    :try_start_36
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_3c} :catch_3c

    .line 93
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_3c
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find a required method for ambient support, likely due to proguard optimization. Please add com.google.android.wearable:wearable jar to the list of library jars for your project"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getWearableController(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)Lcom/google/android/wearable/compat/WearableActivityController;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    .line 48
    invoke-static {}, Landroidx/wear/ambient/SharedLibraryVersion;->verifySharedLibraryPresent()V

    .line 51
    new-instance v0, Landroidx/wear/ambient/WearableControllerProvider$1;

    invoke-direct {v0, p0, p2}, Landroidx/wear/ambient/WearableControllerProvider$1;-><init>(Landroidx/wear/ambient/WearableControllerProvider;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    .line 74
    .local v0, "callbackBridge":Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;
    invoke-static {}, Landroidx/wear/ambient/WearableControllerProvider;->verifyAmbientCallbacksPresent()V

    .line 76
    new-instance v1, Lcom/google/android/wearable/compat/WearableActivityController;

    const-string v2, "WearableControllerProvider"

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/wearable/compat/WearableActivityController;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;)V

    return-object v1
.end method
