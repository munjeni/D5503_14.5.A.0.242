.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 139
    iput v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 141
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 739
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 741
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 742
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 743
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 744
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 745
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 746
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 747
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 748
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/RunningState;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/RunningState;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/ActivityManager;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 825
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 826
    .local v3, "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v7, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v4, v7, :cond_5

    :cond_0
    move v0, v6

    .line 827
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 828
    if-nez v3, :cond_6

    .line 829
    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v3    # "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 830
    .restart local v3    # "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 835
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v7, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$UserState;

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v4, :cond_3

    .line 836
    new-instance v4, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 837
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v7, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 838
    .local v1, "info":Landroid/content/pm/UserInfo;
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 839
    if-eqz v1, :cond_1

    .line 840
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v7, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v7, v1}, Lcom/android/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 842
    :cond_1
    if-eqz v1, :cond_7

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 843
    .local v2, "name":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 844
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 848
    :cond_2
    :goto_3
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805fb

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {v7, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 851
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_4
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    return-void

    .end local v0    # "first":Z
    :cond_5
    move v0, v5

    .line 826
    goto :goto_0

    .line 832
    .restart local v0    # "first":Z
    :cond_6
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 842
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 845
    .restart local v2    # "name":Ljava/lang/String;
    :cond_8
    if-nez v1, :cond_2

    .line 846
    const v4, 0x7f0805a7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 730
    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 734
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v0, 0x1

    .line 800
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 810
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 713
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 715
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 716
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 726
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 721
    :cond_2
    move-object v0, p1

    .line 722
    .local v0, "label":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 723
    .local v1, "tail":I
    if-ltz v1, :cond_1

    .line 724
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 815
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 816
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 817
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 818
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 819
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 821
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 66
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 857
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    .line 859
    .local v46, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    add-int/lit8 v61, v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 861
    const/16 v18, 0x0

    .line 865
    .local v18, "changed":Z
    const/16 v61, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v51

    .line 867
    .local v51, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v51, :cond_1

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v11

    .line 868
    .local v11, "NS":I
    :goto_0
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v11, :cond_3

    .line 869
    move-object/from16 v0, v51

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 873
    .local v54, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v61, v0

    if-nez v61, :cond_2

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v61, v0

    if-nez v61, :cond_2

    .line 874
    move-object/from16 v0, v51

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 875
    add-int/lit8 v26, v26, -0x1

    .line 876
    add-int/lit8 v11, v11, -0x1

    .line 868
    :cond_0
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 867
    .end local v11    # "NS":I
    .end local v26    # "i":I
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 881
    .restart local v11    # "NS":I
    .restart local v26    # "i":I
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v61, v0

    and-int/lit8 v61, v61, 0x8

    if-eqz v61, :cond_0

    .line 883
    move-object/from16 v0, v51

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 884
    add-int/lit8 v26, v26, -0x1

    .line 885
    add-int/lit8 v11, v11, -0x1

    .line 886
    goto :goto_2

    .line 892
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v48

    .line 894
    .local v48, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v48, :cond_4

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v9

    .line 895
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 896
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    if-ge v0, v9, :cond_5

    .line 897
    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 898
    .local v42, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    new-instance v63, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v63

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v61 .. v63}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 894
    .end local v9    # "NP":I
    .end local v42    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 903
    .restart local v9    # "NP":I
    :cond_5
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    if-ge v0, v11, :cond_7

    .line 904
    move-object/from16 v0, v51

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 905
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v61, v62, v64

    if-nez v61, :cond_6

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    if-lez v61, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 907
    .local v13, "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 908
    const/16 v61, 0x1

    move/from16 v0, v61

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 909
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v61, v0

    if-eqz v61, :cond_6

    .line 910
    const/16 v61, 0x1

    move/from16 v0, v61

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 903
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 917
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v0, v11, :cond_13

    .line 918
    move-object/from16 v0, v51

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 925
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v61, v62, v64

    if-nez v61, :cond_b

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    if-lez v61, :cond_b

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 927
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v61, v0

    if-nez v61, :cond_b

    .line 933
    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0x12c

    move/from16 v0, v61

    move/from16 v1, v62

    if-ge v0, v1, :cond_b

    .line 937
    const/16 v56, 0x0

    .line 938
    .local v56, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 939
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v13, :cond_9

    .line 940
    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v61, v0

    if-nez v61, :cond_8

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v61

    if-eqz v61, :cond_a

    .line 941
    :cond_8
    const/16 v56, 0x1

    .line 946
    :cond_9
    if-eqz v56, :cond_b

    .line 917
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v56    # "skip":Z
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    .line 944
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .restart local v56    # "skip":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 953
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v56    # "skip":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 954
    .local v49, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v49, :cond_c

    .line 955
    new-instance v49, Ljava/util/HashMap;

    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 956
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v62, v0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 958
    :cond_c
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 959
    .local v47, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_d

    .line 960
    const/16 v18, 0x1

    .line 961
    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v61

    move-object/from16 v3, v62

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 962
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    :cond_d
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_11

    .line 966
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v61, v62, v64

    if-nez v61, :cond_12

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v43, v0

    .line 967
    .local v43, "pid":I
    :goto_9
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move/from16 v0, v43

    move/from16 v1, v61

    if-eq v0, v1, :cond_10

    .line 968
    const/16 v18, 0x1

    .line 969
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move/from16 v0, v61

    move/from16 v1, v43

    if-eq v0, v1, :cond_10

    .line 970
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-eqz v61, :cond_e

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->remove(I)V

    .line 973
    :cond_e
    if-eqz v43, :cond_f

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 976
    :cond_f
    move/from16 v0, v43

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 979
    :cond_10
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 982
    .end local v43    # "pid":I
    :cond_11
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v61

    or-int v18, v18, v61

    goto/16 :goto_8

    .line 966
    :cond_12
    const/16 v43, 0x0

    goto :goto_9

    .line 987
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    if-ge v0, v9, :cond_18

    .line 988
    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 989
    .restart local v42    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 990
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_15

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 995
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_14

    .line 996
    const/16 v18, 0x1

    .line 997
    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v61

    move-object/from16 v3, v62

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 998
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    :cond_14
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 1004
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v61

    if-eqz v61, :cond_17

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_16

    .line 1006
    const/16 v18, 0x1

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1010
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1011
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1016
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1017
    move-object/from16 v0, v42

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 987
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 1013
    :cond_17
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1022
    .end local v42    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1023
    .local v10, "NRP":I
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v10, :cond_1d

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1025
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_1c

    .line 1026
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    .line 1027
    .local v20, "clientPid":I
    if-eqz v20, :cond_1b

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1029
    .local v19, "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v19, :cond_19

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1032
    .restart local v19    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    if-eqz v19, :cond_1a

    .line 1033
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1041
    .end local v19    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v26, v26, 0x1

    .line 1042
    goto :goto_c

    .line 1039
    :cond_1b
    const/16 v61, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1043
    .end local v20    # "clientPid":I
    :cond_1c
    const/16 v18, 0x1

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->remove(I)V

    .line 1045
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1050
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1051
    .local v8, "NHP":I
    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_20

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1053
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v61, v0

    if-eqz v61, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    if-nez v61, :cond_1f

    .line 1054
    :cond_1e
    const/16 v18, 0x1

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1056
    add-int/lit8 v26, v26, -0x1

    .line 1057
    add-int/lit8 v8, v8, -0x1

    .line 1051
    :cond_1f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1064
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1065
    .local v6, "NAP":I
    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v6, :cond_22

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1067
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_21

    .line 1068
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v61

    or-int v18, v18, v61

    .line 1065
    :cond_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1073
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_22
    const/16 v59, 0x0

    .line 1074
    .local v59, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_2a

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 1076
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1077
    .local v45, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_29

    .line 1078
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1079
    .local v42, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_26

    .line 1080
    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1081
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-nez v61, :cond_24

    .line 1084
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 1100
    :cond_24
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .line 1101
    .local v55, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_23

    .line 1102
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1103
    .local v54, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_25

    .line 1104
    const/16 v18, 0x1

    .line 1105
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1087
    .end local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v55    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_26
    const/16 v18, 0x1

    .line 1088
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->remove()V

    .line 1089
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v61

    if-nez v61, :cond_28

    .line 1090
    if-nez v59, :cond_27

    .line 1091
    new-instance v59, Ljava/util/ArrayList;

    .end local v59    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .restart local v59    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_28
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-eqz v61, :cond_23

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1074
    .end local v42    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_10

    .line 1111
    .end local v45    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v59, :cond_2b

    .line 1112
    const/16 v26, 0x0

    :goto_13
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_2b

    .line 1113
    move-object/from16 v0, v59

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Integer;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v58

    .line 1114
    .local v58, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1112
    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    .line 1118
    .end local v58    # "uid":I
    :cond_2b
    if-eqz v18, :cond_40

    .line 1120
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v57, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v26, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_30

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/HashMap;

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_2f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1123
    .restart local v42    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1124
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1125
    const-wide v62, 0x7fffffffffffffffL

    move-wide/from16 v0, v62

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1126
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_2e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1127
    .restart local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2d

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v61, v0

    and-int/lit8 v61, v61, 0x1

    if-eqz v61, :cond_2d

    .line 1130
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1132
    :cond_2d
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2c

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v61, v0

    if-eqz v61, :cond_2c

    .line 1134
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1135
    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v64, v0

    cmp-long v61, v62, v64

    if-lez v61, :cond_2c

    .line 1136
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, v62

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1140
    .end local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v57

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1121
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v42    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_14

    .line 1144
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v61, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1146
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v34, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v35, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v41, 0x0

    .line 1149
    .local v41, "otherUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->clear()V

    .line 1150
    const/16 v26, 0x0

    :goto_17
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_39

    .line 1151
    move-object/from16 v0, v57

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1152
    .restart local v42    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1156
    .local v22, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1158
    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-lez v61, :cond_31

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_31
    const/16 v29, 0x0

    .line 1165
    .local v29, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v23, 0x0

    .line 1166
    .local v23, "haveAllMerged":Z
    const/16 v31, 0x0

    .line 1167
    .local v31, "needDivider":Z
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_34

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1168
    .restart local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v31

    move-object/from16 v1, v54

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1169
    const/16 v31, 0x1

    .line 1170
    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    if-eqz v61, :cond_33

    .line 1172
    if-eqz v29, :cond_32

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_32

    .line 1173
    const/16 v23, 0x0

    .line 1175
    :cond_32
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v29, v0

    goto :goto_18

    .line 1177
    :cond_33
    const/16 v23, 0x0

    goto :goto_18

    .line 1181
    .end local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_34
    if-eqz v23, :cond_35

    if-eqz v29, :cond_35

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/util/HashMap;->size()I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_37

    .line 1184
    :cond_35
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, v29

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1185
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_36

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1186
    .restart local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    move-object/from16 v0, v29

    move-object/from16 v1, v54

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1189
    .end local v54    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1190
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->clear()V

    .line 1191
    move/from16 v30, v22

    .local v30, "mpi":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    add-int/lit8 v61, v61, -0x1

    move/from16 v0, v30

    move/from16 v1, v61

    if-ge v0, v1, :cond_37

    .line 1192
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 v30, v30, 0x1

    goto :goto_1a

    .line 1196
    .end local v30    # "mpi":I
    :cond_37
    const/16 v61, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1197
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_38

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v61

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1150
    :goto_1b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_17

    .line 1200
    :cond_38
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1206
    .end local v22    # "firstProc":I
    .end local v23    # "haveAllMerged":Z
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31    # "needDivider":Z
    .end local v42    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1207
    const/16 v26, 0x0

    :goto_1c
    move/from16 v0, v26

    if-ge v0, v8, :cond_3d

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1209
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v61, v0

    if-nez v61, :cond_3b

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->size()I

    move-result v61

    if-gtz v61, :cond_3b

    .line 1210
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    if-nez v61, :cond_3a

    .line 1211
    new-instance v61, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v62, v0

    invoke-direct/range {v61 .. v62}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1212
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1214
    :cond_3a
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1215
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_3c

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v61

    move-object/from16 v4, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1221
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_3b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1c

    .line 1219
    :cond_3c
    const/16 v61, 0x0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v62, v0

    move-object/from16 v0, v35

    move/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1227
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1228
    .local v12, "NU":I
    const/16 v26, 0x0

    :goto_1e
    move/from16 v0, v26

    if-ge v0, v12, :cond_3f

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1230
    .local v60, "user":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_3e

    .line 1231
    const/16 v61, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1228
    :cond_3e
    add-int/lit8 v26, v26, 0x1

    goto :goto_1e

    .line 1235
    .end local v60    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v62, v0

    monitor-enter v62

    .line 1236
    :try_start_0
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1237
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1238
    monitor-exit v62
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    .end local v12    # "NU":I
    .end local v34    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v35    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v41    # "otherUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v57    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->clear()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1245
    const/16 v37, 0x0

    .line 1246
    .local v37, "numBackgroundProcesses":I
    const/16 v38, 0x0

    .line 1247
    .local v38, "numForegroundProcesses":I
    const/16 v40, 0x0

    .line 1248
    .local v40, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1249
    const/16 v26, 0x0

    :goto_1f
    move/from16 v0, v26

    if-ge v0, v10, :cond_44

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1251
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_43

    .line 1254
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0x190

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_41

    .line 1256
    add-int/lit8 v37, v37, 0x1

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    :goto_20
    add-int/lit8 v26, v26, 0x1

    goto :goto_1f

    .line 1238
    .end local v37    # "numBackgroundProcesses":I
    .end local v38    # "numForegroundProcesses":I
    .end local v40    # "numServiceProcesses":I
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v34    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v35    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v41    # "otherUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v57    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v61

    :try_start_1
    monitor-exit v62
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v61

    .line 1258
    .end local v12    # "NU":I
    .end local v34    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v35    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v41    # "otherUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v57    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v37    # "numBackgroundProcesses":I
    .restart local v38    # "numForegroundProcesses":I
    .restart local v40    # "numServiceProcesses":I
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_41
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0xc8

    move/from16 v0, v61

    move/from16 v1, v62

    if-gt v0, v1, :cond_42

    .line 1260
    add-int/lit8 v38, v38, 0x1

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1263
    :cond_42
    const-string v61, "RunningState"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Unknown non-service process: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, " #"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1267
    :cond_43
    add-int/lit8 v40, v40, 0x1

    goto :goto_20

    .line 1271
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_44
    const-wide/16 v14, 0x0

    .line 1272
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v24, 0x0

    .line 1273
    .local v24, "foregroundProcessMemory":J
    const-wide/16 v52, 0x0

    .line 1274
    .local v52, "serviceProcessMemory":J
    const/16 v32, 0x0

    .line 1275
    .local v32, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v36, 0x0

    .line 1276
    .local v36, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1278
    .local v21, "diffUsers":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 1279
    .local v39, "numProc":I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v44, v0

    .line 1280
    .local v44, "pids":[I
    const/16 v26, 0x0

    :goto_21
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_45

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    aput v61, v44, v26

    .line 1280
    add-int/lit8 v26, v26, 0x1

    goto :goto_21

    .line 1283
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v50

    .line 1285
    .local v50, "pss":[J
    const/16 v16, 0x0

    .line 1286
    .local v16, "bgIndex":I
    const/16 v26, 0x0

    move-object/from16 v33, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v33, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_3
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v61, v0

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_4f

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1288
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-wide v62, v50, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-wide/from16 v2, v62

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v61

    or-int v18, v18, v61

    .line 1289
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_46

    .line 1290
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v62, v0

    add-long v52, v52, v62

    move-object/from16 v32, v33

    .line 1286
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v33, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1291
    :cond_46
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0x190

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_4e

    .line 1293
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v62, v0

    add-long v14, v14, v62

    .line 1295
    if-eqz v33, :cond_48

    .line 1296
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, v29

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1297
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1298
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_47

    const/16 v61, 0x1

    :goto_24
    or-int v21, v21, v61

    .line 1299
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v32, v33

    .line 1317
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v61, 0x1

    :try_start_4
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1318
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1319
    add-int/lit8 v16, v16, 0x1

    .line 1320
    goto :goto_23

    .line 1298
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_47
    const/16 v61, 0x0

    goto :goto_24

    .line 1301
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_48
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v16

    move/from16 v1, v61

    if-ge v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_4d

    .line 1303
    :cond_49
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1304
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .local v17, "bgi":I
    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4b

    .line 1305
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1306
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_4a

    const/16 v61, 0x1

    :goto_27
    or-int v21, v21, v61

    .line 1307
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    .line 1306
    :cond_4a
    const/16 v61, 0x0

    goto :goto_27

    .line 1309
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4b
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, v29

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1310
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1311
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_4c

    const/16 v61, 0x1

    :goto_28
    or-int v21, v21, v61

    .line 1312
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_25

    .line 1325
    .end local v16    # "bgIndex":I
    .end local v17    # "bgi":I
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v39    # "numProc":I
    .end local v44    # "pids":[I
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v50    # "pss":[J
    :catch_0
    move-exception v61

    .line 1328
    :goto_29
    if-nez v32, :cond_51

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v61

    move/from16 v1, v37

    if-le v0, v1, :cond_51

    .line 1331
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1332
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .restart local v17    # "bgi":I
    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_51

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1334
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_50

    const/16 v61, 0x1

    :goto_2b
    or-int v21, v21, v61

    .line 1335
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    .line 1311
    .restart local v16    # "bgIndex":I
    .restart local v39    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v50    # "pss":[J
    :cond_4c
    const/16 v61, 0x0

    goto :goto_28

    .line 1314
    .end local v17    # "bgi":I
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1320
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4e
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0xc8

    move/from16 v0, v61

    move/from16 v1, v62

    if-gt v0, v1, :cond_5a

    .line 1322
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v62, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v24, v24, v62

    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4f
    move-object/from16 v32, v33

    .line 1326
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1334
    .end local v16    # "bgIndex":I
    .end local v39    # "numProc":I
    .end local v44    # "pids":[I
    .end local v50    # "pss":[J
    .restart local v17    # "bgi":I
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_50
    const/16 v61, 0x0

    goto :goto_2b

    .line 1340
    .end local v17    # "bgi":I
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_51
    if-eqz v32, :cond_52

    .line 1343
    if-nez v21, :cond_53

    .line 1345
    move-object/from16 v36, v32

    .line 1373
    :cond_52
    const/16 v26, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_57

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1373
    add-int/lit8 v26, v26, 0x1

    goto :goto_2c

    .line 1349
    :cond_53
    new-instance v36, Ljava/util/ArrayList;

    .end local v36    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .restart local v36    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1351
    .local v7, "NB":I
    const/16 v26, 0x0

    :goto_2d
    move/from16 v0, v26

    if-ge v0, v7, :cond_55

    .line 1352
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1353
    .restart local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_54

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v61

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1351
    :goto_2e
    add-int/lit8 v26, v26, 0x1

    goto :goto_2d

    .line 1357
    :cond_54
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1362
    .end local v29    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1363
    .restart local v12    # "NU":I
    const/16 v26, 0x0

    :goto_2f
    move/from16 v0, v26

    if-ge v0, v12, :cond_52

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1365
    .restart local v60    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_56

    .line 1366
    const/16 v61, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1367
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1363
    :cond_56
    add-int/lit8 v26, v26, 0x1

    goto :goto_2f

    .line 1377
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v60    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v62, v0

    monitor-enter v62

    .line 1378
    :try_start_8
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1379
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1380
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1381
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1382
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1383
    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1384
    if-eqz v32, :cond_58

    .line 1385
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1386
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1387
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v61, v0

    if-eqz v61, :cond_58

    .line 1388
    const/16 v18, 0x1

    .line 1391
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v61, v0

    if-nez v61, :cond_59

    .line 1392
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Object;->notifyAll()V

    .line 1395
    :cond_59
    monitor-exit v62

    .line 1397
    return v18

    .line 1395
    :catchall_1
    move-exception v61

    monitor-exit v62
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v61

    .line 1325
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v16    # "bgIndex":I
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v39    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v50    # "pss":[J
    :catch_1
    move-exception v61

    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_5a
    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1420
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 795
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    monitor-exit v1

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 753
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 754
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 758
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 764
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1408
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1409
    monitor-exit v1

    .line 1410
    return-void

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 770
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 771
    monitor-exit v1

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 784
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    goto :goto_0

    .line 788
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
