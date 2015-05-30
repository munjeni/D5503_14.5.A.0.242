.class Lcom/sonymobile/settings/stamina/StaminaSettings$2;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;->showUselessDialog()V
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
    .line 87
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessDialogIsShown:Z
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$102(Lcom/sonymobile/settings/stamina/StaminaSettings;Z)Z

    .line 91
    return-void
.end method
