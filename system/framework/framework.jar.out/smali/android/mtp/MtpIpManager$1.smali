.class Landroid/mtp/MtpIpManager$1;
.super Ljava/lang/Object;
.source "MtpIpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpIpManager;->releaseWakelock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpIpManager;


# direct methods
.method constructor <init>(Landroid/mtp/MtpIpManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/mtp/MtpIpManager$1;->this$0:Landroid/mtp/MtpIpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/mtp/MtpIpManager$1;->this$0:Landroid/mtp/MtpIpManager;

    # getter for: Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/mtp/MtpIpManager;->access$000(Landroid/mtp/MtpIpManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "MtpIpManager"

    const-string/jumbo v1, "release wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Landroid/mtp/MtpIpManager$1;->this$0:Landroid/mtp/MtpIpManager;

    # getter for: Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/mtp/MtpIpManager;->access$000(Landroid/mtp/MtpIpManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 64
    :cond_0
    return-void
.end method
