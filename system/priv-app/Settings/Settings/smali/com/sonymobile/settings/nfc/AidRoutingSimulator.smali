.class public abstract Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    }
.end annotation


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidMatchingSupport:I

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultRoute:I

.field mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mRoutedAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "route"    # I
    .param p2, "matchingMode"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    .line 145
    iput p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    .line 146
    iput p2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    .line 147
    return-void
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-direct {v4, v14}, Landroid/util/SparseArray;-><init>(I)V

    .line 325
    .local v4, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 327
    .local v13, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 328
    .local v2, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v12, 0x0

    .line 329
    .local v12, "route":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, "aid":Ljava/lang/String;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v12, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 331
    .local v8, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v4, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    .end local v1    # "aid":Ljava/lang/String;
    .end local v8    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "route":I
    :cond_0
    const/4 v12, 0x1

    goto :goto_1

    .line 336
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 337
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 339
    const/4 v14, 0x0

    monitor-exit v15

    .line 410
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    return v14

    .line 343
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 344
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    .line 345
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 346
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 362
    .local v7, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 363
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 366
    .local v6, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 367
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .restart local v1    # "aid":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 369
    .restart local v12    # "route":I
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v12, v14, :cond_4

    .line 374
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_3

    .line 409
    .end local v1    # "aid":Ljava/lang/String;
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "defaultRouteAid":Ljava/lang/String;
    .end local v7    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "route":I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 382
    :cond_5
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_b

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 384
    .restart local v12    # "route":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v12, v14, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 386
    .local v5, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    .restart local v1    # "aid":Ljava/lang/String;
    const-string v14, "*"

    invoke-virtual {v1, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 388
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    if-nez v14, :cond_7

    .line 389
    const-string v14, "HceSettings RoutingSimulator"

    const-string v16, "This device does not support prefix AIDs."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 390
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    .line 394
    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    .line 396
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    .line 404
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    .line 382
    .end local v1    # "aid":Ljava/lang/String;
    .end local v5    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 409
    .end local v12    # "route":I
    :cond_b
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .locals 9
    .param p1, "prefixAid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 430
    new-instance v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 431
    .local v4, "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "plainAid":Ljava/lang/String;
    const-string v5, "%-32s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "lastAidWithPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v8, v2, v8}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    iput-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 438
    iget-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 443
    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 444
    iget-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    :cond_1
    return-object v4
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    new-instance v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 416
    .local v0, "defaultServiceInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    .line 417
    .local v2, "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    const-string v4, "payment"

    iget-object v5, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 419
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    iput-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    goto :goto_0

    .line 421
    :cond_1
    iget-object v4, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 423
    iput-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    goto :goto_0

    .line 426
    .end local v2    # "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_2
    return-object v0
.end method

.method generateAidCacheLocked()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 203
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    .line 205
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v1, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 208
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v10, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "aidToResolve":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "*"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 217
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "*"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 226
    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    .local v8, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;

    move-result-object v7

    .line 233
    .local v7, "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {p0, v8, v11}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v9

    .line 235
    .local v9, "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_2

    .line 240
    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    .end local v7    # "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_1
    :goto_1
    invoke-virtual {v1, v10}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 287
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 241
    .restart local v7    # "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .restart local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_2
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 245
    const/4 v5, 0x0

    .line 247
    .local v5, "foundChildService":Z
    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 248
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 252
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {p0, v11, v13}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    .line 258
    .local v2, "childResolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    iput-boolean v13, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    .line 259
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v11, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    move v11, v12

    :goto_3
    or-int/2addr v5, v11

    goto :goto_2

    :cond_4
    move v11, v13

    goto :goto_3

    .line 266
    .end local v2    # "childResolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;>;"
    :cond_5
    if-nez v5, :cond_1

    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 267
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 278
    .end local v5    # "foundChildService":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "prefixConflicts":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    .local v3, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {p0, v3, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v14

    invoke-virtual {v11, v0, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 290
    .end local v0    # "aidToResolve":Ljava/lang/String;
    .end local v3    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v10    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->updateRoutingLocked()V

    .line 291
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 165
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 166
    .local v6, "serviceDisabled":Z
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    const-string v7, "HceSettings RoutingSimulator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not valid."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_2
    const-string v7, "*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->supportsAidPrefixRegistration()Z

    move-result v7

    if-nez v7, :cond_3

    .line 172
    const-string v7, "HceSettings RoutingSimulator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prefix AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ignored on device that doesn\'t support it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v3, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "other"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 183
    :cond_4
    new-instance v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 184
    .local v4, "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 185
    iput-object v3, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 186
    invoke-virtual {v3, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    .line 188
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 189
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 191
    .local v5, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    .end local v5    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v5    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 200
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    .end local v5    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .end local v6    # "serviceDisabled":Z
    :cond_6
    return-void
.end method

.method public abstract getMaxAidEntries()I
.end method

.method public abstract getMaxAidLength()I
.end method

.method public getRoutedAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    return-object v0
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .locals 8
    .param p2, "makeSingleServiceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;Z)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 465
    :cond_0
    const-string v6, "HceSettings RoutingSimulator"

    const-string v7, "resolveAidConflict: No services passed in."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v3, 0x0

    .line 522
    :cond_1
    :goto_0
    return-object v3

    .line 468
    :cond_2
    new-instance v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    .line 469
    .local v3, "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    const-string v6, "other"

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v2, 0x0

    .line 473
    .local v2, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    .line 474
    .local v4, "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    const-string v6, "payment"

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 476
    .local v5, "serviceClaimsPaymentAid":Z
    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 477
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    if-eqz v5, :cond_4

    .line 479
    const-string v6, "payment"

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    .line 481
    :cond_4
    iget-object v1, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 482
    :cond_5
    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 484
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v6, "payment"

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    .line 486
    iget-object v2, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 488
    :cond_6
    if-nez v5, :cond_3

    .line 496
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    .end local v4    # "serviceAidInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    .end local v5    # "serviceClaimsPaymentAid":Z
    :cond_7
    if-eqz v1, :cond_8

    .line 505
    iput-object v1, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_0

    .line 506
    :cond_8
    if-eqz v2, :cond_9

    .line 511
    iput-object v2, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_0

    .line 513
    :cond_9
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    if-eqz p2, :cond_1

    .line 516
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_0
.end method

.method resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;>;"
    const/4 v3, 0x1

    .line 528
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    move-result-object v1

    .line 531
    .local v1, "prefixDefaultInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    move-result-object v0

    .line 538
    .local v0, "conflictingDefaultInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    iget-object v2, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    .line 569
    :goto_0
    return-object v2

    .line 545
    :cond_0
    iget-object v2, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_2

    .line 547
    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    goto :goto_0

    .line 560
    :cond_2
    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_4

    .line 564
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    goto :goto_0

    .line 569
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    goto :goto_0
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method public startRouting(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p3, "defaultPayment"    # Landroid/content/ComponentName;
    .param p4, "foregroundService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local p2, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object p2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    .line 152
    iput-object p3, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 153
    iput-object p4, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 154
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->generateServiceMapLocked(Ljava/util/List;)V

    .line 156
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->generateAidCacheLocked()V

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 575
    iget v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateRoutingLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 294
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 297
    .local v4, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    .line 300
    .local v3, "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    iget-boolean v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    if-eqz v5, :cond_0

    .line 304
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v5, :cond_1

    .line 309
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_1
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 313
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    :cond_2
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 316
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;>;"
    .end local v3    # "resolveInfo":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->configureRouting(Ljava/util/HashMap;)Z

    .line 321
    return-void
.end method
