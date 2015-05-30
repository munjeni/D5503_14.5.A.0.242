.class Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;
.super Landroid/database/ContentObserver;
.source "AppConsumingDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    .line 172
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->access$200(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
