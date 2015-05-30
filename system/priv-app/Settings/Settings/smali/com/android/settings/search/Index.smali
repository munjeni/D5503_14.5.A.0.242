.class public Lcom/android/settings/search/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/Index$1;,
        Lcom/android/settings/search/Index$SaveSearchQueryTask;,
        Lcom/android/settings/search/Index$UpdateIndexTask;,
        Lcom/android/settings/search/Index$UpdateData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field private static MAX_SAVED_SEARCH_QUERY:J

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static sInstance:Lcom/android/settings/search/Index;


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

.field private final mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWhitelist:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_rank"

    aput-object v1, v0, v3

    const-string v1, "data_title"

    aput-object v1, v0, v4

    const-string v1, "data_summary_on"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_keywords"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "class_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intent_target_package"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intent_target_class"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data_key_reference"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    .line 144
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data_title"

    aput-object v1, v0, v3

    const-string v1, "data_title_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_keywords"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    .line 150
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_summary_on"

    aput-object v1, v0, v3

    const-string v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_summary_off"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_entries_normalized"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    .line 160
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/android/settings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 181
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseAuthority"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    new-instance v0, Lcom/android/settings/search/Index$UpdateData;

    invoke-direct {v0}, Lcom/android/settings/search/Index$UpdateData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    .line 239
    iput-object p1, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    .line 240
    iput-object p2, p0, Lcom/android/settings/search/Index;->mBaseAuthority:Ljava/lang/String;

    .line 241
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/Index;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/Index;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/search/Index;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/provider/SearchIndexableData;
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 103
    sget-wide v0, Lcom/android/settings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    return-wide v0
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 25
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 623
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 625
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 626
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 631
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 632
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 633
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 634
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 635
    .local v16, "providerRank":I
    if-lez v16, :cond_1

    add-int v17, p5, v16

    .line 637
    .local v17, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 638
    .local v23, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 639
    .local v20, "summaryOn":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 640
    .local v19, "summaryOff":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 641
    .local v12, "entries":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 643
    .local v15, "keywords":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 645
    .local v18, "screenTitle":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, "className":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 648
    .local v13, "iconResId":I
    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, "action":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 651
    .local v22, "targetPackage":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 654
    .local v21, "targetClass":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 655
    .local v14, "key":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 657
    .local v24, "userId":I
    new-instance v11, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 658
    .local v11, "data":Lcom/android/settings/search/SearchIndexableRaw;
    move/from16 v0, v17

    iput v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    .line 659
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 660
    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 661
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 662
    iput-object v12, v11, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 663
    iput-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 664
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 665
    iput-object v8, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 666
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 667
    iput v13, v11, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 668
    iput-object v7, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 669
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 670
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 671
    iput-object v14, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 672
    move/from16 v0, v24

    iput v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    .line 674
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 678
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v12    # "entries":Ljava/lang/String;
    .end local v13    # "iconResId":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keywords":Ljava/lang/String;
    .end local v16    # "providerRank":I
    .end local v17    # "rank":I
    .end local v18    # "screenTitle":Ljava/lang/String;
    .end local v19    # "summaryOff":Ljava/lang/String;
    .end local v20    # "summaryOn":Ljava/lang/String;
    .end local v21    # "targetClass":Ljava/lang/String;
    .end local v22    # "targetPackage":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v24    # "userId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v16    # "providerRank":I
    :cond_1
    move/from16 v17, p5

    .line 635
    goto/16 :goto_2

    .line 678
    .end local v16    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 18
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 576
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 578
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 579
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_0
    return-void

    .line 584
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 585
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 586
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 587
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 588
    .local v12, "providerRank":I
    if-lez v12, :cond_1

    add-int v13, p5, v12

    .line 590
    .local v13, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 592
    .local v17, "xmlResId":I
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "className":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 595
    .local v11, "iconResId":I
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 598
    .local v16, "targetPackage":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 601
    .local v15, "targetClass":Ljava/lang/String;
    new-instance v14, Landroid/provider/SearchIndexableResource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 602
    .local v14, "sir":Landroid/provider/SearchIndexableResource;
    iput v13, v14, Landroid/provider/SearchIndexableResource;->rank:I

    .line 603
    move/from16 v0, v17

    iput v0, v14, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 604
    iput-object v8, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 605
    move-object/from16 v0, p2

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 606
    iput v11, v14, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 607
    iput-object v7, v14, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 608
    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 609
    iput-object v15, v14, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 611
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 615
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "iconResId":I
    .end local v12    # "providerRank":I
    .end local v13    # "rank":I
    .end local v14    # "sir":Landroid/provider/SearchIndexableResource;
    .end local v15    # "targetClass":Ljava/lang/String;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "xmlResId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v12    # "providerRank":I
    :cond_1
    move/from16 v13, p5

    .line 588
    goto :goto_2

    .line 615
    .end local v12    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 360
    :try_start_0
    invoke-static {p2}, Lcom/android/settings/search/Ranking;->getBaseRankForAuthority(Ljava/lang/String;)I

    move-result v5

    .line 362
    .local v5, "baseRank":I
    iget-object v0, p0, Lcom/android/settings/search/Index;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    .line 365
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-static {p2}, Lcom/android/settings/search/Index;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    .local v3, "uriForResources":Landroid/net/Uri;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/Index;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 369
    invoke-static {p2}, Lcom/android/settings/search/Index;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 370
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v6, p0

    move-object v7, v1

    move-object v8, p1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/search/Index;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 372
    const/4 v0, 0x1

    .line 376
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "uriForResources":Landroid/net/Uri;
    .end local v5    # "baseRank":I
    .end local v9    # "uriForRawData":Landroid/net/Uri;
    :goto_1
    return v0

    .line 362
    .restart local v5    # "baseRank":I
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 373
    .end local v5    # "baseRank":I
    :catch_0
    move-exception v12

    .line 374
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create context for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/Index;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/search/Index;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 385
    return-void
