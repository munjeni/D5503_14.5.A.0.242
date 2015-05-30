.class public final Lcom/sonymobile/settings/LocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 21
    .local v0, "currentMode":I
    const-string v4, "com.sonymobile.intent.extra.NEW_MODE"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 23
    .local v1, "newMode":I
    invoke-static {p1, v1}, Lcom/sonymobile/settings/LocationConfirmationDialog;->shouldShowDialog(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sonymobile/settings/LocationConfirmationDialog;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v4, "com.sonymobile.intent.extra.NEW_MODE"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 31
    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 34
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    .end local v2    # "sendIntent":Landroid/content/Intent;
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    if-eq v0, v1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
