.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
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
    .line 449
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->getSendingUserId()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 456
    .local v6, "userHandle":I
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 457
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v9, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDataRoamingSettingObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$002(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;

    .line 458
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDataRoamingSettingObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;
    invoke-static {v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 460
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v9, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUsbDebuggingSettingObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$102(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;

    .line 461
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUsbDebuggingSettingObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;
    invoke-static {v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->register(Landroid/content/Context;)V

    .line 463
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v9, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNonMarketAppsSettingObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$202(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;

    .line 464
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNonMarketAppsSettingObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;
    invoke-static {v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->register(Landroid/content/Context;)V

    .line 467
    if-nez v6, :cond_0

    .line 468
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadPacketFilterListLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 472
    :cond_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isRoamingDataLimitEnabled(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 473
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->startPollRoaming(Z)V
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 477
    :cond_1
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 481
    :cond_2
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    invoke-direct {v8, p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_3
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.security.STORAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 489
    :cond_4
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/content/Intent;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    :cond_5
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 492
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 511
    :cond_6
    :goto_0
    const-string v7, "com.sonymobile.enterprise.intent.action.PACKETFILTER_RESULT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 512
    const-string v7, "com.sonymobile.enterprise.extra.PACKET_FILTER_EXTRA_ID"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 513
    .local v2, "oid":J
    const-string v7, "com.sonymobile.enterprise.extra.PACKET_FILTER_EXTRA_RESULT"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 514
    .local v5, "result":I
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePacketFilterAsyncResult(JI)V
    invoke-static {v7, v2, v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;JI)V

    .line 516
    .end local v2    # "oid":J
    .end local v5    # "result":I
    :cond_7
    return-void

    .line 493
    :cond_8
    const-string v7, "android.intent.action.USER_STARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 498
    :cond_9
    const-string v7, "android.intent.action.USER_STARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 500
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v8

    .line 501
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 502
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_a
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(I)V
    invoke-static {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 506
    :cond_b
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 508
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateApplicationState(Ljava/lang/String;Z)V
    invoke-static {v7, v4, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    goto :goto_0
.end method
