.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addApplicationsToList:I = 0x59

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x71

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0xa1

.field static final TRANSACTION_addEasAccount:I = 0xa9

.field static final TRANSACTION_addEmailAccount:I = 0xaa

.field static final TRANSACTION_addPacketFilterRulesToList:I = 0xb7

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x55

.field static final TRANSACTION_addVpnConfiguration:I = 0xa6

.field static final TRANSACTION_checkCallingUid:I = 0x84

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x72

.field static final TRANSACTION_clearDeviceOwner:I = 0x49

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x56

.field static final TRANSACTION_clearProfileOwner:I = 0x4f

.field static final TRANSACTION_createAndInitializeUser:I = 0x87

.field static final TRANSACTION_createUser:I = 0x86

.field static final TRANSACTION_enableSystemApp:I = 0x8a

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x8b

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x53

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x8d

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x90

.field static final TRANSACTION_getActiveAdmins:I = 0x3d

.field static final TRANSACTION_getApplicationRestrictions:I = 0x6d

.field static final TRANSACTION_getAutoTimeRequired:I = 0xa5

.field static final TRANSACTION_getBluetoothPermission:I = 0x6b

.field static final TRANSACTION_getCameraDisabled:I = 0x36

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x9c

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x9d

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0xa3

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getCurrentFailedPasswordAttemptsInternal:I = 0x18

.field static final TRANSACTION_getDeviceOwner:I = 0x47

.field static final TRANSACTION_getDeviceOwnerName:I = 0x48

.field static final TRANSACTION_getDeviceRootingStatus:I = 0xa0

.field static final TRANSACTION_getEASDeviceId:I = 0xac

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x2c

.field static final TRANSACTION_getInfraredDisabled:I = 0x60

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x3a

.field static final TRANSACTION_getLockTaskPackages:I = 0x92

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_getMobileDataUsage:I = 0xad

.field static final TRANSACTION_getOtpMsg:I = 0x23

.field static final TRANSACTION_getOtpPassword:I = 0x22

.field static final TRANSACTION_getOtpPhoneNumber:I = 0x24

.field static final TRANSACTION_getPacketFilterRules:I = 0xb9

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x78

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x79

.field static final TRANSACTION_getPermittedInputMethods:I = 0x7b

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x7c

.field static final TRANSACTION_getProfileOwner:I = 0x4b

.field static final TRANSACTION_getProfileOwnerName:I = 0x4c

.field static final TRANSACTION_getRemoveWarning:I = 0x3f

.field static final TRANSACTION_getRestrictionsProvider:I = 0x6f

.field static final TRANSACTION_getRoamingDataLimit:I = 0xc0

.field static final TRANSACTION_getRoamingDataLimitAdmin:I = 0xc9

.field static final TRANSACTION_getRoamingDataLimitCycleDuration:I = 0xc2

.field static final TRANSACTION_getRoamingDataLimitCycleStart:I = 0xc1

.field static final TRANSACTION_getRoamingDataLimitLastStart:I = 0xc4

.field static final TRANSACTION_getRoamingDataUsageFromCycleStart:I = 0xc6

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x38

.field static final TRANSACTION_getSdcardEncryption:I = 0x33

.field static final TRANSACTION_getSdcardEncryptionStatus:I = 0x34

.field static final TRANSACTION_getSecureTimeMillis:I = 0xc8

.field static final TRANSACTION_getStorageEncryption:I = 0x2f

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x31

.field static final TRANSACTION_getStorageEncryptionStatusIgnoreScreenlock:I = 0x30

.field static final TRANSACTION_getTrustAgentFeaturesEnabled:I = 0x9f

.field static final TRANSACTION_getVpnConfigurationNames:I = 0xa8

.field static final TRANSACTION_hasGrantedPolicy:I = 0x41

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x50

.field static final TRANSACTION_installCaCert:I = 0x51

.field static final TRANSACTION_installCertFromDer:I = 0xd0

.field static final TRANSACTION_installCertFromPkcs12:I = 0xd1

.field static final TRANSACTION_installKeyPair:I = 0x54

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAddUserDisabled:I = 0xcb

.field static final TRANSACTION_isAdminActive:I = 0x3c

.field static final TRANSACTION_isApplicationDisabled:I = 0x57

.field static final TRANSACTION_isApplicationHidden:I = 0x85

.field static final TRANSACTION_isApplicationListed:I = 0x5c

.field static final TRANSACTION_isAutoSyncDataDisabled:I = 0xd5

.field static final TRANSACTION_isAutoSyncWhenRoamingDisabled:I = 0x83

.field static final TRANSACTION_isBrowserDisabled:I = 0x5e

.field static final TRANSACTION_isConsumerEmailDisabled:I = 0xb1

.field static final TRANSACTION_isDataRoamingDisabled:I = 0x65

.field static final TRANSACTION_isDeactivationDisabled:I = 0xbb

.field static final TRANSACTION_isDeviceOwner:I = 0x46

.field static final TRANSACTION_isLocalDesktopSyncDisabled:I = 0x76

.field static final TRANSACTION_isLocationDisabled:I = 0xb3

.field static final TRANSACTION_isLocationDisabledForCurrentUser:I = 0xb4

.field static final TRANSACTION_isLockTaskPermitted:I = 0x93

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x97

.field static final TRANSACTION_isMountingExternalStorageDisabled:I = 0x63

.field static final TRANSACTION_isNfcDisabled:I = 0x69

.field static final TRANSACTION_isNonMarketAppsDisabled:I = 0xb6

.field static final TRANSACTION_isOtpLockActive:I = 0x25

.field static final TRANSACTION_isPopImapEmailDisabled:I = 0xaf

.field static final TRANSACTION_isRecoveryPasswordSaved:I = 0x1e

.field static final TRANSACTION_isRoamingDataLimitEnabled:I = 0xc7

.field static final TRANSACTION_isSafeModeDisabled:I = 0xbd

.field static final TRANSACTION_isScreenshotDisabled:I = 0x81

.field static final TRANSACTION_isSimplePasswordRestricted:I = 0x21

.field static final TRANSACTION_isTetheringDisabled:I = 0x74

.field static final TRANSACTION_isTextMessagingDisabled:I = 0x8f

.field static final TRANSACTION_isUninstallBlocked:I = 0x9a

.field static final TRANSACTION_isUsbDebuggingDisabled:I = 0x7f

.field static final TRANSACTION_isUsbMassStorageDisabled:I = 0xcf

.field static final TRANSACTION_isWifiDisabled:I = 0x67

.field static final TRANSACTION_listCertificates:I = 0xd3

.field static final TRANSACTION_lockNow:I = 0x28

.field static final TRANSACTION_lockNowOtp:I = 0x26

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x98

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x3e

.field static final TRANSACTION_releasePolicies:I = 0x58

.field static final TRANSACTION_removeActiveAdmin:I = 0x40

.field static final TRANSACTION_removeAllApplicationsFromList:I = 0x5b

.field static final TRANSACTION_removeAllPacketFilterRulesFromList:I = 0xb8

.field static final TRANSACTION_removeApplicationsFromList:I = 0x5a

.field static final TRANSACTION_removeCertificate:I = 0xd2

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0xa2

.field static final TRANSACTION_removeEmailAccount:I = 0xab

.field static final TRANSACTION_removeUser:I = 0x88

.field static final TRANSACTION_removeVpnConfiguration:I = 0xa7

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x43

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x44

.field static final TRANSACTION_reportSuccessfulRecoveryPasswordAttempt:I = 0x61

.field static final TRANSACTION_resetPassword:I = 0x1b

.field static final TRANSACTION_saveRecoveryPassword:I = 0x1f

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x8c

.field static final TRANSACTION_setActiveAdmin:I = 0x3b

.field static final TRANSACTION_setActivePasswordState:I = 0x42

.field static final TRANSACTION_setAddUserDisabled:I = 0xca

.field static final TRANSACTION_setApplicationHidden:I = 0x7d

.field static final TRANSACTION_setApplicationRestrictions:I = 0x6c

.field static final TRANSACTION_setAutoSyncDataDisabled:I = 0xd4

.field static final TRANSACTION_setAutoSyncWhenRoamingDisabled:I = 0x82

.field static final TRANSACTION_setAutoTimeRequired:I = 0xa4

.field static final TRANSACTION_setBluetoothPermission:I = 0x6a

.field static final TRANSACTION_setBrowserDisabled:I = 0x5d

.field static final TRANSACTION_setCameraDisabled:I = 0x35

.field static final TRANSACTION_setConsumerEmailDisabled:I = 0xb0

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x9b

.field static final TRANSACTION_setDataRoamingDisabled:I = 0x64

.field static final TRANSACTION_setDeactivationDisabled:I = 0xba

.field static final TRANSACTION_setDeviceOwner:I = 0x45

