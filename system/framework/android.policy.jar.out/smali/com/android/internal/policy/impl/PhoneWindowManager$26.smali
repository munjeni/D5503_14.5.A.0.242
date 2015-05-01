.class Lcom/android/internal/policy/impl/PhoneWindowManager$26;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5772
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5775
    const-string v1, "com.sonymobile.extra.PROG_GREEN_KEYACTION_DOWN"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5776
    .local v0, "longPressed":Z
    if-nez v0, :cond_0

    .line 5777
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5779
    :cond_0
    return-void
.end method
