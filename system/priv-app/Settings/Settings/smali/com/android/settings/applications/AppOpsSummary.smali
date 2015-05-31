.class public Lcom/android/settings/applications/AppOpsSummary;
.super Landroid/app/Fragment;
.source "AppOpsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurPos:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mPageNames:[Ljava/lang/CharSequence;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppOpsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AppOpsSummary;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetCounters()V

    return-void
.end method

.method private filterTemplates([Lcom/android/settings/applications/AppOpsState$OpsTemplate;)[Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .locals 6
    .param p1, "templates"    # [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .prologue
    .line 146
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v4, "validTemplates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$OpsTemplate;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 148
    .local v3, "template":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    sget-object v5, Lcom/android/settings/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    if-ne v3, v5, :cond_0

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->isRootForAppsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v3    # "template":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    return-object v5
.end method

.method private resetAdapter()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->getCurrentPage()I

    move-result v0

    .line 109
    .local v0, "curPos":I
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 112
    return-void
.end method

.method private resetCounters()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 186
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetCounters()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    goto :goto_0
.end method

.method private resetCountersConfirm()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080cfb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080cfc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/applications/AppOpsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppOpsSummary$1;-><init>(Lcom/android/settings/applications/AppOpsSummary;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 208
    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string v1, "appops_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsSummary;->setHasOptionsMenu(Z)V

    .line 173
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 178
    const v0, 0x7f100009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    const v0, 0x7f0e02c6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->shouldShowUserApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 180
    const v0, 0x7f0e02c7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 122
    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    .line 126
    const v2, 0x7f0e0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 127
    new-instance v2, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/AppOpsSummary;->filterTemplates([Lcom/android/settings/applications/AppOpsState$OpsTemplate;)[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;-><init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;[Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    .line 129
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 131
    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerTabStrip;

    .line 132
    .local v1, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 136
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    .line 142
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 214
    :pswitch_0
    const-string v1, "show_user_apps"

    .line 216
    .local v1, "prefNameUserApps":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 217
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "show_user_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    goto :goto_0

    .line 222
    .end local v1    # "prefNameUserApps":Ljava/lang/String;
    :pswitch_1
    const-string v0, "show_system_apps"

    .line 224
    .local v0, "prefNameSysApps":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 225
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    goto :goto_0

    .line 230
    .end local v0    # "prefNameSysApps":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetCountersConfirm()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x7f0e02c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
