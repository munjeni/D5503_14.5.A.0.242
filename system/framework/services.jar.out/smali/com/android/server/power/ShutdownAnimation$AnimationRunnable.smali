.class Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;
.super Ljava/lang/Object;
.source "ShutdownAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownAnimation;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownAnimation;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownAnimation;Lcom/android/server/power/ShutdownAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/ShutdownAnimation;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownAnimation$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;-><init>(Lcom/android/server/power/ShutdownAnimation;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 175
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$200(Lcom/android/server/power/ShutdownAnimation;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 178
    .local v10, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 179
    .local v1, "display":Landroid/view/Display;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 180
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 184
    .local v4, "isRotated":Z
    :goto_0
    iget v11, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v12, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_1
    xor-int v3, v4, v11

    .line 186
    .local v3, "isPortaitDevice":Z
    if-eqz v4, :cond_3

    .line 187
    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 188
    .local v9, "width":I
    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 195
    .local v2, "height":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$200(Lcom/android/server/power/ShutdownAnimation;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v7

    .line 196
    .local v7, "myWindow":Landroid/view/Window;
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # invokes: Lcom/android/server/power/ShutdownAnimation;->setupWindow(Landroid/view/Window;IIZ)V
    invoke-static {v11, v7, v9, v2, v3}, Lcom/android/server/power/ShutdownAnimation;->access$400(Lcom/android/server/power/ShutdownAnimation;Landroid/view/Window;IIZ)V

    .line 197
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 199
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # invokes: Lcom/android/server/power/ShutdownAnimation;->createLayout(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    invoke-static {v11, v5}, Lcom/android/server/power/ShutdownAnimation;->access$500(Lcom/android/server/power/ShutdownAnimation;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;

    move-result-object v8

    .line 202
    .local v8, "v":Landroid/view/View;
    const/high16 v11, -0x1000000

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    invoke-virtual {v7, v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/widget/VideoView;->setAudioStreamType(I)V

    .line 209
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v12}, Lcom/android/server/power/ShutdownAnimation;->access$700(Lcom/android/server/power/ShutdownAnimation;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 210
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v12}, Lcom/android/server/power/ShutdownAnimation;->access$800(Lcom/android/server/power/ShutdownAnimation;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 211
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mAnimationFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/power/ShutdownAnimation;->access$900(Lcom/android/server/power/ShutdownAnimation;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 212
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v12}, Lcom/android/server/power/ShutdownAnimation;->access$1000(Lcom/android/server/power/ShutdownAnimation;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 213
    iget-object v11, p0, Lcom/android/server/power/ShutdownAnimation$AnimationRunnable;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v11}, Lcom/android/server/power/ShutdownAnimation;->access$600(Lcom/android/server/power/ShutdownAnimation;)Landroid/widget/VideoView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/VideoView;->start()V

    .line 214
    return-void

    .line 182
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "height":I
    .end local v3    # "isPortaitDevice":Z
    .end local v4    # "isRotated":Z
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "myWindow":Landroid/view/Window;
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "width":I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 184
    .restart local v4    # "isRotated":Z
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 190
    .restart local v3    # "isPortaitDevice":Z
    :cond_3
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 191
    .restart local v9    # "width":I
    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v2    # "height":I
    goto/16 :goto_2
.end method
