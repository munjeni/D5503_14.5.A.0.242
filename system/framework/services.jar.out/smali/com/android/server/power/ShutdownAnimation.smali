.class public Lcom/android/server/power/ShutdownAnimation;
.super Ljava/lang/Object;
.source "ShutdownAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ShutdownAnimation"


# instance fields
.field private final ANIMATION_TIMEOUT:I

.field private final DEBUG:Z

.field private final MAX_SOUND_LIMIT:F

.field private mAnimationFilePath:Ljava/lang/String;

.field private mAnimationFinished:Z

.field private mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mVideoView:Landroid/widget/VideoView;

.field private final myMonitorObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownAnimation;->DEBUG:Z

    .line 54
    const/16 v0, 0x32c8

    iput v0, p0, Lcom/android/server/power/ShutdownAnimation;->ANIMATION_TIMEOUT:I

    .line 55
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/server/power/ShutdownAnimation;->MAX_SOUND_LIMIT:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->myMonitorObject:Ljava/lang/Object;

    .line 62
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownAnimation;->mAnimationFinished:Z

    .line 78
    new-instance v0, Lcom/android/server/power/ShutdownAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownAnimation$1;-><init>(Lcom/android/server/power/ShutdownAnimation;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 91
    new-instance v0, Lcom/android/server/power/ShutdownAnimation$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownAnimation$2;-><init>(Lcom/android/server/power/ShutdownAnimation;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 125
    new-instance v0, Lcom/android/server/power/ShutdownAnimation$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownAnimation$3;-><init>(Lcom/android/server/power/ShutdownAnimation;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownAnimation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->myMonitorObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownAnimation;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/ShutdownAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownAnimation;->mAnimationFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/ShutdownAnimation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/ShutdownAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/power/ShutdownAnimation;->userHasDisabledAnimationSound()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownAnimation;Landroid/view/Window;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;
    .param p1, "x1"    # Landroid/view/Window;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/ShutdownAnimation;->setupWindow(Landroid/view/Window;IIZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownAnimation;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;
    .param p1, "x1"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownAnimation;->createLayout(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownAnimation;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownAnimation;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownAnimation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownAnimation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation;->mAnimationFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private createLayout(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 5
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v4, -0x2

    .line 157
    new-instance v2, Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;

    .line 158
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "r":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    iget-object v2, p0, Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v2, p0, Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    return-object v1
.end method

.method private setupWindow(Landroid/view/Window;IIZ)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "portrait"    # Z

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->setLayout(II)V

    .line 134
    invoke-virtual {p1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 136
    const/16 v1, 0x7ea

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 138
    const/16 v1, 0x33

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 140
    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 141
    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 142
    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 143
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    const/high16 v1, 0x1000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 149
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p4, :cond_0

    .line 150
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private userHasDisabledAnimationSound()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    const/4 v1, 0x1

    .line 67
    .local v1, "enabled":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11200ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 69
    .local v0, "defValue":Z
    iget-object v5, p0, Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v6, "bootanimation_sound_enabled"

    if-eqz v0, :cond_0

    move v5, v3

    :goto_0
    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .end local v0    # "defValue":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return v3

    .restart local v0    # "defValue":Z
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v5, v4

    .line 70
    goto :goto_0

    .end local v0    # "defValue":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v3, v4

    .line 75
    goto :goto_2

    .line 72
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public playAnimation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/android/server/power/ShutdownAnimation;->mAnimationFilePath:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "animationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ShutdownAnimator"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, "t":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 230
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 231
    .local v2, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    .local v1, "h":Landroid/os/Handler;
    new-instance v4, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;-><init>(Lcom/android/server/power/ShutdownAnimation;Lcom/android/server/power/ShutdownAnimation$1;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    iget-object v5, p0, Lcom/android/server/power/ShutdownAnimation;->myMonitorObject:Ljava/lang/Object;

    monitor-enter v5

    .line 235
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/ShutdownAnimation;->mAnimationFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 237
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/ShutdownAnimation;->myMonitorObject:Ljava/lang/Object;

    const-wide/16 v6, 0x32c8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/android/server/power/ShutdownAnimation;->mAnimationFinished:Z

    .line 243
    monitor-exit v5

    .line 245
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v3    # "t":Landroid/os/HandlerThread;
    :cond_1
    return-void

    .line 243
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v2    # "looper":Landroid/os/Looper;
    .restart local v3    # "t":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 239
    :catch_0
    move-exception v4

    goto :goto_0
.end method