.end method

.method private buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p2

    .line 728
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 729
    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_0

    .line 733
    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;
    .param p3, "withOrderBy"    # Z

    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/Index;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    if-eqz p3, :cond_0

    .line 686
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v1, "data_rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/android/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 696
    sget-object v2, Lcom/android/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    sget-object v2, Lcom/android/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 698
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    :cond_1
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/Index;->buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefs_index"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " MATCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/Index;->buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 714
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 718
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-string v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :goto_0
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 300
    :cond_0
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1211
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1212
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1214
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 1215
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1216
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 1217
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1222
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1223
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1219
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1223
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1201
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1227
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1228
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 1230
    .local v5, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 1231
    .local v1, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1232
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_0

    .line 1234
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1238
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1239
    .local v0, "count":I
    :goto_1
    if-nez v0, :cond_2

    .line 1240
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1241
    const/4 v6, 0x0

    .line 1249
    :goto_2
    return-object v6

    .line 1238
    .end local v0    # "count":I
    :cond_1
    array-length v0, v1

    goto :goto_1

    .line 1243
    .restart local v0    # "count":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1244
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_3
    if-ge v2, v0, :cond_3

    .line 1245
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1248
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1235
    .end local v0    # "count":I
    .end local v2    # "n":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1171
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1207
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1183
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1195
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1189
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1177
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 780
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 785
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/android/settings/search/Index;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 783
    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v0, v2

    .line 785
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    sget-object v0, Lcom/android/settings/search/Index;->sInstance:Lcom/android/settings/search/Index;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/settings/search/Index;

    const-string v1, "com.android.settings"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/Index;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/search/Index;->sInstance:Lcom/android/settings/search/Index;

    .line 235
    :goto_0
    sget-object v0, Lcom/android/settings/search/Index;->sInstance:Lcom/android/settings/search/Index;

    return-object v0

    .line 233
    :cond_0
    sget-object v0, Lcom/android/settings/search/Index;->sInstance:Lcom/android/settings/search/Index;

    invoke-virtual {v0, p0}, Lcom/android/settings/search/Index;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 406
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 408
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 409
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object v9, Lcom/android/settings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 424
    :goto_0
    return-object v9

    .line 413
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 416
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 417
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 424
    .end local v6    # "count":I
    .end local v8    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 392
    .local v1, "packageContext":Landroid/content/Context;
    invoke-static {p2}, Lcom/android/settings/search/Index;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 393
    .local v2, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v3, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/Index;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 398
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v3, Lcom/android/settings/search/Index;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 838
    :try_start_0
    const-string v3, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 839
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 853
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Index"

    const-string v5, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    move-object v3, v4

    .line 853
    goto :goto_0

    .line 842
    :catch_1
    move-exception v2

    .line 843
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "Index"

    const-string v5, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 845
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Index"

    const-string v5, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 848
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Index"

    const-string v5, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "provider"    # Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p9, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_1

    .line 994
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    return-void

    .line 998
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v24

    .line 1000
    .local v24, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    if-eqz v24, :cond_4

    .line 1001
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 1002
    .local v25, "rawSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 1003
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchIndexableRaw;

    .line 1006
    .local v23, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1002
    :cond_2
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1010
    :cond_3
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1014
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 1033
    .end local v21    # "i":I
    .end local v23    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v25    # "rawSize":I
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v26

    .line 1035
    .local v26, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-eqz v26, :cond_0

    .line 1036
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 1037
    .local v27, "resSize":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 1038
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/provider/SearchIndexableResource;

    .line 1041
    .local v22, "item":Landroid/provider/SearchIndexableResource;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1037
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 1045
    :cond_5
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    if-nez v3, :cond_6

    move/from16 v9, p6

    .line 1046
    .local v9, "itemIconResId":I
    :goto_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->rank:I

    if-nez v3, :cond_7

    move/from16 v10, p7

    .line 1047
    .local v10, "itemRank":I
    :goto_5
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v8, p5

    .line 1050
    .local v8, "itemClassName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v22

    iget v7, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v13, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/android/settings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1045
    .end local v8    # "itemClassName":Ljava/lang/String;
    .end local v9    # "itemIconResId":I
    .end local v10    # "itemRank":I
    :cond_6
    move-object/from16 v0, v22

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    goto :goto_4

    .line 1046
    .restart local v9    # "itemIconResId":I
    :cond_7
    move-object/from16 v0, v22

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    goto :goto_5

    .line 1047
    .restart local v10    # "itemRank":I
    :cond_8
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_6
.end method

