.class Lcom/android/server/power/ShutdownAnimation$1;
.super Ljava/lang/Object;
.source "ShutdownAnimation.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 79
    iput-object p1, p0, Lcom/android/server/power/ShutdownAnimation$1;->this$0:Lcom/android/server/power/ShutdownAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation$1;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->myMonitorObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownAnimation;->access$000(Lcom/android/server/power/ShutdownAnimation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation$1;->this$0:Lcom/android/server/power/ShutdownAnimation;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/ShutdownAnimation;->mAnimationFinished:Z
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownAnimation;->access$102(Lcom/android/server/power/ShutdownAnimation;Z)Z

    .line 86
    iget-object v0, p0, Lcom/android/server/power/ShutdownAnimation$1;->this$0:Lcom/android/server/power/ShutdownAnimation;

    # getter for: Lcom/android/server/power/ShutdownAnimation;->myMonitorObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownAnimation;->access$000(Lcom/android/server/power/ShutdownAnimation;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
