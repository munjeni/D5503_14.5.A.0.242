.class public Lcom/android/settings/privacyguard/PrivacyGuardManager;
.super Landroid/app/Fragment;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacyguard/PrivacyGuardManager$1;,
        Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;,
        Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;,
        Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsList:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNoUserAppsInstalled:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/privacyguard/PrivacyGuardManager;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/privacyguard/PrivacyGuardManager;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/privacyguard/PrivacyGuardManager;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/privacyguard/PrivacyGuardManager;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    return-object v0
.end method

.method private createAdapter()Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;
    .locals 11

    .prologue
    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "lastSectionIndex":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v7, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v5, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v4, 0x0

    .line 244
    .local v4, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 245
    iget-object v8, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 248
    .local v0, "app":Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-nez v8, :cond_2

    .line 249
    const-string v6, "--"

    .line 256
    .local v6, "sectionIndex":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_0

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 258
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    move-object v3, v6

    .line 262
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v6    # "sectionIndex":Ljava/lang/String;
    :cond_2
    iget-object v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    const-string v6, ""

    .restart local v6    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v6    # "sectionIndex":Ljava/lang/String;
    :cond_3
    iget-object v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 265
    .end local v0    # "app":Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v6    # "sectionIndex":Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    iget-object v9, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-direct {v8, v9, v10, v7, v5}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method private prepareAppAdapter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    const v1, 0x7f080ced

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->createAdapter()Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    .line 233
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method private resetPrivacyGuard()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->showResetDialog()V

    goto :goto_0
.end method

.method private scheduleAppsLoad()V
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 219
    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_system_apps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showHelp()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;Lcom/android/settings/privacyguard/PrivacyGuardManager$1;)V

    .line 328
    .local v0, "fragment":Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "help_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;Lcom/android/settings/privacyguard/PrivacyGuardManager$1;)V

    .line 360
    .local v0, "dialog":Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "reset_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 361
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e02c1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    .line 123
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-string v1, "privacy_guard_manager"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 130
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "first_help_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->showHelp()V

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    .line 135
    const-string v0, "last_list_pos"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 137
    const-string v0, "last_list_offset"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    .line 144
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->setHasOptionsMenu(Z)V

    .line 147
    return-void

    .line 139
    :cond_1
    iput v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 140
    iput v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    new-instance v0, Lcom/android/settings/privacyguard/AppInfoLoader;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/privacyguard/AppInfoLoader;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 366
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 367
    const v0, 0x7f0e02c7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 368
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 106
    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "hostView":Landroid/view/View;
    invoke-static {}, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->newInstance()Lcom/android/settings/privacyguard/PrivacyGuardPrefs;

    move-result-object v2

    .line 109
    .local v2, "privacyGuardPrefs":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 110
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v3, 0x7f0e02c0

    const-string v4, "privacy_guard_fragment"

    invoke-virtual {v0, v3, v2, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 112
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 113
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 280
    .local v0, "app":Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v1, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 281
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v3, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    .line 283
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 284
    return-void

    .line 280
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 291
    .local v7, "app":Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, v7, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    .line 295
    .local v0, "ssa":Lcom/android/settings/SubSettings;
    const-class v1, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080ceb

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 297
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;>;>;"
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;>;"
    iput-object p2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->prepareAppAdapter()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 211
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 372
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 393
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 374
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->showHelp()V

    goto :goto_0

    .line 377
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->resetPrivacyGuard()V

    goto :goto_0

    .line 380
    :sswitch_2
    const-string v1, "show_system_apps"

    .line 383
    .local v1, "prefName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 384
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    goto :goto_0

    .line 383
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 388
    .end local v1    # "prefName":Ljava/lang/String;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/settings/Settings$AppOpsSummaryActivity;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x7f0e02c7 -> :sswitch_2
        0x7f0e02c3 -> :sswitch_1
        0x7f0e02c4 -> :sswitch_3
        0x7f0e02c5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 169
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 170
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    .line 172
    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    .line 181
    iget v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    if-eq v0, v3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    iget v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 183
    iput v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 185
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "last_list_pos"

    iget v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v0, "last_list_offset"

    iget v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method
