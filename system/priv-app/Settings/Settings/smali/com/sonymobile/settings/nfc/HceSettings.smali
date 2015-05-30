.class public Lcom/sonymobile/settings/nfc/HceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;,
        Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    }
.end annotation


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

.field private final mHandler:Landroid/os/Handler;

.field private mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUsedMemText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Lcom/sonymobile/settings/nfc/HceSettings$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 194
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/HceSettings$1;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/nfc/HceSettings;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/nfc/HceSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/nfc/HceSettings;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->refresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/nfc/HceSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/nfc/HceSettings;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 73
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 74
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->updateServices()V

    .line 76
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getNonDefaultRouteServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 77
    .local v2, "service":Landroid/content/ComponentName;
    new-instance v1, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2, p0}, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View$OnClickListener;)V

    .line 79
    .local v1, "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 82
    .end local v1    # "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultRouteServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 83
    .restart local v2    # "service":Landroid/content/ComponentName;
    new-instance v1, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2, p0}, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View$OnClickListener;)V

    .line 85
    .restart local v1    # "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 88
    .end local v1    # "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/nfc/HceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 89
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->updateDisplay()V

    .line 90
    return-void
.end method

.method private updateDisplay()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const v6, -0x262627

    const v5, -0xdabf9f

    .line 140
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->updateSimulator()V

    .line 141
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getSumRatio()F

    move-result v2

    .line 142
    .local v2, "sumRatio":F
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getPaymentRatio()F

    move-result v1

    .line 143
    .local v1, "paymentRatio":F
    sub-float v0, v2, v1

    .line 147
    .local v0, "otherRatio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v5, v4, v6}, Lcom/sonymobile/settings/nfc/HceColorBar;->setColors(III)V

    .line 152
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    invoke-virtual {v3, v1, v0}, Lcom/sonymobile/settings/nfc/HceColorBar;->setRatios(FF)V

    .line 153
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mUsedMemText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800db

    new-array v6, v7, [Ljava/lang/Object;

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v2

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    const v4, -0x714b1d

    invoke-virtual {v3, v5, v4, v6}, Lcom/sonymobile/settings/nfc/HceColorBar;->setColors(III)V

    .line 159
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    invoke-virtual {v3, v1, v0}, Lcom/sonymobile/settings/nfc/HceColorBar;->setRatios(FF)V

    .line 160
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 127
    .local v1, "service":Landroid/content/ComponentName;
    const v2, 0x7f0e0096

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 128
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 129
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->setCheckBoxState(Landroid/content/ComponentName;Z)V

    .line 130
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->updateDisplay()V

    .line 137
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e00f0

    if-ne v2, v3, :cond_2

    .line 132
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v2}, Lcom/sonymobile/settings/nfc/HceBackend;->applyCurrentSettings()V

    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->finish()V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e00ef

    if-ne v2, v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings;->setRetainInstance(Z)V

    .line 66
    new-instance v0, Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/nfc/HceBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040066

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/nfc/HceColorBar;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    .line 99
    const v1, 0x7f0e00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mUsedMemText:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    .line 102
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0e00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonNegative:Landroid/widget/Button;

    .line 104
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-static {}, Lcom/sonymobile/settings/nfc/HceReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/nfc/HceBackend;->applyNewIntent(Landroid/content/Intent;)V

    .line 114
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->refresh()V

    .line 115
    return-void
.end method
