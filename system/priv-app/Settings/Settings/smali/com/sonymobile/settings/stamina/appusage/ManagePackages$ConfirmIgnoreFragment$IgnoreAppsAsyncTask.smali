.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;
.super Landroid/os/AsyncTask;
.source "ManagePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgnoreAppsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;
    .param p2, "x1"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 296
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->ARG_UID_LIST:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setIgnoredApps(Landroid/content/Context;Ljava/util/List;)V

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 296
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->mActivity:Lcom/android/settings/SettingsActivity;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->access$1100(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->mActivity:Lcom/android/settings/SettingsActivity;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->access$1100(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 309
    :cond_0
    return-void
.end method
