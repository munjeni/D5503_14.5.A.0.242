.class Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;
.super Landroid/content/BroadcastReceiver;
.source "AppUsageDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->enableForceStop(Z)V
    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->access$100(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;Z)V

    .line 247
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
