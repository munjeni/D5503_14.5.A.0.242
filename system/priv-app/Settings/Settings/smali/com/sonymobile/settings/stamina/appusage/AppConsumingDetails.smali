.class public Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
.super Landroid/app/Fragment;
.source "AppConsumingDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;
    }
.end annotation


# instance fields
.field private mEnableStaminaButton:Landroid/widget/Button;

.field private mPackageName:Ljava/lang/String;

.field private mStaminaEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->uninstallPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getBytesAsString(J)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # J

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setIntentAndFinish()V
    .locals 4

    .prologue
    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "UPDATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 166
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->setIntentAndFinish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v8, 0x7f0400b8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 86
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "package_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;

    .line 90
    const v8, 0x7f080062

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "app_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "str":Ljava/lang/String;
    const v8, 0x7f0e01a0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 93
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string v8, "data_traffic"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    .local v2, "detailsValue":J
    const v8, 0x7f0e01a8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 97
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getBytesAsString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v8, "cpu_usage"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    const v8, 0x7f0e01a6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 101
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    long-to-double v10, v2

    const/4 v9, 0x1

    invoke-static {v8, v10, v11, v9}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v8, 0x7f0e01a2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 104
    .local v6, "uninstallButton":Landroid/widget/Button;
    new-instance v8, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v8, 0x7f0e01a1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    .line 112
    iget-object v9, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    new-instance v9, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;

    invoke-direct {v9, p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    instance-of v8, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v8, :cond_0

    .line 123
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 126
    :cond_0
    return-object v7

    .line 112
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 132
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 136
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
