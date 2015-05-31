.class Lcom/android/server/content/SyncManager$SyncHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager$SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .locals 0

    .prologue
    .line 2773
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    # getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTriggeredLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->access$3500(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2777
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTriggeredFinished:Z
    invoke-static {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->access$3602(Lcom/android/server/content/SyncManager$SyncHandler;Z)Z

    .line 2778
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    # getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTriggeredLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->access$3500(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2779
    monitor-exit v1

    .line 2780
    return-void

    .line 2779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
