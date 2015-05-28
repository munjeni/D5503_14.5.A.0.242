.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public decodingTimeUs:J

.field public durationUs:J

.field public flags:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IIJI)V
    .locals 3
    .param p1, "newOffset"    # I
    .param p2, "newSize"    # I
    .param p3, "newTimeUs"    # J
    .param p5, "newFlags"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 263
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 264
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 265
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 266
    iput-wide v0, p0, Landroid/media/MediaCodec$BufferInfo;->decodingTimeUs:J

    .line 267
    iput-wide v0, p0, Landroid/media/MediaCodec$BufferInfo;->durationUs:J

    .line 268
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 269
    return-void
.end method
