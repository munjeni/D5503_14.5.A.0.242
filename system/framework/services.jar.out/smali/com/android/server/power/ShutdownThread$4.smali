.class Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$4;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$4;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 506
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 508
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v7, "bluetooth_manager"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 513
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_0
    move v1, v5

    .line 514
    .local v1, "bluetoothOff":Z
    :goto_0
    if-nez v1, :cond_1

    .line 515
    const-string v7, "ShutdownThread"

    const-string v8, "Disabling Bluetooth..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_2
    move v4, v5

    .line 525
    .local v4, "radioOff":Z
    :goto_2
    if-nez v4, :cond_3

    .line 526
    const-string v7, "ShutdownThread"

    const-string v8, "Turning off cellular radios..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    :cond_3
    :goto_3
    const-string v7, "ShutdownThread"

    const-string v8, "Waiting for Bluetooth and Radio..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$4;->val$endTime:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 537
    if-nez v1, :cond_4

    .line 539
    :try_start_2
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-nez v7, :cond_a

    move v1, v5

    .line 544
    :goto_5
    if-eqz v1, :cond_4

    .line 545
    const-string v7, "ShutdownThread"

    const-string v8, "Bluetooth turned off."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_4
    if-nez v4, :cond_5

    .line 550
    :try_start_3
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-nez v7, :cond_b

    move v4, v5

    .line 555
    :goto_6
    if-eqz v4, :cond_5

    .line 556
    const-string v7, "ShutdownThread"

    const-string v8, "Radio turned off."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_5
    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    .line 561
    const-string v7, "ShutdownThread"

    const-string v8, "Radio and Bluetooth shutdown complete."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$4;->val$done:[Z

    aput-boolean v5, v7, v6

    .line 567
    :cond_6
    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$4;->val$done:[Z

    aget-boolean v6, v7, v6

    if-nez v6, :cond_7

    .line 568
    const-string v6, "ShutdownThread"

    const-string v7, "Timed out waiting for Radio and Bluetooth shutdown."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_7
    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 571
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownThread;->actionDone()V

    .line 572
    return-void

    .end local v1    # "bluetoothOff":Z
    .end local v4    # "radioOff":Z
    :cond_8
    move v1, v6

    .line 513
    goto/16 :goto_0

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during bluetooth shutdown"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_1

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_9
    move v4, v6

    .line 524
    goto :goto_2

    .line 529
    :catch_1
    move-exception v2

    .line 530
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during radio shutdown"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v4, 0x1

    .restart local v4    # "radioOff":Z
    goto :goto_3

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_a
    move v1, v6

    .line 539
    goto :goto_5

    .line 540
    :catch_2
    move-exception v2

    .line 541
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during bluetooth shutdown"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const/4 v1, 0x1

    goto :goto_5

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_b
    move v4, v6

    .line 550
    goto :goto_6

    .line 551
    :catch_3
    move-exception v2

    .line 552
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during radio shutdown"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    const/4 v4, 0x1

    goto :goto_6

    .line 565
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_c
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_4
.end method
