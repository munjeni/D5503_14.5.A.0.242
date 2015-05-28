.class public final Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;
.super Ljava/lang/Object;
.source "WfdSinkVolumePanelLauncher.java"


# static fields
.field private static final ACTION_WFD_SHOW_SINK_VOLUME_CONTROL_PANEL:Ljava/lang/String; = "com.sonymobile.tvout.wifidisplay.intent.action.SHOW_SINK_VOLUME_CONTROL_PANEL"

.field private static final ACTION_WFD_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

.field private static final EXTRA_ADJUST_VOLUME:Ljava/lang/String; = "com.sonymobile.tvout.wifidisplay.intent.extra.ADJUST_VOLUME"

.field private static final EXTRA_WFD_SINK_VOLUME_CONTROL_AVAILABLE:Ljava/lang/String; = "com.sonymobile.tvout.wifidisplay.intent.extra.SINK_VOLUME_CONTROL_AVAILABLE"

.field private static final PACKAGE_WFD_APP:Ljava/lang/String; = "com.sonymobile.tvout.wifidisplay"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWfdSinkVolumeControlAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->mWfdSinkVolumeControlAvailable:Z

    .line 67
    iput-object p1, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher$1;-><init>(Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->mWfdSinkVolumeControlAvailable:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized adjustVolume(II)Z
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I

    .prologue
    .line 84
    monitor-enter p0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->mWfdSinkVolumeControlAvailable:Z

    if-eqz v3, :cond_0

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonymobile.tvout.wifidisplay.intent.action.SHOW_SINK_VOLUME_CONTROL_PANEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.sonymobile.tvout.wifidisplay"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v3, "com.sonymobile.tvout.wifidisplay.intent.extra.ADJUST_VOLUME"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 91
    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    const/4 v3, 0x1

    .line 97
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return v3

    .line 93
    .restart local v0    # "ident":J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 97
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
