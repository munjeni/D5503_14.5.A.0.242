.class Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;
.super Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    .line 467
    const v0, 0x1040734

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    .line 491
    const v0, 0x1040733

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 471
    const v0, 0x1040731

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    .line 475
    const v0, 0x1040735

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 479
    const v0, 0x1040736

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 483
    const v0, 0x1040730

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 487
    const v0, 0x1040732

    return v0
.end method
