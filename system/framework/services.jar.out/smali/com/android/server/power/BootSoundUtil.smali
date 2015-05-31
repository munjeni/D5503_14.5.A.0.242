.class final Lcom/android/server/power/BootSoundUtil;
.super Ljava/lang/Object;
.source "BootSoundUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "BootSoundUtil"

.field private static final SOUND_VOLUME_PROP_NAME:Ljava/lang/String; = "persist.sys.boot.sound.volume"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValueToWrite(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 45
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 47
    .local v1, "defValue":Z
    const-string v9, "bootanimation_sound_enabled"

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v4, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 50
    .local v2, "enabled":I
    if-nez v2, :cond_1

    .line 74
    .end local v1    # "defValue":Z
    .end local v2    # "enabled":I
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    :pswitch_0
    return v7

    .restart local v1    # "defValue":Z
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v8, v7

    .line 47
    goto :goto_0

    .line 53
    .end local v1    # "defValue":Z
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 58
    :cond_1
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 70
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 71
    .local v5, "volume":I
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 72
    .local v3, "maxVolume":I
    mul-int/lit8 v8, v5, 0x64

    div-int v6, v8, v3

    .line 74
    .local v6, "volumePercent":I
    const/16 v8, 0x2a

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setBootVolume(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/android/server/power/BootSoundUtil;->getValueToWrite(Landroid/content/Context;)I

    move-result v0

    .line 85
    .local v0, "value":I
    const-string v1, "persist.sys.boot.sound.volume"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