.method private indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 47
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "xmlResId"    # I
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "intentAction"    # Ljava/lang/String;
    .param p9, "intentTargetPackage"    # Ljava/lang/String;
    .param p10, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p11, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v44, 0x0

    .line 863
    .local v44, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v44

    .line 867
    :cond_0
    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v46

    .local v46, "type":I
    const/4 v3, 0x1

    move/from16 v0, v46

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v46

    if-ne v0, v3, :cond_0

    .line 871
    :cond_1
    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 872
    .local v42, "nodeName":Ljava/lang/String;
    const-string v3, "PreferenceScreen"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/search/SomcIndexUtil;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->isDashboardCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/search/SomcIndexUtil;

    move-result-object v3

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v3 .. v14}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcDashboardTiles(Landroid/content/Context;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v45

    .line 878
    .local v45, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    .line 879
    .local v40, "holder":Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->locale:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->title:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->entries:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v10, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->className:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v11, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, v40

    iget v12, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->iconResId:I

    move-object/from16 v0, v40

    iget v13, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->rank:I

    move-object/from16 v0, v40

    iget-object v14, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->keywords:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v15, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->enabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 980
    .end local v40    # "holder":Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v42    # "nodeName":Ljava/lang/String;
    .end local v45    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    .end local v46    # "type":I
    :catch_0
    move-exception v39

    .line 981
    .local v39, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    .end local v39    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v44, :cond_2

    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .restart local v41    # "i$":Ljava/util/Iterator;
    .restart local v42    # "nodeName":Ljava/lang/String;
    .restart local v45    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    .restart local v46    # "type":I
    :cond_3
    if-eqz v44, :cond_4

    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->close()V

    .line 987
    :cond_4
    :goto_1
    return-void

    .line 888
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v45    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 982
    .end local v42    # "nodeName":Ljava/lang/String;
    .end local v46    # "type":I
    :catch_1
    move-exception v39

    .line 983
    .local v39, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 894
    .end local v39    # "e":Ljava/io/IOException;
    .restart local v42    # "nodeName":Ljava/lang/String;
    .restart local v46    # "type":I
    :cond_6
    :try_start_4
    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v43

    .line 895
    .local v43, "outerDepth":I
    invoke-static/range {v44 .. v44}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v38

    .line 897
    .local v38, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 899
    .local v11, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 907
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 909
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 910
    .local v7, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 912
    .local v14, "keywords":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 921
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/search/SomcIndexUtil;

    move-result-object v20

    move-object/from16 v21, p1

    move/from16 v22, p4

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move-object/from16 v25, p5

    move-object/from16 v26, v11

    move/from16 v27, p6

    move/from16 v28, p7

    move-object/from16 v29, p8

    move-object/from16 v30, p9

    move-object/from16 v31, p10

    move-object/from16 v32, p11

    invoke-virtual/range {v20 .. v32}, Lcom/sonymobile/settings/search/SomcIndexUtil;->handleIncludePreferencesIfNecessary(Landroid/content/Context;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v45

    .line 926
    .restart local v45    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    .line 927
    .restart local v40    # "holder":Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->locale:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOn:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOff:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->entries:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->className:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->screenTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->iconResId:I

    move/from16 v29, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->rank:I

    move/from16 v30, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->keywords:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentAction:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->enabled:Z

    move/from16 v35, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->key:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->userId:I

    move/from16 v37, v0

    move-object/from16 v20, p0

    invoke-direct/range {v20 .. v37}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_2

    .line 936
    .end local v40    # "holder":Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
    :cond_8
    :goto_3
    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v46

    const/4 v3, 0x1

    move/from16 v0, v46

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    move/from16 v0, v46

    if-ne v0, v3, :cond_9

    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v43

    if-le v3, v0, :cond_d

    .line 937
    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v46

    if-eq v0, v3, :cond_8

    const/4 v3, 0x4

    move/from16 v0, v46

    if-eq v0, v3, :cond_8

    .line 941
    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 944
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 949
    .restart local v6    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 951
    .restart local v14    # "keywords":Ljava/lang/String;
    const-string v3, "CheckBoxPreference"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 954
    .restart local v7    # "summary":Ljava/lang/String;
    const/4 v9, 0x0

    .line 956
    .local v9, "entries":Ljava/lang/String;
    const-string v3, "ListPreference"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    .line 961
    :cond_a
    const/4 v8, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto/16 :goto_3

    .line 966
    .end local v7    # "summary":Ljava/lang/String;
    .end local v9    # "entries":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 967
    .local v24, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    .line 969
    .local v25, "summaryOff":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 973
    :cond_c
    const/16 v26, 0x0

    const/16 v35, 0x1

    const/16 v37, -0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v6

    move-object/from16 v27, p5

    move-object/from16 v28, v11

    move/from16 v29, p6

    move/from16 v30, p7

    move-object/from16 v31, v14

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v36, v19

    invoke-direct/range {v20 .. v37}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 985
    .end local v6    # "title":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v24    # "summaryOn":Ljava/lang/String;
    .end local v25    # "summaryOff":Ljava/lang/String;
    :cond_d
    if-eqz v44, :cond_4

    invoke-interface/range {v44 .. v44}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SearchIndexableRaw;)V
    .locals 19
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "raw"    # Lcom/android/settings/search/SearchIndexableRaw;

    .prologue
    .line 751
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    :goto_0
    return-void

    .line 755
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    move/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lcom/android/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "sir"    # Landroid/provider/SearchIndexableResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 791
    .local p4, "nonIndexableKeysFromResource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_1

    .line 792
    const-string v1, "Index"

    const-string v2, "Cannot index a null resource!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    iget v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    sget v2, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    if-le v1, v2, :cond_3

    .line 799
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 800
    .local v15, "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 801
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 804
    :cond_2
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/settings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 809
    .end local v15    # "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 810
    const-string v1, "Index"

    const-string v2, "Cannot index an empty Search Provider name!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/search/Index;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 815
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_5

    .line 816
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchIndexableResource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should implement the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settings/search/Indexable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interface!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 823
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/search/Index;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v7

    .line 824
    .local v7, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    if-eqz v7, :cond_0

    .line 825
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 826
    .local v14, "providerNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 827
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 830
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/android/settings/search/Index;->indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/provider/SearchIndexableData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    .line 742
    check-cast p3, Landroid/provider/SearchIndexableResource;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/search/Index;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 743
    .restart local p3    # "data":Landroid/provider/SearchIndexableData;
    :cond_1
    instance-of v0, p3, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v0, :cond_0

    .line 744
    check-cast p3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search/Index;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SearchIndexableRaw;)V

    goto :goto_0
