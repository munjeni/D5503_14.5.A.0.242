.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;
.super Landroid/database/ContentObserver;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .line 447
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 448
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$1200(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    .line 453
    return-void
.end method
