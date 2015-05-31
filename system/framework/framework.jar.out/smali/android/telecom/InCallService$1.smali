.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 73
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v8}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    if-nez v8, :cond_0

    iget v8, p1, Landroid/os/Message;->what:I

    if-eq v8, v6, :cond_0

    .line 125
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 79
    :sswitch_0
    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v8, Landroid/telecom/Phone;

    new-instance v9, Landroid/telecom/InCallAdapter;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v9, v6}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    invoke-direct {v8, v9}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    # setter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v7, v8}, Landroid/telecom/InCallService;->access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    .line 80
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v7}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_0

    .line 83
    :sswitch_1
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v6}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/ParcelableCall;

    invoke-virtual {v7, v6}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    .line 86
    :sswitch_2
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v6}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/ParcelableCall;

    invoke-virtual {v7, v6}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    .line 89
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 91
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "callId":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 93
    .local v4, "remaining":Ljava/lang/String;
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v6}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "remaining":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 100
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v6}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/AudioState;

    invoke-virtual {v7, v6}, Landroid/telecom/Phone;->internalAudioStateChanged(Landroid/telecom/AudioState;)V

    goto :goto_0

    .line 103
    :sswitch_5
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v8}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v6, :cond_1

    :goto_1
    invoke-virtual {v8, v6}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 106
    :sswitch_6
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v8}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v6, :cond_2

    :goto_2
    invoke-virtual {v8, v6}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_0

    :cond_2
    move v6, v7

    goto :goto_2

    .line 109
    :sswitch_7
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v6}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    new-instance v8, Landroid/telecom/SomcInCallAdapterExtend;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;

    invoke-direct {v8, v6}, Landroid/telecom/SomcInCallAdapterExtend;-><init>(Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;)V

    invoke-virtual {v7, v8}, Landroid/telecom/Phone;->setSomcInCallAdapterExtend(Landroid/telecom/SomcInCallAdapterExtend;)V

    goto/16 :goto_0

    .line 113
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 115
    .local v1, "amModeArgs":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "amMode":I
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 117
    .local v5, "subParameter":Ljava/lang/String;
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v6}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/telecom/Phone;->internalAmModeChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v0    # "amMode":I
    .end local v5    # "subParameter":Ljava/lang/String;
    :catchall_1
    move-exception v6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
    .end sparse-switch
.end method
