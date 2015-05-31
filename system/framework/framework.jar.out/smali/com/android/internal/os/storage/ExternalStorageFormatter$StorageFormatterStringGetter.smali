.class Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.super Ljava/lang/Object;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    .line 435
    const v0, 0x1040576

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    .line 459
    const v0, 0x1040575

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 439
    const v0, 0x1040577

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    .line 443
    const v0, 0x1040578

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 447
    const v0, 0x1040579

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 451
    const v0, 0x1040574

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 455
    const v0, 0x1040572

    return v0
.end method
