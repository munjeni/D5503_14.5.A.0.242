.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->installCertFromPkcs12(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;IZI)I
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

.field final synthetic val$nrCaChains:I

.field final synthetic val$userCert:Ljava/security/cert/X509Certificate;

.field final synthetic val$userKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;I)V
    .locals 0

    .prologue
    .line 11173
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$certificateName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userKey:Ljava/security/PrivateKey;

    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userCert:Ljava/security/cert/X509Certificate;

    iput p7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$nrCaChains:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 11176
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$appName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$certificateName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userCert:Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_1

    :goto_1
    iget v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$nrCaChains:I

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->showConfirmDialog(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;ZZI)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 11178
    return-void

    :cond_0
    move v4, v6

    .line 11176
    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method
