.class Lcom/android/server/pm/RuntimeSkinManager;
.super Ljava/lang/Object;
.source "RuntimeSkinManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final EMPTY:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "RuntimeSkin"

.field private static final UPDATE_SEQUENCE:Ljava/lang/Runnable;


# instance fields
.field private final mApplicationSkinInstallDir:Ljava/io/File;

.field private final mBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlacklistedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

.field private final mSettings:Lcom/android/server/pm/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/android/server/pm/RuntimeSkinManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/RuntimeSkinManager$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/RuntimeSkinManager;->UPDATE_SEQUENCE:Ljava/lang/Runnable;

    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/pm/RuntimeSkinManager;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    .line 165
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    .line 173
    new-instance v5, Ljava/io/File;

    const-string v6, "app-skin"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mApplicationSkinInstallDir:Ljava/io/File;

    .line 174
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    .line 175
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    .line 176
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 177
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    .line 178
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 179
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    .line 180
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_1

    .line 185
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 189
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 192
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 193
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addBlacklistedApplication(I)V
    .locals 3
    .param p1, "appId"    # I

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    monitor-enter v1

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1495
    monitor-exit v1

    .line 1496
    return-void

    .line 1495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addPendingBroadcast(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 859
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->get(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 860
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    move v1, v2

    .line 861
    .local v1, "newPackage":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 864
    .restart local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 865
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_1
    if-eqz v1, :cond_2

    .line 868
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->put(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 871
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 874
    :cond_2
    return-void

    .line 860
    .end local v1    # "newPackage":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private assertLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 887
    return-void
.end method

.method private clearRuntimeSkinLP(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 898
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 899
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 900
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/RuntimeSkinManager;->addPendingBroadcast(ILjava/lang/String;)V

    .line 903
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageSetting;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    goto :goto_0

    .line 905
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private copyApplicationSkin(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;
    .locals 9
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "scanPath"    # Ljava/lang/String;

    .prologue
    .line 919
    const/4 v5, 0x0

    .line 920
    .local v5, "result":Landroid/content/pm/RuntimeSkinDigest;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 922
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 925
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 926
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 927
    .local v4, "os":Ljava/io/OutputStream;
    invoke-static {v3, v4}, Landroid/content/pm/RuntimeSkinDigest;->createDigestFromStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v1

    .line 928
    .local v1, "digest":Landroid/content/pm/RuntimeSkinDigest;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Landroid/system/OsConstants;->S_IRUSR:I

    sget v8, Landroid/system/OsConstants;->S_IWUSR:I

    or-int/2addr v7, v8

    sget v8, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v7, v8

    sget v8, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v7, v8

    invoke-interface {v6, p3, v7}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    move-object v5, v1

    .line 935
    if-nez v5, :cond_1

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 943
    .end local v1    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-object v5

    .line 930
    :catch_0
    move-exception v2

    .line 931
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    if-nez v5, :cond_1

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 932
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 933
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_2
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when attempting chmod on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    if-nez v5, :cond_1

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 935
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v6

    if-nez v5, :cond_2

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    throw v6
.end method

.method private deleteAllFiles(Ljava/io/File;)Z
    .locals 9
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 966
    const/4 v5, 0x1

    .line 967
    .local v5, "result":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 968
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 969
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 970
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 971
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 972
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v5, 0x0

    .line 970
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 977
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error listing contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v2    # "files":[Ljava/io/File;
    :cond_2
    return v5
.end method

.method private deleteApplicationSkinFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 951
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mApplicationSkinInstallDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 952
    .local v0, "appSkinDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/pm/RuntimeSkinManager;->deleteAllFiles(Ljava/io/File;)Z

    .line 953
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 954
    return-void
.end method

.method private deletePackageForUserLI(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 997
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 999
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1000
    const/4 v6, 0x0

    .line 1034
    :goto_0
    return v6

    .line 1003
    :cond_0
    const/4 v6, 0x0

    .line 1004
    .local v6, "updateSequence":Z
    iget-object v9, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1006
    const/4 v7, 0x0

    .line 1007
    .local v7, "writeSettings":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1008
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v8

    iget-object v5, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 1010
    .local v5, "skins":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v5, :cond_1

    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, "change":Z
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1013
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1014
    .local v4, "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1019
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1020
    const/4 v0, 0x1

    goto :goto_2

    .line 1023
    .end local v4    # "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v0, :cond_1

    .line 1024
    const/4 v7, 0x1

    .line 1025
    invoke-virtual {v3, p2, v5}, Lcom/android/server/pm/PackageSetting;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    goto :goto_1

    .line 1033
    .end local v0    # "change":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "skins":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1029
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v7, :cond_5

    .line 1030
    const/4 v6, 0x1

    .line 1031
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1033
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private deletePackageForUserLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .param p3, "userId"    # I

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "updateSequence":Z
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/RuntimeSkinManager;->deletePackageForUserLI(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    if-eqz p2, :cond_0

    .line 291
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    invoke-static {v1, p3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    .line 293
    :cond_0
    const/4 v0, 0x1

    .line 295
    :cond_1
    return v0
.end method

.method private getApplicationSkinInternalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "skinPath"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?entry=assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationSkinScanPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appSkinDir"    # Ljava/io/File;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 1045
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1046
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSkinPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    const v2, 0x104004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "@0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1082
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1086
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1087
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 1089
    .local v1, "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1090
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1091
    .local v4, "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1092
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1093
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v5, :cond_0

    .line 1099
    .end local v1    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getUpgradedSkinPackageLP(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1110
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1111
    invoke-static {p1}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->getUpgradedPath(I)Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1113
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1114
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v3, :cond_0

    .line 1115
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getUsersForUserId(I)[I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1130
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1131
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 1138
    :goto_0
    return-object v0

    .line 1133
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1134
    new-array v0, v2, [I

    goto :goto_0

    .line 1136
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput p1, v0, v2

    .local v0, "users":[I
    goto :goto_0
.end method

.method private varargs initRuntimeSkinLI(I[Ljava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "skinPackages"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1153
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1154
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1155
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return v3

    .line 1160
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 1161
    .local v3, "result":Z
    :cond_2
    if-nez v3, :cond_0

    .line 1163
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1164
    .local v4, "skinPackage":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1165
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1166
    const/4 v3, 0x1

    .line 1167
    goto :goto_0

    .line 1163
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSystemSignedLP(Landroid/content/pm/PackageParser$Package;)Z
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1188
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1189
    .local v0, "apkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    const/4 v1, 0x1

    .line 1194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidAssetPath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1472
    const/4 v1, 0x0

    .line 1473
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1474
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1476
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1478
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 1481
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_0
    return v1

    .line 1476
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1478
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    throw v2
.end method

.method private isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 2
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, "valid":Z
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p3, v1}, Landroid/content/pm/RuntimeSkinInfo;->isValid(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1375
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/RuntimeSkinManager;->isVerifiedLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    const/4 v0, 0x1

    .line 1384
    :cond_0
    return v0
.end method

.method private isVerificationOkLP(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinVerificationInfo;)Z
    .locals 5
    .param p1, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "ver"    # Landroid/content/pm/RuntimeSkinVerificationInfo;

    .prologue
    .line 1433
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1435
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    iget-boolean v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v2, :cond_1

    .line 1436
    iget-object v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/server/pm/PackageSetting;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v0

    .line 1439
    .local v0, "digest":Landroid/content/pm/RuntimeSkinDigest;
    iget-object v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v2, v0}, Landroid/content/pm/RuntimeSkinDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetSignatures:[Landroid/content/pm/Signature;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1447
    const/4 v2, 0x1

    .line 1458
    .end local v0    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    :goto_0
    return v2

    .line 1450
    .restart local v0    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    :cond_0
    const-string v2, "RuntimeSkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can not be verified, digest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or signatures does not match stored digest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .end local v0    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVerifiedLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 5
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, "verified":Z
    iget-boolean v1, p3, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->verifiedRuntimeSkins:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->verifiedRuntimeSkins:Ljava/util/HashSet;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p3, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    :cond_0
    const/4 v0, 0x1

    .line 1419
    :cond_1
    return v0
.end method

.method private setRuntimeSkinLI(ILjava/lang/String;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "skinPackageName"    # Ljava/lang/String;

    .prologue
    .line 1206
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v10}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1207
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v10}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1209
    const/4 v4, 0x0

    .line 1215
    .local v4, "result":Z
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1216
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v10, :cond_0

    .line 1217
    const/4 v10, 0x0

    invoke-virtual {v3, p1, v10}, Lcom/android/server/pm/PackageSetting;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    .line 1218
    const/4 v4, 0x1

    goto :goto_0

    .line 1222
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1223
    .local v8, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_4

    .line 1224
    invoke-virtual {v8, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v9

    .line 1225
    .local v9, "skinPus":Landroid/content/pm/PackageUserState;
    iget-boolean v10, v9, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v10, :cond_4

    .line 1226
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 1227
    .local v7, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_4

    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v10, :cond_4

    .line 1229
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v0, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v6, v0, v1

    .line 1230
    .local v6, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v5

    .line 1231
    .local v5, "ret":Z
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 1229
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1231
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1243
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "ret":Z
    .end local v6    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v7    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "skinPus":Landroid/content/pm/PackageUserState;
    :cond_4
    return v4
.end method

.method private setRuntimeSkinLI(ILjava/lang/String;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1256
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1257
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1261
    if-eqz p2, :cond_0

    iget-object v5, p3, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1262
    :cond_0
    const/4 v2, 0x0

    .line 1294
    :cond_1
    :goto_0
    return v2

    .line 1264
    :cond_2
    const/4 v2, 0x0

    .line 1265
    .local v2, "result":Z
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v6, p3, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1266
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1267
    .local v4, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 1269
    invoke-direct {p0, v4, p3}, Lcom/android/server/pm/RuntimeSkinManager;->updateIdmapLI(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    .line 1272
    invoke-direct {p0, v1, v4, p3}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1273
    iget-object v5, p3, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/RuntimeSkinManager;->addPendingBroadcast(ILjava/lang/String;)V

    .line 1274
    iget-object v3, p3, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    .line 1282
    .local v3, "scanPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 1283
    .local v0, "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_3

    .line 1284
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 1286
    .restart local v0    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    .line 1288
    const/4 v2, 0x1

    goto :goto_0

    .line 1280
    .end local v0    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "scanPath":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "scanPath":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateIdmapLI(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 3
    .param p1, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1307
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1309
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1310
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/RuntimeSkinManager;->updateIdmapLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v1

    return v1
.end method

.method private updateIdmapLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 9
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1323
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1324
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1326
    const/4 v1, 0x0

    .line 1327
    .local v1, "result":Z
    const/4 v0, 0x1

    .line 1329
    .local v0, "removeIdmap":Z
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1330
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    .line 1331
    .local v3, "sharedGid":I
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iget-object v8, p3, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1332
    .local v2, "ret":I
    if-eqz v2, :cond_2

    move v0, v4

    .line 1333
    :goto_0
    if-nez v2, :cond_3

    move v1, v4

    .line 1348
    .end local v2    # "ret":I
    .end local v3    # "sharedGid":I
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1352
    iget-object v4, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, p3, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Installer;->removeIdmap(Ljava/lang/String;)I

    .line 1354
    :cond_1
    return v1

    .restart local v2    # "ret":I
    .restart local v3    # "sharedGid":I
    :cond_2
    move v0, v5

    .line 1332
    goto :goto_0

    :cond_3
    move v1, v5

    .line 1333
    goto :goto_1
.end method

.method private updateRuntimeSkinSequence()V
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/pm/RuntimeSkinManager;->UPDATE_SEQUENCE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1504
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/pm/RuntimeSkinManager;->UPDATE_SEQUENCE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1505
    return-void
.end method


# virtual methods
.method public cleanPackageLI(Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v6, 0x0

    .line 208
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 209
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 211
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v5, :cond_0

    .line 212
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v0, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 217
    .local v4, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, v4, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/Installer;->removeIdmap(Ljava/lang/String;)I

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_0
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->deleteApplicationSkinFolder(Ljava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 224
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    move-object v5, v6

    .line 226
    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinDigests(Ljava/util/HashMap;)V

    .line 227
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 229
    :cond_1
    return-void
.end method

.method public deletePackageLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .prologue
    .line 241
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 243
    const/4 v4, 0x0

    .line 245
    .local v4, "updateSequence":Z
    iget-object v7, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 246
    :try_start_0
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 247
    .local v5, "userId":I
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/pm/RuntimeSkinManager;->deletePackageForUserLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)Z

    move-result v3

    .line 248
    .local v3, "ret":Z
    or-int/2addr v4, v3

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "ret":Z
    .end local v5    # "userId":I
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v4, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 255
    :cond_1
    return-void

    .line 250
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public deletePackageLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .param p3, "userId"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/RuntimeSkinManager;->deletePackageForUserLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 273
    :cond_0
    return-void
.end method

.method public getActiveRuntimeSkinPaths(I)[Ljava/lang/String;
    .locals 15
    .param p1, "userId"    # I

    .prologue
    .line 456
    iget-object v13, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    monitor-enter v13

    .line 457
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 458
    .local v0, "appId":I
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 462
    sget-object v12, Lcom/android/server/pm/RuntimeSkinManager;->EMPTY:[Ljava/lang/String;

    monitor-exit v13

    .line 482
    :goto_0
    return-object v12

    .line 464
    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 466
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 467
    .local v6, "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v13

    .line 468
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v11

    .line 469
    .local v11, "users":[I
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 470
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    move-object v1, v11

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget v10, v1, v4

    .line 471
    .local v10, "uid":I
    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v8

    .line 472
    .local v8, "pus":Landroid/content/pm/PackageUserState;
    iget-object v12, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v12, :cond_3

    .line 473
    iget-object v12, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v12}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 474
    .local v9, "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_2

    .line 475
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v12}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 481
    .end local v1    # "arr$":[I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pus":Landroid/content/pm/PackageUserState;
    .end local v9    # "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "uid":I
    .end local v11    # "users":[I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 464
    .end local v0    # "appId":I
    .end local v6    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 470
    .restart local v0    # "appId":I
    .restart local v1    # "arr$":[I
    .restart local v5    # "len$":I
    .restart local v6    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "pus":Landroid/content/pm/PackageUserState;
    .restart local v10    # "uid":I
    .restart local v11    # "users":[I
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 481
    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pus":Landroid/content/pm/PackageUserState;
    .end local v10    # "uid":I
    :cond_4
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getRuntimeSkin(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 493
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 505
    :goto_0
    return-object v0

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 498
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 499
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 500
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 501
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    move-object v0, v2

    .line 500
    goto :goto_1
.end method

.method public getRuntimeSkinVerificationInfo(Ljava/lang/String;)[Landroid/content/pm/RuntimeSkinVerificationInfo;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v9, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 376
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 377
    .local v7, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v8, :cond_3

    .line 378
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v0, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 381
    .local v5, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    new-instance v6, Landroid/content/pm/RuntimeSkinVerificationInfo;

    invoke-direct {v6}, Landroid/content/pm/RuntimeSkinVerificationInfo;-><init>()V

    .line 382
    .local v6, "rsvi":Landroid/content/pm/RuntimeSkinVerificationInfo;
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    .line 383
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetScanPath:Ljava/lang/String;

    .line 384
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetPackageName:Ljava/lang/String;

    .line 385
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 386
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    .line 387
    iget v8, v3, Lcom/android/server/pm/PackageSetting;->versionCode:I

    iput v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetVersionCode:I

    .line 388
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v8

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->valid:Z

    .line 389
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/pm/RuntimeSkinManager;->isVerifiedLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v8

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    .line 390
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageSetting;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v8

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 391
    iget-object v8, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v8, :cond_0

    .line 392
    iget-object v8, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v8, v8, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetSignatures:[Landroid/content/pm/Signature;

    .line 406
    :cond_0
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->valid:Z

    .line 396
    iget-boolean v8, v5, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    goto :goto_1

    .line 410
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    .end local v5    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v6    # "rsvi":Landroid/content/pm/RuntimeSkinVerificationInfo;
    .end local v7    # "skinPs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 408
    .restart local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    .restart local v7    # "skinPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/pm/RuntimeSkinVerificationInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/pm/RuntimeSkinVerificationInfo;

    monitor-exit v9

    .line 411
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    :goto_2
    return-object v8

    .line 410
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public initRuntimeSkin(I)Z
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 516
    const/4 v4, 0x0

    .line 520
    .local v4, "result":Z
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->getDefaultSkinPackage()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "defaultSkinPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 522
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 523
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 524
    .local v6, "uid":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->getUpgradedSkinPackageLP(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    aput-object v1, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/RuntimeSkinManager;->initRuntimeSkinLI(I[Ljava/lang/String;)Z

    move-result v5

    .line 526
    .local v5, "ret":Z
    or-int/2addr v4, v5

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v5    # "ret":Z
    .end local v6    # "uid":I
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    return v4

    .line 528
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 529
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method

.method public scanPackageLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 20
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "scanMode"    # I

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 557
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_0

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 559
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/RuntimeSkinManager;->addBlacklistedApplication(I)V

    .line 570
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-nez v15, :cond_3

    .line 572
    const/4 v15, 0x0

    check-cast v15, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinDigests(Ljava/util/HashMap;)V

    .line 573
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 574
    const/4 v15, 0x1

    .line 696
    :goto_1
    return v15

    .line 560
    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    .line 561
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 562
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    invoke-virtual {v15, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 563
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/RuntimeSkinManager;->addBlacklistedApplication(I)V

    goto :goto_0

    .line 579
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_3
    move/from16 v0, p3

    and-int/lit16 v15, v0, 0x1000

    const/16 v16, 0x1000

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/RuntimeSkinManager;->isSystemSignedLP(Landroid/content/pm/PackageParser$Package;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_4
    const/4 v13, 0x1

    .line 583
    .local v13, "trusted":Z
    :goto_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/RuntimeSkinManager;->mApplicationSkinInstallDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    .local v3, "appSkinDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v7, 0x1

    .line 587
    .local v7, "inflate":Z
    :goto_3
    const/4 v14, 0x0

    .line 588
    .local v14, "writeDigests":Z
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 590
    .local v8, "internal":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/RuntimeSkinInfo;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v4, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v9, :cond_d

    aget-object v11, v4, v6

    .line 591
    .local v11, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    if-nez v15, :cond_7

    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    if-nez v15, :cond_7

    .line 592
    const-string v15, "RuntimeSkin"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid runtime skin info in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 579
    .end local v3    # "appSkinDir":Ljava/io/File;
    .end local v4    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v6    # "i$":I
    .end local v7    # "inflate":Z
    .end local v8    # "internal":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/RuntimeSkinInfo;>;"
    .end local v9    # "len$":I
    .end local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v13    # "trusted":Z
    .end local v14    # "writeDigests":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 586
    .restart local v3    # "appSkinDir":Ljava/io/File;
    .restart local v13    # "trusted":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 595
    .restart local v4    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .restart local v6    # "i$":I
    .restart local v7    # "inflate":Z
    .restart local v8    # "internal":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/RuntimeSkinInfo;>;"
    .restart local v9    # "len$":I
    .restart local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .restart local v14    # "writeDigests":Z
    :cond_7
    iput-boolean v13, v11, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    .line 598
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/RuntimeSkinManager;->getApplicationSkinInternalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    .line 599
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/RuntimeSkinManager;->isValidAssetPath(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 600
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v15

    iput-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 601
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v15, :cond_8

    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v15}, Landroid/content/pm/RuntimeSkinDigest;->getTimeStamp()J

    move-result-wide v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_9

    .line 602
    :cond_8
    invoke-static {}, Landroid/content/pm/RuntimeSkinDigest;->createEmptyDigest()Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v15

    iput-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 603
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/RuntimeSkinDigest;->setTimeStamp(J)V

    .line 604
    const/4 v14, 0x1

    .line 606
    :cond_9
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 617
    :cond_b
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/server/pm/RuntimeSkinManager;->getApplicationSkinScanPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    .line 618
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v15

    iput-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 620
    new-instance v12, Ljava/io/File;

    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v12, "scanFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_c

    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v15, :cond_c

    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v15}, Landroid/content/pm/RuntimeSkinDigest;->getTimeStamp()J

    move-result-wide v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_a

    .line 627
    :cond_c
    const/4 v7, 0x1

    goto :goto_5

    .line 632
    .end local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v12    # "scanFile":Ljava/io/File;
    :cond_d
    if-eqz v7, :cond_12

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 636
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/RuntimeSkinManager;->deleteAllFiles(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 637
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 642
    :try_start_0
    sget-object v15, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    sget v17, Landroid/system/OsConstants;->S_IRWXU:I

    invoke-interface/range {v15 .. v17}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    .line 645
    sget-object v15, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    sget v17, Landroid/system/OsConstants;->S_IRWXU:I

    sget v18, Landroid/system/OsConstants;->S_IRGRP:I

    or-int v17, v17, v18

    sget v18, Landroid/system/OsConstants;->S_IXGRP:I

    or-int v17, v17, v18

    sget v18, Landroid/system/OsConstants;->S_IROTH:I

    or-int v17, v17, v18

    sget v18, Landroid/system/OsConstants;->S_IXOTH:I

    or-int v17, v17, v18

    invoke-interface/range {v15 .. v17}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 658
    .local v2, "am":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v15}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 660
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    array-length v9, v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v9, :cond_11

    aget-object v11, v4, v6

    .line 662
    .restart local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-eqz v15, :cond_f

    .line 660
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 647
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :catch_0
    move-exception v5

    .line 648
    .local v5, "e":Landroid/system/ErrnoException;
    const-string v15, "RuntimeSkin"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not create "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 650
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 653
    .end local v5    # "e":Landroid/system/ErrnoException;
    :cond_e
    const-string v15, "RuntimeSkin"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not delete the application skins in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 669
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_f
    const/4 v14, 0x1

    .line 670
    :try_start_2
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v15, v1}, Lcom/android/server/pm/RuntimeSkinManager;->copyApplicationSkin(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v15

    iput-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 671
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v15, :cond_10

    .line 673
    iget-object v15, v11, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/RuntimeSkinDigest;->setTimeStamp(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 682
    .end local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :catchall_0
    move-exception v15

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    throw v15

    .line 675
    .restart local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_10
    :try_start_3
    const-string v15, "RuntimeSkin"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not copy asset "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/RuntimeSkinManager;->deleteApplicationSkinFolder(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    const/4 v15, 0x0

    .line 682
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_1

    .end local v11    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_11
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 686
    .end local v2    # "am":Landroid/content/res/AssetManager;
    :cond_12
    if-eqz v14, :cond_13

    .line 691
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinDigests([Landroid/content/pm/RuntimeSkinInfo;)V

    .line 693
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 696
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_1
.end method

.method public setRuntimeSkin(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 739
    const/4 v4, 0x0

    .line 740
    .local v4, "result":Z
    iget-object v7, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 741
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 742
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v5, v0, v1

    .line 744
    .local v5, "uid":I
    if-nez p2, :cond_1

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->clearRuntimeSkinLP(I)Z

    move-result v3

    .line 751
    .local v3, "res":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 755
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 757
    :cond_0
    or-int/2addr v4, v3

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v3    # "res":Z
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v3

    .restart local v3    # "res":Z
    goto :goto_1

    .line 759
    .end local v3    # "res":Z
    .end local v5    # "uid":I
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 763
    if-eqz v4, :cond_3

    .line 764
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 770
    :cond_3
    return v4

    .line 759
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 760
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method public setRuntimeSkinVerificationInfo(Ljava/lang/String;[Landroid/content/pm/RuntimeSkinVerificationInfo;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verificationInfo"    # [Landroid/content/pm/RuntimeSkinVerificationInfo;

    .prologue
    .line 312
    iget-object v11, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 313
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 315
    .local v5, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_6

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_6

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v10, :cond_6

    .line 316
    const/4 v9, 0x0

    .line 317
    .local v9, "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    array-length v10, v0

    if-lez v10, :cond_3

    .line 318
    move-object/from16 v1, p2

    .local v1, "arr$":[Landroid/content/pm/RuntimeSkinVerificationInfo;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v8, v1, v2

    .line 319
    .local v8, "ver":Landroid/content/pm/RuntimeSkinVerificationInfo;
    if-nez v8, :cond_1

    .line 318
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0, v5, v8}, Lcom/android/server/pm/RuntimeSkinManager;->isVerificationOkLP(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinVerificationInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 323
    if-nez v9, :cond_2

    .line 324
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 330
    .restart local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    new-instance v10, Landroid/util/Pair;

    iget-object v13, v8, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    iget v14, v8, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetVersionCode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v1    # "arr$":[Landroid/content/pm/RuntimeSkinVerificationInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "skinPs":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "ver":Landroid/content/pm/RuntimeSkinVerificationInfo;
    .end local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v10

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v10

    .line 360
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 335
    .restart local v5    # "skinPs":Lcom/android/server/pm/PackageSetting;
    .restart local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    :try_start_3
    invoke-virtual {v5, v9}, Lcom/android/server/pm/PackageSetting;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 336
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 339
    const/4 v6, 0x0

    .line 340
    .local v6, "updateSequence":Z
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget v7, v1, v2

    .line 341
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 342
    .local v4, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_4

    iget-object v10, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 347
    const/4 v6, 0x1

    .line 350
    move-object/from16 v0, p1

    invoke-direct {p0, v7, v0}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 351
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v7}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 340
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    .end local v4    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "userId":I
    :cond_5
    if-eqz v6, :cond_6

    .line 356
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 359
    .end local v1    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "updateSequence":Z
    .end local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_6
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    return-void
.end method

.method public updateAllPackagesLI()V
    .locals 6

    .prologue
    .line 704
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 705
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 711
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 712
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 713
    .local v3, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_0

    .line 714
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 718
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 711
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v3    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "userId":I
    :cond_1
    return-void
.end method

.method public updateRuntimeSkinPackageInfo(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v7, 0x1

    .line 423
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v5, :cond_0

    .line 424
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/content/pm/PackageInfo;->isVerifiedSkin:Z

    .line 427
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v1, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 428
    .local v4, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-boolean v5, v4, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    if-eqz v5, :cond_1

    .line 429
    iput-boolean v7, p1, Landroid/content/pm/PackageInfo;->isVerifiedSkin:Z

    .line 444
    .end local v1    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_0
    :goto_1
    return-object p1

    .line 431
    .restart local v1    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_1
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->verifiedRuntimeSkins:Ljava/util/HashSet;

    if-eqz v5, :cond_2

    .line 432
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 433
    .local v0, "appPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 438
    iput-boolean v7, p1, Landroid/content/pm/PackageInfo;->isVerifiedSkin:Z

    goto :goto_1

    .line 427
    .end local v0    # "appPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateSettingsLI(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Z
    .locals 14
    .param p1, "res"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .prologue
    .line 787
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 788
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 790
    const/4 v9, 0x0

    .line 791
    .local v9, "updateSettings":Z
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v12, :cond_0

    .line 792
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->updateSettingsLI(Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)Z

    move-result v9

    .line 796
    :cond_0
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    if-nez v12, :cond_2

    const/4 v12, -0x1

    invoke-direct {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v11

    .line 798
    .local v11, "users":[I
    :goto_0
    move-object v0, v11

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget v10, v0, v3

    .line 799
    .local v10, "userId":I
    invoke-direct {p0, v10}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 800
    .local v8, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_3

    .line 801
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v1, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v7, v1, v2

    .line 802
    .local v7, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget-object v13, v7, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 803
    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, v12, v7}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v6

    .line 804
    .local v6, "ret":Z
    or-int/2addr v9, v6

    .line 801
    .end local v6    # "ret":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 796
    .end local v1    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v8    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "userId":I
    .end local v11    # "users":[I
    :cond_2
    iget-object v11, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    goto :goto_0

    .line 798
    .restart local v8    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v10    # "userId":I
    .restart local v11    # "users":[I
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 810
    .end local v8    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "userId":I
    :cond_4
    if-eqz v9, :cond_5

    .line 811
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 814
    :cond_5
    return v9
.end method

.method public updateSettingsLI(Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)Z
    .locals 9
    .param p1, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .prologue
    .line 828
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 829
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 831
    const/4 v4, 0x0

    .line 832
    .local v4, "updateSettings":Z
    iget-object v6, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    if-eqz v6, :cond_0

    .line 838
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 839
    .local v5, "userId":I
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->getUpgradedSkinPackageLP(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->getDefaultSkinPackage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/RuntimeSkinManager;->initRuntimeSkinLI(I[Ljava/lang/String;)Z

    move-result v3

    .line 841
    .local v3, "ret":Z
    or-int/2addr v4, v3

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ret":Z
    .end local v5    # "userId":I
    :cond_0
    iget-object v6, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    if-eqz v6, :cond_1

    .line 846
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 849
    :cond_1
    return v4
.end method
