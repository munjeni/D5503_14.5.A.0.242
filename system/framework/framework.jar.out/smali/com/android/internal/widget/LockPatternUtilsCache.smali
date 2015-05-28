.class public Lcom/android/internal/widget/LockPatternUtilsCache;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    }
.end annotation


# static fields
.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

.field private final mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ILockSettings;)V
    .locals 3
    .param p1, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    .line 48
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    .line 223
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtilsCache$1;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    .line 61
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtilsCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 52
    const-class v1, Lcom/android/internal/widget/LockPatternUtilsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtilsCache;-><init>(Lcom/android/internal/widget/ILockSettings;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateCache(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private peekCache(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCache(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkRecoveryPassword([BI)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkRecoveryPassword([BI)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 114
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 115
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, p3, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 92
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 96
    :goto_0
    return-wide v0

    .line 94
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 95
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, p4, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 106
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 104
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    move-object v1, v0

    .line 106
    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 163
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 165
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    move-result v0

    .line 166
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 151
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 152
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 154
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z

    move-result v0

    .line 155
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 178
    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V

    .line 173
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 74
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 135
    const-string v1, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 123
    const-string v1, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 80
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setRecoveryPassword([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setRecoveryPassword([BI)V

    .line 193
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 183
    return-void
.end method
