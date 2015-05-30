.class public Lcom/android/settings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUB 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUB 3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v8, "Creating activity"

    invoke-static {v8}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 70
    const v8, 0x7f0400aa

    invoke-virtual {p0, v8}, Lcom/android/settings/SelectSubscription;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    .line 74
    .local v6, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 75
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "PACKAGE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "pkg":Ljava/lang/String;
    const-string v8, "TARGET_CLASS"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "targetClass":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 80
    .local v3, "numPhones":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 81
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v5

    .line 83
    .local v5, "sir":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubInfoRecord;

    iget-object v0, v8, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 86
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating SelectSub activity = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " displayName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 89
    iget-object v8, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v8, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 91
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 94
    invoke-static {v2, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 95
    iget-object v8, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v8, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 96
    iget-object v8, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v0, v8, v1

    goto :goto_1

    .line 98
    .end local v5    # "sir":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 103
    return-void
.end method
