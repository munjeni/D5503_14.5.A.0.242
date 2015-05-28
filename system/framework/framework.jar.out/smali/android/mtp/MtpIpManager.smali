.class public Landroid/mtp/MtpIpManager;
.super Ljava/lang/Object;
.source "MtpIpManager.java"


# static fields
.field private static final DELAY_TIME:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "MtpIpManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/mtp/MtpIpManager;->mContext:Landroid/content/Context;

    .line 34
    iget-object v1, p0, Landroid/mtp/MtpIpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MtpIpManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    iget-object v1, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 37
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpIpManager;->mLockHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpIpManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpIpManager;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private acquireWakelock()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/mtp/MtpIpManager;->mWakeLockTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "MtpIpManager"

    const-string v1, "acquire wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 55
    :cond_0
    return-void
.end method

.method private releaseWakelock()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Landroid/mtp/MtpIpManager$1;

    invoke-direct {v0, p0}, Landroid/mtp/MtpIpManager$1;-><init>(Landroid/mtp/MtpIpManager;)V

    iput-object v0, p0, Landroid/mtp/MtpIpManager;->mWakeLockTask:Ljava/lang/Runnable;

    .line 66
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/mtp/MtpIpManager;->mWakeLockTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "MtpIpManager"

    const-string/jumbo v1, "release wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpIpManager;->mLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/mtp/MtpIpManager;->mWakeLockTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpIpManager;->mLockHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method
