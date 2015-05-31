.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 784
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 785
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 789
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Message: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 792
    :sswitch_0
    const-string v23, "BluetoothManagerService"

    const-string v24, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 795
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 796
    const-string v23, "BluetoothManagerService"

    const-string v25, "Binding to service to get name and address"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 800
    .local v20, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const-wide/16 v26, 0xbb8

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 801
    new-instance v10, Landroid/content/Intent;

    const-class v23, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .local v10, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    const/16 v26, 0x41

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 821
    .end local v10    # "i":Landroid/content/Intent;
    .end local v20    # "timeoutMsg":Landroid/os/Message;
    :goto_1
    monitor-exit v24

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 807
    .restart local v10    # "i":Landroid/content/Intent;
    .restart local v20    # "timeoutMsg":Landroid/os/Message;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1502(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_1

    .line 811
    .end local v10    # "i":Landroid/content/Intent;
    .end local v20    # "timeoutMsg":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0xc9

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 812
    .local v18, "saveMsg":Landroid/os/Message;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 818
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 825
    .end local v18    # "saveMsg":Landroid/os/Message;
    :sswitch_1
    const/16 v21, 0x0

    .line 826
    .local v21, "unbind":Z
    const-string v23, "BluetoothManagerService"

    const-string v24, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 828
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v23

    if-eqz v23, :cond_4

    .line 830
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 835
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    .line 837
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 838
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v23

    if-eqz v23, :cond_b

    .line 839
    const/4 v11, 0x0

    .line 840
    .local v11, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 842
    .local v5, "address":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v11

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v5

    .line 848
    :goto_3
    if-eqz v11, :cond_9

    if-eqz v5, :cond_9

    .line 849
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v11, v5}, Lcom/android/server/BluetoothManagerService;->access$100(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 851
    const/16 v21, 0x1

    .line 866
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v23

    if-nez v23, :cond_7

    .line 868
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 880
    .end local v5    # "address":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_7
    :goto_5
    :try_start_9
    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    .line 882
    :cond_8
    if-eqz v21, :cond_0

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto/16 :goto_0

    .line 831
    :catch_0
    move-exception v7

    .line 832
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v23, "BluetoothManagerService"

    const-string v25, "Unable to call enable()"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 835
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v23

    .line 844
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 845
    .local v14, "re":Landroid/os/RemoteException;
    :try_start_b
    const-string v23, "BluetoothManagerService"

    const-string v25, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 880
    .end local v5    # "address":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "re":Landroid/os/RemoteException;
    :catchall_2
    move-exception v23

    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v23

    .line 854
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_9
    :try_start_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0xc9

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 856
    .local v17, "retryMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 857
    const-string v23, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Retrying name/address remote retrieval and save.....Retry count ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 860
    .end local v17    # "retryMsg":Landroid/os/Message;
    :cond_a
    const-string v23, "BluetoothManagerService"

    const-string v25, "Maximum name/address remote retrieval retry exceeded"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 862
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 869
    :catch_2
    move-exception v7

    .line 870
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v23, "BluetoothManagerService"

    const-string v25, "Unable to call disable()"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 877
    .end local v5    # "address":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v11    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0xc8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 878
    .local v9, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_5

    .line 889
    .end local v9    # "getMsg":Landroid/os/Message;
    .end local v21    # "unbind":Z
    :sswitch_2
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_ENABLE: mBluetooth = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x2a

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v23

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :cond_c
    const/16 v23, 0x0

    goto :goto_6

    .line 897
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x2a

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_d

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    goto/16 :goto_0

    .line 904
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 911
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 912
    .local v6, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    .line 913
    .local v4, "added":Z
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Added callback: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v6, :cond_e

    const-string v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_e
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 919
    .end local v4    # "added":Z
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 920
    .local v6, "callback":Landroid/bluetooth/IQBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    .line 921
    .restart local v4    # "added":Z
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Q Added callback: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v6, :cond_f

    const-string v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IQBluetoothManagerCallback;
    :cond_f
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 926
    .end local v4    # "added":Z
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 927
    .local v6, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v15

    .line 928
    .local v15, "removed":Z
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Removed callback: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v6, :cond_10

    const-string v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_10
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 933
    .end local v15    # "removed":Z
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 934
    .local v6, "callback":Landroid/bluetooth/IQBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v15

    .line 935
    .restart local v15    # "removed":Z
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Q Removed callback: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v6, :cond_11

    const-string v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IQBluetoothManagerCallback;
    :cond_11
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 940
    .end local v15    # "removed":Z
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 941
    .local v6, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v6, :cond_0

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 948
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 949
    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v6, :cond_0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 956
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_a
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mIsBluetoothServiceConnected:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2302(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 960
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/IBinder;

    .line 961
    .local v19, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 962
    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 964
    monitor-exit v24

    goto/16 :goto_0

    .line 1023
    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v23

    .line 967
    :cond_12
    :try_start_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IQBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IQBluetooth;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;

    .line 969
    const-string v23, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mQBluetooth: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IQBluetooth;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceUpCallback()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)V

    .line 971
    monitor-exit v24

    goto/16 :goto_0

    .line 975
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1502(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 981
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v23

    const-string v25, "bluetooth_hci_log"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    const/4 v8, 0x1

    .line 983
    .local v8, "enableHciSnoopLog":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v23

    if-nez v23, :cond_14

    .line 984
    const-string v23, "BluetoothManagerService"

    const-string v25, "IBluetooth.configHciSnoopLog return false"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 990
    .end local v8    # "enableHciSnoopLog":Z
    :cond_14
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v25, 0xc8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 993
    .restart local v9    # "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_16

    monitor-exit v24

    goto/16 :goto_0

    .line 981
    .end local v9    # "getMsg":Landroid/os/Message;
    :cond_15
    const/4 v8, 0x0

    goto :goto_7

    .line 986
    :catch_3
    move-exception v7

    .line 987
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v23, "BluetoothManagerService"

    const-string v25, "Unable to call configHciSnoopLog"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 997
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1000
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1005
    :goto_9
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1009
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_18

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v23

    if-nez v23, :cond_17

    .line 1011
    const-string v23, "BluetoothManagerService"

    const-string v25, "IBluetooth.enable() returned false"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1023
    :cond_17
    :goto_a
    :try_start_14
    monitor-exit v24
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    goto/16 :goto_0

    .line 1001
    :catch_4
    move-exception v14

    .line 1002
    .restart local v14    # "re":Landroid/os/RemoteException;
    :try_start_15
    const-string v23, "BluetoothManagerService"

    const-string v25, "Unable to register BluetoothCallback"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_9

    .line 1016
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_18
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v23

    if-nez v23, :cond_17

    .line 1017
    const-string v23, "BluetoothManagerService"

    const-string v25, "IBluetooth.enableNoAutoConnect() returned false"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_a

    .line 1020
    :catch_5
    move-exception v7

    .line 1021
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v23, "BluetoothManagerService"

    const-string v25, "Unable to call enable()"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_a

    .line 1033
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v19    # "service":Landroid/os/IBinder;
    :sswitch_b
    const-string v23, "BluetoothManagerService"

    const-string v24, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 1035
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1502(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1036
    monitor-exit v24

    goto/16 :goto_0

    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    throw v23

    .line 1041
    :sswitch_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1042
    .local v13, "prevState":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1043
    .local v12, "newState":I
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", newState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;I)I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v13, v12}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1048
    const/16 v23, 0xb

    move/from16 v0, v23

    if-ne v13, v0, :cond_19

    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v12, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;)V

    .line 1053
    :cond_19
    const/16 v23, 0xc

    move/from16 v0, v23

    if-ne v12, v0, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    if-eqz v23, :cond_0

    .line 1056
    const-string v23, "BluetoothManagerService"

    const-string v24, "bluetooth is recovered from error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3402(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1064
    .end local v12    # "newState":I
    .end local v13    # "prevState":I
    :sswitch_d
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mIsBluetoothServiceConnected:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2302(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 1069
    :try_start_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-nez v23, :cond_1a

    monitor-exit v24

    goto/16 :goto_0

    .line 1083
    :catchall_5
    move-exception v23

    monitor-exit v24
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v23

    .line 1072
    :cond_1a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1083
    monitor-exit v24
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x2a

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1090
    .local v16, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const-wide/16 v24, 0xc8

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1094
    .end local v16    # "restartMsg":Landroid/os/Message;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceDownCallback()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 1102
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xc

    const/16 v25, 0xd

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xd

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;I)I

    .line 1106
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xd

    const/16 v25, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1111
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x3c

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1073
    :cond_1f
    :try_start_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 1075
    monitor-exit v24

    goto/16 :goto_0

    .line 1076
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mQBluetooth:Landroid/bluetooth/IQBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;

    .line 1078
    monitor-exit v24

    goto/16 :goto_0

    .line 1080
    :cond_21
    const-string v23, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Bad msg.arg1: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    monitor-exit v24
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto/16 :goto_0

    .line 1118
    :sswitch_e
    const-string v23, "BluetoothManagerService"

    const-string v24, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1130
    :sswitch_f
    const-string v23, "BluetoothManagerService"

    const-string v24, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 1132
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1133
    monitor-exit v24

    goto/16 :goto_0

    :catchall_6
    move-exception v23

    monitor-exit v24
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v23

    .line 1140
    :sswitch_10
    const-string v23, "BluetoothManagerService"

    const-string v24, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x12c

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-eqz v23, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_27

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 1146
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    move-result-object v23

    if-eqz v23, :cond_22

    .line 1149
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1154
    :cond_22
    :goto_b
    :try_start_1f
    monitor-exit v24
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;I)I

    .line 1161
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xb

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xb

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;I)I

    .line 1166
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1e

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xc

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1173
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xc

    const/16 v25, 0xd

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1e

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZI)Z
    invoke-static/range {v23 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZI)Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xd

    const/16 v25, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;II)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendQBluetoothServiceDownCallback()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    monitor-enter v24

    .line 1185
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_26

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$3800(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1190
    :cond_26
    monitor-exit v24
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1191
    const-wide/16 v24, 0x64

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x3c

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;I)I

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1150
    :catch_6
    move-exception v14

    .line 1151
    .restart local v14    # "re":Landroid/os/RemoteException;
    :try_start_21
    const-string v23, "BluetoothManagerService"

    const-string v25, "Unable to unregister"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1154
    .end local v14    # "re":Landroid/os/RemoteException;
    :catchall_7
    move-exception v23

    monitor-exit v24
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    throw v23

    .line 1190
    :catchall_8
    move-exception v23

    :try_start_22
    monitor-exit v24
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    throw v23

    .line 1197
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    if-nez v23, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 1198
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const/16 v24, 0x12c

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1199
    .local v22, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v23

    const-wide/16 v24, 0xc8

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1204
    const-string v23, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x17 -> :sswitch_7
        0x1e -> :sswitch_8
        0x1f -> :sswitch_9
        0x28 -> :sswitch_a
        0x29 -> :sswitch_d
        0x2a -> :sswitch_e
        0x3c -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_f
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_10
    .end sparse-switch
.end method
