.class Lcom/android/settings/privacyguard/AppInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowSystemApps:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showSystemApps"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mAppOps:Landroid/app/AppOpsManager;

    .line 44
    iput-boolean p2, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mShowSystemApps:Z

    .line 45
    return-void
.end method

.method private loadInstalledApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;>;"
    iget-object v6, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1040

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 79
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v6, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mShowSystemApps:Z

    if-nez v6, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 86
    :cond_1
    new-instance v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-direct {v0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;-><init>()V

    .line 87
    .local v0, "app":Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-object v6, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    .line 88
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    .line 89
    iget-boolean v6, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v6, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    .line 90
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    .line 91
    iget-object v6, p0, Lcom/android/settings/privacyguard/AppInfoLoader;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/app/AppOpsManager;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v0    # "app":Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v6, Lcom/android/settings/privacyguard/AppInfoLoader$1;

    invoke-direct {v6, p0}, Lcom/android/settings/privacyguard/AppInfoLoader$1;-><init>(Lcom/android/settings/privacyguard/AppInfoLoader;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-object v2
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/AppInfoLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/privacyguard/AppInfoLoader;->loadInstalledApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/AppInfoLoader;->cancelLoad()Z

    .line 65
    return-void
.end method

.method public onStartLoading()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/AppInfoLoader;->forceLoad()V

    .line 55
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/AppInfoLoader;->cancelLoad()Z

    .line 60
    return-void
.end method
