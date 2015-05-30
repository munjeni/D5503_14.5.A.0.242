.class Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsAuthorizedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;->this$1:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;Lcom/android/settings/nfc/PaymentSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;
    .param p2, "x1"    # Lcom/android/settings/nfc/PaymentSettings$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;-><init>(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;->this$1:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    const-string v2, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_RESULT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mHasCertificate:Z
    invoke-static {v1, v2}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->access$502(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;Z)Z

    .line 347
    const-string v1, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;->this$1:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    # getter for: Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthorizationCondition:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->access$600(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 354
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
