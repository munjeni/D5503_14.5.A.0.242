.class public Lcom/sonymobile/gahelper/GaHelperLog;
.super Ljava/lang/Object;
.source "GaHelperLog.java"


# static fields
.field private static volatile mEnabled:Z

.field private static volatile mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/gahelper/GaHelperLog;->mEnabled:Z

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gahelper/GaHelperLog;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v1, Lcom/sonymobile/gahelper/GaHelperLog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-boolean v0, Lcom/sonymobile/gahelper/GaHelperLog;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v1, Lcom/sonymobile/gahelper/GaHelperLog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-boolean v0, Lcom/sonymobile/gahelper/GaHelperLog;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enable(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 23
    sget-object v1, Lcom/sonymobile/gahelper/GaHelperLog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sput-boolean p0, Lcom/sonymobile/gahelper/GaHelperLog;->mEnabled:Z

    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
