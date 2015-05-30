.class Lcom/android/settings/sim/SimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "action":Ljava/lang/String;
    const-string v6, "SimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;)V

    .line 168
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    .line 169
    .local v2, "preferredDataSubscription":J
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # setter for: Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J
    invoke-static {v6, v2, v3}, Lcom/android/settings/sim/SimSettings;->access$102(Lcom/android/settings/sim/SimSettings;J)J

    .line 171
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080aa4

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "status":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 191
    .end local v2    # "preferredDataSubscription":J
    .end local v5    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    :cond_2
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 178
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # setter for: Lcom/android/settings/sim/SimSettings;->mNumSims:I
    invoke-static {v6, v10}, Lcom/android/settings/sim/SimSettings;->access$302(Lcom/android/settings/sim/SimSettings;I)I

    .line 179
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/settings/sim/SimSettings;->access$402(Lcom/android/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Lcom/android/settings/sim/SimSettings;->mNumSlots:I
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$500()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 181
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;
    invoke-static {v6, v1}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Landroid/telephony/SubInfoRecord;

    move-result-object v4

    .line 183
    .local v4, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v4, :cond_3

    iget v6, v4, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v6, v9, :cond_3

    .line 184
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # operator++ for: Lcom/android/settings/sim/SimSettings;->mNumSims:I
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$308(Lcom/android/settings/sim/SimSettings;)I

    .line 185
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    .end local v4    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$700(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_0
.end method
