.class public Lcom/android/settings/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/settings/ScreenPinningSettings$1;

    invoke-direct {v0}, Lcom/android/settings/ScreenPinningSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isLockToAppEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private setLockToAppEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 50
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 51
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 53
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v0, 0x7f0400a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 62
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lcom/android/settings/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 90
    return-void
.end method
