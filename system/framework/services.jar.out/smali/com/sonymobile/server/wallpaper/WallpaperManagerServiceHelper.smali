.class public final Lcom/sonymobile/server/wallpaper/WallpaperManagerServiceHelper;
.super Ljava/lang/Object;
.source "WallpaperManagerServiceHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static broadcastSomcHomeWallpaperChangedForUser(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 34
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonymobile.wallpaper.intent.action.ACTION_HOME_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.sonymobile.wallpaper.intent.extra.EVENT_ELAPSED_REAL_TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 40
    const-string v3, "com.sonymobile.wallpaper.permission.LISTEN_TO_HOME_WALLPAPER_CHANGED"

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return-void

    .line 43
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
