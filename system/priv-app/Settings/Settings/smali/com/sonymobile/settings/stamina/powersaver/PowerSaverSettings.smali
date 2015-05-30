.class public Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.super Landroid/preference/PreferenceFragment;
.source "PowerSaverSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivation:Landroid/view/View;

.field private mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

.field private mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

.field private mHint:Landroid/view/View;

.field private mHintDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTimeoutDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$7;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$7;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 139
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 146
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->onActivationClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setActivationLevelText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    return-void
.end method

.method private createAndShowHintDialog()V
    .locals 4

    .prologue
    .line 372
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    const v1, 0x7f080076

    .line 378
    .local v1, "messageId":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    const v1, 0x7f080077

    .line 382
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const v2, 0x7f080075

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    .line 386
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "messageId":I
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 387
    return-void
.end method

.method private find([II)I
    .locals 2
    .param p1, "values"    # [I
    .param p2, "value"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 334
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 338
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 333
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCurrentTimeout()I
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private onActivationClicked()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method private removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "timeoutFeature"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .param p2, "timeoutValues"    # [I
    .param p3, "timeoutEntries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "revisedTimeoutEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget v3, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v1, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->saved:I

    .line 352
    .local v1, "maxTimeout":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 353
    aget v3, p2, v0

    if-ge v3, v1, :cond_1

    .line 354
    aget-object v3, p3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    .end local v0    # "i":I
    .end local v1    # "maxTimeout":I
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getCurrentTimeout()I

    move-result v1

    goto :goto_0

    .line 360
    .restart local v0    # "i":I
    .restart local v1    # "maxTimeout":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    return-object v3
.end method

.method private setActivationLevelText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v2, 0x7f0e01c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method private setUiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f0e01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f0e01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->setPowerSaverEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->notifyDataSetChanged()V

    .line 290
    return-void
.end method

.method private showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 6
    .param p1, "f"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 299
    .local v3, "values":[I
    iget-boolean v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->find([II)I

    move-result v1

    .line 300
    .local v1, "defIdx":I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080031

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 304
    .local v2, "validEntries":[Ljava/lang/CharSequence;
    new-instance v4, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;

    invoke-direct {v4, p0, p1, v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$6;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$6;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 328
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    .line 329
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 330
    return-void

    .line 299
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "defIdx":I
    .end local v2    # "validEntries":[Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 233
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 236
    new-instance v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    .line 237
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    .line 248
    .local v0, "listner":Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;
    new-instance v1, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .line 251
    new-instance v1, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const-string v0, "lbmHintDialogIsShown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V

    .line 171
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    const v2, 0x7f0400cb

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e01bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    .line 197
    const v2, 0x7f0400c9

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    .line 198
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 201
    const v2, 0x7f0400c8

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    .line 203
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 206
    const v2, 0x7f0400c4

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    .local v0, "title":Landroid/widget/TextView;
    const v2, 0x7f08002b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 213
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 217
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 177
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    .line 185
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 186
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 280
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 281
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 262
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->close()V

    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 264
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 269
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 270
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 271
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 272
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverBatteryThreshold(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setActivationLevelText(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    .line 275
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 225
    .local v0, "isHintDialogShown":Z
    :goto_0
    const-string v1, "lbmHintDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    return-void

    .line 224
    .end local v0    # "isHintDialogShown":Z
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method
