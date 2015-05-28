.class public interface abstract Lcom/sonyericsson/provider/SemcMediaStore$ExtendedAudio$ExtendedAlbumColumns;
.super Ljava/lang/Object;
.source "SemcMediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Audio$AlbumColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/SemcMediaStore$ExtendedAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedAlbumColumns"
.end annotation


# static fields
.field public static final AUDIO_BITRATE:Ljava/lang/String; = "audiobitrate"

.field public static final AUDIO_NUMBER_OF_CHANNELS:Ljava/lang/String; = "audionumchannels"

.field public static final AUDIO_SAMPLE_RATE:Ljava/lang/String; = "audiosamplerate"

.field public static final AUDIO_WAVE_CODEC:Ljava/lang/String; = "audiowavecodec"

.field public static final CONTAINS_HI_RES:Ljava/lang/String; = "contains_hi_res"

.field public static final SOMC_FILE_HASH:Ljava/lang/String; = "somchash"

.field public static final SOMC_FILE_TYPE:Ljava/lang/String; = "somctype"

.field public static final SOMC_FOLDER_CATEGORY:Ljava/lang/String; = "somccategory"

.field public static final TITLE_YOMI:Ljava/lang/String; = "title_yomi"

.field public static final USER_RATING:Ljava/lang/String; = "userrating"
