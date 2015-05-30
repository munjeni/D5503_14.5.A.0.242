.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;,
        Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;,
        Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;
    }
.end annotation


# instance fields
.field private mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

.field private mDummyPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 429
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 458
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/PaymentSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->isListValid(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/PaymentSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/PaymentSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/PaymentSettings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/PaymentSettings;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->updateTexts(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/PaymentSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isListValid(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v2

    .line 145
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 141
    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateTexts(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e00f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, "emptyText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e00f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 151
    .local v4, "learnMore":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e00f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    .local v0, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 161
    .local v2, "foreground":Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v5}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v3

    .line 162
    .local v3, "foregroundMode":Z
    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 163
    const v5, 0x7f08099b

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 388
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 393
    .end local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 91
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 413
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "payment_service_search_uri"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "searchUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    const v4, 0x7f08099e

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 418
    .local v1, "menuItem":Landroid/view/MenuItem;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 419
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 422
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    new-instance v0, Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "backend":Lcom/sonymobile/settings/nfc/HceBackend;
    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->showSelectServiceMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    const v4, 0x7f0800d5

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 425
    .local v2, "menuItemEditor":Landroid/view/MenuItem;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sonymobile.settings.nfc.NFC_HCE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 427
    .end local v2    # "menuItemEditor":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 362
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040068

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0e00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 364
    .local v0, "learnMore":Landroid/widget/TextView;
    new-instance v2, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    return-object v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 523
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 526
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 527
    const-string v2, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 529
    const/4 v2, 0x1

    .line 533
    .end local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 405
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->cancel(Z)Z

    .line 409
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 511
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 513
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 397
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 398
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 400
    return-void
.end method

.method public refresh()V
    .locals 9

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    .line 97
    .local v3, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 100
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 103
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/PaymentSettings;->isListValid(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 106
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v4, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, v0, p0, p0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 108
    .local v4, "preference":Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 110
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 113
    :cond_0
    const-string v6, "PaymentSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t load banner drawable of service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "preference":Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    :cond_1
    new-instance v6, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1, v5}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;-><init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Ljava/util/List;Landroid/preference/PreferenceScreen;)V

    iput-object v6, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    .line 122
    iget-object v6, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/nfc/PaymentSettings;->updateTexts(Landroid/preference/PreferenceScreen;)V

    .line 126
    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 127
    return-void
.end method
