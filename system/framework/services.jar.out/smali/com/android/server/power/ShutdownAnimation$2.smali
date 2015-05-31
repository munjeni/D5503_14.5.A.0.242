.class Lcom/android/server/power/ShutdownAnimation$2;
.super Ljava/lang/Object;
.source "ShutdownAnimation.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownAnimation;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/power/ShutdownAnimation$2;->this$0:Lcom/android/server/power/ShutdownAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v8, 0x5

    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    .line 97
    iget-object v4, p0, Lcom/android/server/power/ShutdownAnimation$2;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/ShutdownAnimation;->access$200(Lcom/android/server/power/ShutdownAnimation;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 98
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 100
    .local v2, "mode":I
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/ShutdownAnimation$2;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # invokes: Lcom/android/server/power/ShutdownAnimation;->userHasDisabledAnimationSound()Z
    invoke-static {v4}, Lcom/android/server/power/ShutdownAnimation;->access$300(Lcom/android/server/power/ShutdownAnimation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_0
    invoke-virtual {p1, v6, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 106
    .local v3, "volume":I
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 113
    .local v1, "maxVolume":I
    mul-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 119
    invoke-virtual {p1, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method
