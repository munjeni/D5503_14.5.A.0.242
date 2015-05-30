.class public Lcom/sonymobile/settings/nfc/HceBackend;
.super Ljava/lang/Object;
.source "HceBackend.java"


# static fields
.field private static final SE_SIM_ENABLE:Z

.field private static final SE_SMX_ENABLE:Z


# instance fields
.field private mBannerForService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

.field private mChangedDefaultService:Landroid/content/ComponentName;

.field private mCheckBoxForService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultRoute:I

.field private mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mOffHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "ro.nfc.se.sim.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SIM_ENABLE:Z

    .line 85
    const-string v0, "ro.nfc.se.smx.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SMX_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    .line 97
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    .line 99
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    .line 100
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    .line 107
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 110
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    .line 112
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->initialize()V

    .line 113
    return-void
.end method

.method private createBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v10, v13, Landroid/util/DisplayMetrics;->density:F

    .line 398
    .local v10, "scale":F
    const/high16 v13, 0x42c00000    # 96.0f

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v1, v13

    .line 399
    .local v1, "bannerHeight":I
    const/high16 v13, 0x43820000    # 260.0f

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v2, v13

    .line 400
    .local v2, "bannerWidth":I
    const/high16 v13, 0x41600000    # 14.0f

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v12, v13

    .line 402
    .local v12, "textSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "label":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "description":Ljava/lang/String;
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 406
    .local v5, "bmp":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 409
    .local v11, "textPaint":Landroid/graphics/Paint;
    int-to-float v13, v12

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 411
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 413
    .local v8, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    const/4 v3, 0x0

    .line 414
    .local v3, "baseX":F
    int-to-float v13, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    iget v14, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v15, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v14, v15

    int-to-float v15, v12

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v4, v13, v14

    .line 417
    .local v4, "baseY":F
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 418
    invoke-virtual {v6, v9, v3, v4, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 419
    int-to-float v13, v12

    add-float/2addr v13, v4

    iget v14, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v13, v14

    invoke-virtual {v6, v7, v3, v13, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v13
.end method

.method private static cutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 243
    .end local p0    # "aid":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 382
    iget-object v6, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v6, p2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 383
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-object v5

    .line 384
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 385
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 386
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 387
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method private static getAidsLength(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 446
    .local v3, "length":I
    if-eqz p0, :cond_1

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 449
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    .line 450
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    goto :goto_0

    .line 454
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method private getConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "com.android.nfc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 297
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "string"

    const-string v4, "com.android.nfc"

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 304
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HceBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "HceBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resources error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v3, :cond_0

    move-object v1, v4

    .line 374
    :goto_0
    return-object v1

    .line 368
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 369
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 370
    .local v1, "service":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v6, "payment"

    invoke-virtual {v5, v1, v6}, Landroid/nfc/cardemulation/CardEmulation;->isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .end local v1    # "service":Landroid/content/ComponentName;
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    move-object v1, v4

    .line 374
    goto :goto_0
.end method

.method private getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    .line 206
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v0

    .line 207
    :cond_0
    return-object v0
.end method

.method private getDisabledServices()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 322
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 324
    .local v7, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v11, "other"

    invoke-virtual {v10, v11}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 325
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v8, :cond_1

    .line 345
    :cond_0
    return-object v5

    .line 327
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 328
    .local v6, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    .end local v6    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "nfc_disabled_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "str":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 333
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 335
    .local v2, "hash":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 336
    .local v6, "service":Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    .line 337
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v6    # "service":Landroid/content/ComponentName;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v10, "HceBackend"

    const-string v11, "Failed to parse DisabledServices\' hash"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDisabledServicesFromSetting()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    :cond_1
    return-object v2
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 469
    :cond_1
    return-object v0

    .line 459
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 460
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 462
    add-int/lit8 v2, v2, 0x1

    .line 464
    :cond_3
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 465
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 466
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 465
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 276
    const-string v2, "default_route"

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/nfc/HceBackend;->getConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "defaultRoute":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "Host"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    .line 283
    :goto_0
    const-string v2, "ce_subsystem_builder"

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/nfc/HceBackend;->getConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "ceSubsystemBuilder":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "com.android.nfc.cardemulation.NxpCeSubsystemBuilder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    :cond_1
    new-instance v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;

    iget v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-direct {v2, v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    .line 290
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServices()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    .line 291
    return-void

    .line 280
    .end local v0    # "ceSubsystemBuilder":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    goto :goto_0

    .line 287
    .restart local v0    # "ceSubsystemBuilder":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;

    iget v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-direct {v2, v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    goto :goto_1
.end method

.method private isEnabledService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeServices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez p1, :cond_1

    .line 318
    :cond_0
    return-void

    .line 311
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 312
    .local v1, "service":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDisabledServices(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 352
    .local v2, "service":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 358
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "nfc_disabled_services"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    :goto_1
    return-void

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "nfc_disabled_services"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public applyCurrentSettings()V
    .locals 6

    .prologue
    .line 248
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 249
    .local v3, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 250
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->setDisabledServices(Ljava/util/Set;)V

    .line 259
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 261
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 269
    :goto_1
    return-void

    .line 267
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonymobile.nfc.action.UPDATE_ROUTING_TABLE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    const-string v5, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public applyNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonymobile.nfc.extra.OVERFLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "com.sonymobile.nfc.extra.DEFAULT_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    .line 120
    :cond_0
    return-void
.end method

.method public getBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckBoxState(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDefaultRouteServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    .line 428
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    goto :goto_0
.end method

.method public getNonDefaultRouteServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    .line 436
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    goto :goto_0
.end method

.method public getPaymentRatio()F
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 218
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;

    move-result-object v3

    .line 219
    .local v3, "defaultPayment":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v9

    .line 221
    :cond_1
    const-string v10, "payment"

    invoke-direct {p0, v3, v10}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 222
    .local v6, "paymentAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 224
    iget-object v9, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v9}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getRoutedAids()Ljava/util/List;

    move-result-object v7

    .line 225
    .local v7, "routedAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 227
    .local v2, "cuttedAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->cutPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "cuttedAid":Ljava/lang/String;
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 230
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "cuttedAid":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsLength(Ljava/util/List;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v10}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidLength()I

    move-result v10

    int-to-float v10, v10

    div-float v8, v9, v10

    .line 235
    .local v8, "sizeRatio":F
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v10}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidEntries()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 236
    .local v4, "entriesRatio":F
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_0
.end method

.method public getSumRatio()F
    .locals 5

    .prologue
    .line 211
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getRoutedAids()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsLength(Ljava/util/List;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidLength()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 213
    .local v2, "sizeRatio":F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidEntries()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 214
    .local v1, "entriesRatio":F
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3
.end method

.method public setCheckBoxState(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "checked"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v1, "payment"

    invoke-virtual {v0, p1, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 379
    return-void
.end method

.method public showSelectServiceMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-boolean v2, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SIM_ENABLE:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SMX_ENABLE:Z

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v3, "other"

    invoke-virtual {v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateServices()V
    .locals 9

    .prologue
    .line 133
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v8, "other"

    invoke-virtual {v7, v8}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 134
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v5, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServices()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    .line 138
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .local v1, "currentComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 140
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 141
    .local v3, "service":Landroid/content/ComponentName;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 143
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->isEnabledService(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;->createBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 150
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v3    # "service":Landroid/content/ComponentName;
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 159
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 162
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 163
    .local v6, "uninstalledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 164
    .restart local v3    # "service":Landroid/content/ComponentName;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 165
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v3    # "service":Landroid/content/ComponentName;
    :cond_6
    invoke-direct {p0, v6}, Lcom/sonymobile/settings/nfc/HceBackend;->removeServices(Ljava/util/List;)V

    .line 169
    return-void
.end method

.method public updateSimulator()V
    .locals 6

    .prologue
    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v0, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "other"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServicesFromSetting()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->startRouting(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 191
    return-void
.end method
