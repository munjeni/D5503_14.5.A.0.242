.class public Lcom/android/settings/dashboard/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C


# instance fields
.field private mIsXperiaCareInstalled:Z

.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchXperiaCareUtil:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

.field private mShowResults:Z

.field private mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

.field private mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings/dashboard/SearchResultsSummary;->ELLIPSIS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 889
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/dashboard/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 465
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mIsXperiaCareInstalled:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchXperiaCareUtil:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->clearResults()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 470
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 474
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 476
    :cond_2
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 421
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mIsXperiaCareInstalled:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchXperiaCareUtil:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->clearResults()V

    .line 426
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 427
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 403
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 405
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 406
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    const/4 v3, 0x0

    .line 461
    :goto_0
    return-object v3

    .line 453
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 455
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 456
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 461
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 365
    return-void
.end method

.method private setListsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 993
    :cond_1
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 434
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 361
    :cond_0
    return-void

    .line 359
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 413
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    :cond_0
    return-void

    .line 353
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 489
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 490
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 492
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mIsXperiaCareInstalled:Z

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchXperiaCareUtil:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->updateSearchResults(Ljava/lang/String;)V

    .line 497
    :cond_1
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 498
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 480
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 486
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 484
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 148
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mIsXperiaCareInstalled:Z

    .line 150
    new-instance v2, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SearchResultsSummary;)V

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchXperiaCareUtil:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .line 151
    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    invoke-direct {v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    .line 152
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->setSearchResultAdapter(Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;)V

    .line 153
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->setSomcResultAdapter(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)V

    .line 155
    :cond_0
    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 157
    if-eqz p1, :cond_1

    .line 158
    const-string v2, ":settings:show_results"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 160
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 202
    const v2, 0x7f0400a5

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 205
    const v2, 0x7f0e017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 207
    const v2, 0x7f0e0180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 208
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/dashboard/SearchResultsSummary$1;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a6

    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    .local v0, "header":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 309
    const v2, 0x7f0e017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 310
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/dashboard/SearchResultsSummary$2;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a7

    iget-object v5, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 334
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 182
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 183
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mIsXperiaCareInstalled:Z

    if-eqz v0, :cond_0

    .line 185
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    .line 186
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchXperiaCareUtil:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->destroy()V

    .line 189
    :cond_0
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 190
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 191
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 193
    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 196
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 383
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 391
    :goto_0
    return v3

    .line 386
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 387
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 388
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 368
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 369
    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    .line 373
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 344
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setListsVisibility(I)V

    .line 345
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearResults()V

    .line 176
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setListsVisibility(I)V

    .line 177
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 349
    return-void
.end method

.method public setSomcResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSomcResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 444
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 398
    return-void
.end method
