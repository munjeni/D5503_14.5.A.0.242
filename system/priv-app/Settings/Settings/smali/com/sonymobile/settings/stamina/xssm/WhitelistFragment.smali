.class public Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;
.super Landroid/app/Fragment;
.source "WhitelistFragment.java"


# instance fields
.field private mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

.field private mAddBtn:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;)Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    return-object v0
.end method

.method private loadUidList()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 111
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v3, "stamina_uidlist"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .line 113
    .local v2, "uidList":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 115
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .end local v2    # "uidList":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    invoke-direct {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;-><init>()V

    .line 116
    .restart local v2    # "uidList":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    const-string v3, "stamina_uidlist"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 117
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0e0035

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const v1, 0x7f0400cb

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mRootView:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0e01bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    const v1, 0x7f0400c4

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 73
    const v1, 0x7f0400d0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAddBtn:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAddBtn:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAddBtn:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAddBtn:Landroid/view/View;

    const v2, 0x7f0e00cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAddBtn:Landroid/view/View;

    const v2, 0x7f0e01cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAddBtn:Landroid/view/View;

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 83
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v4, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->loadUidList()V

    .line 87
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "whitelistGroups":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, "whitelist":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .line 98
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistFragment;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method
