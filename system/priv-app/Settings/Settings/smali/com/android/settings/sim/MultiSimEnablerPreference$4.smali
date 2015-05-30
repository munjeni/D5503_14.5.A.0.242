.class Lcom/android/settings/sim/MultiSimEnablerPreference$4;
.super Landroid/os/Handler;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    const-string v1, "EVT_SHOW_RESULT_DLG"

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 438
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x3

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->showAlertDialog(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$900(Lcom/android/settings/sim/MultiSimEnablerPreference;II)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$1000(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    const-string v1, "EVT_SHOW_PROGRESS_DLG"

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->showProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$1100(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    goto :goto_0

    .line 446
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    const-string v1, "EVT_PROGRESS_DLG_TIME_OUT"

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$1200()Landroid/app/ProgressDialog;

    move-result-object v1

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$1300(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
