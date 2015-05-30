.class public Lcom/sonymobile/settings/LocationConfirmationDialog;
.super Landroid/app/Activity;
.source "LocationConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    return-void
.end method

.method public static hasOptionChecked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v3, "location_settings"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "show_location_dialog"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static shouldShowDialog(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/sonymobile/settings/LocationConfirmationDialog;->hasOptionChecked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "currentMode":I
    if-nez v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/settings/LocationConfirmationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonymobile/settings/LocationConfirmationDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LocationConfirmationDialogFragment"

    invoke-static {v1, v2, v0}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Landroid/content/Intent;)V

    .line 44
    return-void
.end method
