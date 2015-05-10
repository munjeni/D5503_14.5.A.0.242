.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "action":Ljava/lang/String;
    const-string v20, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isWifiDisabled(Landroid/content/ComponentName;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 530
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 532
    .local v19, "wifiManager":Landroid/net/wifi/WifiManager;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 535
    .end local v19    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 538
    const-string v20, "mount"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    .line 539
    .local v16, "service":Landroid/os/IBinder;
    if-eqz v16, :cond_7

    .line 540
    invoke-static/range {v16 .. v16}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v12

    .line 541
    .local v12, "mountService":Landroid/os/storage/IMountService;
    const-string v20, "SECONDARY_STORAGE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 542
    .local v15, "sdcardPath":Ljava/lang/String;
    const-string v20, "EXTERNAL_STORAGE_USB"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 543
    .local v17, "usbStoragePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 545
    .local v10, "identity":J
    const/16 v20, 0x1

    const/16 v21, 0x0

    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v15, v0, v1}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 546
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v12, v0, v1, v2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    .end local v10    # "identity":J
    .end local v12    # "mountService":Landroid/os/storage/IMountService;
    .end local v15    # "sdcardPath":Ljava/lang/String;
    .end local v16    # "service":Landroid/os/IBinder;
    .end local v17    # "usbStoragePath":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getBluetoothPermission(Landroid/content/ComponentName;I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 560
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 561
    .local v6, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 564
    .end local v6    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isNfcDisabled(Landroid/content/ComponentName;I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 566
    const-string v20, "nfc"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 567
    .local v5, "b":Landroid/os/IBinder;
    const/16 v16, 0x0

    .line 568
    .local v16, "service":Landroid/nfc/INfcAdapter;
    if-eqz v5, :cond_3

    .line 569
    invoke-static {v5}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v16

    .line 572
    :cond_3
    if-eqz v16, :cond_4

    const/16 v20, 0x1

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v20

    if-nez v20, :cond_5

    .line 573
    :cond_4
    const-string v20, "DevicePolicyManagerService"

    const-string v21, "Unable to disable enabled NFC."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 580
    .end local v5    # "b":Landroid/os/IBinder;
    .end local v16    # "service":Landroid/nfc/INfcAdapter;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAutoSyncDataDisabled(Landroid/content/ComponentName;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 582
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 586
    :cond_6
    monitor-enter p0

    .line 587
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    .line 588
    .local v18, "userHandle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mCurrentUserHandle:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v13

    .line 590
    .local v13, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v0, v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 592
    iget-object v0, v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 593
    .local v7, "client":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mCurrentUserHandle:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAllPacketFilterRulesFromListImpl(Landroid/content/ComponentName;II)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 590
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 547
    .end local v7    # "client":Landroid/content/ComponentName;
    .end local v9    # "i":I
    .end local v13    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v18    # "userHandle":I
    .restart local v10    # "identity":J
    .restart local v12    # "mountService":Landroid/os/storage/IMountService;
    .restart local v15    # "sdcardPath":Ljava/lang/String;
    .local v16, "service":Landroid/os/IBinder;
    .restart local v17    # "usbStoragePath":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 548
    .local v14, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v20, "DevicePolicyManagerService"

    const-string v21, "Failed to unmount external SD card/USB storage"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v14    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v20

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 553
    .end local v10    # "identity":J
    .end local v12    # "mountService":Landroid/os/storage/IMountService;
    .end local v15    # "sdcardPath":Ljava/lang/String;
    .end local v17    # "usbStoragePath":Ljava/lang/String;
    :cond_7
    const-string v20, "DevicePolicyManagerService"

    const-string v21, "Failed to unmount external SD card/USB storage"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 575
    .restart local v5    # "b":Landroid/os/IBinder;
    .local v16, "service":Landroid/nfc/INfcAdapter;
    :catch_1
    move-exception v8

    .line 576
    .local v8, "e":Landroid/os/RemoteException;
    const-string v20, "DevicePolicyManagerService"

    const-string v21, "Failure talking with NFC manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 600
    .end local v5    # "b":Landroid/os/IBinder;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v16    # "service":Landroid/nfc/INfcAdapter;
    .restart local v9    # "i":I
    .restart local v13    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v18    # "userHandle":I
    :cond_8
    :try_start_4
    new-instance v7, Landroid/content/ComponentName;

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .restart local v7    # "client":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAllPacketFilterRulesFromListImpl(Landroid/content/ComponentName;II)J

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v21

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadPacketFilterListLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mCurrentUserHandle:I
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1002(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)I

    .line 606
    monitor-exit p0

    .line 608
    .end local v7    # "client":Landroid/content/ComponentName;
    .end local v9    # "i":I
    .end local v13    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v18    # "userHandle":I
    :cond_9
    return-void

    .line 606
    :catchall_1
    move-exception v20

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v20
.end method
