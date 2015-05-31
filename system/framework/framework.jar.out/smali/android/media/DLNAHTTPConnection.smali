.class public Landroid/media/DLNAHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "DLNAHTTPConnection.java"


# static fields
.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DLNAHTTPConnection"

.field private static final TRY_AGAIN:I = -0x1

.field private static final VERBOSE:Z


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mDeclaredDuration:J

.field private mDuration:J

.field private mEndOffset:J

.field private mHadToDecreaseTime:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mNativeContext:J

.field private mOriginalURI:Ljava/lang/String;

.field private mSkipRead:J

.field private mSupportByteSeek:Z

.field private mSupportTimeSeek:Z

.field private mTime:J

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 672
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 673
    invoke-static {}, Landroid/media/DLNAHTTPConnection;->native_init()V

    .line 674
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 73
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 48
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 49
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    .line 50
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 51
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    .line 52
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 54
    iput-boolean v6, p0, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    .line 55
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    .line 57
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 58
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 59
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 60
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 61
    iput-boolean v5, p0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    .line 62
    iput-boolean v6, p0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    .line 64
    iput-boolean v5, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 65
    iput-boolean v5, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 74
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->native_setup()V

    .line 79
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "pairs":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 162
    .local v6, "pair":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, "colonPos":I
    if-ltz v1, :cond_0

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Landroid/media/DLNAHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 168
    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "colonPos":I
    .end local v6    # "pair":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, p2}, Landroid/media/DLNAHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 150
    iget-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 154
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTimeSeekResponse(JJ)I
    .locals 21
    .param p1, "time"    # J
    .param p3, "seekOffset"    # J

    .prologue
    .line 583
    const-string v13, "TimeSeekRange.DLNA.org"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/DLNAHTTPConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 585
    .local v12, "timeSeekResponse":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 586
    :cond_0
    const-string v13, "DLNAHTTPConnection"

    const-string v14, "did not receive TimeSeekRange in response"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 588
    const/4 v13, 0x0

    .line 656
    :goto_0
    return v13

    .line 592
    :cond_1
    const/4 v13, 0x4

    new-array v7, v13, [J

    .line 594
    .local v7, "output":[J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Landroid/media/DLNAHTTPConnection;->extractNptResponseData(Ljava/lang/String;[J)V

    .line 595
    const/4 v13, 0x0

    aget-wide v8, v7, v13

    .line 596
    .local v8, "returnOffset":J
    const/4 v13, 0x1

    aget-wide v14, v7, v13

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    .line 597
    const/4 v13, 0x2

    aget-wide v10, v7, v13

    .line 598
    .local v10, "returnTime":J
    const/4 v13, 0x3

    aget-wide v14, v7, v13

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    .line 600
    const-wide/16 v14, 0x0

    cmp-long v13, p3, v14

    if-ltz v13, :cond_3

    const/4 v6, 0x1

    .line 601
    .local v6, "offsetIsKnown":Z
    :goto_1
    const-wide/16 v14, -0x1

    cmp-long v13, p1, v14

    if-nez v13, :cond_5

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/media/DLNAHTTPConnection;->getDurationUs()J

    move-result-wide v4

    .line 607
    .local v4, "durationUs":J
    mul-long v14, p3, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-double v2, v14

    .line 608
    .local v2, "approximatedTime":D
    double-to-long v14, v2

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 609
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 612
    const-wide/32 v14, 0x7a120

    sub-long v14, v4, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 613
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    :goto_2
    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 616
    :cond_2
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "We had to approximate time to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 600
    .end local v2    # "approximatedTime":D
    .end local v4    # "durationUs":J
    .end local v6    # "offsetIsKnown":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 613
    .restart local v2    # "approximatedTime":D
    .restart local v4    # "durationUs":J
    .restart local v6    # "offsetIsKnown":Z
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 621
    .end local v2    # "approximatedTime":D
    .end local v4    # "durationUs":J
    :cond_5
    cmp-long v13, v8, p3

    if-lez v13, :cond_8

    if-eqz v6, :cond_8

    .line 622
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "server returns offset: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " but "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " needed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-eqz v13, :cond_7

    .line 624
    const-wide/32 v14, 0xf4240

    cmp-long v13, p1, v14

    if-lez v13, :cond_6

    const-wide/32 v14, 0xf4240

    sub-long v14, p1, v14

    :goto_3
    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 625
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    .line 630
    :goto_4
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 624
    :cond_6
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 627
    :cond_7
    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    goto :goto_4

    .line 633
    :cond_8
    if-eqz v6, :cond_9

    .line 634
    sub-long v14, p3, v8

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 636
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    const-wide/32 v16, 0x100000

    cmp-long v13, v14, v16

    if-lez v13, :cond_a

    .line 639
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "We would have to skip more than 1MB ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "because offsets needed/returned are: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " so instead we will try to approximate time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " better"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-wide/32 v14, 0x7a120

    add-long v14, v14, p1

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 644
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/media/DLNAHTTPConnection;->getDurationUs()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    cmp-long v13, v14, v16

    if-gez v13, :cond_a

    .line 647
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 651
    :cond_9
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 653
    :cond_a
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 655
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "npt response time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bytes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    const-string v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 210
    goto :goto_0

    .line 212
    :cond_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 213
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native native_init()V
.end method

.method private final native native_readAt(JJI)I
.end method

.method private final native native_setup()V
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 140
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private parseDeclaredDuration(Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v3, "DURATION="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "durationIndex":I
    if-gez v1, :cond_0

    .line 113
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x9

    .line 118
    const-string v2, ""

    .line 120
    .local v2, "durationString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_1

    .line 132
    .end local v0    # "c":C
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    .line 133
    iget-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    goto :goto_0
.end method

.method private declared-synchronized readAt(JJ[BI)I
    .locals 15
    .param p1, "time"    # J
    .param p3, "offset"    # J
    .param p5, "data"    # [B
    .param p6, "size"    # I

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 410
    .local v5, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    const-wide/16 v10, 0x0

    cmp-long v10, p3, v10

    if-ltz v10, :cond_8

    const/4 v4, 0x1

    .line 414
    .local v4, "offsetIsKnown":Z
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-ltz v10, :cond_9

    const/4 v7, 0x1

    .line 415
    .local v7, "timeIsKnown":Z
    :goto_1
    const/4 v6, 0x1

    .line 417
    .local v6, "seekNeeded":Z
    if-eqz v4, :cond_0

    :try_start_1
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    cmp-long v10, p3, v10

    if-eqz v10, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    cmp-long v10, p1, v10

    if-nez v10, :cond_2

    .line 418
    :cond_1
    const/4 v6, 0x0

    .line 421
    :cond_2
    if-eqz v6, :cond_4

    .line 422
    if-nez v4, :cond_3

    if-eqz v7, :cond_a

    .line 423
    :cond_3
    invoke-direct/range {p0 .. p4}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 429
    :cond_4
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 430
    const-string v10, "DLNAHTTPConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "We are going to skip "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_5
    :goto_2
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 434
    iget-object v10, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    iget-wide v12, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    invoke-virtual {v10, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    .line 435
    .local v8, "skipped":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_b

    .line 436
    const-string v10, "DLNAHTTPConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Something is wrong, we skipped "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes instead of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while adjusting TimeSeek request"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 445
    .end local v8    # "skipped":J
    :cond_6
    iget-object v10, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v11, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v10, v0, v11, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 447
    .local v3, "n":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_7

    .line 450
    const/4 v3, 0x0

    .line 453
    :cond_7
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    int-to-long v12, v3

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J
    :try_end_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    .end local v3    # "n":I
    :goto_3
    monitor-exit p0

    return v3

    .line 413
    .end local v4    # "offsetIsKnown":Z
    .end local v6    # "seekNeeded":Z
    .end local v7    # "timeIsKnown":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 414
    .restart local v4    # "offsetIsKnown":Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 425
    .restart local v6    # "seekNeeded":Z
    .restart local v7    # "timeIsKnown":Z
    :cond_a
    :try_start_2
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Can\'t handle readAt with time: -1 and offset: -1"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/net/NoRouteToHostException;
    :try_start_3
    const-string v10, "DLNAHTTPConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readAt time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", offset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    const/16 v3, -0x3f2

    goto :goto_3

    .line 442
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    .restart local v8    # "skipped":J
    :cond_b
    :try_start_4
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    sub-long/2addr v10, v8

    iput-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J
    :try_end_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 465
    .end local v8    # "skipped":J
    :catch_1
    move-exception v2

    .line 470
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    goto :goto_3

    .line 471
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_3

    .line 407
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "offsetIsKnown":Z
    .end local v5    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "seekNeeded":Z
    .end local v7    # "timeIsKnown":Z
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private seekTo(J)V
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 228
    return-void
.end method

.method private seekTo(JJ)V
    .locals 27
    .param p1, "time"    # J
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v21, "DLNAHTTPConnection"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "seekTo (time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", offset: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct/range {p0 .. p0}, Landroid/media/DLNAHTTPConnection;->teardownConnection()V

    .line 236
    const/4 v15, 0x0

    .line 238
    .local v15, "redirectCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v20, v0

    .line 241
    .local v20, "url":Ljava/net/URL;
    invoke-static/range {v20 .. v20}, Landroid/media/DLNAHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v13

    .line 244
    .local v13, "noProxy":Z
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 245
    sget-object v21, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v20 .. v21}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v21

    check-cast v21, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 251
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 255
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 384
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "noProxy":Z
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 385
    .local v7, "e":Ljava/io/IOException;
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 386
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 387
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 388
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 389
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 390
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 392
    throw v7

    .line 247
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v13    # "noProxy":Z
    .restart local v20    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    check-cast v21, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 260
    :cond_2
    const-wide/16 v22, 0x0

    cmp-long v21, p3, v22

    if-lez v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Range"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bytes="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 276
    .local v16, "response":I
    const/16 v21, 0x12c

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v21, 0x12d

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v21, 0x12e

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v21, 0x12f

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v21, 0x133

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 327
    :cond_4
    const/16 v21, 0xce

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Content-Range"

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "contentRange":Ljava/lang/String;
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 336
    if-eqz v6, :cond_5

    .line 341
    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 342
    .local v10, "lastSlashPos":I
    if-ltz v10, :cond_5

    .line 343
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 347
    .local v19, "total":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    .end local v6    # "contentRange":Ljava/lang/String;
    .end local v10    # "lastSlashPos":I
    .end local v19    # "total":Ljava/lang/String;
    :cond_5
    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v21, p3, v22

    if-lez v21, :cond_11

    const/16 v21, 0xce

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 361
    new-instance v21, Ljava/io/IOException;

    invoke-direct/range {v21 .. v21}, Ljava/io/IOException;-><init>()V

    throw v21

    .line 263
    .end local v16    # "response":I
    :cond_6
    const-wide/16 v22, 0x0

    cmp-long v21, p1, v22

    if-ltz v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 264
    invoke-direct/range {p0 .. p2}, Landroid/media/DLNAHTTPConnection;->toNptString(J)Ljava/lang/String;

    move-result-object v14

    .line 265
    .local v14, "nptTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "TimeSeekRange.dlna.org"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "npt="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 267
    .end local v14    # "nptTime":Ljava/lang/String;
    :cond_7
    const-wide/16 v22, -0x1

    cmp-long v21, p1, v22

    if-nez v21, :cond_3

    const-wide/16 v22, 0x0

    cmp-long v21, p3, v22

    if-lez v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 269
    const-string v21, "DLNAHTTPConnection"

    const-string v22, "Server doesn\'t support byte seek and time is uknown, so we\'ll seek to 0 and try to parse time seek response later"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "TimeSeekRange.dlna.org"

    const-string/jumbo v23, "npt=0.000-"

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 285
    .restart local v16    # "response":I
    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/16 v21, 0x14

    move/from16 v0, v21

    if-le v15, v0, :cond_9

    .line 286
    new-instance v21, Ljava/net/NoRouteToHostException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Too many redirects: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 289
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "method":Ljava/lang/String;
    const/16 v21, 0x133

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const-string v21, "GET"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "HEAD"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 295
    new-instance v21, Ljava/net/NoRouteToHostException;

    const-string v22, "Invalid redirect"

    invoke-direct/range {v21 .. v22}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 297
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const-string v22, "Location"

    invoke-virtual/range {v21 .. v22}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "location":Ljava/lang/String;
    if-nez v11, :cond_b

    .line 299
    new-instance v21, Ljava/net/NoRouteToHostException;

    const-string v22, "Invalid redirect"

    invoke-direct/range {v21 .. v22}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 301
    :cond_b
    new-instance v20, Ljava/net/URL;

    .end local v20    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 302
    .restart local v20    # "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v21

    const-string v22, "https"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v21

    const-string v22, "http"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 304
    new-instance v21, Ljava/net/NoRouteToHostException;

    const-string v22, "Unsupported protocol redirect"

    invoke-direct/range {v21 .. v22}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 306
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 307
    .local v18, "sameProtocol":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossProtocolRedirect:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    if-nez v18, :cond_d

    .line 308
    new-instance v21, Ljava/net/NoRouteToHostException;

    const-string v22, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v21 .. v22}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 310
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 311
    .local v17, "sameHost":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    if-nez v17, :cond_e

    .line 312
    new-instance v21, Ljava/net/NoRouteToHostException;

    const-string v22, "Cross-domain redirects are disallowed"

    invoke-direct/range {v21 .. v22}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 315
    :cond_e
    const/16 v21, 0x133

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 317
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    goto/16 :goto_0

    .line 352
    .end local v11    # "location":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/String;
    .end local v17    # "sameHost":Z
    .end local v18    # "sameProtocol":Z
    :cond_f
    const/16 v21, 0xc8

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 353
    new-instance v21, Ljava/io/IOException;

    invoke-direct/range {v21 .. v21}, Ljava/io/IOException;-><init>()V

    throw v21

    .line 355
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    goto/16 :goto_4

    .line 364
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    .line 365
    invoke-direct/range {p0 .. p4}, Landroid/media/DLNAHTTPConnection;->handleTimeSeekResponse(JJ)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 366
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 394
    :cond_12
    :goto_5
    return-void

    .line 370
    :cond_13
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    .line 373
    :cond_14
    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v21, v22, v24

    if-nez v21, :cond_15

    .line 379
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 381
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v21, v22, v24

    if-nez v21, :cond_12

    .line 382
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTime:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 348
    .restart local v6    # "contentRange":Ljava/lang/String;
    .restart local v10    # "lastSlashPos":I
    .restart local v19    # "total":Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_4
.end method

.method private teardownConnection()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 186
    iput-object v1, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 188
    iget-object v0, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    iput-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 191
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 192
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 195
    :cond_0
    return-void
.end method

.method private toNptString(J)Ljava/lang/String;
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p1, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p1, v4

    rem-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 83
    move-object v2, p1

    .line 84
    .local v2, "originalURI":Ljava/lang/String;
    const-string v3, ",SEEK_TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 86
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_0
    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/DLNAHTTPConnection;->disconnect()V

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 97
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 98
    iput-object v2, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p2}, Landroid/media/DLNAHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/media/DLNAHTTPConnection;->parseDeclaredDuration(Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    return-object v3

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->teardownConnection()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public extractNptResponseData(Ljava/lang/String;[J)V
    .locals 9
    .param p1, "timeSeekString"    # Ljava/lang/String;
    .param p2, "output"    # [J

    .prologue
    .line 555
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const-string/jumbo v7, "npt="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 558
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v0, v6

    const-string v7, "bytes="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 560
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "bytesArray":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, p2, v5

    .line 562
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 563
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "offsetsArray":[Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, p2, v5

    .line 569
    .end local v4    # "offsetsArray":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "nptArray":[Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    aput-wide v6, p2, v5

    .line 571
    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    .line 572
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 573
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "durationArray":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    const/4 v5, 0x3

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    aput-wide v6, p2, v5

    .line 578
    .end local v2    # "durationArray":[Ljava/lang/String;
    :cond_0
    return-void

    .line 566
    .end local v3    # "nptArray":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->native_finalize()V

    .line 662
    return-void
.end method

.method public getCurrentOffset()J
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 496
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 497
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    .line 502
    :goto_0
    return-wide v0

    .line 498
    :cond_0
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 499
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    goto :goto_0

    .line 502
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getEndOffset()J
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 541
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/DLNAHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 521
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 523
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/DLNAHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_0
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public getSeekTimeUs()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    return-wide v0
.end method

.method public getSize()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 483
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 485
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/DLNAHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    :goto_0
    return-wide v2

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dlna://URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAt(JI)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    .line 398
    const-wide/16 v2, -0x1

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/DLNAHTTPConnection;->readAtTime(JJI)I

    move-result v0

    return v0
.end method

.method public readAtTime(JJI)I
    .locals 1
    .param p1, "time"    # J
    .param p3, "offset"    # J
    .param p5, "size"    # I

    .prologue
    .line 403
    invoke-direct/range {p0 .. p5}, Landroid/media/DLNAHTTPConnection;->native_readAt(JJI)I

    move-result v0

    return v0
.end method

.method public setSeekModeSupport(II)V
    .locals 3
    .param p1, "byteSeek"    # I
    .param p2, "timeSeek"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    .line 223
    if-eqz p2, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    .line 224
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v1, v2

    .line 223
    goto :goto_1
.end method
