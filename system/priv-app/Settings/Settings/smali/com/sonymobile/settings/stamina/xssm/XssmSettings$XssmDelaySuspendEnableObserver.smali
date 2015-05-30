.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;
.super Landroid/database/ContentObserver;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XssmDelaySuspendEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .line 362
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 363
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$900(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmDelaySuspendEnabled(Landroid/content/Context;)Z

    move-result v2

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMDelaySuspendEnabled(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$1000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;ZZ)V

    .line 371
    :cond_0
    return-void
.end method
