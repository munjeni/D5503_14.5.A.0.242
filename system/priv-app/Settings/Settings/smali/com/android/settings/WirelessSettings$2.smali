.class final Lcom/android/settings/WirelessSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "toggle_nsd"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v12, "user"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 527
    .local v11, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_e

    const/4 v5, 0x1

    .line 528
    .local v5, "isSecondaryUser":Z
    :goto_0
    if-nez v5, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1120055

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v6, 0x1

    .line 530
    .local v6, "isWimaxEnabled":Z
    :goto_1
    if-eqz v6, :cond_0

    const-string v12, "no_config_mobile_networks"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 532
    :cond_0
    const-string v12, "wimax_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_1
    if-eqz v5, :cond_2

    .line 536
    const-string v12, "vpn_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_2
    const-string v12, "nfc"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/NfcManager;

    .line 541
    .local v7, "manager":Landroid/nfc/NfcManager;
    if-eqz v7, :cond_3

    .line 542
    invoke-virtual {v7}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 543
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_3

    .line 544
    const-string v12, "toggle_nfc"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v12, "android_beam_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 551
    :cond_4
    const-string v12, "mobile_network_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    const-string v12, "manage_mobile_plan"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 559
    .local v4, "isMobilePlanEnabled":Z
    if-nez v4, :cond_6

    .line 560
    const-string v12, "manage_mobile_plan"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_6
    const-string v12, "phone"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 566
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v12

    if-nez v12, :cond_7

    .line 567
    const-string v12, "sms_application"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 573
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string v12, "android.hardware.type.television"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 574
    const-string v12, "toggle_airplane"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_8
    const-string v12, "proxy_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    const-string v12, "connectivity"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 583
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v5, :cond_9

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_a

    .line 584
    :cond_9
    const-string v12, "tether_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x112005e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 591
    .local v3, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v3, :cond_b

    .line 592
    :try_start_0
    const-string v12, "com.android.cellbroadcastreceiver"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    .line 594
    const/4 v3, 0x0

    .line 600
    :cond_b
    :goto_2
    if-nez v5, :cond_c

    if-nez v3, :cond_d

    .line 601
    :cond_c
    const-string v12, "cell_broadcast_settings"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_d
    return-object v9

    .line 527
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    .end local v4    # "isMobilePlanEnabled":Z
    .end local v5    # "isSecondaryUser":Z
    .end local v6    # "isWimaxEnabled":Z
    .end local v7    # "manager":Landroid/nfc/NfcManager;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 528
    .restart local v5    # "isSecondaryUser":Z
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 597
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v3    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v4    # "isMobilePlanEnabled":Z
    .restart local v6    # "isWimaxEnabled":Z
    .restart local v7    # "manager":Landroid/nfc/NfcManager;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 598
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 516
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f05006b

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 517
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
