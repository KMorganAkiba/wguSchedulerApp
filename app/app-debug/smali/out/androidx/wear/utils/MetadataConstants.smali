.class public Landroidx/wear/utils/MetadataConstants;
.super Ljava/lang/Object;
.source "MetadataConstants.java"


# static fields
.field public static final NOTIFICATION_BRIDGE_MODE_BRIDGING:Ljava/lang/String; = "BRIDGING"

.field public static final NOTIFICATION_BRIDGE_MODE_METADATA_NAME:Ljava/lang/String; = "com.google.android.wearable.notificationBridgeMode"

.field public static final NOTIFICATION_BRIDGE_MODE_NO_BRIDGING:Ljava/lang/String; = "NO_BRIDGING"

.field public static final STANDALONE_METADATA_NAME:Ljava/lang/String; = "com.google.android.wearable.standalone"

.field public static final WATCH_FACE_PREVIEW_CIRCULAR_METADATA_NAME:Ljava/lang/String; = "com.google.android.wearable.watchface.preview_circular"

.field public static final WATCH_FACE_PREVIEW_METADATA_NAME:Ljava/lang/String; = "com.google.android.wearable.watchface.preview"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewDrawableResourceId(Landroid/content/Context;Z)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "circular"    # Z

    .line 178
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 180
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_27

    .line 181
    if-eqz p1, :cond_1e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.google.android.wearable.watchface.preview_circular"

    .line 182
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_26

    :cond_1e
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.google.android.wearable.watchface.preview"

    .line 183
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_26} :catch_28

    :goto_26
    return v0

    .line 187
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_27
    goto :goto_29

    .line 185
    :catch_28
    move-exception v1

    .line 189
    :goto_29
    return v0
.end method

.method public static isNotificationBridgingEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 157
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_21

    .line 158
    const-string v1, "BRIDGING"

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.google.android.wearable.notificationBridgeMode"

    .line 159
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_20} :catch_22

    return v1

    .line 163
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_21
    goto :goto_23

    .line 161
    :catch_22
    move-exception v0

    .line 165
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public static isStandalone(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 137
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1b

    .line 138
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.wearable.standalone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    return v1

    .line 142
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1b
    goto :goto_1d

    .line 140
    :catch_1c
    move-exception v0

    .line 144
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method
