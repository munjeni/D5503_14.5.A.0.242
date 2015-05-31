.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field public static final SST:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field public static final X_SST_CONDENSED:Landroid/graphics/Typeface;

.field public static final X_SST_HEAVY:Landroid/graphics/Typeface;

.field public static final X_SST_LIGHT:Landroid/graphics/Typeface;

.field public static final X_SST_MEDIUM:Landroid/graphics/Typeface;

.field public static final X_SST_ULTRALIGHT:Landroid/graphics/Typeface;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 52
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 399
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 401
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 402
    nop

    nop

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 403
    const-string v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 404
    const-string v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 405
    const-string v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 406
    const-string v0, "sst"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SST:Landroid/graphics/Typeface;

    .line 407
    const-string v0, "x-sst-ultralight"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->X_SST_ULTRALIGHT:Landroid/graphics/Typeface;

    .line 408
    const-string v0, "x-sst-light"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->X_SST_LIGHT:Landroid/graphics/Typeface;

    .line 409
    const-string v0, "x-sst-medium"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->X_SST_MEDIUM:Landroid/graphics/Typeface;

    .line 410
    const-string v0, "x-sst-heavy"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->X_SST_HEAVY:Landroid/graphics/Typeface;

    .line 411
    const-string v0, "x-sst-condensed"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->X_SST_CONDENSED:Landroid/graphics/Typeface;

    .line 413
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    nop

    nop

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 420
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 293
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 298
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 299
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 173
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 174
    :cond_0
    const/4 p1, 0x0

    .line 176
    :cond_1
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "ni":J
    if-eqz p0, :cond_4

    .line 179
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_3

    move-object v3, p0

    .line 203
    :cond_2
    :goto_0
    return-object v3

    .line 183
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 187
    :cond_4
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 189
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 190
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 191
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_2

    .line 196
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 197
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_6

    .line 198
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 199
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 201
    :cond_6
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 155
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 223
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 224
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 226
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 229
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 266
    array-length v2, p0

    new-array v1, v2, [J

    .line 267
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 268
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 281
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 282
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 283
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 286
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 250
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 251
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 253
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 256
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 212
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 423
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getVendorFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 31

    .prologue
    .line 316
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v19

    .line 317
    .local v19, "systemFontConfigLocation":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getVendorFontConfigLocation()Ljava/io/File;

    move-result-object v24

    .line 318
    .local v24, "vendorFontConfigLocation":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v28, "fonts.xml"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    .local v6, "configFilename":Ljava/io/File;
    new-instance v22, Ljava/io/File;

    const-string v28, "fonts.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v22, "vendorConfigFilename":Ljava/io/File;
    const/4 v13, 0x0

    .line 321
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    const/16 v25, 0x0

    .line 323
    .local v25, "vendorFontsIn":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .local v14, "fontsIn":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v14}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 326
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    :try_start_2
    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    .end local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    .local v26, "vendorFontsIn":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static/range {v26 .. v26}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v23

    .line 336
    .local v23, "vendorFontConfig":Landroid/graphics/FontListParser$Config;
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v28 .. v30}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 337
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v28 .. v30}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v25, v26

    .line 346
    .end local v23    # "vendorFontConfig":Landroid/graphics/FontListParser$Config;
    .end local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    :goto_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    :try_start_4
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_2

    .line 347
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 348
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v15, :cond_0

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 349
    :cond_0
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 338
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v15    # "i":I
    :catch_0
    move-exception v7

    .line 339
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    new-instance v18, Ljava/io/StringWriter;

    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    .line 340
    .local v18, "sw":Ljava/io/StringWriter;
    new-instance v28, Ljava/io/PrintWriter;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 341
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading vendor-specific font config: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 383
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "sw":Ljava/io/StringWriter;
    :catch_1
    move-exception v7

    move-object v13, v14

    .line 384
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/RuntimeException;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v29, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 396
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void

    .line 352
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v15    # "i":I
    :cond_2
    :try_start_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/graphics/FontFamily;

    sput-object v28, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 353
    sget-object v28, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v28 .. v28}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 355
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v20, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v15, 0x0

    :goto_5
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_5

    .line 358
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 359
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 360
    if-nez v15, :cond_4

    .line 363
    sget-object v21, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 369
    .local v21, "typeface":Landroid/graphics/Typeface;
    :goto_6
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v21    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 365
    :cond_4
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 366
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v28, 0x0

    aput-object v12, v9, v28

    .line 367
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v21

    .restart local v21    # "typeface":Landroid/graphics/Typeface;
    goto :goto_6

    .line 372
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v21    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 373
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 374
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v17, v5

    .line 375
    .local v17, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v27, v0

    .line 376
    .local v27, "weight":I
    const/16 v28, 0x190

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 377
    new-instance v17, Landroid/graphics/Typeface;

    .end local v17    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v28

    move-object/from16 v0, v17

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 379
    .restart local v17    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    .line 386
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "newFace":Landroid/graphics/Typeface;
    .end local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v27    # "weight":I
    :catch_2
    move-exception v7

    move-object v13, v14

    .line 387
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    :goto_8
    :try_start_7
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error opening "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 393
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4

    .line 381
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v15    # "i":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    :try_start_8
    sput-object v20, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 393
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v13, v14

    .line 395
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 388
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_3
    move-exception v7

    .line 389
    .local v7, "e":Ljava/io/IOException;
    :goto_9
    :try_start_9
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 393
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4

    .line 390
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 391
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_a
    :try_start_a
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XML parse exception for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 393
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4

    .line 393
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v28

    :goto_b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v28

    .line 393
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v28

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v28

    move-object/from16 v25, v26

    .end local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_b

    .line 390
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object/from16 v25, v26

    .end local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_a

    .line 388
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_9

    .line 386
    :catch_8
    move-exception v7

    goto/16 :goto_8

    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object/from16 v25, v26

    .end local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 383
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    :catch_a
    move-exception v7

    goto/16 :goto_3

    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    move-object/from16 v25, v26

    .end local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 338
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    :catch_c
    move-exception v7

    move-object/from16 v25, v26

    .end local v26    # "vendorFontsIn":Ljava/io/FileInputStream;
    .restart local v25    # "vendorFontsIn":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 302
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 304
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 306
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v1
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 124
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 125
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 126
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    if-ne p0, p1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 444
    check-cast v0, Landroid/graphics/Typeface;

    .line 446
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 433
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 455
    const/16 v0, 0x11

    .line 456
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 457
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 458
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
