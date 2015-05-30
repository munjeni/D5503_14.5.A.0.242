.class Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;
.super Landroid/database/ContentObserver;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    .line 298
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 299
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$300(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/EstimationPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->updateEstimates()V

    .line 304
    return-void
.end method
