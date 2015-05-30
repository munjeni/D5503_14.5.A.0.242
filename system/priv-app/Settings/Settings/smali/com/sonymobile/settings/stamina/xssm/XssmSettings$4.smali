.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 126
    .local v0, "anyEnabled":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 127
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->registerStaminaCanceledObserver()V
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->toggleStamina(Landroid/content/Context;)V

    .line 131
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # setter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z
    invoke-static {v1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$202(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)Z

    .line 139
    :cond_2
    :goto_1
    return-void

    .line 124
    .end local v0    # "anyEnabled":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    .restart local v0    # "anyEnabled":Z
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # setter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z
    invoke-static {v1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$202(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)Z

    .line 137
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$300(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v2

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$400(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V

    goto :goto_1
.end method
