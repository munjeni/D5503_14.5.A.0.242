.class public Lcom/sonymobile/settings/search/SomcIndexUtil;
.super Ljava/lang/Object;
.source "SomcIndexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sonymobile/settings/search/SomcIndexUtil;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 392
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 393
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 395
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 396
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 397
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 398
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 403
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 400
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 404
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 370
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 376
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIncludeResource(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 380
    sget-object v0, Lcom/android/settings/R$styleable;->IncludePreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/search/SomcIndexUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/sonymobile/settings/search/SomcIndexUtil;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/search/SomcIndexUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    .line 87
    :goto_0
    sget-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    invoke-virtual {v0, p0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, "resourceName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 294
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 295
    .local v2, "startIndex":I
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 296
    .local v0, "endIndex":I
    if-eq v2, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 297
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .end local v0    # "endIndex":I
    .end local v2    # "startIndex":I
    :cond_0
    return-object v1
.end method

.method private indexFromSomcPreference(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 47
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeResourceName"    # Ljava/lang/String;
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "localeStr"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "screenTitle"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "rank"    # I
    .param p9, "intentAction"    # Ljava/lang/String;
    .param p10, "intentTargetPackage"    # Ljava/lang/String;
    .param p11, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    .local p12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v42, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.android.settings"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v41

    .line 214
    .local v41, "resourceId":I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 215
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 218
    :cond_0
    new-instance v38, Lcom/sonymobile/settings/search/SearchPreferenceManager;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/search/SearchPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 220
    .local v38, "prefMan":Lcom/sonymobile/settings/search/SearchPreferenceManager;
    const/4 v3, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/settings/search/SearchPreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v36

    .line 221
    .local v36, "pScreen":Landroid/preference/PreferenceScreen;
    move-object/from16 v37, v36

    .line 223
    .local v37, "prefGroup":Landroid/preference/PreferenceGroup;
    const/16 v35, 0x0

    .local v35, "i":I
    invoke-virtual/range {v37 .. v37}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v34

    .local v34, "count":I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    .line 224
    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v39

    .line 227
    .local v39, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v39

    instance-of v3, v0, Lcom/sonymobile/settings/preference/util/DependOn;

    if-eqz v3, :cond_5

    move-object/from16 v3, v39

    .line 229
    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 231
    .local v14, "keywords":Ljava/lang/String;
    const/4 v7, 0x0

    .line 232
    .local v7, "summaryOn":Ljava/lang/String;
    const/4 v8, 0x0

    .line 233
    .local v8, "summaryOff":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 236
    :cond_1
    move-object/from16 v0, v39

    instance-of v3, v0, Lcom/sonymobile/settings/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    move-object/from16 v33, v39

    .line 237
    check-cast v33, Lcom/sonymobile/settings/preference/CheckBoxPreference;

    .line 238
    .local v33, "checkBoxPreference":Lcom/sonymobile/settings/preference/CheckBoxPreference;
    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v43

    .line 239
    .local v43, "string1":Ljava/lang/CharSequence;
    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v44

    .line 240
    .local v44, "string2":Ljava/lang/CharSequence;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 241
    invoke-interface/range {v43 .. v43}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 245
    .end local v33    # "checkBoxPreference":Lcom/sonymobile/settings/preference/CheckBoxPreference;
    .end local v43    # "string1":Ljava/lang/CharSequence;
    .end local v44    # "string2":Ljava/lang/CharSequence;
    :cond_2
    new-instance v3, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-direct/range {v3 .. v20}, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v7    # "summaryOn":Ljava/lang/String;
    .end local v8    # "summaryOff":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_0

    .line 250
    :cond_4
    move-object/from16 v0, v39

    instance-of v3, v0, Lcom/sonymobile/settings/preference/RemovePreference;

    if-eqz v3, :cond_3

    move-object/from16 v40, v39

    .line 252
    check-cast v40, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 253
    .local v40, "remove":Lcom/sonymobile/settings/preference/RemovePreference;
    invoke-virtual/range {v40 .. v40}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v45

    .line 254
    .local v45, "targetKey":Ljava/lang/String;
    if-eqz v45, :cond_3

    move-object/from16 v0, p12

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    .end local v40    # "remove":Lcom/sonymobile/settings/preference/RemovePreference;
    .end local v45    # "targetKey":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v39

    instance-of v3, v0, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    .line 257
    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 258
    .restart local v14    # "keywords":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v31

    .line 259
    .local v31, "key":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v46

    .line 260
    .local v46, "title":Ljava/lang/CharSequence;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 261
    new-instance v15, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v30, 0x1

    const/16 v32, -0x1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v26, v14

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    move-object/from16 v29, p11

    invoke-direct/range {v15 .. v32}, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v0, v42

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v31    # "key":Ljava/lang/String;
    .end local v39    # "preference":Landroid/preference/Preference;
    .end local v46    # "title":Ljava/lang/CharSequence;
    :cond_6
    return-object v42
.end method


# virtual methods
.method public getCursorForNoMatches([Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MergeCursor;
    .locals 8
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "selectColumns"    # [Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 103
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 105
    .local v2, "noMatchCursor":Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/sonymobile/settings/search/SomcIndexUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0800cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "noMatches":Ljava/lang/String;
    array-length v4, p2

    new-array v0, v4, [Ljava/lang/String;

    .line 107
    .local v0, "mColumnValues":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "results no match@="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 109
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 110
    const/4 v4, 0x2

    aput-object v2, p1, v4

    .line 111
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 112
    .local v1, "mergeCursor":Landroid/database/MergeCursor;
    return-object v1
.end method

.method public getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "node"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 314
    const/4 v6, 0x0

    .line 316
    .local v6, "result":Ljava/lang/String;
    const/4 v5, 0x0

    .line 318
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 322
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v9, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 326
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "nodeName":Ljava/lang/String;
    const-string v8, "PreferenceScreen"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 328
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error parsing PreferenceScreen"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v8

    .line 333
    .restart local v3    # "nodeName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_3
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 334
    .local v4, "outerDepth":I
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 337
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    if-eq v7, v9, :cond_6

    if-ne v7, v10, :cond_5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_6

    .line 338
    :cond_5
    if-eq v7, v10, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    .line 342
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 345
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 363
    .end local v1    # "dataKey":Ljava/lang/String;
    :cond_6
    :goto_0
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 366
    :cond_7
    return-object v6

    .line 350
    :cond_8
    :try_start_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 351
    invoke-virtual {v3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 352
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getIncludeResource(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 353
    goto :goto_0

    .line 360
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "outerDepth":I
    .end local v7    # "type":I
    :catch_1
    move-exception v2

    .line 361
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error parsing PreferenceScreen"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public handleIncludePreferencesIfNecessary(Landroid/content/Context;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "localeStr"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "screenTitle"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "rank"    # I
    .param p9, "intentAction"    # Ljava/lang/String;
    .param p10, "intentTargetPackage"    # Ljava/lang/String;
    .param p11, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    .local p12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    const/4 v3, 0x0

    const-string v4, "IncludePreference"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 278
    .local v16, "includeResource":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcPreference(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 283
    :cond_0
    return-object v17
.end method

.method public indexFromSomcDashboardTiles(Landroid/content/Context;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "localeStr"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "screenTitle"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "rank"    # I
    .param p9, "intentAction"    # Ljava/lang/String;
    .param p10, "intentTargetPackage"    # Ljava/lang/String;
    .param p11, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    new-instance v17, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 149
    .local v17, "category":Lcom/android/settings/dashboard/DashboardCategory;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v15, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    .line 151
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    move/from16 v0, p2

    invoke-static {v2, v0, v15, v3}, Lcom/sonymobile/settings/SomcDashboardTiles;->loadTilesFromResource(Lcom/android/settings/SettingsActivity;ILjava/util/List;Z)V

    .line 154
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 155
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    check-cast v17, Lcom/android/settings/dashboard/DashboardCategory;

    .line 156
    .restart local v17    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v24, v0

    .line 157
    .local v24, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardTile;>;"
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 158
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/dashboard/DashboardTile;

    .line 159
    .local v23, "tile":Lcom/android/settings/dashboard/DashboardTile;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 160
    .local v16, "bundle":Landroid/os/Bundle;
    if-eqz v16, :cond_1

    const-string v2, "extra_fragment_preference_xml"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "extra_fragment_preference_xml"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "fragmentReference":Ljava/lang/String;
    const-string v2, "extra_fragment_help_resource"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 166
    .local v18, "helpResource":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "updatedIntentAction":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 176
    :cond_0
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    move/from16 p7, v0

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v2 .. v14}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcPreference(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 181
    .local v22, "resultFromOneFragment":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    .end local v4    # "fragmentReference":Ljava/lang/String;
    .end local v11    # "updatedIntentAction":Ljava/lang/String;
    .end local v18    # "helpResource":Ljava/lang/String;
    .end local v22    # "resultFromOneFragment":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 154
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v23    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 186
    .end local v20    # "j":I
    .end local v24    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardTile;>;"
    :cond_3
    return-object v21
.end method

.method public isDashboardCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "dashboard-categories"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonymobile/settings/search/SomcIndexUtil;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method
