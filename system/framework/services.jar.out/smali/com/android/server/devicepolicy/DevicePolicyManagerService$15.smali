.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;
.super Landroid/os/Handler;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getSecureTimeMillis()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$nitz:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 11591
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$nitz:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 11594
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 11615
    :goto_0
    :pswitch_0
    return-void

    .line 11600
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$nitz:Ljava/lang/Object;

    monitor-enter v2

    .line 11601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNitzTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2302(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)J

    .line 11602
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_1

    .line 11603
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 11604
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 11605
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v3, "time"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNitzTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2302(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)J

    .line 11610
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$nitz:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 11611
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11608
    :cond_1
    :try_start_1
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting NITZ time error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11594
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
