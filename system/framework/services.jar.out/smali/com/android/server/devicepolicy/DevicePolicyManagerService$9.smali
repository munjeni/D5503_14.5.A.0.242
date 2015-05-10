.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->installCertFromDer(Landroid/content/ComponentName;[BIZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$certificateName:Ljava/lang/String;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11046
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$certificateName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 11049
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$appName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$certificateName:Ljava/lang/String;

    const/4 v6, 0x1

    move v5, v4

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->showConfirmDialog(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;ZZI)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 11050
    return-void
.end method
