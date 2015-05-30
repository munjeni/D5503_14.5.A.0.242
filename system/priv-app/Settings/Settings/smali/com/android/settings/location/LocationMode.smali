.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationMode$XTServiceConnection;
    }
.end annotation


# instance fields
.field private izatConnResult:Z

.field private mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

.field private mCallback:Lcom/android/location/XT/IXTSrvCb;

.field private mHandler:Landroid/os/Handler;

.field private mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

.field private mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

.field private mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

.field private mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

.field private mXTService:Lcom/android/location/XT/IXTSrv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    .line 81
    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    .line 86
    new-instance v0, Lcom/android/settings/location/LocationMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$1;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/settings/location/LocationMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$2;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/location/LocationMode;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;
    .param p1, "x1"    # Lcom/android/location/XT/IXTSrv;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrvCb;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-object v0
.end method

.method private checkGsPresence()Z
    .locals 12

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 116
    .local v10, "res":Landroid/content/res/Resources;
    const v11, 0x7f0a0082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "GS_PACKAGE_NAMES":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "gsExists":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 120
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 121
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 122
    .local v6, "packageInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_2

    .line 123
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v7, v1, v4

    .line 124
    .local v7, "packageName":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 125
    const/4 v2, 0x1

    .line 126
    goto :goto_0

    .line 123
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 218
    .local v4, "root":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 219
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 221
    :cond_0
    const v5, 0x7f05001e

    invoke-virtual {p0, v5}, Lcom/android/settings/location/LocationMode;->addPreferencesFromResource(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 224
    const-string v5, "high_accuracy"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    .line 225
    const-string v5, "battery_saving"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    .line 226
    const-string v5, "sensors_only"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    .line 227
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 228
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 229
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 231
    const-string v5, "enhanced_location"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 233
    .local v1, "enhancedLocation":Landroid/preference/PreferenceCategory;
    const-string v5, "location_izat"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    .line 234
    iget-boolean v5, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    if-nez v5, :cond_3

    .line 235
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    if-eqz v5, :cond_2

    .line 250
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    new-instance v6, Lcom/android/settings/location/LocationMode$3;

    invoke-direct {v6, p0}, Lcom/android/settings/location/LocationMode$3;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->refreshLocationMode()V

    .line 277
    return-object v4

    .line 238
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v5, :cond_1

    .line 239
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "izatMenuTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "izatSubtitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iget-object v6, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v6}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v2    # "izatMenuTitle":Ljava/lang/String;
    .end local v3    # "izatSubtitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "LocationMode"

    const-string v6, "Service connection error!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initUserPrefService()V
    .locals 4

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->checkGsPresence()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings/location/LocationMode;Lcom/android/settings/location/LocationMode$1;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/location/XT/IXTSrv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.qualcomm.location.XT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    .line 148
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 340
    const v0, 0x7f0809b4

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 333
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 335
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 336
    return-void

    .line 317
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 323
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 214
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings/location/RadioButtonPreference;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 304
    const/4 v0, 0x3

    .line 310
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationMode;->setLocationMode(I)V

    .line 311
    return-void

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 306
    const/4 v0, 0x2

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 308
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 209
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onStart()V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->initUserPrefService()V

    .line 195
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onStop()V

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    :cond_0
    return-void
.end method