.field static final TRANSACTION_setGlobalProxy:I = 0x2b

.field static final TRANSACTION_setGlobalSetting:I = 0x94

.field static final TRANSACTION_setInfraredDisabled:I = 0x5f

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x39

.field static final TRANSACTION_setLocalDesktopSyncDisabled:I = 0x75

.field static final TRANSACTION_setLocationDisabled:I = 0xb2

.field static final TRANSACTION_setLockTaskPackages:I = 0x91

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x96

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1c

.field static final TRANSACTION_setMountingExternalStorageDisabled:I = 0x62

.field static final TRANSACTION_setNfcDisabled:I = 0x68

.field static final TRANSACTION_setNonMarketAppsDisabled:I = 0xb5

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x77

.field static final TRANSACTION_setPermittedInputMethods:I = 0x7a

.field static final TRANSACTION_setPopImapEmailDisabled:I = 0xae

.field static final TRANSACTION_setProfileEnabled:I = 0x4d

.field static final TRANSACTION_setProfileName:I = 0x4e

.field static final TRANSACTION_setProfileOwner:I = 0x4a

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x2d

.field static final TRANSACTION_setRestrictionsProvider:I = 0x6e

.field static final TRANSACTION_setRoamingDataLimit:I = 0xbf

.field static final TRANSACTION_setRoamingDataLimitActive:I = 0xbe

.field static final TRANSACTION_setRoamingDataLimitLastStart:I = 0xc3

.field static final TRANSACTION_setRoamingDataUsageFromCycleStart:I = 0xc5

.field static final TRANSACTION_setSafeModeDisabled:I = 0xbc

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x37

.field static final TRANSACTION_setScreenshotDisabled:I = 0x80

.field static final TRANSACTION_setSdcardEncryption:I = 0x32

.field static final TRANSACTION_setSecureSetting:I = 0x95

.field static final TRANSACTION_setSimplePasswordRestricted:I = 0x20

.field static final TRANSACTION_setStorageEncryption:I = 0x2e

.field static final TRANSACTION_setTetheringDisabled:I = 0x73

.field static final TRANSACTION_setTextMessagingDisabled:I = 0x8e

.field static final TRANSACTION_setTrustAgentFeaturesEnabled:I = 0x9e

.field static final TRANSACTION_setUninstallBlocked:I = 0x99

.field static final TRANSACTION_setUsbDebuggingDisabled:I = 0x7e

.field static final TRANSACTION_setUsbMassStorageDisabled:I = 0xce

.field static final TRANSACTION_setUserRestriction:I = 0x70

.field static final TRANSACTION_setWifiDisabled:I = 0x66

.field static final TRANSACTION_shouldBeInstallationDisabled:I = 0xcc

.field static final TRANSACTION_shouldBeUninstallationDisabled:I = 0xcd

.field static final TRANSACTION_switchUser:I = 0x89

.field static final TRANSACTION_uninstallCaCert:I = 0x52

.field static final TRANSACTION_unlockNowOtp:I = 0x27

.field static final TRANSACTION_wipeData:I = 0x29

