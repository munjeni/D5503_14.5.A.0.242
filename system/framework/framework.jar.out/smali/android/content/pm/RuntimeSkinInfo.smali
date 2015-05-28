.class public Landroid/content/pm/RuntimeSkinInfo;
.super Ljava/lang/Object;
.source "RuntimeSkinInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;,
        Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;,
        Landroid/content/pm/RuntimeSkinInfo$Filter;
    }
.end annotation


# static fields
.field private static final ATTR_FROM:Ljava/lang/String; = "from"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_TARGET:Ljava/lang/String; = "target"

.field private static final ATTR_TO:Ljava/lang/String; = "to"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final LAF_VERSION_META_DATA:Ljava/lang/String; = "com.sonymobile.runtimeskinning.LAF_VERSION"

.field public static final RUNTIME_SKIN_META_DATA:Ljava/lang/String; = "com.sonymobile.runtimeskinning.SKIN_DEFINITION"

.field private static final TAG:Ljava/lang/String; = "RuntimeSkinInfo"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_LAF_VERSION_FILTER:Ljava/lang/String; = "laf-version-filter"

.field private static final TAG_VERSION_FILTER:Ljava/lang/String; = "version-filter"

.field private static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field public final assetPath:Ljava/lang/String;

.field public digest:Landroid/content/pm/RuntimeSkinDigest;

.field private final mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/RuntimeSkinInfo$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public scanPath:Ljava/lang/String;

.field public final targetPackageName:Ljava/lang/String;

.field public trusted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 289
    :cond_0
    iput-object p1, p0, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    .line 291
    return-void
.end method

.method private static parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "result":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 466
    :cond_0
    return-object v0
.end method

.method private static parseLafVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "owner"    # Landroid/content/pm/RuntimeSkinInfo;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 511
    :try_start_0
    const-string v4, "from"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 512
    .local v1, "from":Ljava/lang/Integer;
    const-string/jumbo v4, "to"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 513
    .local v2, "to":Ljava/lang/Integer;
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 514
    const/4 v4, 0x0

    const-string v5, "<laf-version-filter> requires to or from"

    aput-object v5, p2, v4

    .line 521
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 517
    .restart local v1    # "from":Ljava/lang/Integer;
    .restart local v2    # "to":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;

    invoke-direct {v5, v1, v2}, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v3, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid from or to in <laf-version-filter>"

    aput-object v4, p2, v3

    goto :goto_0
.end method

