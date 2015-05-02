.class public Lcom/sonyericsson/settings/SemcSettingsUtils;
.super Ljava/lang/Object;
.source "SemcSettingsUtils.java"


# static fields
.field private static final SETTINGS_BLACKLIST_MANUFACTURER:Ljava/lang/String; = "config_manufacturerNotificationBlacklist"

.field private static final SETTINGS_BLACKLIST_OPERATOR:Ljava/lang/String; = "config_operatorNotificationBlacklist"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPackagesForResource(Landroid/content/res/Resources;ILjava/util/Set;)V
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 77
    .local v3, "s":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 83
    :cond_0
    return-void
.end method

.method public static getColorFromResource(Landroid/content/Context;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 53
    .local v4, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, p1, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 55
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 57
    new-array v0, v8, [I

    iget v5, v4, Landroid/util/TypedValue;->data:I

    aput v5, v0, v7

    .line 58
    .local v0, "attrs":[I
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 60
    .local v3, "ta":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 61
    .local v1, "c":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 62
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    const-string v6, "0x%08X could not be loaded as a color"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v1    # "c":I
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    .restart local v1    # "c":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    .end local v0    # "attrs":[I
    .end local v1    # "c":I
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public static declared-synchronized getNotificationBlackList(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-class v6, Lcom/sonyericsson/settings/SemcSettingsUtils;

    monitor-enter v6

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    .local v0, "blackList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 28
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string v5, "com.android.settings"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 29
    .local v2, "res":Landroid/content/res/Resources;
    const-string v5, "config_manufacturerNotificationBlacklist"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 31
    .local v3, "resIdManu":I
    const-string v5, "config_operatorNotificationBlacklist"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 33
    .local v4, "resIdOper":I
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/settings/SemcSettingsUtils;->addPackagesForResource(Landroid/content/res/Resources;ILjava/util/Set;)V

    .line 34
    invoke-static {v2, v4, v0}, Lcom/sonyericsson/settings/SemcSettingsUtils;->addPackagesForResource(Landroid/content/res/Resources;ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resIdManu":I
    .end local v4    # "resIdOper":I
    :goto_0
    monitor-exit v6

    return-object v0

    .line 24
    .end local v0    # "blackList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 37
    .restart local v0    # "blackList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 35
    :catch_1
    move-exception v5

    goto :goto_0
.end method
