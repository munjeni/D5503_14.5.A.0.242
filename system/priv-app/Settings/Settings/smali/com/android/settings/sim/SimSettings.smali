.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mNumSlots:I

.field private static mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataDisableToastDisplayed:Z

.field private inActivity:Z

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCalls:Landroid/telephony/SubInfoRecord;

.field private mCellularData:Landroid/telephony/SubInfoRecord;

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mNumSims:I

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:J

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubInfoRecord;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 623
    new-instance v0, Lcom/android/settings/sim/SimSettings$4;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 92
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 93
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 97
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubInfoRecord;

    .line 98
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubInfoRecord;

    .line 99
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubInfoRecord;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 161
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 640
    new-instance v0, Lcom/android/settings/sim/SimSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$5;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/settings/sim/SimSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/settings/sim/SimSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimSettings;I)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataPreference()V

    return-void
.end method

.method private createPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 195
    const v4, 0x7f050038

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 197
    const-string v4, "select_primary_sub"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 198
    const-string v4, "sim_cards"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 199
    .local v1, "simCards":Landroid/preference/PreferenceCategory;
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 202
    .local v2, "simEnablers":Landroid/preference/PreferenceCategory;
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_2

    .line 205
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    .line 206
    .local v3, "sir":Landroid/telephony/SubInfoRecord;
    new-instance v4, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubInfoRecord;I)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-le v4, v8, :cond_1

    .line 208
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v5, Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v3, v7, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubInfoRecord;Landroid/os/Handler;I)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v4, v8, :cond_0

    .line 216
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    .line 217
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    .end local v3    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_2
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 300
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 304
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 305
    .local v2, "sir":Landroid/telephony/SubInfoRecord;
    iget v3, v2, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ne v3, p1, :cond_0

    .line 312
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :goto_1
    return-object v2

    .line 303
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubInfoRecord;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 284
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 287
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 288
    .local v2, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 292
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :goto_1
    return-object v2

    .line 286
    .restart local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPhoneStateListener(IJ)Landroid/telephony/PhoneStateListener;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 246
    move v0, p1

    .line 247
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;JI)V

    aput-object v2, v1, p1

    .line 255
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 441
    const/4 v0, -0x1

    .line 443
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    :goto_0
    return v0

    .line 445
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 397
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 400
    .local v1, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 403
    .local v3, "primarySetable":Z
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 406
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 407
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 409
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v3    # "primarySetable":Z
    :cond_1
    move v3, v8

    .line 400
    goto :goto_0

    .line 413
    .restart local v3    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v4

    .line 415
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 418
    .local v0, "isManualMode":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 419
    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    .line 420
    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v6

    .line 421
    .local v6, "subInfo":Landroid/telephony/SubInfoRecord;
    if-nez v6, :cond_4

    const/4 v2, 0x0

    .line 422
    .local v2, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    .end local v2    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :goto_4
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "isManualMode":Z
    :cond_3
    move v0, v8

    .line 415
    goto :goto_2

    .line 421
    .restart local v0    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_4
    iget-object v2, v6, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    goto :goto_3

    .line 424
    .end local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 354
    const/4 v0, 0x1

    .line 355
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 355
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v0
.end method

.method private listen()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 233
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 234
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 235
    .local v1, "subId":[J
    if-eqz v1, :cond_0

    .line 236
    aget-wide v4, v1, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget-wide v4, v1, v8

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v4

    aput v4, v3, v0

    .line 238
    aget-wide v4, v1, v8

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(IJ)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "subId":[J
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 662
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 153
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 272
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 273
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 275
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 277
    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 225
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimEnablers()V

    .line 228
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 365
    const-string v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 366
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 368
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 369
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v0, v1, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 372
    :cond_0
    iget v6, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 373
    return-void

    .line 366
    .end local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .end local v2    # "subId":J
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 372
    goto :goto_1
.end method

.method private updateCellularDataPreference()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 336
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/DropDownPreference;

    .line 337
    .local v1, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 339
    .local v0, "callStateIdle":Z
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 342
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    if-nez v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0801ea

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 345
    iput-boolean v3, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 348
    :cond_0
    if-ne v0, v3, :cond_1

    .line 349
    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 351
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 339
    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 4

    .prologue
    .line 327
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 328
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 329
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 330
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataPreference()V

    .line 333
    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 656
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 657
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 655
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 5

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 261
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 262
    .local v3, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 263
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 264
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 265
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 316
    const-string v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 317
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 319
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 320
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0, v1, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 323
    :cond_0
    iget v6, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 324
    return-void

    .line 317
    .end local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .end local v2    # "subId":J
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 323
    goto :goto_1
.end method


# virtual methods
.method public createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
    .locals 11
    .param p1, "preference"    # Lcom/android/settings/notification/DropDownPreference;

    .prologue
    const/4 v9, 0x1

    .line 463
    move-object v5, p1

    .line 464
    .local v5, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "keyPref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 466
    .local v4, "mActCount":I
    const-string v10, "sim_calls"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "sim_sms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v0, v9

    .line 468
    .local v0, "askFirst":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 469
    const-string v9, "SimSettings"

    const-string v10, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_1
    return-void

    .line 466
    .end local v0    # "askFirst":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    .restart local v0    # "askFirst":Z
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    .line 475
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubInfoRecord;

    .line 476
    .local v8, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v8, :cond_3

    iget v10, v8, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v10, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 479
    .end local v8    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_4
    if-eqz v0, :cond_5

    if-le v4, v9, :cond_5

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080a02

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    :cond_5
    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 485
    .local v7, "subAvailableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v7, :cond_7

    .line 486
    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    .line 487
    .local v6, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v6, :cond_6

    .line 488
    iget-object v9, v6, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v9, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 492
    .end local v6    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_7
    new-instance v9, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v9, p0, v5}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V

    invoke-virtual {v5, v9}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto :goto_1
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 430
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 431
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 432
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 437
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 430
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v2, "SimSettings"

    const-string v3, "on onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 120
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 121
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 124
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 125
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    .line 126
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    .line 127
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->listen()V

    .line 130
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J

    .line 132
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 145
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 377
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 378
    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    .line 379
    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 382
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 383
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 453
    instance-of v0, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 454
    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    .line 459
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 455
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    .line 391
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initLTEPreference()V

    .line 393
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 394
    return-void
.end method
