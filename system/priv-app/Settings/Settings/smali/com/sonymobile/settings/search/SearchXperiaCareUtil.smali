.class public Lcom/sonymobile/settings/search/SearchXperiaCareUtil;
.super Ljava/lang/Object;
.source "SearchXperiaCareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/search/SearchXperiaCareUtil$1;,
        Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;
    }
.end annotation


# static fields
.field private static final COLUMNS_XPERIA_CARE:[Ljava/lang/String;


# instance fields
.field private mColumnValues:[Ljava/lang/String;

.field private mConnectToInternet:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHeaderText:Ljava/lang/String;

.field private mNoMatchesLabelInXperia:Ljava/lang/String;

.field private mNoResponseMessage:Ljava/lang/String;

.field private mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mServerUnavailable:Ljava/lang/String;

.field private mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

.field private mXperiaCareLaunchApp:Ljava/lang/String;

.field private mXperiaCareUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_header"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data_no_matches"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_summary"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->COLUMNS_XPERIA_CARE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchResultSummary"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 267
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareLaunchApp:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareUrl:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoMatchesLabelInXperia:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mServerUnavailable:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mConnectToInternet:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->getSomcHeaderText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mHeaderText:Ljava/lang/String;

    .line 273
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->COLUMNS_XPERIA_CARE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Lcom/android/settings/dashboard/SearchResultsSummary;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoMatchesLabelInXperia:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareLaunchApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mServerUnavailable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mConnectToInternet:Ljava/lang/String;

    return-object v0
.end method

.method private getSomcHeaderText()Ljava/lang/String;
    .locals 10

    .prologue
    .line 281
    const-string v2, ""

    .line 282
    .local v2, "header":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 284
    .local v5, "pacMan":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 287
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 288
    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 291
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 292
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "label":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 294
    move-object v2, v4

    .line 299
    .end local v0    # "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->cancel(Z)Z

    .line 310
    iput-object v2, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSomcResultsCursor(Landroid/database/Cursor;)V

    .line 313
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    .line 317
    return-void
.end method

.method public updateSearchResults(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;-><init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Lcom/sonymobile/settings/search/SearchXperiaCareUtil$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    .line 304
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    return-void
.end method
