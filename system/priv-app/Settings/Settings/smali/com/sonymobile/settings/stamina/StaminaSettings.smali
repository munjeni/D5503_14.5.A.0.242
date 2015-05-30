.class public Lcom/sonymobile/settings/stamina/StaminaSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StaminaSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

.field private mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

.field private mQueueBgData:Landroid/preference/SwitchPreference;

.field private mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

.field private mUselessAlertDialog:Landroid/app/AlertDialog;

.field private mUselessDialogIsShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$6;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$6;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessDialogIsShown:Z

    .line 67
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$5;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->updateBatteryLevel(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/settings/stamina/StaminaSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessDialogIsShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/EstimationPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    return-object v0
.end method

.method private isQueueBgDataUiEnabled()Z
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 254
    .local v0, "policyManager":Landroid/net/NetworkPolicyManager;
    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUselessDialog()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sonymobile/settings/stamina/StaminaSettings$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$2;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v1, 0x7f08002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v1, 0x7f080017

    new-instance v2, Lcom/sonymobile/settings/stamina/StaminaSettings$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$3;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 111
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessAlertDialog:Landroid/app/AlertDialog;

    .line 114
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sonymobile/settings/stamina/StaminaSettings$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$4;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private updateBatteryLevel(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    if-eqz v1, :cond_0

    .line 263
    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "batteryLevel":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->updateBatteryText(Ljava/lang/String;)V

    .line 266
    .end local v0    # "batteryLevel":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f08000b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v3, 0x7f050052

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->addPreferencesFromResource(I)V

    .line 138
    const-string v3, "estimation"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/EstimationPreference;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    .line 139
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v3, v5}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setSelectable(Z)V

    .line 141
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 142
    .local v2, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isQueuingAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    const-string v3, "queue_bg_data"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    .line 146
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isQueueBgDataUiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 152
    :goto_0
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 153
    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    invoke-direct {v3, p0, v2}, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    .line 154
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    invoke-static {v0, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 160
    :goto_1
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const-string v3, "powersave"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    :cond_1
    const-string v3, "usm"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 168
    :cond_2
    if-eqz p1, :cond_3

    .line 169
    const-string v3, "state-useless-dialog-is-shown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessDialogIsShown:Z

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.sonymobile.intent.extra.POWER_INTENT_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "extra":Ljava/lang/String;
    const-string v3, "show-useless-dialog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessDialogIsShown:Z

    if-eqz v3, :cond_5

    .line 173
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->showUselessDialog()V

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 178
    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    .line 179
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    invoke-virtual {v3, v5}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->setShouldDisableView(Z)V

    .line 180
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    invoke-virtual {v3, v5}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->setEnabled(Z)V

    .line 185
    :goto_2
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->areConsumingAppsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 186
    const-string v3, "battery_usage"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 189
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonymobile/settings/stamina/FeedbackPreference;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 190
    return-void

    .line 148
    .end local v1    # "extra":Ljava/lang/String;
    :cond_7
    const-string v3, "queue_bg_data"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 149
    iput-object v6, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    .line 156
    :cond_8
    const-string v3, "stamina"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 157
    iput-object v6, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    goto/16 :goto_1

    .line 182
    .restart local v1    # "extra":Ljava/lang/String;
    :cond_9
    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 244
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 245
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    .line 203
    .local v0, "isPrimaryUser":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isQueueBgDataUiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isQueuingEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 207
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSelectable(Z)V

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/EstimationPreference;->updateEstimates()V

    .line 222
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 223
    return-void

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSelectable(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "state-useless-dialog-is-shown"

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUselessDialogIsShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    return-void
.end method
