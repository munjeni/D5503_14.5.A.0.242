.class Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "LocationConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;->this$0:Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v1, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;->this$0:Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    iget-object v3, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;->this$0:Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    # getter for: Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mNewMode:I
    invoke-static {v3}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->access$000(Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    iget-object v1, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;->this$0:Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    # getter for: Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->access$100(Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;->this$0:Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    invoke-virtual {v1}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "location_settings"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_location_dialog"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    return-void
.end method
