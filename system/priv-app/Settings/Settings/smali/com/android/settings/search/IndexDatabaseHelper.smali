.class public Lcom/android/settings/search/IndexDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndexDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v0, "search_index.db"

    const/4 v1, 0x0

    const/16 v2, 0x73

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 206
    iput-object p1, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 207
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x7

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 218
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "simSerialNumber":Ljava/lang/String;
    :goto_0
    const-string v3, "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_entries_normalized, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v3, "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL, somc_ext_version INTEGER, somc_sw_revision VARCHAR(32) NOT NULL, somc_cdf_version VARCHAR(32) NOT NULL, somc_cdf_revision VARCHAR(32) NOT NULL, somc_cdf_active VARCHAR(32) NOT NULL, somc_sim_serial_number VARCHAR(32), somc_indexing_successful VARCHAR(32) NOT NULL)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v3, "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string v3, "INSERT INTO meta_index(build, somc_ext_version, somc_sw_revision, somc_cdf_version, somc_cdf_revision, somc_cdf_active, somc_sim_serial_number, somc_indexing_successful) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 225
    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    const/4 v3, 0x2

    const-wide/16 v4, 0x4

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 227
    const/4 v3, 0x3

    const-string v4, "ro.semc.version.sw_revision"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 228
    const/4 v3, 0x4

    const-string v4, "ro.semc.version.cust"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 229
    const/4 v3, 0x5

    const-string v4, "ro.semc.version.cust_revision"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 230
    const/4 v3, 0x6

    const-string v4, "ro.semc.version.cust.active"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 232
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 237
    :goto_1
    const/16 v3, 0x8

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 239
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 240
    const-string v3, "IndexDatabaseHelper"

    const-string v4, "Bootstrapped database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 218
    .end local v0    # "simSerialNumber":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    .restart local v0    # "simSerialNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 420
    const-string v0, "DROP TABLE IF EXISTS meta_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    const-string v0, "DROP TABLE IF EXISTS prefs_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    const-string v0, "DROP TABLE IF EXISTS saved_queries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 297
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT build FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 306
    :cond_0
    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_1
    :goto_0
    return-object v2

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "IndexDatabaseHelper"

    const-string v4, "Cannot get build version from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 306
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "version":I
    const/4 v0, 0x0

    .line 317
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT somc_ext_version FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 324
    :cond_0
    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_1
    :goto_0
    return v2

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 324
    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-class v1, Lcom/android/settings/search/IndexDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/settings/search/IndexDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/search/IndexDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    .line 201
    :cond_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 346
    const/4 v1, 0x1

    .line 347
    .local v1, "successful":Z
    const/4 v0, 0x0

    .line 349
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "SELECT somc_indexing_successful FROM meta_index LIMIT 1;"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 356
    :cond_0
    if-eqz v0, :cond_1

    .line 357
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    :goto_0
    return v1

    .line 353
    :catch_0
    move-exception v2

    .line 356
    if-eqz v0, :cond_1

    .line 357
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private isSimChanged(Ljava/lang/String;)Z
    .locals 7
    .param p1, "simSerialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 406
    iget-object v5, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 408
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 414
    :goto_0
    return v4

    .line 410
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "newSimSerialNumber":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 414
    .local v0, "isSimAbsent":Z
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0    # "isSimAbsent":Z
    :cond_3
    move v0, v4

    .line 411
    goto :goto_1

    .restart local v0    # "isSimAbsent":Z
    :cond_4
    move v3, v4

    .line 414
    goto :goto_2
.end method

.method private reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    return-void
.end method


# virtual methods
.method protected isSomcPartUpdated(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 367
    const/4 v6, 0x0

    .line 368
    .local v6, "isSomcPartUpdated":Z
    const-string v14, "ro.semc.version.sw_revision"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "newSwRevision":Ljava/lang/String;
    const-string v14, "ro.semc.version.cust"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 370
    .local v9, "newCdfVersion":Ljava/lang/String;
    const-string v14, "ro.semc.version.cust_revision"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, "newCdfRevision":Ljava/lang/String;
    const-string v14, "ro.semc.version.cust.active"

    const-string v15, "unknow"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "newCdfActive":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 375
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 377
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v14, "SELECT somc_sw_revision, somc_cdf_version, somc_cdf_revision, somc_cdf_active, somc_sim_serial_number FROM meta_index LIMIT 1;"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 378
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 379
    const-string v14, "somc_sw_revision"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 381
    .local v12, "swRevision":Ljava/lang/String;
    const-string v14, "somc_cdf_version"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "cdfVersion":Ljava/lang/String;
    const-string v14, "somc_cdf_revision"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "cdfRevision":Ljava/lang/String;
    const-string v14, "somc_cdf_active"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "cdfActive":Ljava/lang/String;
    const-string v14, "somc_sim_serial_number"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 389
    .local v11, "simSerialNumber":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/search/IndexDatabaseHelper;->isSimChanged(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_2

    const/4 v6, 0x1

    .line 397
    .end local v1    # "cdfActive":Ljava/lang/String;
    .end local v2    # "cdfRevision":Ljava/lang/String;
    .end local v3    # "cdfVersion":Ljava/lang/String;
    .end local v11    # "simSerialNumber":Ljava/lang/String;
    .end local v12    # "swRevision":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 398
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_1
    :goto_1
    return v6

    .line 389
    .restart local v1    # "cdfActive":Ljava/lang/String;
    .restart local v2    # "cdfRevision":Ljava/lang/String;
    .restart local v3    # "cdfVersion":Ljava/lang/String;
    .restart local v11    # "simSerialNumber":Ljava/lang/String;
    .restart local v12    # "swRevision":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 394
    .end local v1    # "cdfActive":Ljava/lang/String;
    .end local v2    # "cdfRevision":Ljava/lang/String;
    .end local v3    # "cdfVersion":Ljava/lang/String;
    .end local v11    # "simSerialNumber":Ljava/lang/String;
    .end local v12    # "swRevision":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 395
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    if-eqz v4, :cond_1

    .line 398
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 397
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v4, :cond_3

    .line 398
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v14
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 212
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 282
    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 286
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 247
    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using schema version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as build-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 268
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 254
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as ext-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isSomcPartUpdated(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as the software has been updated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as the last indexing was not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 266
    :cond_3
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index is fine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 272
    const/16 v0, 0x73

    if-ge p2, v0, :cond_0

    .line 273
    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "successful"    # Z

    .prologue
    const/4 v3, 0x0

    .line 340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "somc_indexing_successful"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "meta_index"

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    return-void
.end method
