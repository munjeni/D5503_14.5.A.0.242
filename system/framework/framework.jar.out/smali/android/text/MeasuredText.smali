.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 50
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 57
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 58
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 59
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 61
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 62
    monitor-exit v3

    .line 70
    :goto_0
    return-object v1

    .line 65
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 70
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_0

    .line 65
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 74
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 75
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 76
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 79
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 84
    :cond_0
    monitor-exit v2

    .line 86
    .end local v0    # "i":I
    :cond_1
    return-object v3

    .line 77
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 169
    if-eqz p3, :cond_0

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 174
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v8, 0x1

    .line 178
    .local v8, "isRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v21

    .line 195
    :cond_1
    return v21

    .line 177
    .end local v8    # "isRtl":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 181
    :cond_3
    const/16 v21, 0x0

    .line 182
    .local v21, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 183
    .local v20, "level":I
    move v11, v4

    .local v11, "q":I
    add-int/lit8 v19, v4, 0x1

    .local v19, "i":I
    add-int v18, v4, p2

    .line 184
    .local v18, "e":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 185
    :cond_4
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    .line 186
    .restart local v8    # "isRtl":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 188
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 191
    move/from16 v11, v19

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 183
    .end local v8    # "isRtl":Z
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 185
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 201
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 202
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 204
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 208
    aget-object v8, p2, v7

    .line 209
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 210
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 207
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 217
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 218
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 230
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_2

    .line 231
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_5

    .line 232
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 233
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 240
    :cond_2
    :goto_3
    return v10

    .line 221
    .end local v10    # "wid":F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 223
    .restart local v10    # "wid":F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 224
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 225
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 226
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 225
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 227
    :cond_4
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 235
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_5
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 236
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 6
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 244
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 245
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 248
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 249
    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    .line 252
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 262
    :goto_2
    return v2

    .line 255
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 256
    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_4

    .line 257
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 258
    cmpg-float v2, p3, v4

    if-gez v2, :cond_6

    .line 261
    :cond_4
    :goto_4
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 259
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 262
    :cond_7
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 269
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 270
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 98
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 100
    sub-int v6, p3, p2

    .line 101
    .local v6, "len":I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 102
    const/4 v11, 0x0

    iput v11, p0, Landroid/text/MeasuredText;->mPos:I

    .line 104
    iget-object v11, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v11, v11

    if-ge v11, v6, :cond_1

    .line 105
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v11

    iput-object v11, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 107
    :cond_1
    iget-object v11, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v11, v11

    if-ge v11, v6, :cond_3

    .line 108
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v11

    iput-object v11, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 110
    :cond_3
    iget-object v11, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v11, v12}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 112
    const/4 v7, 0x0

    .line 116
    .local v7, "sourceChars":[C
    instance-of v11, p1, Landroid/text/GetSourceChars;

    if-eqz v11, :cond_6

    .line 117
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    move-object v11, p1

    .line 118
    check-cast v11, Landroid/text/GetSourceChars;

    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-interface {v11, p2, v0, v7, v12}, Landroid/text/GetSourceChars;->getSourceChars(II[CI)V

    .line 123
    :goto_0
    instance-of v11, p1, Landroid/text/Spanned;

    if-eqz v11, :cond_8

    move-object v8, p1

    .line 124
    check-cast v8, Landroid/text/Spanned;

    .line 125
    .local v8, "spanned":Landroid/text/Spanned;
    const-class v11, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v8, p2, v0, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ReplacementSpan;

    .line 128
    .local v9, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v9

    if-ge v3, v11, :cond_8

    .line 129
    aget-object v11, v9, v3

    invoke-interface {v8, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    sub-int v10, v11, p2

    .line 130
    .local v10, "startInPara":I
    aget-object v11, v9, v3

    invoke-interface {v8, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    sub-int v2, v11, p2

    .line 132
    .local v2, "endInPara":I
    if-gez v10, :cond_4

    const/4 v10, 0x0

    .line 133
    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    .line 134
    :cond_5
    move v5, v10

    .local v5, "j":I
    :goto_2
    if-ge v5, v2, :cond_7

    .line 135
    iget-object v11, p0, Landroid/text/MeasuredText;->mChars:[C

    const v12, 0xfffc

    aput-char v12, v11, v5

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 120
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v8    # "spanned":Landroid/text/Spanned;
    .end local v9    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v10    # "startInPara":I
    :cond_6
    iget-object v7, p0, Landroid/text/MeasuredText;->mChars:[C

    goto :goto_0

    .line 128
    .restart local v2    # "endInPara":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v8    # "spanned":Landroid/text/Spanned;
    .restart local v9    # "spans":[Landroid/text/style/ReplacementSpan;
    .restart local v10    # "startInPara":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v8    # "spanned":Landroid/text/Spanned;
    .end local v9    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v10    # "startInPara":I
    :cond_8
    sget-object v11, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v11, :cond_9

    sget-object v11, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v11, :cond_9

    sget-object v11, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_a

    :cond_9
    const/4 v11, 0x0

    invoke-static {v7, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 144
    const/4 v11, 0x1

    iput v11, p0, Landroid/text/MeasuredText;->mDir:I

    .line 145
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 166
    :goto_3
    return-void

    .line 147
    :cond_a
    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v11, :cond_b

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v11, v11

    if-ge v11, v6, :cond_c

    .line 148
    :cond_b
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v11

    iput-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 151
    :cond_c
    sget-object v11, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_d

    .line 152
    const/4 v1, 0x1

    .line 163
    .local v1, "bidiRequest":I
    :goto_4
    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v7, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v11

    iput v11, p0, Landroid/text/MeasuredText;->mDir:I

    .line 164
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_3

    .line 153
    .end local v1    # "bidiRequest":I
    :cond_d
    sget-object v11, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_e

    .line 154
    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_4

    .line 155
    .end local v1    # "bidiRequest":I
    :cond_e
    sget-object v11, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_f

    .line 156
    const/4 v1, 0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_4

    .line 157
    .end local v1    # "bidiRequest":I
    :cond_f
    sget-object v11, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_10

    .line 158
    const/4 v1, -0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_4

    .line 160
    .end local v1    # "bidiRequest":I
    :cond_10
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v7, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 161
    .local v4, "isRtl":Z
    if-eqz v4, :cond_11

    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    :goto_5
    goto :goto_4

    .end local v1    # "bidiRequest":I
    :cond_11
    const/4 v1, 0x1

    goto :goto_5
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 91
    return-void
.end method