.end method

.method private static isIndexableClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/settings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrivilegedPackage(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 485
    iget-object v9, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 487
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v6, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 490
    .local v5, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, p0, Lcom/android/settings/search/Index;->mWhitelist:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 491
    .local v2, "element":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 495
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return v7

    .line 490
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    move v7, v8

    goto :goto_1

    .line 494
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v7, v8

    .line 495
    goto :goto_1
.end method

.method private isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 462
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 463
    .local v0, "authority":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 465
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v4

    .line 469
    :cond_1
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 470
    .local v2, "readPermission":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 472
    .local v3, "writePermission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 476
    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    invoke-direct {p0, v1}, Lcom/android/settings/search/Index;->isPrivilegedPackage(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1098
    if-eqz p0, :cond_0

    const-string v0, "\u2011"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1109
    if-eqz p0, :cond_0

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v2, v5}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    .local v3, "normalized":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1113
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1114
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1116
    .local v0, "c":C
    const/16 v5, 0x3041

    if-lt v0, v5, :cond_1

    const/16 v5, 0x3096

    if-gt v0, v5, :cond_1

    .line 1117
    add-int/lit16 v5, v0, -0x3041

    add-int/lit16 v5, v5, 0x30a1

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1113
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1109
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "nohyphen":Ljava/lang/String;
    .end local v3    # "normalized":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 1119
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "nohyphen":Ljava/lang/String;
    .restart local v3    # "normalized":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1123
    .end local v0    # "c":C
    :cond_2
    sget-object v5, Lcom/android/settings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1102
    if-eqz p0, :cond_0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "normalized":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1102
    .end local v0    # "nohyphen":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateInternal()V
    .locals 5

    .prologue
    .line 564
    iget-object v3, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    monitor-enter v3

    .line 565
    :try_start_0
    new-instance v1, Lcom/android/settings/search/Index$UpdateIndexTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/search/Index$UpdateIndexTask;-><init>(Lcom/android/settings/search/Index;Lcom/android/settings/search/Index$1;)V

    .line 566
    .local v1, "task":Lcom/android/settings/search/Index$UpdateIndexTask;
    iget-object v2, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/android/settings/search/Index$UpdateData;->copy()Lcom/android/settings/search/Index$UpdateData;

    move-result-object v0

    .line 567
    .local v0, "copy":Lcom/android/settings/search/Index$UpdateData;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/settings/search/Index$UpdateData;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/settings/search/Index$UpdateIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    iget-object v2, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/android/settings/search/Index$UpdateData;->clear()V

    .line 569
    monitor-exit v3

    .line 570
    return-void

    .line 569
    .end local v0    # "copy":Lcom/android/settings/search/Index$UpdateData;
    .end local v1    # "task":Lcom/android/settings/search/Index$UpdateIndexTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "updatedTitle"    # Ljava/lang/String;
    .param p4, "normalizedTitle"    # Ljava/lang/String;
    .param p5, "updatedSummaryOn"    # Ljava/lang/String;
    .param p6, "normalizedSummaryOn"    # Ljava/lang/String;
    .param p7, "updatedSummaryOff"    # Ljava/lang/String;
    .param p8, "normalizedSummaryOff"    # Ljava/lang/String;
    .param p9, "entries"    # Ljava/lang/String;
    .param p10, "normalizedEntries"    # Ljava/lang/String;
    .param p11, "className"    # Ljava/lang/String;
    .param p12, "screenTitle"    # Ljava/lang/String;
    .param p13, "iconResId"    # I
    .param p14, "rank"    # I
    .param p15, "keywords"    # Ljava/lang/String;
    .param p16, "intentAction"    # Ljava/lang/String;
    .param p17, "intentTargetPackage"    # Ljava/lang/String;
    .param p18, "intentTargetClass"    # Ljava/lang/String;
    .param p19, "enabled"    # Z
    .param p20, "key"    # Ljava/lang/String;
    .param p21, "userId"    # I

    .prologue
    .line 1134
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1140
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1144
    .local v1, "docId":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1145
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "docid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    const-string v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v4, "data_rank"

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1148
    const-string v4, "data_title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v4, "data_title_normalized"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v4, "data_summary_on"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v4, "data_summary_on_normalized"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v4, "data_summary_off"

    invoke-virtual {v3, v4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v4, "data_summary_off_normalized"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v4, "data_entries"

    invoke-virtual {v3, v4, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v4, "data_entries_normalized"

    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v4, "data_keywords"

    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v4, "class_name"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v4, "screen_title"

    move-object/from16 v0, p12

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v4, "intent_action"

    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v4, "intent_target_package"

    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v4, "intent_target_class"

    move-object/from16 v0, p18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v4, "icon"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string v4, "enabled"

    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1164
    const-string v4, "data_key_reference"

    move-object/from16 v0, p20

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v4, "user_id"

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    const-string v4, "prefs_index"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 39
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summaryOn"    # Ljava/lang/String;
    .param p5, "summaryOff"    # Ljava/lang/String;
    .param p6, "entries"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "screenTitle"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "rank"    # I
    .param p11, "keywords"    # Ljava/lang/String;
    .param p12, "intentAction"    # Ljava/lang/String;
    .param p13, "intentTargetPackage"    # Ljava/lang/String;
    .param p14, "intentTargetClass"    # Ljava/lang/String;
    .param p15, "enabled"    # Z
    .param p16, "key"    # Ljava/lang/String;
    .param p17, "userId"    # I

    .prologue
    .line 1065
    invoke-static/range {p3 .. p3}, Lcom/android/settings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1066
    .local v4, "updatedTitle":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/settings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1067
    .local v6, "updatedSummaryOn":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/settings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1069
    .local v8, "updatedSummaryOff":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    invoke-static {v4}, Lcom/android/settings/search/Index;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1071
    .local v5, "normalizedTitle":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/search/Index;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1072
    .local v7, "normalizedSummaryOn":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/search/Index;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1073
    .local v9, "normalizedSummaryOff":Ljava/lang/String;
    invoke-static/range {p11 .. p11}, Lcom/android/settings/search/Index;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1074
    .local v16, "normalizedKeywords":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/android/settings/search/Index;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "normalizedEntries":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move/from16 v20, p15

    move-object/from16 v21, p16

    move/from16 v22, p17

    .line 1076
    invoke-direct/range {v1 .. v22}, Lcom/android/settings/search/Index;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1095
    .end local v16    # "normalizedKeywords":Ljava/lang/String;
    :goto_0
    return-void

    .line 1083
    .end local v5    # "normalizedTitle":Ljava/lang/String;
    .end local v7    # "normalizedSummaryOn":Ljava/lang/String;
    .end local v9    # "normalizedSummaryOff":Ljava/lang/String;
    .end local v11    # "normalizedEntries":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/android/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1084
    .restart local v5    # "normalizedTitle":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1085
    .restart local v7    # "normalizedSummaryOn":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1086
    .restart local v9    # "normalizedSummaryOff":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/android/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "normalizedEntries":Ljava/lang/String;
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, p6

    move-object/from16 v27, v11

    move-object/from16 v28, p7

    move-object/from16 v29, p8

    move/from16 v30, p9

    move/from16 v31, p10

    move-object/from16 v32, p11

    move-object/from16 v33, p12

    move-object/from16 v34, p13

    move-object/from16 v35, p14

    move/from16 v36, p15

    move-object/from16 v37, p16

    move/from16 v38, p17

    .line 1088
    invoke-direct/range {v17 .. v38}, Lcom/android/settings/search/Index;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public addIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    monitor-exit v1

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSavedQuery(Ljava/lang/String;)J
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 316
    new-instance v1, Lcom/android/settings/search/Index$SaveSearchQueryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/search/Index$SaveSearchQueryTask;-><init>(Lcom/android/settings/search/Index;Lcom/android/settings/search/Index$1;)V

    .line 317
    .local v1, "task":Lcom/android/settings/search/Index$SaveSearchQueryTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/Index$SaveSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/search/Index$SaveSearchQueryTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 325
    :goto_0
    return-wide v2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 322
    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 325
    goto :goto_0
.end method

.method public deleteIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/settings/search/Index;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggestions query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/settings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 252
    invoke-direct {p0}, Lcom/android/settings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 253
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x3

    new-array v0, v6, [Landroid/database/Cursor;

    .line 255
    .local v0, "cursors":[Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    invoke-static {p1}, Lcom/android/settings/search/Index;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    :goto_0
    sget-object v6, Lcom/android/settings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v6, v10}, Lcom/android/settings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "primarySql":Ljava/lang/String;
    const-string v6, "Index"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Search primary query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v0, v9

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/settings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v6, v9}, Lcom/android/settings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .local v5, "sql":Ljava/lang/StringBuilder;
    const-string v6, " EXCEPT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "secondarySql":Ljava/lang/String;
    const-string v6, "Index"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Search secondary query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v0, v10

    .line 274
    new-instance v2, Landroid/database/MergeCursor;

    invoke-direct {v2, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 275
    .local v2, "mergeCursor":Landroid/database/MergeCursor;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/MergeCursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 276
    invoke-virtual {v2}, Landroid/database/MergeCursor;->close()V

    .line 277
    iget-object v6, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/search/SomcIndexUtil;

    move-result-object v6

    sget-object v7, Lcom/android/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v6, v0, v7, p1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getCursorForNoMatches([Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MergeCursor;

    move-result-object v2

    .line 280
    :cond_0
    return-object v2

    .line 258
    .end local v2    # "mergeCursor":Landroid/database/MergeCursor;
    .end local v3    # "primarySql":Ljava/lang/String;
    .end local v4    # "secondarySql":Ljava/lang/String;
    .end local v5    # "sql":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {p1}, Lcom/android/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    .line 245
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 330
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 333
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a007f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/search/Index;->mWhitelist:[Ljava/lang/String;

    .line 335
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 336
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 337
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 338
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2}, Lcom/android/settings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 336
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 342
    .local v0, "authority":Ljava/lang/String;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 345
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v6, v0}, Lcom/android/settings/search/Index;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    invoke-direct {p0, v6, v0}, Lcom/android/settings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v8, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/search/IndexDatabaseHelper;->setLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 355
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/search/Index;->updateInternal()V

    .line 356
    return-void
.end method

.method public updateFromClassNameResource(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .param p3, "includeInSearchResults"    # Z

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class name cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_0
    invoke-static {p1}, Lcom/android/settings/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    .line 519
    .local v0, "res":Landroid/provider/SearchIndexableResource;
    if-nez v0, :cond_1

    .line 520
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/settings/search/Index;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 524
    iput-boolean p3, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 525
    if-eqz p2, :cond_2

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/settings/search/Index;->deleteIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 528
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 530
    invoke-direct {p0}, Lcom/android/settings/search/Index;->updateInternal()V

    .line 531
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    goto :goto_0
.end method

.method public updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/search/Index;->mDataToProcess:Lcom/android/settings/search/Index$UpdateData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 537
    invoke-direct {p0}, Lcom/android/settings/search/Index;->updateInternal()V

    .line 538
    return-void
.end method
