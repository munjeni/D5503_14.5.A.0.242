.class public Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;
    }
.end annotation


# instance fields
.field private mActivatedByUselessDialog:Z

.field private mActivation:Landroid/preference/Preference;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mRuntimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

.field private mRuntimePreference:Landroid/preference/SwitchPreference;

.field private mShowXssmDelaySuspend:Z

.field private mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

.field private mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUserPressedUselessStaminaSwitch:Z

.field private mXSSMApplicationsPreference:Landroid/preference/Preference;

.field private mXSSMChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mXSSMDelaySuspendChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

.field private mXSSMPreference:Landroid/preference/SwitchPreference;

.field private mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

.field private mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    .line 93
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 101
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 109
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$3;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 120
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 142
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 463
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->registerStaminaCanceledObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMDelaySuspendEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setRuntimeEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->createAndShowHintDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    return v0
.end method

.method private createAndShowHintDialog()V
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 403
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 406
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 409
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 410
    return-void
.end method

.method private isStaminaCanceled()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;->isCanceled()Z

    move-result v0

    goto :goto_0
.end method

.method private isStaminaEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    goto :goto_0
.end method

.method private registerStaminaCanceledObserver()V
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    .line 498
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 500
    return-void
.end method

.method private setRuntimeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 376
    if-eqz p1, :cond_3

    .line 377
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    .line 380
    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    .line 387
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V

    .line 388
    return-void

    :cond_2
    move v0, v1

    .line 378
    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private setUiEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 413
    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    .line 414
    .local v0, "isPrimaryUser":Z
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 415
    .local v1, "isXssmEnabled":Z
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 416
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 417
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 418
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMApplicationsPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 419
    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 422
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 415
    goto :goto_0

    :cond_2
    move v2, v4

    .line 416
    goto :goto_1

    :cond_3
    move v2, v4

    .line 417
    goto :goto_2

    :cond_4
    move v2, v4

    .line 418
    goto :goto_3

    :cond_5
    move v3, v4

    .line 420
    goto :goto_4
.end method

.method private setXSSMDelaySuspendEnabled(ZZ)V
    .locals 1
    .param p1, "xssmEnabled"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 347
    return-void
.end method

.method private setXSSMEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 325
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmDelaySuspendEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMDelaySuspendEnabled(ZZ)V

    .line 329
    :cond_0
    if-eqz p1, :cond_4

    .line 330
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    if-eqz v0, :cond_2

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    .line 333
    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    .line 340
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V

    .line 341
    return-void

    :cond_3
    move v0, v1

    .line 331
    goto :goto_0

    .line 336
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private unregisterStaminaCanceledObserver()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    .line 494
    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 3

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z

    move-result v0

    .line 438
    .local v0, "staminaEnabled":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 439
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 440
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 441
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    .line 442
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 160
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 163
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 165
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    .line 172
    .local v0, "listner":Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;
    new-instance v1, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .line 174
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-interface {v3}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 183
    const-string v2, "activatedByUselessDialog"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    .line 185
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 186
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    .line 187
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    .line 188
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    .line 189
    const v2, 0x7f050053

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->addPreferencesFromResource(I)V

    .line 190
    const-string v2, "runtime"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    .line 191
    const-string v2, "xssm"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    .line 194
    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v2, :cond_3

    .line 195
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    .line 196
    const-string v2, "xssm_delay_suspend"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    .line 201
    :goto_0
    const-string v2, "xssm_applications"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMApplicationsPreference:Landroid/preference/Preference;

    .line 202
    const-string v2, "activation"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    .line 203
    const-string v2, "hint"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    const-string v2, "activation"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$8;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$8;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    if-eqz p1, :cond_2

    .line 222
    const-string v2, "hintDialogIsShown"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->createAndShowHintDialog()V

    .line 225
    :cond_1
    const-string v2, "userPressedUselessStaminaSwitch"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    .line 228
    :cond_2
    return-void

    .line 198
    :cond_3
    const-string v2, "xssm_delay_suspend"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    .line 310
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 313
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 314
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 319
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 320
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 296
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 301
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 302
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 304
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 305
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 254
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z

    move-result v0

    .line 255
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    .line 257
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMEnabled(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setRuntimeEnabled(Z)V

    .line 263
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmDelaySuspendEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 272
    :cond_0
    const/4 v1, 0x0

    .line 273
    .local v1, "whitelist":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 275
    .local v2, "whitelistGroups":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMApplicationsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 286
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerRuntimeEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 288
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 290
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->unregisterStaminaCanceledObserver()V

    .line 291
    return-void

    .line 282
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 233
    .local v0, "isHintDialogShown":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string v1, "hintDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v1, "userPressedUselessStaminaSwitch"

    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    return-void

    .line 232
    .end local v0    # "isHintDialogShown":Z
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 242
    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByUselessDialog:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedUselessStaminaSwitch:Z

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 245
    .local v0, "anyEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-static {v3, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    .line 248
    .end local v0    # "anyEnabled":Z
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->unregisterStaminaCanceledObserver()V

    .line 249
    return-void

    :cond_2
    move v0, v1

    .line 243
    goto :goto_0

    .restart local v0    # "anyEnabled":Z
    :cond_3
    move v2, v1

    .line 245
    goto :goto_1
.end method