.field static final TRANSACTION_wipeExternalSdCard:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 3681
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 60
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 62
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 63
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;II)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v4, 0x1

    goto :goto_0

    .line 57
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 69
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 78
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 79
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v38

    .line 80
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v4, 0x1

    goto :goto_0

    .line 75
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 86
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 95
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 97
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 98
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 92
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 104
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 113
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 114
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v38

    .line 115
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 110
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 121
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 130
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 133
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 127
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 139
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 148
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 149
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v38

    .line 150
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 145
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 156
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 159
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 165
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 167
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 168
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 162
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 174
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 177
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 183
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 184
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v38

    .line 185
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 180
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 191
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 194
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 200
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 202
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 197
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 209
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 212
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 218
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 219
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v38

    .line 220
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 215
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 226
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 229
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 235
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 237
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 238
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 232
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 244
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 247
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 253
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 254
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v38

    .line 255
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 250
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 261
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 264
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 270
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 272
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 273
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 267
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 279
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 282
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 288
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 289
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v38

    .line 290
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 285
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 296
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 299
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 305
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 307
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 308
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 302
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 314
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 317
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 323
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 324
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v38

    .line 325
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 320
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 331
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 334
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 340
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 342
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 343
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 337
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 349
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 352
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 358
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 359
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v38

    .line 360
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 355
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 366
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_13
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 369
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 375
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 377
    .local v26, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 378
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 372
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    .end local v26    # "_arg1":J
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    .line 384
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_14
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 387
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 393
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 394
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 395
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 397
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 390
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .line 401
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_15
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 404
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 410
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 411
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 412
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 414
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 407
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15

    .line 418
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_16
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 421
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v38

    .line 422
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v38, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 423
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 428
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Z
    :sswitch_17
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 431
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v38

    .line 432
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 438
    .end local v5    # "_arg0":I
    .end local v38    # "_result":I
    :sswitch_18
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 441
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttemptsInternal(I)I

    move-result v38

    .line 442
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 448
    .end local v5    # "_arg0":I
    .end local v38    # "_result":I
    :sswitch_19
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 451
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 457
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 459
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 460
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 454
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17

    .line 466
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 469
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 475
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 476
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v38

    .line 477
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 472
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 483
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 489
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 490
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;II)Z

    move-result v38

    .line 491
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v38, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 492
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 497
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_1c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 500
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 506
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 508
    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 509
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 503
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    .end local v26    # "_arg1":J
    :cond_19
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .line 515
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 518
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 524
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 525
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 526
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 528
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 521
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    .line 532
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 535
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 541
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 542
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRecoveryPasswordSaved(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 543
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v38, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 538
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_1b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 544
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 549
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_1f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 552
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 558
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 560
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 561
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->saveRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 555
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_1d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 567
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_20
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 570
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 576
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v6, 0x1

    .line 578
    .local v6, "_arg1":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 579
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSimplePasswordRestricted(Landroid/content/ComponentName;ZI)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 573
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_1e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1f

    .line 576
    :cond_1f
    const/4 v6, 0x0

    goto :goto_20

    .line 585
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_21
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 588
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 594
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 595
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSimplePasswordRestricted(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 596
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v38, :cond_21

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 591
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_20
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_21

    .line 597
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_22

    .line 602
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_22
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 605
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOtpPassword(I)Ljava/lang/String;

    move-result-object v38

    .line 606
    .local v38, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 612
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 615
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOtpMsg(I)Ljava/lang/String;

    move-result-object v38

    .line 616
    .restart local v38    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 622
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 625
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOtpPhoneNumber(I)Ljava/lang/String;

    move-result-object v38

    .line 626
    .restart local v38    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 632
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 635
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOtpLockActive(I)Z

    move-result v38

    .line 636
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v38, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 637
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .line 642
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Z
    :sswitch_26
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 645
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 651
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 656
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNowOtp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    .line 657
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v38, :cond_24

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 648
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_23
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    .line 658
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .line 663
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_27
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 666
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 672
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 673
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->unlockNowOtp(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v38

    .line 674
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v38, :cond_26

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 669
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_25
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    .line 675
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    goto :goto_27

    .line 680
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_28
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 687
    :sswitch_29
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 691
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 692
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 698
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_2a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 701
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 707
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 708
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeExternalSdCard(Landroid/content/ComponentName;I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 704
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_27
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .line 714
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 717
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 723
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 727
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 728
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v38

    .line 729
    .local v38, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v38, :cond_29

    .line 731
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 737
    :goto_2a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 720
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Landroid/content/ComponentName;
    :cond_28
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_29

    .line 735
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":I
    .restart local v38    # "_result":Landroid/content/ComponentName;
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 741
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Landroid/content/ComponentName;
    :sswitch_2c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 744
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v38

    .line 745
    .restart local v38    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    if-eqz v38, :cond_2a

    .line 747
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 753
    :goto_2b
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 751
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 757
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Landroid/content/ComponentName;
    :sswitch_2d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 760
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 766
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 767
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyInfo;

    .line 772
    .local v6, "_arg1":Landroid/net/ProxyInfo;
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 763
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/net/ProxyInfo;
    :cond_2b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2c

    .line 770
    :cond_2c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/ProxyInfo;
    goto :goto_2d

    .line 778
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_2e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 781
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 787
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v6, 0x1

    .line 789
    .local v6, "_arg1":Z
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 790
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;ZI)I

    move-result v38

    .line 791
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 784
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v38    # "_result":I
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    .line 787
    :cond_2e
    const/4 v6, 0x0

    goto :goto_2f

    .line 797
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 800
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 806
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 807
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 808
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    if-eqz v38, :cond_30

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 803
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_2f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_30

    .line 809
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    goto :goto_31

    .line 814
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_30
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 817
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatusIgnoreScreenlock(I)I

    move-result v38

    .line 818
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 824
    .end local v5    # "_arg0":I
    .end local v38    # "_result":I
    :sswitch_31
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 827
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v38

    .line 828
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 834
    .end local v5    # "_arg0":I
    .end local v38    # "_result":I
    :sswitch_32
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 837
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 843
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    const/4 v6, 0x1

    .line 845
    .local v6, "_arg1":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 846
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSdcardEncryption(Landroid/content/ComponentName;ZI)I

    move-result v38

    .line 847
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 840
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v38    # "_result":I
    :cond_31
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_32

    .line 843
    :cond_32
    const/4 v6, 0x0

    goto :goto_33

    .line 853
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_33
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 856
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 862
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 863
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSdcardEncryption(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 864
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    if-eqz v38, :cond_34

    const/4 v4, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 859
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_33
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 865
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_34
    const/4 v4, 0x0

    goto :goto_35

    .line 870
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_34
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 873
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSdcardEncryptionStatus(I)I

    move-result v38

    .line 874
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 880
    .end local v5    # "_arg0":I
    .end local v38    # "_result":I
    :sswitch_35
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 883
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 889
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    const/4 v6, 0x1

    .line 891
    .local v6, "_arg1":Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 892
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 886
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_35
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .line 889
    :cond_36
    const/4 v6, 0x0

    goto :goto_37

    .line 898
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_36
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 901
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 907
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 908
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 909
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v38, :cond_38

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 904
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_37
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    .line 910
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_38
    const/4 v4, 0x0

    goto :goto_39

    .line 915
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_37
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    .line 918
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 924
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 926
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v7, 0x1

    .line 927
    .local v7, "_arg2":Z
    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;IZ)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 921
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Z
    :cond_39
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    .line 926
    .restart local v6    # "_arg1":I
    :cond_3a
    const/4 v7, 0x0

    goto :goto_3b

    .line 933
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :sswitch_38
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 936
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 942
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 943
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 944
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    if-eqz v38, :cond_3c

    const/4 v4, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 939
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_3b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3c

    .line 945
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_3c
    const/4 v4, 0x0

    goto :goto_3d

    .line 950
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_39
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 953
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 959
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 961
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 962
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 956
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_3d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    .line 968
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 971
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 977
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 978
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v38

    .line 979
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 974
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_3e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3f

    .line 985
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 988
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 994
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    const/4 v6, 0x1

    .line 996
    .local v6, "_arg1":Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 997
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 991
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_3f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    .line 994
    :cond_40
    const/4 v6, 0x0

    goto :goto_41

    .line 1003
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1006
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1012
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1013
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1014
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v38, :cond_42

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1009
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_41
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 1015
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_42
    const/4 v4, 0x0

    goto :goto_43

    .line 1020
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_3d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1023
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v37

    .line 1024
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1026
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v5    # "_arg0":I
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_3e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1034
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1035
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v38

    .line 1036
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    if-eqz v38, :cond_43

    const/4 v4, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1037
    :cond_43
    const/4 v4, 0x0

    goto :goto_44

    .line 1042
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_3f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 1045
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1051
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1052
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 1058
    .local v6, "_arg1":Landroid/os/RemoteCallback;
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1059
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1048
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/RemoteCallback;
    .end local v7    # "_arg2":I
    :cond_44
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_45

    .line 1055
    :cond_45
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/RemoteCallback;
    goto :goto_46

    .line 1065
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_40
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    .line 1068
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1074
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1075
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1071
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_46
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_47

    .line 1081
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_41
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 1084
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1090
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1092
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1093
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v38

    .line 1094
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    if-eqz v38, :cond_48

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :cond_47
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .line 1095
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v38    # "_result":Z
    :cond_48
    const/4 v4, 0x0

    goto :goto_49

    .line 1100
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_42
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1104
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1106
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1108
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1110
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1112
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1114
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1116
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1118
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1120
    .local v13, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg9":I
    move-object/from16 v4, p0

    .line 1121
    invoke-virtual/range {v4 .. v14}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIIII)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1127
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    :sswitch_43
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1130
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 1131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1136
    .end local v5    # "_arg0":I
    :sswitch_44
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1139
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 1140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v5    # "_arg0":I
    :sswitch_45
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1149
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1150
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    .line 1151
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    if-eqz v38, :cond_49

    const/4 v4, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1152
    :cond_49
    const/4 v4, 0x0

    goto :goto_4a

    .line 1157
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_46
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1160
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v38

    .line 1161
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    if-eqz v38, :cond_4a

    const/4 v4, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1162
    :cond_4a
    const/4 v4, 0x0

    goto :goto_4b

    .line 1167
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_47
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    move-result-object v38

    .line 1169
    .local v38, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1171
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1175
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v38

    .line 1177
    .restart local v38    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1183
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1186
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1192
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_4a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    .line 1195
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1201
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1203
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1204
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v38

    .line 1205
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    if-eqz v38, :cond_4c

    const/4 v4, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :cond_4b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    .line 1206
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v38    # "_result":Z
    :cond_4c
    const/4 v4, 0x0

    goto :goto_4d

    .line 1211
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_4b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1214
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v38

    .line 1215
    .local v38, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    if-eqz v38, :cond_4d

    .line 1217
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1223
    :goto_4e
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1221
    :cond_4d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 1227
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Landroid/content/ComponentName;
    :sswitch_4c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1230
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v38

    .line 1231
    .local v38, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1233
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1237
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 1240
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1245
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_4f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1243
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_4e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4f

    .line 1251
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    .line 1254
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1260
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1261
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1257
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_4f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    .line 1267
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    .line 1270
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1275
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_51
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1273
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_50
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_51

    .line 1281
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_50
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v38

    .line 1283
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    if-eqz v38, :cond_51

    const/4 v4, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_51
    const/4 v4, 0x0

    goto :goto_52

    .line 1289
    .end local v38    # "_result":Z
    :sswitch_51
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    .line 1292
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1298
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1299
    .local v6, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    move-result v38

    .line 1300
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    if-eqz v38, :cond_53

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1295
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v38    # "_result":Z
    :cond_52
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_53

    .line 1301
    .restart local v6    # "_arg1":[B
    .restart local v38    # "_result":Z
    :cond_53
    const/4 v4, 0x0

    goto :goto_54

    .line 1306
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v38    # "_result":Z
    :sswitch_52
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_54

    .line 1309
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1315
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_54
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_55

    .line 1322
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_53
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    .line 1325
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1330
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1328
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_55
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_56

    .line 1336
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_56

    .line 1339
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1345
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1347
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1349
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1350
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z

    move-result v38

    .line 1351
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    if-eqz v38, :cond_57

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1342
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_56
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_57

    .line 1352
    .restart local v6    # "_arg1":[B
    .restart local v7    # "_arg2":[B
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_57
    const/4 v4, 0x0

    goto :goto_58

    .line 1357
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_55
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_58

    .line 1360
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1366
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    .line 1367
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 1373
    .local v6, "_arg1":Landroid/content/IntentFilter;
    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    .line 1374
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1379
    .local v7, "_arg2":Landroid/content/ComponentName;
    :goto_5b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1363
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    .end local v7    # "_arg2":Landroid/content/ComponentName;
    :cond_58
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    .line 1370
    :cond_59
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_5a

    .line 1377
    :cond_5a
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/content/ComponentName;
    goto :goto_5b

    .line 1385
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    .end local v7    # "_arg2":Landroid/content/ComponentName;
    :sswitch_56
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5b

    .line 1388
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1394
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1395
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1391
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_5b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    .line 1401
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_57
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 1404
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1410
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1412
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1413
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v38

    .line 1414
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    if-eqz v38, :cond_5d

    const/4 v4, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :cond_5c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .line 1415
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v38    # "_result":Z
    :cond_5d
    const/4 v4, 0x0

    goto :goto_5e

    .line 1420
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_58
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 1423
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1429
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1430
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->releasePolicies(Landroid/content/ComponentName;I)V

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_5e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    .line 1436
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_59
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    .line 1439
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1445
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1447
    .local v6, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1449
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1450
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->addApplicationsToList(Landroid/content/ComponentName;[Ljava/lang/String;II)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1442
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_5f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_60

    .line 1456
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_60

    .line 1459
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1465
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1467
    .restart local v6    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1469
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1470
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeApplicationsFromList(Landroid/content/ComponentName;[Ljava/lang/String;II)V

    .line 1471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1462
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_60
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_61

    .line 1476
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    .line 1479
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1485
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1487
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1488
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeAllApplicationsFromList(Landroid/content/ComponentName;II)V

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1482
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_61
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_62

    .line 1494
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    .line 1497
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1503
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1505
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1507
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1508
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationListed(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    move-result v38

    .line 1509
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    if-eqz v38, :cond_63

    const/4 v4, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1500
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Z
    :cond_62
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    .line 1510
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v38    # "_result":Z
    :cond_63
    const/4 v4, 0x0

    goto :goto_64

    .line 1515
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":Z
    :sswitch_5d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    .line 1518
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1524
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    const/4 v6, 0x1

    .line 1526
    .local v6, "_arg1":Z
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1527
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBrowserDisabled(Landroid/content/ComponentName;ZI)V

    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1521
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_64
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_65

    .line 1524
    :cond_65
    const/4 v6, 0x0

    goto :goto_66

    .line 1533
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    .line 1536
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1542
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1543
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBrowserDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1544
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    if-eqz v38, :cond_67

    const/4 v4, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1539
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_66
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_67

    .line 1545
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_67
    const/4 v4, 0x0

    goto :goto_68

    .line 1550
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_5f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 1553
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1559
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_69

    const/4 v6, 0x1

    .line 1561
    .local v6, "_arg1":Z
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1562
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setInfraredDisabled(Landroid/content/ComponentName;ZI)V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1556
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_68
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_69

    .line 1559
    :cond_69
    const/4 v6, 0x0

    goto :goto_6a

    .line 1568
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_60
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 1571
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1577
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1578
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getInfraredDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1579
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    if-eqz v38, :cond_6b

    const/4 v4, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1574
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_6a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6b

    .line 1580
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_6b
    const/4 v4, 0x0

    goto :goto_6c

    .line 1585
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_61
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1588
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulRecoveryPasswordAttempt(I)V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1594
    .end local v5    # "_arg0":I
    :sswitch_62
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 1597
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1603
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v6, 0x1

    .line 1605
    .local v6, "_arg1":Z
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1606
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMountingExternalStorageDisabled(Landroid/content/ComponentName;ZI)V

    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1600
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_6c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6d

    .line 1603
    :cond_6d
    const/4 v6, 0x0

    goto :goto_6e

    .line 1612
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_63
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    .line 1615
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1621
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1622
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1623
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    if-eqz v38, :cond_6f

    const/4 v4, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1618
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_6e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6f

    .line 1624
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_6f
    const/4 v4, 0x0

    goto :goto_70

    .line 1629
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_64
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_70

    .line 1632
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1638
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    const/4 v6, 0x1

    .line 1640
    .local v6, "_arg1":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1641
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDataRoamingDisabled(Landroid/content/ComponentName;ZI)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1635
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_70
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_71

    .line 1638
    :cond_71
    const/4 v6, 0x0

    goto :goto_72

    .line 1647
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_65
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    .line 1650
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1656
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1657
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDataRoamingDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1658
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    if-eqz v38, :cond_73

    const/4 v4, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1653
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_72
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_73

    .line 1659
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_73
    const/4 v4, 0x0

    goto :goto_74

    .line 1664
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_66
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74

    .line 1667
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1673
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    const/4 v6, 0x1

    .line 1675
    .local v6, "_arg1":Z
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1676
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiDisabled(Landroid/content/ComponentName;ZI)V

    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1670
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_74
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_75

    .line 1673
    :cond_75
    const/4 v6, 0x0

    goto :goto_76

    .line 1682
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_67
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    .line 1685
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1691
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1692
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isWifiDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1693
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    if-eqz v38, :cond_77

    const/4 v4, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1688
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_76
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_77

    .line 1694
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_77
    const/4 v4, 0x0

    goto :goto_78

    .line 1699
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_68
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_78

    .line 1702
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1708
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    const/4 v6, 0x1

    .line 1710
    .local v6, "_arg1":Z
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1711
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNfcDisabled(Landroid/content/ComponentName;ZI)V

    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1705
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_78
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_79

    .line 1708
    :cond_79
    const/4 v6, 0x0

    goto :goto_7a

    .line 1717
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_69
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7a

    .line 1720
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1726
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1727
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNfcDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1728
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    if-eqz v38, :cond_7b

    const/4 v4, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1723
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_7a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    .line 1729
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_7b
    const/4 v4, 0x0

    goto :goto_7c

    .line 1734
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_6a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7c

    .line 1737
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1743
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1745
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1746
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothPermission(Landroid/content/ComponentName;II)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1740
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_7c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7d

    .line 1752
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7d

    .line 1755
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1761
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1762
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothPermission(Landroid/content/ComponentName;I)I

    move-result v38

    .line 1763
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1758
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_7d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7e

    .line 1769
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e

    .line 1772
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1778
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1780
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7f

    .line 1781
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 1786
    .local v7, "_arg2":Landroid/os/Bundle;
    :goto_80
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1775
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :cond_7e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7f

    .line 1784
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_7f
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_80

    .line 1792
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :sswitch_6d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_80

    .line 1795
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1801
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1802
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v38

    .line 1803
    .local v38, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    if-eqz v38, :cond_81

    .line 1805
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1806
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1811
    :goto_82
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Landroid/os/Bundle;
    :cond_80
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_81

    .line 1809
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Landroid/os/Bundle;
    :cond_81
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_82

    .line 1815
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Landroid/os/Bundle;
    :sswitch_6e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_82

    .line 1818
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1824
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_83

    .line 1825
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1830
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_84
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1821
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :cond_82
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    .line 1828
    :cond_83
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_84

    .line 1836
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_6f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1839
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v38

    .line 1840
    .local v38, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    if-eqz v38, :cond_84

    .line 1842
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1848
    :goto_85
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1846
    :cond_84
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_85

    .line 1852
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Landroid/content/ComponentName;
    :sswitch_70
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_85

    .line 1855
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1861
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1863
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    const/4 v7, 0x1

    .line 1864
    .local v7, "_arg2":Z
    :goto_87
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 1865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1858
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_85
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_86

    .line 1863
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_86
    const/4 v7, 0x0

    goto :goto_87

    .line 1870
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_71
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_87

    .line 1873
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1879
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_88

    .line 1880
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 1886
    .local v6, "_arg1":Landroid/content/IntentFilter;
    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1887
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1876
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    .end local v7    # "_arg2":I
    :cond_87
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_88

    .line 1883
    :cond_88
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_89

    .line 1893
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_72
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    .line 1896
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1901
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 1902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1903
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1899
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_89
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    .line 1907
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_73
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8a

    .line 1910
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1916
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8b

    const/4 v6, 0x1

    .line 1918
    .local v6, "_arg1":Z
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1919
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTetheringDisabled(Landroid/content/ComponentName;ZI)V

    .line 1920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1913
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_8a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8b

    .line 1916
    :cond_8b
    const/4 v6, 0x0

    goto :goto_8c

    .line 1925
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_74
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8c

    .line 1928
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1934
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1935
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isTetheringDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1936
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    if-eqz v38, :cond_8d

    const/4 v4, 0x1

    :goto_8e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1931
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_8c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8d

    .line 1937
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_8d
    const/4 v4, 0x0

    goto :goto_8e

    .line 1942
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_75
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8e

    .line 1945
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1951
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    const/4 v6, 0x1

    .line 1953
    .local v6, "_arg1":Z
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1954
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocalDesktopSyncDisabled(Landroid/content/ComponentName;ZI)V

    .line 1955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1948
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_8e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8f

    .line 1951
    :cond_8f
    const/4 v6, 0x0

    goto :goto_90

    .line 1960
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_76
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    .line 1963
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1969
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1970
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocalDesktopSyncDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 1971
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    if-eqz v38, :cond_91

    const/4 v4, 0x1

    :goto_92
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1966
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_90
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_91

    .line 1972
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_91
    const/4 v4, 0x0

    goto :goto_92

    .line 1977
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_77
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_92

    .line 1980
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1986
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_93
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v41

    .line 1987
    .local v41, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1988
    .local v6, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v38

    .line 1989
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    if-eqz v38, :cond_93

    const/4 v4, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1983
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v38    # "_result":Z
    .end local v41    # "cl":Ljava/lang/ClassLoader;
    :cond_92
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_93

    .line 1990
    .restart local v6    # "_arg1":Ljava/util/List;
    .restart local v38    # "_result":Z
    .restart local v41    # "cl":Ljava/lang/ClassLoader;
    :cond_93
    const/4 v4, 0x0

    goto :goto_94

    .line 1995
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v38    # "_result":Z
    .end local v41    # "cl":Ljava/lang/ClassLoader;
    :sswitch_78
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    .line 1998
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2003
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_95
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v38

    .line 2004
    .local v38, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2006
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2001
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":Ljava/util/List;
    :cond_94
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_95

    .line 2010
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_79
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2013
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v38

    .line 2014
    .restart local v38    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2016
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2020
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Ljava/util/List;
    :sswitch_7a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_95

    .line 2023
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2029
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_96
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v41

    .line 2030
    .restart local v41    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2031
    .restart local v6    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v38

    .line 2032
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    if-eqz v38, :cond_96

    const/4 v4, 0x1

    :goto_97
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2034
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2026
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v38    # "_result":Z
    .end local v41    # "cl":Ljava/lang/ClassLoader;
    :cond_95
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_96

    .line 2033
    .restart local v6    # "_arg1":Ljava/util/List;
    .restart local v38    # "_result":Z
    .restart local v41    # "cl":Ljava/lang/ClassLoader;
    :cond_96
    const/4 v4, 0x0

    goto :goto_97

    .line 2038
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v38    # "_result":Z
    .end local v41    # "cl":Ljava/lang/ClassLoader;
    :sswitch_7b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_97

    .line 2041
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2046
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_98
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v38

    .line 2047
    .local v38, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2049
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2044
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":Ljava/util/List;
    :cond_97
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_98

    .line 2053
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2054
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v38

    .line 2055
    .restart local v38    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2056
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2057
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2061
    .end local v38    # "_result":Ljava/util/List;
    :sswitch_7d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_98

    .line 2064
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2070
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2072
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_99

    const/4 v7, 0x1

    .line 2073
    .local v7, "_arg2":Z
    :goto_9a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v38

    .line 2074
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2075
    if-eqz v38, :cond_9a

    const/4 v4, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2076
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2067
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    .end local v38    # "_result":Z
    :cond_98
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    .line 2072
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_99
    const/4 v7, 0x0

    goto :goto_9a

    .line 2075
    .restart local v7    # "_arg2":Z
    .restart local v38    # "_result":Z
    :cond_9a
    const/4 v4, 0x0

    goto :goto_9b

    .line 2080
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    .end local v38    # "_result":Z
    :sswitch_7e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9b

    .line 2083
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2089
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    const/4 v6, 0x1

    .line 2091
    .local v6, "_arg1":Z
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2092
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDebuggingDisabled(Landroid/content/ComponentName;ZI)V

    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2086
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_9b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    .line 2089
    :cond_9c
    const/4 v6, 0x0

    goto :goto_9d

    .line 2098
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9d

    .line 2101
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2107
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2108
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDebuggingDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 2109
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    if-eqz v38, :cond_9e

    const/4 v4, 0x1

    :goto_9f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2111
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2104
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_9d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9e

    .line 2110
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_9e
    const/4 v4, 0x0

    goto :goto_9f

    .line 2115
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_80
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9f

    .line 2118
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2124
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a0

    const/4 v6, 0x1

    .line 2126
    .local v6, "_arg1":Z
    :goto_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2127
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenshotDisabled(Landroid/content/ComponentName;ZI)V

    .line 2128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2121
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_9f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a0

    .line 2124
    :cond_a0
    const/4 v6, 0x0

    goto :goto_a1

    .line 2133
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_81
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1

    .line 2136
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2142
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2143
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isScreenshotDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 2144
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    if-eqz v38, :cond_a2

    const/4 v4, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2139
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_a1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    .line 2145
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_a2
    const/4 v4, 0x0

    goto :goto_a3

    .line 2150
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_82
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a3

    .line 2153
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2159
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a4

    const/4 v6, 0x1

    .line 2161
    .local v6, "_arg1":Z
    :goto_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2162
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoSyncWhenRoamingDisabled(Landroid/content/ComponentName;ZI)V

    .line 2163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2164
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2156
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_a3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a4

    .line 2159
    :cond_a4
    const/4 v6, 0x0

    goto :goto_a5

    .line 2168
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_83
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a5

    .line 2171
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2177
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2178
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAutoSyncWhenRoamingDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 2179
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    if-eqz v38, :cond_a6

    const/4 v4, 0x1

    :goto_a7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2174
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_a5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a6

    .line 2180
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_a6
    const/4 v4, 0x0

    goto :goto_a7

    .line 2185
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_84
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    .line 2188
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2193
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkCallingUid(Landroid/content/ComponentName;)V

    .line 2194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2191
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_a7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a8

    .line 2199
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_85
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a8

    .line 2202
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2208
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2209
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v38

    .line 2210
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2211
    if-eqz v38, :cond_a9

    const/4 v4, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2205
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_a8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a9

    .line 2211
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_a9
    const/4 v4, 0x0

    goto :goto_aa

    .line 2216
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_86
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_aa

    .line 2219
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2225
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2226
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v38

    .line 2227
    .local v38, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    if-eqz v38, :cond_ab

    .line 2229
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2230
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2235
    :goto_ac
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2222
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Landroid/os/UserHandle;
    :cond_aa
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ab

    .line 2233
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Landroid/os/UserHandle;
    :cond_ab
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ac

    .line 2239
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Landroid/os/UserHandle;
    :sswitch_87
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ac

    .line 2242
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2248
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2250
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2252
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ad

    .line 2253
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 2259
    .local v8, "_arg3":Landroid/content/ComponentName;
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ae

    .line 2260
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .local v9, "_arg4":Landroid/os/Bundle;
    :goto_af
    move-object/from16 v4, p0

    .line 2265
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v38

    .line 2266
    .restart local v38    # "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2267
    if-eqz v38, :cond_af

    .line 2268
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2269
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2274
    :goto_b0
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2245
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v38    # "_result":Landroid/os/UserHandle;
    :cond_ac
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ad

    .line 2256
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_ad
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_ae

    .line 2263
    :cond_ae
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/os/Bundle;
    goto :goto_af

    .line 2272
    .restart local v38    # "_result":Landroid/os/UserHandle;
    :cond_af
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b0

    .line 2278
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v38    # "_result":Landroid/os/UserHandle;
    :sswitch_88
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b0

    .line 2281
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2287
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b1

    .line 2288
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 2293
    .local v6, "_arg1":Landroid/os/UserHandle;
    :goto_b2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v38

    .line 2294
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2295
    if-eqz v38, :cond_b2

    const/4 v4, 0x1

    :goto_b3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2284
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v38    # "_result":Z
    :cond_b0
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b1

    .line 2291
    :cond_b1
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/UserHandle;
    goto :goto_b2

    .line 2295
    .restart local v38    # "_result":Z
    :cond_b2
    const/4 v4, 0x0

    goto :goto_b3

    .line 2300
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v38    # "_result":Z
    :sswitch_89
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b3

    .line 2303
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2309
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4

    .line 2310
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 2315
    .restart local v6    # "_arg1":Landroid/os/UserHandle;
    :goto_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v38

    .line 2316
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    if-eqz v38, :cond_b5

    const/4 v4, 0x1

    :goto_b6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2306
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v38    # "_result":Z
    :cond_b3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    .line 2313
    :cond_b4
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/UserHandle;
    goto :goto_b5

    .line 2317
    .restart local v38    # "_result":Z
    :cond_b5
    const/4 v4, 0x0

    goto :goto_b6

    .line 2322
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v38    # "_result":Z
    :sswitch_8a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b6

    .line 2325
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2331
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2332
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2334
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2328
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_b6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b7

    .line 2338
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b7

    .line 2341
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2347
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b8

    .line 2348
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 2353
    .local v6, "_arg1":Landroid/content/Intent;
    :goto_b9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v38

    .line 2354
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2355
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2356
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2344
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v38    # "_result":I
    :cond_b7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b8

    .line 2351
    :cond_b8
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/Intent;
    goto :goto_b9

    .line 2360
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    :sswitch_8c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b9

    .line 2363
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2369
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2371
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ba

    const/4 v7, 0x1

    .line 2372
    .local v7, "_arg2":Z
    :goto_bb
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2374
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2366
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_b9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ba

    .line 2371
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_ba
    const/4 v7, 0x0

    goto :goto_bb

    .line 2378
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_8d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2379
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v38

    .line 2380
    .local v38, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2381
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2382
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2386
    .end local v38    # "_result":[Ljava/lang/String;
    :sswitch_8e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bb

    .line 2389
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2395
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bc

    const/4 v6, 0x1

    .line 2397
    .local v6, "_arg1":Z
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2398
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTextMessagingDisabled(Landroid/content/ComponentName;ZI)V

    .line 2399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2392
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_bb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bc

    .line 2395
    :cond_bc
    const/4 v6, 0x0

    goto :goto_bd

    .line 2404
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bd

    .line 2407
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2413
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2414
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isTextMessagingDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 2415
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    if-eqz v38, :cond_be

    const/4 v4, 0x1

    :goto_bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2410
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_bd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_be

    .line 2416
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_be
    const/4 v4, 0x0

    goto :goto_bf

    .line 2421
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_90
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2424
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v38

    .line 2425
    .local v38, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2426
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2427
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2431
    .end local v5    # "_arg0":I
    .end local v38    # "_result":[Ljava/lang/String;
    :sswitch_91
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bf

    .line 2434
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2440
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 2441
    .local v6, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 2442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2437
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    :cond_bf
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c0

    .line 2447
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_92
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c0

    .line 2450
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2455
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v38

    .line 2456
    .restart local v38    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2458
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2453
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":[Ljava/lang/String;
    :cond_c0
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c1

    .line 2462
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_93
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2465
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v38

    .line 2466
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2467
    if-eqz v38, :cond_c1

    const/4 v4, 0x1

    :goto_c2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2468
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2467
    :cond_c1
    const/4 v4, 0x0

    goto :goto_c2

    .line 2472
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_94
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c2

    .line 2475
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2481
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2483
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2484
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2486
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2478
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_c2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c3

    .line 2490
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_95
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c3

    .line 2493
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2499
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2501
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2502
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2504
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2496
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_c3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c4

    .line 2508
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_96
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c4

    .line 2511
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2517
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c5

    const/4 v6, 0x1

    .line 2518
    .local v6, "_arg1":Z
    :goto_c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 2519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2520
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2514
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_c4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c5

    .line 2517
    :cond_c5
    const/4 v6, 0x0

    goto :goto_c6

    .line 2524
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_97
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c6

    .line 2527
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2532
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v38

    .line 2533
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2534
    if-eqz v38, :cond_c7

    const/4 v4, 0x1

    :goto_c8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2535
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2530
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":Z
    :cond_c6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c7

    .line 2534
    .restart local v38    # "_result":Z
    :cond_c7
    const/4 v4, 0x0

    goto :goto_c8

    .line 2539
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":Z
    :sswitch_98
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c8

    const/4 v5, 0x1

    .line 2543
    .local v5, "_arg0":Z
    :goto_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2545
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2546
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 2547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2548
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2541
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_c8
    const/4 v5, 0x0

    goto :goto_c9

    .line 2552
    :sswitch_99
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c9

    .line 2555
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2561
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2563
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ca

    const/4 v7, 0x1

    .line 2564
    .local v7, "_arg2":Z
    :goto_cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2566
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2558
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_c9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ca

    .line 2563
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_ca
    const/4 v7, 0x0

    goto :goto_cb

    .line 2570
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_9a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cb

    .line 2573
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2579
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2580
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v38

    .line 2581
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2582
    if-eqz v38, :cond_cc

    const/4 v4, 0x1

    :goto_cd
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2576
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_cb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cc

    .line 2582
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_cc
    const/4 v4, 0x0

    goto :goto_cd

    .line 2587
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_9b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cd

    .line 2590
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2596
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ce

    const/4 v6, 0x1

    .line 2597
    .local v6, "_arg1":Z
    :goto_cf
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 2598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2593
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_cd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ce

    .line 2596
    :cond_ce
    const/4 v6, 0x0

    goto :goto_cf

    .line 2603
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cf

    .line 2606
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2611
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v38

    .line 2612
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    if-eqz v38, :cond_d0

    const/4 v4, 0x1

    :goto_d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2609
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":Z
    :cond_cf
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d0

    .line 2613
    .restart local v38    # "_result":Z
    :cond_d0
    const/4 v4, 0x0

    goto :goto_d1

    .line 2618
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v38    # "_result":Z
    :sswitch_9d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2621
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v38

    .line 2622
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2623
    if-eqz v38, :cond_d1

    const/4 v4, 0x1

    :goto_d2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2623
    :cond_d1
    const/4 v4, 0x0

    goto :goto_d2

    .line 2628
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Z
    :sswitch_9e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d2

    .line 2631
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2637
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    .line 2638
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2644
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 2646
    .local v22, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2647
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentFeaturesEnabled(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;I)V

    .line 2648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2634
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v8    # "_arg3":I
    .end local v22    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d3

    .line 2641
    :cond_d3
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d4

    .line 2653
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_9f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d4

    .line 2656
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2662
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d5

    .line 2663
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2669
    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2670
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentFeaturesEnabled(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v40

    .line 2671
    .local v40, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2672
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2673
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2659
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    .end local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d5

    .line 2666
    :cond_d5
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d6

    .line 2677
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_a0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d6

    .line 2680
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2686
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2687
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceRootingStatus(Landroid/content/ComponentName;I)I

    move-result v38

    .line 2688
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2689
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2683
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":I
    :cond_d6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d7

    .line 2694
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d7

    .line 2697
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2703
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2704
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v38

    .line 2705
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    if-eqz v38, :cond_d8

    const/4 v4, 0x1

    :goto_d9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2707
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2700
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_d7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d8

    .line 2706
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_d8
    const/4 v4, 0x0

    goto :goto_d9

    .line 2711
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_a2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d9

    .line 2714
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2720
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2721
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v38

    .line 2722
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2723
    if-eqz v38, :cond_da

    const/4 v4, 0x1

    :goto_db
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2724
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2717
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :cond_d9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_da

    .line 2723
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v38    # "_result":Z
    :cond_da
    const/4 v4, 0x0

    goto :goto_db

    .line 2728
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_a3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_db

    .line 2731
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2736
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_dc
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v40

    .line 2737
    .restart local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2738
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2739
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2734
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_db
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_dc

    .line 2743
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dc

    .line 2746
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2752
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2754
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dd

    const/4 v7, 0x1

    .line 2755
    .local v7, "_arg2":Z
    :goto_de
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;IZ)V

    .line 2756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2757
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2749
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Z
    :cond_dc
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_dd

    .line 2754
    .restart local v6    # "_arg1":I
    :cond_dd
    const/4 v7, 0x0

    goto :goto_de

    .line 2761
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :sswitch_a5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2762
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v38

    .line 2763
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2764
    if-eqz v38, :cond_de

    const/4 v4, 0x1

    :goto_df
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2764
    :cond_de
    const/4 v4, 0x0

    goto :goto_df

    .line 2769
    .end local v38    # "_result":Z
    :sswitch_a6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_df

    .line 2772
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2778
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2780
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2782
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2784
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e0

    const/4 v9, 0x1

    .line 2786
    .local v9, "_arg4":Z
    :goto_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2788
    .local v10, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 2790
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2792
    .local v12, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2794
    .local v13, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2796
    .local v14, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2798
    .local v15, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2800
    .local v16, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2802
    .local v17, "_arg12":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2804
    .local v18, "_arg13":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2806
    .local v19, "_arg14":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2808
    .local v20, "_arg15":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "_arg16":I
    move-object/from16 v4, p0

    .line 2809
    invoke-virtual/range {v4 .. v21}, Landroid/app/admin/IDevicePolicyManager$Stub;->addVpnConfiguration(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2775
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v15    # "_arg10":Ljava/lang/String;
    .end local v16    # "_arg11":Ljava/lang/String;
    .end local v17    # "_arg12":Ljava/lang/String;
    .end local v18    # "_arg13":Ljava/lang/String;
    .end local v19    # "_arg14":Ljava/lang/String;
    .end local v20    # "_arg15":Ljava/lang/String;
    .end local v21    # "_arg16":I
    :cond_df
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e0

    .line 2784
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    :cond_e0
    const/4 v9, 0x0

    goto :goto_e1

    .line 2815
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_a7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e1

    .line 2818
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2824
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2826
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2827
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeVpnConfiguration(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v38

    .line 2828
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2829
    if-eqz v38, :cond_e2

    const/4 v4, 0x1

    :goto_e3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2830
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2821
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :cond_e1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e2

    .line 2829
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v38    # "_result":Z
    :cond_e2
    const/4 v4, 0x0

    goto :goto_e3

    .line 2834
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_a8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2837
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getVpnConfigurationNames(I)Ljava/util/List;

    move-result-object v40

    .line 2838
    .restart local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2839
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2840
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2844
    .end local v5    # "_arg0":I
    .end local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e3

    .line 2847
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2853
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2855
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2857
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2859
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2861
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2863
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 2865
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2867
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2869
    .restart local v13    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e4

    const/4 v14, 0x1

    .line 2871
    .local v14, "_arg9":Z
    :goto_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2873
    .restart local v15    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2875
    .restart local v16    # "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e5

    const/16 v17, 0x1

    .line 2877
    .local v17, "_arg12":Z
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e6

    const/16 v18, 0x1

    .line 2879
    .local v18, "_arg13":Z
    :goto_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e7

    const/16 v19, 0x1

    .line 2881
    .local v19, "_arg14":Z
    :goto_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg15":I
    move-object/from16 v4, p0

    .line 2882
    invoke-virtual/range {v4 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEasAccount(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZI)V

    .line 2883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2884
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2850
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Z
    .end local v15    # "_arg10":Ljava/lang/String;
    .end local v16    # "_arg11":Ljava/lang/String;
    .end local v17    # "_arg12":Z
    .end local v18    # "_arg13":Z
    .end local v19    # "_arg14":Z
    .end local v20    # "_arg15":I
    :cond_e3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e4

    .line 2869
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v10    # "_arg5":Ljava/lang/String;
    .restart local v11    # "_arg6":Ljava/lang/String;
    .restart local v12    # "_arg7":I
    .restart local v13    # "_arg8":Ljava/lang/String;
    :cond_e4
    const/4 v14, 0x0

    goto :goto_e5

    .line 2875
    .restart local v14    # "_arg9":Z
    .restart local v15    # "_arg10":Ljava/lang/String;
    .restart local v16    # "_arg11":Ljava/lang/String;
    :cond_e5
    const/16 v17, 0x0

    goto :goto_e6

    .line 2877
    .restart local v17    # "_arg12":Z
    :cond_e6
    const/16 v18, 0x0

    goto :goto_e7

    .line 2879
    .restart local v18    # "_arg13":Z
    :cond_e7
    const/16 v19, 0x0

    goto :goto_e8

    .line 2888
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Z
    .end local v15    # "_arg10":Ljava/lang/String;
    .end local v16    # "_arg11":Ljava/lang/String;
    .end local v17    # "_arg12":Z
    .end local v18    # "_arg13":Z
    :sswitch_aa
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e8

    .line 2891
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2897
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2899
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2901
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2903
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2905
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2907
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 2909
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2911
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2913
    .restart local v13    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2915
    .local v14, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2917
    .restart local v15    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2919
    .local v16, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2921
    .local v17, "_arg12":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e9

    const/16 v18, 0x1

    .line 2923
    .restart local v18    # "_arg13":Z
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2925
    .local v19, "_arg14":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg15":I
    move-object/from16 v4, p0

    .line 2926
    invoke-virtual/range {v4 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEmailAccount(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    .line 2927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2928
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2894
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v15    # "_arg10":Ljava/lang/String;
    .end local v16    # "_arg11":I
    .end local v17    # "_arg12":Ljava/lang/String;
    .end local v18    # "_arg13":Z
    .end local v19    # "_arg14":Ljava/lang/String;
    .end local v20    # "_arg15":I
    :cond_e8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e9

    .line 2921
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v10    # "_arg5":Ljava/lang/String;
    .restart local v11    # "_arg6":Ljava/lang/String;
    .restart local v12    # "_arg7":I
    .restart local v13    # "_arg8":Ljava/lang/String;
    .restart local v14    # "_arg9":Ljava/lang/String;
    .restart local v15    # "_arg10":Ljava/lang/String;
    .restart local v16    # "_arg11":I
    .restart local v17    # "_arg12":Ljava/lang/String;
    :cond_e9
    const/16 v18, 0x0

    goto :goto_ea

    .line 2932
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v15    # "_arg10":Ljava/lang/String;
    .end local v16    # "_arg11":I
    .end local v17    # "_arg12":Ljava/lang/String;
    :sswitch_ab
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ea

    .line 2935
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2941
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2943
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2944
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeEmailAccount(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 2945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2946
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2938
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_ea
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_eb

    .line 2950
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ac
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2951
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEASDeviceId()Ljava/lang/String;

    move-result-object v38

    .line 2952
    .local v38, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2953
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2954
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2958
    .end local v38    # "_result":Ljava/lang/String;
    :sswitch_ad
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 2962
    .local v24, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 2964
    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v23, p0

    move/from16 v28, v7

    .line 2965
    invoke-virtual/range {v23 .. v28}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMobileDataUsage(JJI)J

    move-result-wide v38

    .line 2966
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2967
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2968
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2972
    .end local v7    # "_arg2":I
    .end local v24    # "_arg0":J
    .end local v26    # "_arg1":J
    .end local v38    # "_result":J
    :sswitch_ae
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_eb

    .line 2975
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2981
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ec

    const/4 v6, 0x1

    .line 2983
    .local v6, "_arg1":Z
    :goto_ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2984
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPopImapEmailDisabled(Landroid/content/ComponentName;ZI)V

    .line 2985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2986
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2978
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_eb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ec

    .line 2981
    :cond_ec
    const/4 v6, 0x0

    goto :goto_ed

    .line 2990
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_af
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ed

    .line 2993
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2999
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3000
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPopImapEmailDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3001
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    if-eqz v38, :cond_ee

    const/4 v4, 0x1

    :goto_ef
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3003
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2996
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_ed
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ee

    .line 3002
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_ee
    const/4 v4, 0x0

    goto :goto_ef

    .line 3007
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_b0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ef

    .line 3010
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3016
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f0

    const/4 v6, 0x1

    .line 3018
    .local v6, "_arg1":Z
    :goto_f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3019
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConsumerEmailDisabled(Landroid/content/ComponentName;ZI)V

    .line 3020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3021
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3013
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_ef
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f0

    .line 3016
    :cond_f0
    const/4 v6, 0x0

    goto :goto_f1

    .line 3025
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f1

    .line 3028
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3034
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3035
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isConsumerEmailDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3036
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3037
    if-eqz v38, :cond_f2

    const/4 v4, 0x1

    :goto_f3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3038
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3031
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_f1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f2

    .line 3037
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_f2
    const/4 v4, 0x0

    goto :goto_f3

    .line 3042
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_b2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f3

    .line 3045
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3051
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f4

    const/4 v6, 0x1

    .line 3053
    .local v6, "_arg1":Z
    :goto_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3054
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationDisabled(Landroid/content/ComponentName;ZI)V

    .line 3055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3048
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_f3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    .line 3051
    :cond_f4
    const/4 v6, 0x0

    goto :goto_f5

    .line 3060
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f5

    .line 3063
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3069
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3070
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocationDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3071
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3072
    if-eqz v38, :cond_f6

    const/4 v4, 0x1

    :goto_f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3066
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_f5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f6

    .line 3072
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_f6
    const/4 v4, 0x0

    goto :goto_f7

    .line 3077
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_b4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocationDisabledForCurrentUser()Z

    move-result v38

    .line 3079
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    if-eqz v38, :cond_f7

    const/4 v4, 0x1

    :goto_f8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3081
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3080
    :cond_f7
    const/4 v4, 0x0

    goto :goto_f8

    .line 3085
    .end local v38    # "_result":Z
    :sswitch_b5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f8

    .line 3088
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3094
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f9

    const/4 v6, 0x1

    .line 3096
    .local v6, "_arg1":Z
    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3097
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNonMarketAppsDisabled(Landroid/content/ComponentName;ZI)V

    .line 3098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3099
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3091
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_f8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f9

    .line 3094
    :cond_f9
    const/4 v6, 0x0

    goto :goto_fa

    .line 3103
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fa

    .line 3106
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3112
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3113
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNonMarketAppsDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3114
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3115
    if-eqz v38, :cond_fb

    const/4 v4, 0x1

    :goto_fc
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3116
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3109
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_fa
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fb

    .line 3115
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_fb
    const/4 v4, 0x0

    goto :goto_fc

    .line 3120
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_b7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fc

    .line 3123
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3129
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_fd
    sget-object v4, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    .line 3131
    .local v6, "_arg1":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3133
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3134
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPacketFilterRulesToList(Landroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;II)J

    move-result-wide v38

    .line 3135
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3137
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3126
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_result":J
    :cond_fc
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fd

    .line 3141
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fd

    .line 3144
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3150
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3151
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeAllPacketFilterRulesFromList(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 3152
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3154
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3147
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_fd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fe

    .line 3158
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fe

    .line 3161
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3167
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3169
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3170
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPacketFilterRules(Landroid/content/ComponentName;II)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    move-result-object v38

    .line 3171
    .local v38, "_result":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3172
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3173
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3164
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v38    # "_result":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    :cond_fe
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ff

    .line 3177
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ba
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ff

    .line 3180
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3186
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_100

    const/4 v6, 0x1

    .line 3188
    .local v6, "_arg1":Z
    :goto_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3189
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeactivationDisabled(Landroid/content/ComponentName;ZI)V

    .line 3190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3191
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3183
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_ff
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_100

    .line 3186
    :cond_100
    const/4 v6, 0x0

    goto :goto_101

    .line 3195
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_bb
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_101

    .line 3198
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3204
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3205
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeactivationDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3206
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    if-eqz v38, :cond_102

    const/4 v4, 0x1

    :goto_103
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3208
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3201
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_101
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_102

    .line 3207
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_102
    const/4 v4, 0x0

    goto :goto_103

    .line 3212
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_bc
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_103

    .line 3215
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3221
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_104

    const/4 v6, 0x1

    .line 3223
    .local v6, "_arg1":Z
    :goto_105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3224
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSafeModeDisabled(Landroid/content/ComponentName;ZI)V

    .line 3225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3226
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3218
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_103
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_104

    .line 3221
    :cond_104
    const/4 v6, 0x0

    goto :goto_105

    .line 3230
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_bd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_105

    .line 3233
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3239
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3240
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeModeDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3241
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3242
    if-eqz v38, :cond_106

    const/4 v4, 0x1

    :goto_107
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3243
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3236
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_105
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    .line 3242
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_106
    const/4 v4, 0x0

    goto :goto_107

    .line 3247
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_be
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_107

    .line 3250
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3256
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 3258
    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .line 3260
    .local v32, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 3262
    .local v34, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v28, p0

    move-object/from16 v29, v5

    move-wide/from16 v30, v26

    move/from16 v36, v9

    .line 3263
    invoke-virtual/range {v28 .. v36}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRoamingDataLimitActive(Landroid/content/ComponentName;JJJI)V

    .line 3264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3265
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3253
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    .end local v26    # "_arg1":J
    .end local v32    # "_arg2":J
    .end local v34    # "_arg3":J
    :cond_107
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_108

    .line 3269
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_bf
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_108

    .line 3272
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3278
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_109

    const/4 v6, 0x1

    .line 3280
    .local v6, "_arg1":Z
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .line 3282
    .restart local v32    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 3284
    .restart local v34    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v29, p0

    move-object/from16 v30, v5

    move/from16 v31, v6

    move/from16 v36, v9

    .line 3285
    invoke-virtual/range {v29 .. v36}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRoamingDataLimit(Landroid/content/ComponentName;ZJJI)I

    move-result v38

    .line 3286
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3287
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3275
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v9    # "_arg4":I
    .end local v32    # "_arg2":J
    .end local v34    # "_arg3":J
    .end local v38    # "_result":I
    :cond_108
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_109

    .line 3278
    :cond_109
    const/4 v6, 0x0

    goto :goto_10a

    .line 3292
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10a

    .line 3295
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3301
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3302
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimit(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 3303
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3305
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3298
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_10a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10b

    .line 3309
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10b

    .line 3312
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3318
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3319
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimitCycleStart(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 3320
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3321
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3322
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3315
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_10b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10c

    .line 3326
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10c

    .line 3329
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3335
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3336
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimitCycleDuration(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 3337
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3338
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3339
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3332
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_10c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10d

    .line 3343
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10d

    .line 3346
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3352
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 3354
    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3355
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRoamingDataLimitLastStart(Landroid/content/ComponentName;JI)V

    .line 3356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3357
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3349
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    .end local v26    # "_arg1":J
    :cond_10d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10e

    .line 3361
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10e

    .line 3364
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3370
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3371
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimitLastStart(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 3372
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3373
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3374
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3367
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_10e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10f

    .line 3378
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10f

    .line 3381
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3387
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 3389
    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3390
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRoamingDataUsageFromCycleStart(Landroid/content/ComponentName;JI)V

    .line 3391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3384
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    .end local v26    # "_arg1":J
    :cond_10f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_110

    .line 3396
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_110

    .line 3399
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3405
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3406
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataUsageFromCycleStart(Landroid/content/ComponentName;I)J

    move-result-wide v38

    .line 3407
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3408
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3409
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3402
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":J
    :cond_110
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_111

    .line 3413
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_111

    .line 3416
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3422
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3423
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRoamingDataLimitEnabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3424
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3425
    if-eqz v38, :cond_112

    const/4 v4, 0x1

    :goto_113
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3426
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3419
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_111
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_112

    .line 3425
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_112
    const/4 v4, 0x0

    goto :goto_113

    .line 3430
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_c8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecureTimeMillis()J

    move-result-wide v38

    .line 3432
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3433
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3438
    .end local v38    # "_result":J
    :sswitch_c9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3441
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimitAdmin(I)Landroid/content/ComponentName;

    move-result-object v38

    .line 3442
    .local v38, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3443
    if-eqz v38, :cond_113

    .line 3444
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3445
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3450
    :goto_114
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3448
    :cond_113
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_114

    .line 3454
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Landroid/content/ComponentName;
    :sswitch_ca
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_114

    .line 3457
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3463
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_115

    const/4 v6, 0x1

    .line 3465
    .local v6, "_arg1":Z
    :goto_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3466
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAddUserDisabled(Landroid/content/ComponentName;ZI)V

    .line 3467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3468
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3460
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_114
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_115

    .line 3463
    :cond_115
    const/4 v6, 0x0

    goto :goto_116

    .line 3472
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_cb
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_116

    .line 3475
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3481
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3482
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAddUserDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3483
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3484
    if-eqz v38, :cond_117

    const/4 v4, 0x1

    :goto_118
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3485
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3478
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_116
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_117

    .line 3484
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_117
    const/4 v4, 0x0

    goto :goto_118

    .line 3489
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_cc
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_118

    .line 3492
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3498
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3500
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3501
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldBeInstallationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v38

    .line 3502
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3503
    if-eqz v38, :cond_119

    const/4 v4, 0x1

    :goto_11a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3504
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3495
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :cond_118
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_119

    .line 3503
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v38    # "_result":Z
    :cond_119
    const/4 v4, 0x0

    goto :goto_11a

    .line 3508
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_cd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11a

    .line 3511
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3517
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3519
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3520
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldBeUninstallationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v38

    .line 3521
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3522
    if-eqz v38, :cond_11b

    const/4 v4, 0x1

    :goto_11c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3523
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3514
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :cond_11a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11b

    .line 3522
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v38    # "_result":Z
    :cond_11b
    const/4 v4, 0x0

    goto :goto_11c

    .line 3527
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v38    # "_result":Z
    :sswitch_ce
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11c

    .line 3530
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3536
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11d

    const/4 v6, 0x1

    .line 3538
    .local v6, "_arg1":Z
    :goto_11e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3539
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbMassStorageDisabled(Landroid/content/ComponentName;ZI)V

    .line 3540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3541
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3533
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_11c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11d

    .line 3536
    :cond_11d
    const/4 v6, 0x0

    goto :goto_11e

    .line 3545
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_cf
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11e

    .line 3548
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3554
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3555
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbMassStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3556
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3557
    if-eqz v38, :cond_11f

    const/4 v4, 0x1

    :goto_120
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3558
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3551
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_11e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11f

    .line 3557
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_11f
    const/4 v4, 0x0

    goto :goto_120

    .line 3562
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :sswitch_d0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_120

    .line 3565
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3571
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 3573
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3575
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_121

    const/4 v8, 0x1

    .line 3577
    .local v8, "_arg3":Z
    :goto_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 3578
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertFromDer(Landroid/content/ComponentName;[BIZI)I

    move-result v38

    .line 3579
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3580
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3581
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3568
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v38    # "_result":I
    :cond_120
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_121

    .line 3575
    .restart local v6    # "_arg1":[B
    .restart local v7    # "_arg2":I
    :cond_121
    const/4 v8, 0x0

    goto :goto_122

    .line 3585
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":I
    :sswitch_d1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_122

    .line 3588
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3594
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 3596
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3598
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3600
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3602
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_123

    const/4 v10, 0x1

    .line 3604
    .local v10, "_arg5":Z
    :goto_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg6":I
    move-object/from16 v4, p0

    .line 3605
    invoke-virtual/range {v4 .. v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertFromPkcs12(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;IZI)I

    move-result v38

    .line 3606
    .restart local v38    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3607
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3608
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3591
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":I
    .end local v38    # "_result":I
    :cond_122
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_123

    .line 3602
    .restart local v6    # "_arg1":[B
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    :cond_123
    const/4 v10, 0x0

    goto :goto_124

    .line 3612
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_d2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_124

    .line 3615
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3621
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3623
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3625
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3627
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 3628
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCertificate(Landroid/content/ComponentName;IILjava/lang/String;I)Z

    move-result v38

    .line 3629
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3630
    if-eqz v38, :cond_125

    const/4 v4, 0x1

    :goto_126
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3631
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3618
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v38    # "_result":Z
    :cond_124
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_125

    .line 3630
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    .restart local v38    # "_result":Z
    :cond_125
    const/4 v4, 0x0

    goto :goto_126

    .line 3635
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v38    # "_result":Z
    :sswitch_d3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3639
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3640
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->listCertificates(II)[Ljava/lang/String;

    move-result-object v38

    .line 3641
    .local v38, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3642
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3643
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3647
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v38    # "_result":[Ljava/lang/String;
    :sswitch_d4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_126

    .line 3650
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3656
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_127

    const/4 v6, 0x1

    .line 3658
    .local v6, "_arg1":Z
    :goto_128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3659
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoSyncDataDisabled(Landroid/content/ComponentName;ZI)V

    .line 3660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3653
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_126
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_127

    .line 3656
    :cond_127
    const/4 v6, 0x0

    goto :goto_128

    .line 3665
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_128

    .line 3668
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3674
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3675
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAutoSyncDataDisabled(Landroid/content/ComponentName;I)Z

    move-result v38

    .line 3676
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3677
    if-eqz v38, :cond_129

    const/4 v4, 0x1

    :goto_12a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3678
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3671
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v38    # "_result":Z
    :cond_128
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_129

    .line 3677
    .restart local v6    # "_arg1":I
    .restart local v38    # "_result":Z
    :cond_129
    const/4 v4, 0x0

    goto :goto_12a

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
