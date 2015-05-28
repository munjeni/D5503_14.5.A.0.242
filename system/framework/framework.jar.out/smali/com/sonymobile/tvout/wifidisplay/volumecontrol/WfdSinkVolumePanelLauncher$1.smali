.class Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSinkVolumePanelLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;


# direct methods
.method constructor <init>(Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher$1;->this$0:Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    if-eqz p2, :cond_0

    const-string v0, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher$1;->this$0:Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;

    const-string v1, "com.sonymobile.tvout.wifidisplay.intent.extra.SINK_VOLUME_CONTROL_AVAILABLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->mWfdSinkVolumeControlAvailable:Z
    invoke-static {v0, v1}, Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;->access$002(Lcom/sonymobile/tvout/wifidisplay/volumecontrol/WfdSinkVolumePanelLauncher;Z)Z

    .line 76
    :cond_0
    return-void
.end method
