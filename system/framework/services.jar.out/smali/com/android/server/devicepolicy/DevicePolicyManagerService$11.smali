.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAndWait(Landroid/content/Intent;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 11263
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 11266
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mCertificateIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2002(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 11267
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11268
    return-void
.end method
