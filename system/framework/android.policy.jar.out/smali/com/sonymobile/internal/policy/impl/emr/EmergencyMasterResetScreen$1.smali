.class Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyMasterResetScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$1;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    const-string v8, "level"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 71
    .local v2, "level":I
    const-string v8, "plugged"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 72
    .local v4, "plugged":I
    const-string v8, "invalid_charger"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "invalidCharger":I
    const/16 v8, 0x1e

    if-lt v2, v8, :cond_3

    move v3, v6

    .line 76
    .local v3, "levelOk":Z
    :goto_0
    and-int/lit8 v8, v4, 0x7

    if-eqz v8, :cond_4

    if-nez v1, :cond_4

    move v5, v6

    .line 79
    .local v5, "pluggedOk":Z
    :goto_1
    iget-object v8, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$1;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    if-nez v3, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    move v7, v6

    :cond_1
    # setter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mBatteryLevelOk:Z
    invoke-static {v8, v7}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$002(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;Z)Z

    .line 81
    .end local v1    # "invalidCharger":I
    .end local v2    # "level":I
    .end local v3    # "levelOk":Z
    .end local v4    # "plugged":I
    .end local v5    # "pluggedOk":Z
    :cond_2
    return-void

    .restart local v1    # "invalidCharger":I
    .restart local v2    # "level":I
    .restart local v4    # "plugged":I
    :cond_3
    move v3, v7

    .line 75
    goto :goto_0

    .restart local v3    # "levelOk":Z
    :cond_4
    move v5, v7

    .line 76
    goto :goto_1
.end method
