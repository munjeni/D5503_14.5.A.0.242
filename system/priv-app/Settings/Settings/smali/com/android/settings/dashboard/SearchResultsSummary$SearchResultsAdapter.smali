.class Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    .line 628
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 629
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 631
    return-void
.end method

.method private updateVisibility(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    const v6, 0x7f0e019b

    const v5, 0x7f0e0198

    const v4, 0x7f0e0197

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 838
    packed-switch p2, :pswitch_data_0

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 840
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 841
    .local v0, "layout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 842
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/view/View;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 843
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 844
    const v1, 0x7f0e019d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/view/View;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 845
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 846
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 847
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 850
    .end local v0    # "layout":Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 852
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 853
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/view/View;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 854
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 855
    const v1, 0x7f0e019d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/view/View;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 856
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 857
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 858
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 651
    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 657
    :cond_1
    :goto_0
    return v0

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 653
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCursorForPosition(I)Landroid/database/Cursor;
    .locals 3
    .param p1, "moveToPosition"    # I

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "cursor":Landroid/database/Cursor;
    move v1, p1

    .line 826
    .local v1, "position":I
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 832
    :goto_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 833
    return-object v0

    .line 829
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 830
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v1, p1, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "summaryOn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "summaryOff":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 667
    .local v5, "entries":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 668
    .local v10, "iconResStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, "className":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 672
    .local v11, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 676
    .local v7, "key":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 678
    .local v1, "packageContext":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 685
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_0
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v6, 0x7f02002c

    .line 694
    .local v6, "iconResId":I
    :goto_1
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 701
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "summaryOn":Ljava/lang/String;
    .end local v4    # "summaryOff":Ljava/lang/String;
    .end local v5    # "entries":Ljava/lang/String;
    .end local v6    # "iconResId":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "iconResStr":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 681
    .restart local v1    # "packageContext":Landroid/content/Context;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v3    # "summaryOn":Ljava/lang/String;
    .restart local v4    # "summaryOff":Ljava/lang/String;
    .restart local v5    # "entries":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v10    # "iconResStr":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 682
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "SearchResultsSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot create Context for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    goto :goto_2

    .line 688
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .restart local v1    # "packageContext":Landroid/content/Context;
    goto :goto_0

    .line 691
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 698
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "summaryOn":Ljava/lang/String;
    .end local v4    # "summaryOff":Ljava/lang/String;
    .end local v5    # "entries":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "iconResStr":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v0, :cond_4

    .line 699
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    sub-int v12, p1, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v12}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 701
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 706
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 741
    move-object/from16 v11, p2

    .line 742
    .local v11, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItemViewType(I)I

    move-result v10

    .line 743
    .local v10, "type":I
    if-nez p2, :cond_0

    .line 744
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f0400b6

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 745
    packed-switch v10, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    iget-boolean v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-nez v12, :cond_1

    if-nez p2, :cond_1

    .line 759
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "this should only be called when the cursor is valid"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 747
    :pswitch_0
    invoke-direct {p0, v11, v10}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->updateVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 750
    :pswitch_1
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v12, :cond_0

    .line 751
    invoke-direct {p0, v11, v10}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->updateVisibility(Landroid/view/View;I)V

    .line 752
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v13, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    sub-int v13, p1, v13

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v11, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 809
    :goto_1
    return-object v12

    .line 762
    :cond_1
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 763
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v12, :cond_2

    .line 764
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v13, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    sub-int v13, p1, v13

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v11, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    .line 766
    :cond_2
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "couldn\'t move cursor to position "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 773
    :cond_3
    const v12, 0x7f0e019c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 774
    .local v5, "noMatch":Landroid/widget/TextView;
    const v12, 0x7f0e0036

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 775
    .local v8, "textTitle":Landroid/widget/TextView;
    const v12, 0x7f0e0035

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 777
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    .line 778
    .local v7, "result":Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
    iget-object v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    const-string v13, "results no match"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 779
    const v12, 0x7f0e019b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 781
    iget-object v9, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    .line 782
    .local v9, "title":Ljava/lang/String;
    const-string v12, "@="

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "array":[Ljava/lang/String;
    array-length v12, v1

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 784
    const/4 v12, 0x1

    aget-object v9, v1, v12

    .line 786
    :cond_4
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "array":[Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :goto_2
    move-object v12, v11

    .line 809
    goto/16 :goto_1

    .line 790
    :cond_5
    const-string v12, ""

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    const v13, 0x7f02002c

    if-eq v12, v13, :cond_6

    .line 794
    iget-object v6, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 797
    .local v6, "packageContext":Landroid/content/Context;
    :try_start_0
    iget v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    invoke-virtual {v6, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 798
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 799
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 801
    .local v4, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v12, "SearchResultsSummary"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot load Drawable for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 804
    .end local v4    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "packageContext":Landroid/content/Context;
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    const v12, 0x7f02002c

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 734
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSomcResultAdapter(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)V
    .locals 0
    .param p1, "somcAdapter"    # Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    .line 814
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 638
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 639
    if-eqz p1, :cond_1

    .line 640
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
