.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->commitToWhitelist()V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v1, v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 243
    return-void
.end method
