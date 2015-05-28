.class Landroid/app/admin/DevicePolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    .prologue
    .line 5037
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5040
    if-nez p2, :cond_1

    .line 5041
    # getter for: Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected email response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    :cond_0
    :goto_0
    return-void

    .line 5042
    :cond_1
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    # getter for: Landroid/app/admin/DevicePolicyManager;->mEmailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->access$100(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    # getter for: Landroid/app/admin/DevicePolicyManager;->mEmailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->access$100(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email_address_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5044
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    # setter for: Landroid/app/admin/DevicePolicyManager;->mEmailResponseIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Landroid/app/admin/DevicePolicyManager;->access$202(Landroid/app/admin/DevicePolicyManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 5045
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    # getter for: Landroid/app/admin/DevicePolicyManager;->mEmailLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->access$300(Landroid/app/admin/DevicePolicyManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
