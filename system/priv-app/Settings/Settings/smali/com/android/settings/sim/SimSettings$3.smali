.class Lcom/android/settings/sim/SimSettings$3;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$simPref:Lcom/android/settings/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 9
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    .line 495
    if-nez p2, :cond_1

    move-wide v0, v2

    .line 497
    .end local p2    # "value":Ljava/lang/Object;
    .local v0, "subId":J
    :goto_0
    const-string v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling setCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sim_cellular_data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 500
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    .line 523
    :cond_0
    :goto_1
    return v7

    .line 495
    .end local v0    # "subId":J
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, Landroid/telephony/SubInfoRecord;

    .end local p2    # "value":Ljava/lang/Object;
    iget-wide v0, p2, Landroid/telephony/SubInfoRecord;->subId:J

    goto :goto_0

    .line 502
    .restart local v0    # "subId":J
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sim_calls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 505
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    goto :goto_1

    .line 507
    :cond_3
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 508
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 509
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_1

    .line 512
    :cond_4
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sim_sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 513
    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 514
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    goto :goto_1

    .line 516
    :cond_5
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 517
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 518
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(J)V

    goto :goto_1
.end method
