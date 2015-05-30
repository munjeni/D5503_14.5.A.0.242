.class Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;
.super Landroid/os/AsyncTask;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificateVerificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Ljava/util/List;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "screen"    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;",
            "Landroid/preference/PreferenceScreen;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mActivity:Landroid/app/Activity;

    .line 183
    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    .line 184
    iput-object p4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    .line 185
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    # invokes: Lcom/android/settings/nfc/PaymentSettings;->isListValid(Ljava/util/List;)Z
    invoke-static {v2, v3}, Lcom/android/settings/nfc/PaymentSettings;->access$100(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;

    move-result-object v2

    .line 199
    :goto_0
    return-object v2

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/settings/nfc/PaymentSettings;->access$202(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;)Ljava/util/List;

    .line 195
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 196
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;-><init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "mDummyPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;>;"
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 206
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    invoke-virtual {v5}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->getDrawableBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 211
    .local v0, "preference":Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    .end local v0    # "preference":Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    # invokes: Lcom/android/settings/nfc/PaymentSettings;->updateTexts(Landroid/preference/PreferenceScreen;)V
    invoke-static {v1, v2}, Lcom/android/settings/nfc/PaymentSettings;->access$300(Lcom/android/settings/nfc/PaymentSettings;Landroid/preference/PreferenceScreen;)V

    .line 222
    return-void
.end method
