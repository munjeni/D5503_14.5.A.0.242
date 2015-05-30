.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;
.super Landroid/database/ContentObserver;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuntimeEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .line 392
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 393
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v1

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setRuntimeEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$1100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V

    .line 398
    return-void
.end method
