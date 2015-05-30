.class Lcom/android/settings/sim/MultiSimEnablerPreference$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 409
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 412
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    const-string v3, "_id"

    const-wide/16 v6, -0x3e8

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 416
    .local v4, "subId":J
    const-string v3, "columnName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "column":Ljava/lang/String;
    const-string v3, "intContent"

    const/4 v6, 0x0

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, "intValue":I
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTION_SUBINFO_CONTENT_CHANGE on subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mCmdInProgress:Z
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$500(Lcom/android/settings/sim/MultiSimEnablerPreference;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "sub_state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubInfoRecord;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$600(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    iget-wide v6, v3, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    .line 422
    if-ne v2, v8, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$700(Lcom/android/settings/sim/MultiSimEnablerPreference;)Z

    move-result v3

    if-eq v3, v8, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$700(Lcom/android/settings/sim/MultiSimEnablerPreference;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 424
    :cond_1
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->processSetUiccDone()V
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$800(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    .line 428
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "intValue":I
    .end local v4    # "subId":J
    :cond_2
    return-void
.end method
