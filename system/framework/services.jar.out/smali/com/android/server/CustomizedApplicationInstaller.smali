.class public Lcom/android/server/CustomizedApplicationInstaller;
.super Ljava/lang/Object;
.source "CustomizedApplicationInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;,
        Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;,
        Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    }
.end annotation


# static fields
.field private static final APPLICATION_INSTALL_DIR:Ljava/io/File;

.field private static final APPLICATION_INSTALL_DIR_NAME:Ljava/lang/String;

.field private static final APPLICATION_SETTINGS_FILE:Ljava/lang/String;

.field private static final BASE_APK_NAME:Ljava/lang/String; = "base.apk"

.field public static final CDF_CONFIGURED_APPLICATIONS:Ljava/lang/String;

.field public static final CDF_CONFIGURED_APPLICATIONS_LEGACY:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final INSTALL_PACKAGE_SUFFIX:Ljava/lang/String; = "-"

.field private static final PRODUCT_CONFIGURED_APPLICATIONS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNewApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/customization/applications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->CDF_CONFIGURED_APPLICATIONS_LEGACY:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletable-app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->CDF_CONFIGURED_APPLICATIONS:Ljava/lang/String;

    .line 84
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    .line 87
    const-class v0, Lcom/android/server/CustomizedApplicationInstaller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/product/applications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->PRODUCT_CONFIGURED_APPLICATIONS:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/application-packages.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_SETTINGS_FILE:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_INSTALL_DIR_NAME:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_INSTALL_DIR_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_INSTALL_DIR:Ljava/io/File;

    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/CustomizedApplicationInstaller;->mNewApplications:Ljava/util/List;

    .line 122
    iput-object p1, p0, Lcom/android/server/CustomizedApplicationInstaller;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_SETTINGS_FILE:Ljava/lang/String;

    return-object v0
.end method

