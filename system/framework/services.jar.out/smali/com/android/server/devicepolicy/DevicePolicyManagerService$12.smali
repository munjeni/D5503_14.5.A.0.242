.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$12;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->showConfirmDialog(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;ZZI)V
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
    .line 11427
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$12;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 11429
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$12;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserConfirmedInstallation:Z
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2102(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)Z

    .line 11430
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$12;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDialogOpen:Z
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2202(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)Z

    .line 11431
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11432
    return-void
.end method
