.class Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;
.super Ljava/lang/Object;
.source "WhitelistFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-ltz v1, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    .line 48
    .local v7, "item":Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->access$000(Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;)Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    .line 55
    .end local v7    # "item":Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 51
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f08002e

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