.method static parseRuntimeSkinInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "resId"    # I
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 366
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v3, "runtime-skin"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 367
    invoke-static {p0, v1, p3}, Landroid/content/pm/RuntimeSkinInfo;->parseRuntimeSkinInfo(Landroid/content/pm/PackageParser$Package;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 369
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 376
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 369
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    const-string v4, "Unable to parse com.sonymobile.runtimeskinning.SKIN_DEFINITION"

    aput-object v4, p3, v3

    goto :goto_0

    .line 376
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static parseRuntimeSkinInfo(Landroid/content/pm/PackageParser$Package;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 12
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v9, :cond_0

    .line 393
    const/4 v9, 0x0

    const-string v10, "Multiple <runtime-skin> elements defined or referenced in manifest"

    aput-object v10, p2, v9

    .line 394
    const/4 v9, 0x0

    .line 447
    :goto_0
    return v9

    .line 398
    :cond_0
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "version":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 400
    const/4 v9, 0x0

    const-string v10, "Missing version attribute on <runtime-skin>"

    aput-object v10, p2, v9

    .line 401
    const/4 v9, 0x0

    goto :goto_0

    .line 404
    :cond_1
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 406
    const-string v9, "RuntimeSkinInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported version code, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v9, 0x1

    goto :goto_0

    .line 410
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v4, "skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 412
    .local v1, "assets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 415
    .local v3, "searchDepth":I
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_9

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-lt v9, v3, :cond_9

    .line 416
    :cond_4
    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const/4 v9, 0x4

    if-eq v7, v9, :cond_3

    .line 420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, "tagName":Ljava/lang/String;
    const-string v9, "asset"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v3, :cond_8

    .line 422
    const/4 v9, 0x0

    const-string/jumbo v10, "path"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "path":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v10, "target"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "target":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 425
    :cond_5
    const/4 v9, 0x0

    const-string v10, "<asset> does not specify path or target"

    aput-object v10, p2, v9

    .line 426
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 428
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 429
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Two or more <asset> elements reference the same path, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, p2, v9

    .line 430
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 432
    :cond_7
    new-instance v0, Landroid/content/pm/RuntimeSkinInfo;

    invoke-direct {v0, v6, v2}, Landroid/content/pm/RuntimeSkinInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v0, "arsi":Landroid/content/pm/RuntimeSkinInfo;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-static {v0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo;->parseVersionFilters(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 435
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 438
    .end local v0    # "arsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v2    # "path":Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 441
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 442
    const/4 v9, 0x0

    const-string v10, "<runtime-skin> must contain one or more valid <asset> elements"

    aput-object v10, p2, v9

    .line 443
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 446
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/content/pm/RuntimeSkinInfo;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/pm/RuntimeSkinInfo;

    iput-object v9, p0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .line 447
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private static parseVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "owner"    # Landroid/content/pm/RuntimeSkinInfo;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 483
    :try_start_0
    const-string v4, "from"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 484
    .local v1, "from":Ljava/lang/Integer;
    const-string/jumbo v4, "to"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 485
    .local v2, "to":Ljava/lang/Integer;
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 486
    const/4 v4, 0x0

    const-string v5, "<version-filter> requires to or from"

    aput-object v5, p2, v4

    .line 493
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 489
    .restart local v1    # "from":Ljava/lang/Integer;
    .restart local v2    # "to":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;

    invoke-direct {v5, v1, v2}, Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    const/4 v3, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid from or to in <version-filter>"

    aput-object v4, p2, v3

    goto :goto_0
.end method

.method private static parseVersionFilters(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 8
    .param p0, "owner"    # Landroid/content/pm/RuntimeSkinInfo;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 541
    .local v1, "searchDepth":I
    const/4 v0, 0x0

    .line 543
    .local v0, "lafFilter":Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v5, :cond_5

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-lt v6, v1, :cond_5

    .line 544
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    .line 548
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "tagName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_4

    .line 550
    const-string/jumbo v6, "version-filter"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 551
    invoke-static {p0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo;->parseVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 570
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    return v4

    .line 554
    .restart local v2    # "tagName":Ljava/lang/String;
    :cond_3
    const-string v6, "laf-version-filter"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 555
    invoke-static {p0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo;->parseLafVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 564
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 568
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;->BLOCKER:Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v4, v5

    .line 570
    goto :goto_1
.end method


# virtual methods
.method public isValid(Landroid/content/pm/PackageParser$Package;)Z
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 302
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 303
    .local v3, "result":Z
    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "foundValid":Z
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RuntimeSkinInfo$Filter;

    .line 306
    .local v0, "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    invoke-virtual {v0, p1}, Landroid/content/pm/RuntimeSkinInfo$Filter;->getValidity(Landroid/content/pm/PackageParser$Package;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 325
    const/4 v4, 0x0

    .line 331
    .end local v0    # "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    .end local v1    # "foundValid":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return v4

    .line 312
    .restart local v0    # "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    .restart local v1    # "foundValid":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    const/4 v1, 0x1

    .line 313
    goto :goto_0

    .line 318
    :pswitch_2
    const/4 v3, 0x0

    .line 319
    goto :goto_0

    .line 329
    .end local v0    # "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    :cond_0
    or-int/2addr v3, v1

    .end local v1    # "foundValid":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    move v4, v3

    .line 331
    goto :goto_1

    .line 306
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{target="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 343
    const-string v1, ", mFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