.method private addFile(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 3
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "applicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-boolean v0, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding application file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for installation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    return-void
.end method

.method private copyApk(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "oldPath"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v14, 0x0

    .line 244
    .local v14, "result":Z
    sget-boolean v15, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 245
    sget-object v15, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Preparing to install: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    const/4 v9, 0x0

    .line 252
    .local v9, "folder":Ljava/io/File;
    :try_start_0
    const-string v15, ".apk"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/android/server/CustomizedApplicationInstaller;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, "folderName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_INSTALL_DIR_NAME:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v9    # "folder":Ljava/io/File;
    .local v10, "folder":Ljava/io/File;
    :try_start_1
    sget-boolean v15, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v15, :cond_1

    .line 255
    sget-object v15, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "folderName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v15, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "folder: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1ed

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 271
    sget-boolean v15, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 272
    sget-object v15, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Directory: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 275
    .local v8, "files":[Ljava/io/File;
    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 277
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "base.apk"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v15, v1}, Lcom/android/server/CustomizedApplicationInstaller;->copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v14

    .line 305
    .end local v8    # "files":[Ljava/io/File;
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .line 306
    .local v7, "fileToDelete":Ljava/io/File;
    if-nez v14, :cond_d

    .line 307
    move-object v7, v10

    .line 312
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/CustomizedApplicationInstaller;->deleteFile(Ljava/io/File;)Z

    :cond_5
    move v15, v14

    .line 317
    :cond_6
    :goto_2
    return v15

    .line 265
    .end local v7    # "fileToDelete":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 266
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v15, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to set permissions for the folder."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    const/4 v15, 0x0

    .line 305
    const/4 v7, 0x0

    .line 306
    .restart local v7    # "fileToDelete":Ljava/io/File;
    if-nez v14, :cond_8

    .line 307
    move-object v7, v10

    .line 312
    :cond_7
    :goto_3
    if-eqz v7, :cond_6

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/CustomizedApplicationInstaller;->deleteFile(Ljava/io/File;)Z

    goto :goto_2

    .line 308
    :cond_8
    if-eqz p3, :cond_7

    .line 309
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileToDelete":Ljava/io/File;
    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7    # "fileToDelete":Ljava/io/File;
    goto :goto_3

    .line 281
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fileToDelete":Ljava/io/File;
    .restart local v8    # "files":[Ljava/io/File;
    :cond_9
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/CustomizedApplicationInstaller;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "baseFile":Ljava/lang/String;
    move-object v2, v8

    .local v2, "arr$":[Ljava/io/File;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_4
    if-ge v12, v13, :cond_3

    aget-object v5, v2, v12

    .line 284
    .local v5, "f":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/CustomizedApplicationInstaller;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "fileName":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 286
    const-string v6, "base.apk"

    .line 289
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/android/server/CustomizedApplicationInstaller;->copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v14

    .line 290
    if-eqz v14, :cond_3

    .line 282
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 297
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "baseFile":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "files":[Ljava/io/File;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_b
    sget-boolean v15, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v15, :cond_c

    .line 298
    sget-object v15, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Single apk: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_c
    const-string v15, "base.apk"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1, v15}, Lcom/android/server/CustomizedApplicationInstaller;->copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v14

    goto/16 :goto_0

    .line 308
    .restart local v7    # "fileToDelete":Ljava/io/File;
    :cond_d
    if-eqz p3, :cond_4

    .line 309
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileToDelete":Ljava/io/File;
    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7    # "fileToDelete":Ljava/io/File;
    goto/16 :goto_1

    .line 305
    .end local v7    # "fileToDelete":Ljava/io/File;
    .end local v10    # "folder":Ljava/io/File;
    .end local v11    # "folderName":Ljava/lang/String;
    .restart local v9    # "folder":Ljava/io/File;
    :catchall_0
    move-exception v15

    :goto_5
    const/4 v7, 0x0

    .line 306
    .restart local v7    # "fileToDelete":Ljava/io/File;
    if-nez v14, :cond_10

    .line 307
    move-object v7, v9

    .line 312
    :cond_e
    :goto_6
    if-eqz v7, :cond_f

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/CustomizedApplicationInstaller;->deleteFile(Ljava/io/File;)Z

    .line 315
    :cond_f
    throw v15

    .line 308
    :cond_10
    if-eqz p3, :cond_e

    .line 309
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileToDelete":Ljava/io/File;
    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7    # "fileToDelete":Ljava/io/File;
    goto :goto_6

    .line 305
    .end local v7    # "fileToDelete":Ljava/io/File;
    .end local v9    # "folder":Ljava/io/File;
    .restart local v10    # "folder":Ljava/io/File;
    .restart local v11    # "folderName":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "folder":Ljava/io/File;
    .restart local v9    # "folder":Ljava/io/File;
    goto :goto_5
.end method

.method private copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "pPackageURI"    # Landroid/net/Uri;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 697
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v1, "srcPackageFile":Ljava/io/File;
    invoke-static {v1, p2}, Lcom/android/server/CustomizedApplicationInstaller;->copyToFile(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 704
    .end local v1    # "srcPackageFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 321
    sget-boolean v6, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 322
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyFile: folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const/4 v2, 0x0

    .line 329
    .local v2, "dstFile":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/CustomizedApplicationInstaller;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 336
    const/4 v4, 0x0

    .line 338
    .local v4, "out":Landroid/os/ParcelFileDescriptor;
    const/high16 v6, 0x30000000

    :try_start_1
    invoke-static {v2, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 339
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 341
    .local v1, "autoOut":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/server/CustomizedApplicationInstaller;->copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    if-eqz v4, :cond_1

    .line 351
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a4

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 367
    :try_start_4
    sget-boolean v6, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 368
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ApplicationInstaller.copyApk() - renaming to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    if-eqz v6, :cond_9

    .line 373
    const/4 v2, 0x0

    .line 381
    if-eqz v2, :cond_3

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 386
    :cond_3
    const/4 v5, 0x1

    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "autoOut":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .end local v4    # "out":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_1
    return v5

    .line 330
    :catch_0
    move-exception v3

    .line 331
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create temp file. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 381
    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 342
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 343
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy file: source file not found. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 350
    if-eqz v4, :cond_5

    .line 351
    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 381
    :cond_5
    :goto_2
    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 345
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 346
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 350
    if-eqz v4, :cond_6

    .line 351
    :try_start_9
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 381
    :cond_6
    :goto_3
    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 349
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 350
    if-eqz v4, :cond_7

    .line 351
    :try_start_a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 354
    :cond_7
    :goto_4
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 381
    .end local v4    # "out":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_8

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_8
    throw v5

    .line 361
    .restart local v1    # "autoOut":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .restart local v4    # "out":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v3

    .line 362
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_c
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set permissions for apk."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 381
    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 375
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "apkFile":Ljava/io/File;
    :cond_9
    :try_start_d
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to rename apk. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 381
    if-eqz v2, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 353
    .end local v0    # "apkFile":Ljava/io/File;
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .end local v1    # "autoOut":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    goto/16 :goto_2

    .local v3, "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    goto :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    goto :goto_4
.end method

.method private static copyToFile(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 718
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/CustomizedApplicationInstaller;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    if-eqz v0, :cond_0

    .line 722
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 720
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 722
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 724
    :cond_1
    :goto_1
    throw v1

    .line 723
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 709
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_0

    .line 710
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method private createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "installDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "tmpPackageFile":Ljava/io/File;
    :try_start_0
    const-string v2, "vmdl"

    const-string v3, ".tmp"

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 423
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x180

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t create temp file for downloaded package file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    throw v0

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 426
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    const-string v3, "Trouble getting the canoncical path for a temp file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    throw v0
.end method

.method private debugListFiles(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 395
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "files":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 397
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    return-void

    .line 401
    :cond_1
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 403
    .local v4, "s":Ljava/lang/String;
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getBaseFile(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "path":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "folder":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/base.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    sget-boolean v3, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 222
    sget-object v3, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBaseFile() -- base file= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    return-object v0
.end method

.method private getBlacklist()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 520
    .local v4, "pkglist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/CustomizedApplicationInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 522
    .local v0, "app":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 523
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blackListApps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "app":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private getCurrentSwVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 637
    const-string v5, "ro.semc.version.sw_revision"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "swVersion":Ljava/lang/String;
    const-string v5, "ro.semc.version.cust"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "cdf":Ljava/lang/String;
    const-string v5, "ro.semc.version.cust_revision"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "cdfVersion":Ljava/lang/String;
    const-string v5, "ro.semc.version.cust.active"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "active_cust":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    sget-boolean v5, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 650
    const-string v5, "somc.debug.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCustomizedApplicationsToInstall()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "applicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v6, p0, Lcom/android/server/CustomizedApplicationInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "custAppList":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 474
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custApplist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->CDF_CONFIGURED_APPLICATIONS:Ljava/lang/String;

    .line 478
    .local v5, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 480
    :cond_1
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->CDF_CONFIGURED_APPLICATIONS_LEGACY:Ljava/lang/String;

    .line 483
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_3

    .line 484
    new-instance v3, Ljava/io/File;

    aget-object v6, v1, v4

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .local v3, "file":Ljava/io/File;
    invoke-direct {p0, v0, v3}, Lcom/android/server/CustomizedApplicationInstaller;->addFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 487
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    return-object v0
.end method

.method private getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 390
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "oldCodePath"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 659
    const-string v1, "-"

    .line 660
    .local v1, "idxStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 663
    .local v0, "idx":I
    if-eqz p0, :cond_2

    .line 664
    move-object v3, p0

    .line 666
    .local v3, "subStr":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 671
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 672
    .local v2, "sidx":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 674
    if-eqz v3, :cond_2

    .line 675
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    const-string v4, "-"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 679
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 685
    .end local v2    # "sidx":I
    .end local v3    # "subStr":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 688
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 680
    .restart local v2    # "sidx":I
    .restart local v3    # "subStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 8
    .param p1, "packageUri"    # Landroid/net/Uri;

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    .line 607
    .local v2, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v4, "sourceFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 610
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 614
    :goto_0
    return-object v3

    .line 611
    :catch_0
    move-exception v1

    .line 612
    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    sget-object v5, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when parsing file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProductApplicationsToInstall()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v0, "applicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/CustomizedApplicationInstaller;->PRODUCT_CONFIGURED_APPLICATIONS:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v3, "directory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 502
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 503
    .local v1, "appsFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 504
    move-object v2, v1

    .local v2, "arr$":[Ljava/io/File;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v2, v5

    .line 505
    .local v4, "file":Ljava/io/File;
    invoke-direct {p0, v0, v4}, Lcom/android/server/CustomizedApplicationInstaller;->addFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 504
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "appsFiles":[Ljava/io/File;
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    return-object v0
.end method

.method private isSoftwareNew()Z
    .locals 5

    .prologue
    .line 622
    iget-object v2, p0, Lcom/android/server/CustomizedApplicationInstaller;->mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    invoke-virtual {v2}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "savedVersion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/CustomizedApplicationInstaller;->getCurrentSwVersion()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "currentVersion":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 625
    sget-object v2, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SavedVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldInstall(Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "existingPackage"    # Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "updateExistingOnly"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 580
    const/4 v0, 0x1

    .line 582
    .local v0, "install":Z
    if-eqz p3, :cond_0

    .line 585
    if-nez p1, :cond_0

    .line 586
    iget-object v3, p0, Lcom/android/server/CustomizedApplicationInstaller;->mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    invoke-virtual {v3, p2}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->isPreinstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 589
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 590
    sget-object v3, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "will install:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currently installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/CustomizedApplicationInstaller;->mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    invoke-virtual {v2, p2}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->isPreinstalled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 586
    goto :goto_0

    :cond_3
    move v1, v2

    .line 590
    goto :goto_1
.end method


# virtual methods
.method public deleteFile(Ljava/io/File;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 439
    const/4 v5, 0x1

    .line 440
    .local v5, "result":Z
    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 442
    sget-boolean v6, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 443
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v5, v6

    .line 459
    :cond_1
    :goto_0
    return v5

    .line 447
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 448
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 449
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/android/server/CustomizedApplicationInstaller;->deleteFile(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 451
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    if-eqz v5, :cond_1

    .line 452
    sget-boolean v6, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 453
    sget-object v6, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v5, v6

    goto :goto_0
.end method

.method getInstalledApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/CustomizedApplicationInstaller;->mNewApplications:Ljava/util/List;

    return-object v0
.end method

.method public install()V
    .locals 14

    .prologue
    .line 129
    new-instance v11, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    invoke-direct {v11}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;-><init>()V

    iput-object v11, p0, Lcom/android/server/CustomizedApplicationInstaller;->mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    .line 131
    invoke-direct {p0}, Lcom/android/server/CustomizedApplicationInstaller;->isSoftwareNew()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 132
    sget-boolean v11, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 133
    sget-object v11, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    const-string v12, "installApplications() -- start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v11, "before installation"

    sget-object v12, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_INSTALL_DIR:Ljava/io/File;

    invoke-direct {p0, v11, v12}, Lcom/android/server/CustomizedApplicationInstaller;->debugListFiles(Ljava/lang/String;Ljava/io/File;)V

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "applicationList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/android/server/CustomizedApplicationInstaller;->getCustomizedApplicationsToInstall()Ljava/util/List;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-direct {p0}, Lcom/android/server/CustomizedApplicationInstaller;->getProductApplicationsToInstall()Ljava/util/List;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-direct {p0}, Lcom/android/server/CustomizedApplicationInstaller;->getBlacklist()Ljava/util/Set;

    move-result-object v7

    .line 145
    .local v7, "packagesBlacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 146
    .local v6, "packageSettings":Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 147
    new-instance v6, Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;

    .end local v6    # "packageSettings":Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;
    invoke-direct {v6}, Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;-><init>()V

    .line 150
    .restart local v6    # "packageSettings":Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;
    :cond_1
    iget-object v11, p0, Lcom/android/server/CustomizedApplicationInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11200a8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 153
    .local v10, "updateExistingOnly":Z
    const/4 v9, 0x1

    .line 155
    .local v9, "result":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 157
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 158
    invoke-direct {p0, v2}, Lcom/android/server/CustomizedApplicationInstaller;->getBaseFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/CustomizedApplicationInstaller;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 159
    .local v8, "pkgInfo":Landroid/content/pm/PackageParser$Package;
    sget-boolean v11, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 160
    sget-object v11, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isDirectory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    :goto_1
    if-eqz v8, :cond_2

    .line 171
    sget-boolean v11, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 172
    sget-object v11, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting installing package, name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;->getPackageInfo(Ljava/lang/String;)Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;

    move-result-object v1

    .line 177
    .local v1, "existingPackage":Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v11, v10}, Lcom/android/server/CustomizedApplicationInstaller;->shouldInstall(Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {p0, v1, v11}, Lcom/android/server/CustomizedApplicationInstaller;->isNewerVersion(Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 182
    if-nez v1, :cond_8

    const/4 v5, 0x0

    .line 183
    .local v5, "oldPath":Ljava/lang/String;
    :goto_2
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11, v2, v5}, Lcom/android/server/CustomizedApplicationInstaller;->copyApk(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    .line 184
    .local v4, "installed":Z
    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    .line 186
    iget-object v11, p0, Lcom/android/server/CustomizedApplicationInstaller;->mNewApplications:Ljava/util/List;

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_5
    and-int/2addr v9, v4

    .line 190
    .end local v4    # "installed":Z
    .end local v5    # "oldPath":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/server/CustomizedApplicationInstaller;->mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->addPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v1    # "existingPackage":Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageParser$Package;
    :cond_7
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/CustomizedApplicationInstaller;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 164
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageParser$Package;
    sget-boolean v11, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 165
    sget-object v11, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "is File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    .restart local v1    # "existingPackage":Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    :cond_8
    iget-object v5, v1, Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;->mPath:Ljava/lang/String;

    goto :goto_2

    .line 194
    .end local v1    # "existingPackage":Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    .end local v2    # "file":Ljava/io/File;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageParser$Package;
    :cond_9
    if-eqz v9, :cond_a

    .line 195
    iget-object v11, p0, Lcom/android/server/CustomizedApplicationInstaller;->mSettings:Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;

    invoke-direct {p0}, Lcom/android/server/CustomizedApplicationInstaller;->getCurrentSwVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->save(Ljava/lang/String;)V

    .line 197
    :cond_a
    sget-boolean v11, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v11, :cond_b

    .line 198
    sget-object v11, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "installApplications() -- end result="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_b
    sget-boolean v11, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v11, :cond_c

    .line 201
    const-string v11, "after installation"

    sget-object v12, Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_INSTALL_DIR:Ljava/io/File;

    invoke-direct {p0, v11, v12}, Lcom/android/server/CustomizedApplicationInstaller;->debugListFiles(Ljava/lang/String;Ljava/io/File;)V

    .line 204
    .end local v0    # "applicationList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "packageSettings":Lcom/android/server/CustomizedApplicationInstaller$PackageSettings;
    .end local v7    # "packagesBlacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "result":Z
    .end local v10    # "updateExistingOnly":Z
    :cond_c
    return-void
.end method

.method protected isNewerVersion(Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;I)Z
    .locals 3
    .param p1, "existingPackage"    # Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;
    .param p2, "versionCode"    # I

    .prologue
    .line 557
    sget-boolean v0, Lcom/android/server/CustomizedApplicationInstaller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 558
    sget-object v1, Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versions new:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " installed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;->mVersionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/server/CustomizedApplicationInstaller$PackageInfoLite;->mVersionCode:I

    if-le p2, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 558
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 561
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
