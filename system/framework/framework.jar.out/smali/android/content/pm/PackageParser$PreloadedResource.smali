.class Landroid/content/pm/PackageParser$PreloadedResource;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadedResource"
.end annotation


# static fields
.field static final PRELOAD_FAILED:I = 0x2

.field static final PRELOAD_NOT_STARTED:I = 0x1

.field static final PRELOAD_OK:I


# instance fields
.field mAssmgr:Landroid/content/res/AssetManager;

.field mCookie:I

.field mFlags:I

.field mMetrics:Landroid/util/DisplayMetrics;

.field mParser:Landroid/content/res/XmlResourceParser;

.field mPreloadStatus:I

.field mRes:Landroid/content/res/Resources;

.field mSourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/util/DisplayMetrics;I)V
    .locals 1
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "flags"    # I

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I

    .line 656
    iput-object p1, p0, Landroid/content/pm/PackageParser$PreloadedResource;->mSourceFile:Ljava/io/File;

    .line 657
    iput-object p2, p0, Landroid/content/pm/PackageParser$PreloadedResource;->mMetrics:Landroid/util/DisplayMetrics;

    .line 658
    iput p3, p0, Landroid/content/pm/PackageParser$PreloadedResource;->mFlags:I

    .line 659
    return-void
.end method


# virtual methods
.method load()V
    .locals 21

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 664
    .local v20, "sourcePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mAssmgr:Landroid/content/res/AssetManager;

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mAssmgr:Landroid/content/res/AssetManager;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mCookie:I

    .line 666
    move-object/from16 v0, p0

    iget v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mCookie:I

    if-eqz v1, :cond_1

    .line 667
    new-instance v1, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mAssmgr:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mRes:Landroid/content/res/Resources;

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mAssmgr:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v1 .. v18}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mAssmgr:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mCookie:I

    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mParser:Landroid/content/res/XmlResourceParser;

    .line 671
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 682
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 683
    const-string v1, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resources preload(): failed, file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mSourceFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    return-void

    .line 673
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    move-object/from16 v0, p0

    iput v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 675
    :catch_0
    move-exception v19

    .line 677
    .local v19, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I

    goto :goto_0

    .line 678
    .end local v19    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v19

    .line 680
    .local v19, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I

    goto :goto_0
.end method
