.class Lcom/sonymobile/settings/stamina/StaminaSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # invokes: Lcom/sonymobile/settings/stamina/StaminaSettings;->updateBatteryLevel(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$000(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/content/Intent;)V

    .line 75
    :cond_0
    return-void
.end method
