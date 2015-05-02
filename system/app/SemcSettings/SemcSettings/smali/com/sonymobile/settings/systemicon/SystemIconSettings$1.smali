.class Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;
.super Ljava/lang/Object;
.source "SystemIconSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/systemicon/SystemIconSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/systemicon/SystemIconSettings;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    .line 77
    .local v0, "element":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isActivated()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 78
    invoke-virtual {v0, p2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->setActivated(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery_percent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    iget-object v3, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    invoke-virtual {v3}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isActivated()Z

    move-result v4

    # invokes: Lcom/sonymobile/settings/systemicon/SystemIconSettings;->setBatteryShown(Landroid/content/Context;Z)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->access$000(Lcom/sonymobile/settings/systemicon/SystemIconSettings;Landroid/content/Context;Z)V

    .line 97
    :goto_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "SystemIconSettings"

    invoke-virtual {v0}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_5

    const-string v2, "check"

    :goto_1
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;

    const-string v3, "battery_percent"

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getItemByName(Ljava/lang/String;)Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    move-result-object v1

    .line 85
    .local v1, "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v1, p2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->setEnabled(Z)V

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;

    const-string v3, "stamina"

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->getItemByName(Ljava/lang/String;)Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {v1, p2}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->setEnabled(Z)V

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;->notifyDataSetChanged()V

    .line 94
    .end local v1    # "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    # invokes: Lcom/sonymobile/settings/systemicon/SystemIconSettings;->updateSecureDataBase()V
    invoke-static {v2}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->access$100(Lcom/sonymobile/settings/systemicon/SystemIconSettings;)V

    goto :goto_0

    .line 97
    :cond_5
    const-string v2, "uncheck"

    goto :goto_1
.end method
