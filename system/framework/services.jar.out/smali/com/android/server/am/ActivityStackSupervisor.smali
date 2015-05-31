.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field static final CONTAINER_TASK_LIST_EMPTY_TIMEOUT:I = 0x70

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_CONTAINERS:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_RELEASE:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_SCREENSHOTS:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_VISIBLE_BEHIND:Z = false

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x71

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"


# instance fields
.field public lBoostCpuBoost:I

.field public lBoostKsmBoost:I

.field public lBoostPcDisblBoost:I

.field public lBoostSchedBoost:I

.field public lBoostTimeOut:I

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTaskId:I

.field private mCurrentUser:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsPerfBoostEnabled:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

.field private mLockTaskIsLocked:Z

.field mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field public mPerf:Lorg/codeaurora/Performance;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    .line 151
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 152
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 153
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuBoost:I

    .line 154
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostSchedBoost:I

    .line 155
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPcDisblBoost:I

    .line 156
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostKsmBoost:I

    .line 172
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    .line 189
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 193
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    .line 241
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 266
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    .line 273
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 312
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 313
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 315
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 317
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostSchedBoost:I

    .line 320
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 322
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuBoost:I

    .line 324
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPcDisblBoost:I

    .line 326
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostKsmBoost:I

    .line 329
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityStackSupervisor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    return v0
.end method

.method private createStackOnDisplay(II)I
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 2612
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 2613
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    .line 2614
    const/4 p1, -0x1

    .line 2620
    .end local p1    # "stackId":I
    :goto_0
    return p1

    .line 2617
    .restart local p1    # "stackId":I
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 2618
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2619
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    goto :goto_0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3231
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 3232
    .local v7, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 3233
    .local v6, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3234
    .local v2, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3235
    .local v8, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_e

    .line 3236
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 3237
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_1

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3235
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3240
    :cond_1
    if-nez v6, :cond_2

    .line 3241
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3242
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/String;

    .line 3244
    :cond_2
    const/4 v8, 0x1

    .line 3245
    if-nez p6, :cond_9

    if-nez p5, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-nez v11, :cond_9

    :cond_3
    const/4 v4, 0x1

    .line 3246
    .local v4, "full":Z
    :goto_2
    if-eqz p9, :cond_4

    .line 3247
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    const/16 p9, 0x0

    .line 3250
    :cond_4
    if-eqz p10, :cond_5

    .line 3251
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    const/16 p10, 0x0

    .line 3254
    :cond_5
    if-eqz p11, :cond_6

    .line 3255
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    const/16 p11, 0x0

    .line 3258
    :cond_6
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v11, :cond_7

    .line 3259
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3260
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3261
    if-eqz v4, :cond_a

    const-string v11, "* "

    :goto_3
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3263
    if-eqz v4, :cond_b

    .line 3264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, p1, v11}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3273
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const-string v11, "  * "

    :goto_5
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3274
    const-string v11, " #"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3276
    if-eqz v4, :cond_d

    .line 3277
    invoke-virtual {v9, p1, v6}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3285
    :cond_8
    :goto_6
    if-eqz p7, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_0

    .line 3288
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 3290
    :try_start_0
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3292
    .local v10, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v11, v12, v13, v6, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3296
    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3298
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3305
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_7
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 3245
    .end local v4    # "full":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3261
    .restart local v4    # "full":Z
    :cond_a
    const-string v11, "  "

    goto :goto_3

    .line 3265
    :cond_b
    if-eqz p5, :cond_7

    .line 3267
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    .line 3268
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3269
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3273
    :cond_c
    const-string v11, "    "

    goto :goto_5

    .line 3278
    :cond_d
    if-eqz p5, :cond_8

    .line 3280
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    .line 3282
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 3298
    .restart local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3300
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v3

    .line 3301
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3302
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 3303
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3308
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "full":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v8
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 361
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 363
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "ActivityManager"

    const-string v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    monitor-exit v1

    return-object v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 348
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 350
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 351
    const-string v0, "StatusBarManager"

    const-string v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLeanbackOnlyDevice()Z
    .locals 3

    .prologue
    .line 4097
    const/4 v0, 0x0

    .line 4099
    .local v0, "onLeanbackOnly":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4105
    :goto_0
    return v0

    .line 4101
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3152
    if-eqz p1, :cond_2

    .line 3153
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3154
    :cond_0
    if-eqz p3, :cond_1

    .line 3155
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3157
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3158
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3159
    const/4 v0, 0x1

    .line 3162
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .locals 4

    .prologue
    const/16 v1, 0x68

    .line 2262
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2263
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2267
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2274
    const/16 v18, 0x0

    .line 2275
    .local v18, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 2276
    .local v14, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v17, 0x0

    .line 2277
    .local v17, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v10, 0x0

    .line 2278
    .local v10, "NS":I
    const/4 v2, 0x0

    .line 2279
    .local v2, "NF":I
    const/4 v12, 0x0

    .line 2280
    .local v12, "booting":Z
    const/4 v13, 0x0

    .line 2281
    .local v13, "enableScreen":Z
    const/4 v11, 0x0

    .line 2283
    .local v11, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2284
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    .line 2287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2288
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2289
    if-eqz p2, :cond_0

    .line 2290
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2298
    :cond_0
    if-eqz p3, :cond_1

    .line 2299
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 2304
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2307
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 2308
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v12, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_3

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2312
    const/4 v13, 0x1

    .line 2317
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2318
    if-eqz v5, :cond_4

    .line 2319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2322
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2330
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2334
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v18

    .line 2335
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2336
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2337
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2338
    .restart local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2341
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 2342
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2343
    .restart local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2348
    :cond_8
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v10, :cond_b

    .line 2349
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2350
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v16, v0

    .line 2351
    .local v16, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_a

    .line 2352
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 2348
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2335
    .end local v15    # "i":I
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    .line 2354
    .restart local v15    # "i":I
    .restart local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_2

    .line 2360
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v2, :cond_c

    .line 2361
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2362
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x1

    const-string v6, "finish-idle"

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    .line 2360
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2365
    :cond_c
    if-nez v12, :cond_e

    .line 2367
    if-eqz v17, :cond_d

    .line 2368
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_d

    .line 2369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 2368
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2373
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 2374
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2375
    .restart local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2376
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_e

    .line 2377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserStartedState;)V

    .line 2376
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2382
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2386
    if-nez v12, :cond_f

    if-eqz v13, :cond_10

    .line 2387
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v12, v13}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 2390
    :cond_10
    if-eqz v11, :cond_11

    .line 2391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2394
    :cond_11
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2791
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2792
    return-void
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 1544
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1547
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    if-nez v7, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1549
    :cond_0
    if-eqz v5, :cond_2

    .line 1550
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1551
    .local v6, "taskStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1552
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v7, v6, :cond_1

    .line 1555
    iput-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1596
    .end local v6    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_0
    return-object v6

    .line 1564
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1565
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_3

    .line 1567
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1568
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1571
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eq v7, v8, :cond_5

    if-eqz p2, :cond_4

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, v7, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1575
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1578
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1579
    .local v1, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_7

    .line 1580
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1581
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1584
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1585
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1579
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1590
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    move-result v3

    .line 1593
    .local v3, "stackId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1594
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1596
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v1    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v3    # "stackId":I
    .end local v4    # "stackNdx":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method allPausedActivitiesComplete()Z
    .locals 8

    .prologue
    .line 651
    const/4 v1, 0x1

    .line 652
    .local v1, "pausing":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 653
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 654
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_2

    .line 655
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 656
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 657
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    .line 664
    const/4 v1, 0x0

    .line 669
    .end local v1    # "pausing":Z
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    return v1

    .line 654
    .restart local v1    # "pausing":Z
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 652
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method allResumedActivitiesComplete()Z
    .locals 7

    .prologue
    .line 594
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 595
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 596
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 597
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 598
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 600
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 601
    const/4 v5, 0x0

    .line 611
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 596
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 594
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 610
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 611
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .prologue
    .line 575
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 576
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 577
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 578
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 579
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_1

    .line 577
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 582
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 583
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v5, :cond_0

    .line 586
    :cond_2
    const/4 v5, 0x0

    .line 590
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 575
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 590
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesVisible()Z
    .locals 6

    .prologue
    .line 615
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 616
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 617
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 618
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 619
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 620
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_1

    .line 621
    :cond_0
    const/4 v5, 0x0

    .line 625
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 617
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 615
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 625
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 482
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 483
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 484
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 485
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 486
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 487
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 488
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_0

    .line 493
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v5

    .line 485
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 483
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 542
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 543
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 544
    .local v0, "didSomething":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 545
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 546
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_1
    if-ltz v6, :cond_2

    .line 547
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 548
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 546
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 551
    :cond_1
    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 552
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 553
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_0

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0, v3, p1, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 557
    const/4 v0, 0x1

    goto :goto_2

    .line 559
    :catch_0
    move-exception v2

    .line 560
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in new application when starting activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    throw v2

    .line 544
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 568
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 569
    const/4 v8, 0x0

    invoke-virtual {p0, v10, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 571
    :cond_4
    return v0
.end method

.method checkReadyForSleepLocked()V
    .locals 5

    .prologue
    .line 2795
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2800
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v4, :cond_6

    .line 2801
    const/4 v1, 0x0

    .line 2802
    .local v1, "dontSleep":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2803
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2804
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-ltz v2, :cond_2

    .line 2805
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v4

    or-int/2addr v1, v4

    .line 2804
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2802
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2809
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 2813
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2814
    const/4 v1, 0x1

    .line 2817
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2821
    const/4 v1, 0x1

    .line 2824
    :cond_5
    if-nez v1, :cond_0

    .line 2829
    .end local v0    # "displayNdx":I
    .end local v1    # "dontSleep":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "displayNdx":I
    :goto_3
    if-ltz v0, :cond_8

    .line 2830
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2831
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "stackNdx":I
    :goto_4
    if-ltz v2, :cond_7

    .line 2832
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 2831
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 2829
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 2836
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2838
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2839
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2841
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_0

    .line 2842
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .prologue
    .line 2409
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2410
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2411
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 2412
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 2411
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2409
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2415
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 5

    .prologue
    .line 2772
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2773
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2774
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2776
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2777
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2778
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2779
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2780
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 2781
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2778
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2776
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2786
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2787
    return-void
.end method

.method createActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 3
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 2582
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    .line 2584
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2586
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    return-object v0
.end method

.method createStackForRestoredTaskHistory(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2636
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    move-result v6

    .line 2637
    .local v6, "stackId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 2638
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "taskNdx":I
    :goto_0
    if-ltz v19, :cond_3

    .line 2639
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 2640
    .local v18, "task":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 2641
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 2642
    .local v5, "taskId":I
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2643
    .local v14, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "activityNdx":I
    :goto_1
    if-ltz v15, :cond_2

    .line 2644
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityRecord;

    .line 2645
    .local v16, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v16

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, v16

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2643
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 2645
    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_3

    .line 2638
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 2652
    .end local v5    # "taskId":I
    .end local v14    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v15    # "activityNdx":I
    .end local v18    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 3
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 2601
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2602
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 2605
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 2606
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2607
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    .line 2609
    .end local v1    # "stackId":I
    :cond_0
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2242
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2243
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2244
    .local v9, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    move-object v0, p0

    move-object v4, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    goto :goto_0

    :cond_0
    move v6, v10

    goto :goto_1

    .line 2247
    .end local v9    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    const-string v0, " mLastFocusedStack="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityContainers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 3167
    const/16 v24, 0x0

    .line 3168
    .local v24, "printed":Z
    const/4 v8, 0x0

    .line 3169
    .local v8, "needSep":Z
    const/16 v22, 0x0

    .local v22, "displayNdx":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 3170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3171
    .local v21, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string v3, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3172
    const-string v3, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 3174
    .local v27, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v26, v3, -0x1

    .local v26, "stackNdx":I
    :goto_1
    if-ltz v26, :cond_5

    .line 3175
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3176
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v25, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3177
    .local v25, "stackHeader":Ljava/lang/StringBuilder;
    const-string v3, "  Stack #"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3179
    const-string v3, ":"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3180
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3182
    iget-object v11, v2, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v12, "    "

    const-string v13, "Run"

    const/4 v14, 0x0

    if-nez p3, :cond_4

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3186
    move/from16 v8, v24

    .line 3187
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 3189
    .local v23, "pr":Z
    if-eqz v23, :cond_0

    .line 3190
    const/16 v24, 0x1

    .line 3191
    const/4 v8, 0x0

    .line 3193
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 3195
    if-eqz v23, :cond_1

    .line 3196
    const/16 v24, 0x1

    .line 3197
    const/4 v8, 0x0

    .line 3199
    :cond_1
    if-eqz p3, :cond_3

    .line 3200
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 3202
    if-eqz v23, :cond_2

    .line 3203
    const/16 v24, 0x1

    .line 3204
    const/4 v8, 0x1

    .line 3206
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3209
    :cond_3
    move/from16 v8, v24

    .line 3174
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_1

    .line 3182
    .end local v23    # "pr":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 3169
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 3213
    .end local v21    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v26    # "stackNdx":I
    .end local v27    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Fin"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to finish:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Stop"

    const/4 v14, 0x0

    if-nez p3, :cond_8

    const/4 v15, 0x1

    :goto_4
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to stop:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Wait"

    const/4 v14, 0x0

    if-nez p3, :cond_9

    const/4 v15, 0x1

    :goto_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting for another to become visible:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3220
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_a

    const/4 v15, 0x1

    :goto_6
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3222
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_b

    const/4 v15, 0x1

    :goto_7
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3225
    return v24

    .line 3213
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3215
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 3217
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 3220
    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    .line 3222
    :cond_b
    const/4 v15, 0x0

    goto :goto_7
.end method

.method endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3481
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 3482
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3483
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3484
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3485
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 3486
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3488
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 2937
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2938
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2939
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 2940
    .local v4, "topStackNdx":I
    move v2, v4

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2941
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2942
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2940
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2937
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2945
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2707
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2708
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2709
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2710
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2711
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2716
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 2709
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2707
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2716
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v10, 0x1

    .line 2672
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2673
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2674
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2675
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2676
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2674
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2680
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2685
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2686
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2703
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 2672
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2692
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-ne v5, v10, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    if-nez v5, :cond_4

    .line 2693
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    .line 2695
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v5, :cond_5

    .line 2696
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    iget v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPcDisblBoost:I

    aput v9, v7, v8

    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostSchedBoost:I

    aput v8, v7, v10

    const/4 v8, 0x2

    iget v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuBoost:I

    aput v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostKsmBoost:I

    aput v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 2700
    :cond_5
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->modifyDelayedGcParams()V

    .line 2703
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 2526
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 2527
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2529
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 2532
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2534
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2537
    return-void
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2504
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2505
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2506
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2507
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2508
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2509
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2507
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2504
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2512
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .line 2515
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2516
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2517
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2518
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2519
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2520
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2518
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2515
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2523
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 2425
    const/4 v0, 0x0

    .line 2426
    .local v0, "didSomething":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2427
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2428
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2429
    .local v2, "numStacks":I
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 2430
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 2431
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->forceStopPackageLocked(Ljava/lang/String;ZZI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2432
    const/4 v0, 0x1

    .line 2429
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2426
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2436
    .end local v2    # "numStacks":I
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3435
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3436
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3437
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "ndx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3438
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3437
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3441
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-object v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3147
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 7

    .prologue
    .line 2564
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 2565
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2566
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 2567
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2568
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2569
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2570
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2571
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2577
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .line 2569
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2565
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2577
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 2556
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2557
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2558
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2560
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getNextStackId()I
    .locals 1

    .prologue
    .line 2625
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    if-gtz v0, :cond_1

    .line 2626
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 2628
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2632
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method getNextTaskId()I
    .locals 1

    .prologue
    .line 518
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 519
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_1

    .line 520
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 522
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 2540
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2541
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 2542
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 2544
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 10
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 3403
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 3404
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 3405
    const/4 v7, 0x0

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 3406
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 3408
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 3409
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3410
    .local v2, "numTasks":I
    new-array v4, v2, [I

    .line 3411
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 3412
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 3413
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3414
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v7, v4, v0

    .line 3415
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v5, v0

    .line 3412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3415
    :cond_0
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v7, "unknown"

    goto :goto_1

    .line 3420
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 3421
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 3422
    return-object v1
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 3426
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3427
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 3428
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 3430
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2550
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2549
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2552
    :cond_0
    return-object v0
.end method

.method getTasksLocked(ILjava/util/List;IZ)V
    .locals 16
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v9, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 757
    .local v3, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v14, v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 759
    .local v14, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    .local v12, "stackNdx":I
    :goto_1
    if-ltz v12, :cond_0

    .line 760
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    .line 761
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v13, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v11, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZ)V

    .line 759
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 757
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v14    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .local v6, "mostRecentActiveTime":J
    .local v8, "numTaskLists":I
    .local v10, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    if-eqz v10, :cond_4

    .line 784
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 p1, p1, -0x1

    .line 769
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "stackNdx":I
    :cond_2
    if-lez p1, :cond_4

    .line 770
    const-wide/high16 v6, -0x8000000000000000L

    .line 771
    .restart local v6    # "mostRecentActiveTime":J
    const/4 v10, 0x0

    .line 772
    .restart local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 773
    .restart local v8    # "numTaskLists":I
    const/4 v12, 0x0

    .restart local v12    # "stackNdx":I
    :goto_2
    if-ge v12, v8, :cond_1

    .line 774
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 775
    .restart local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 776
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 777
    .local v4, "lastActiveTime":J
    cmp-long v15, v4, v6

    if-lez v15, :cond_3

    .line 778
    move-wide v6, v4

    .line 779
    move-object v10, v13

    .line 773
    .end local v4    # "lastActiveTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 790
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "stackNdx":I
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    return-void
.end method

.method goingToSleepLocked()V
    .locals 2

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 2721
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2723
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2728
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2731
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2732
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2860
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2861
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2862
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2863
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2864
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2865
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2863
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2860
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2868
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2398
    const/4 v1, 0x0

    .line 2399
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2400
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2401
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2402
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2401
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2399
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2405
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v1
.end method

.method public handleDisplayAddedLocked(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 3362
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3363
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 3364
    .local v1, "newDisplay":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 3365
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 3366
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_2

    .line 3367
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gone before initialization complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    monitor-exit v3

    .line 3376
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_0
    :goto_1
    return-void

    .line 3363
    .end local v1    # "newDisplay":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3370
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "newDisplay":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3372
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    if-eqz v1, :cond_0

    .line 3374
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    goto :goto_1

    .line 3372
    .end local v1    # "newDisplay":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleDisplayChangedLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 3393
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3395
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    .line 3398
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3399
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 3400
    return-void

    .line 3398
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleDisplayRemovedLocked(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 3379
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3380
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3381
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_1

    .line 3382
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3383
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3384
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 3383
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3386
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3388
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3389
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 3390
    return-void

    .line 3388
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 2924
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2925
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2926
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 2927
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2928
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2929
    return-void
.end method

.method initPowerManagement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 336
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 337
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 338
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 340
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 341
    return-void
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v3, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 416
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 417
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object p1, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 419
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 420
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 421
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 423
    :cond_1
    return v2
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 497
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 498
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 499
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 500
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 501
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 502
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 507
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v2

    .line 500
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 498
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 3491
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyguardWaitingForActivityDrawn()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->keyguardWaitingForActivityDrawn()V

    .line 479
    return-void
.end method

.method moveHomeStack(Z)V
    .locals 6
    .param p1, "toFront"    # Z

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v5, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 428
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 429
    .local v2, "topNdx":I
    if-gtz v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 433
    .local v3, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-ne v3, v5, :cond_3

    const/4 v0, 0x1

    .line 434
    .local v0, "homeInFront":Z
    :goto_1
    if-eq v0, p1, :cond_0

    .line 435
    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 436
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 437
    if-eqz p1, :cond_2

    move v4, v2

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .end local v0    # "homeInFront":Z
    :cond_3
    move v0, v4

    .line 433
    goto :goto_1
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 1
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 445
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    goto :goto_0
.end method

.method moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 2655
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2656
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    .line 2668
    :goto_0
    return-void

    .line 2659
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2660
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    .line 2661
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToStack: no stack for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2664
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 2665
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 2666
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZ)V

    .line 2667
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0
.end method

.method notifyActivityDrawnForKeyguard()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 402
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 3344
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3346
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 3356
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display changed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3358
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 3350
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3352
    return-void
.end method

.method pauseBackStacks(ZZZ)Z
    .locals 6
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    .prologue
    .line 634
    const/4 v1, 0x0

    .line 635
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 636
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 637
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 638
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 639
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 642
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 637
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 635
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 647
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    .prologue
    .line 675
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 676
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 677
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 678
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 679
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_0

    .line 681
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 677
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 675
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 685
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3062
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3063
    .local v0, "N":I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 3098
    :cond_0
    return-object v4

    .line 3065
    :cond_1
    const/4 v4, 0x0

    .line 3067
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v2

    .line 3068
    .local v2, "nowVisible":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3069
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3073
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 3074
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3075
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 3076
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    .line 3083
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3086
    :cond_2
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    .line 3088
    if-nez v4, :cond_4

    .line 3089
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3091
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3092
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3093
    add-int/lit8 v0, v0, -0x1

    .line 3094
    add-int/lit8 v1, v1, -0x1

    .line 3068
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 27
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1095
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1100
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1108
    if-eqz p4, :cond_0

    .line 1109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v20

    .line 1112
    .local v20, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1115
    .end local v20    # "config":Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1116
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1122
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    .line 1123
    .local v22, "idx":I
    if-gez v22, :cond_1

    .line 1124
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1129
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    .line 1131
    .local v26, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_3

    .line 1132
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :catch_0
    move-exception v21

    .line 1214
    .local v21, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_10

    .line 1217
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1221
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "2nd-crash"

    const/4 v9, 0x0

    move-object/from16 v4, v26

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1223
    const/4 v4, 0x0

    .line 1265
    .end local v21    # "e":Landroid/os/RemoteException;
    :goto_1
    return v4

    .line 1109
    .end local v22    # "idx":I
    .end local v26    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1134
    .restart local v22    # "idx":I
    .restart local v26    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    const/4 v15, 0x0

    .line 1135
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v16, 0x0

    .line 1136
    .local v16, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 1137
    :try_start_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1138
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1144
    :cond_4
    if-eqz p3, :cond_5

    .line 1145
    const/16 v4, 0x7536

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1149
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1153
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1154
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1155
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1158
    const/16 v25, 0x0

    .line 1159
    .local v25, "profileFile":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1160
    .local v24, "profileFd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_8

    .line 1162
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    .line 1167
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1168
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1169
    if-eqz v24, :cond_9

    .line 1171
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    .line 1183
    :cond_9
    :goto_2
    if-eqz v25, :cond_e

    :try_start_3
    new-instance v19, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 1186
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1187
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v9, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-nez p3, :cond_f

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v18

    invoke-interface/range {v4 .. v19}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 1193
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    .line 1198
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_a

    .line 1201
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1208
    .local v23, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1232
    .end local v23    # "msg":Landroid/os/Message;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1233
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1234
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_c
    if-eqz p3, :cond_11

    .line 1241
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1257
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1263
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1265
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1172
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    :catch_1
    move-exception v21

    .line 1173
    .local v21, "e":Ljava/io/IOException;
    if-eqz v24, :cond_9

    .line 1175
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1178
    :goto_6
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1183
    .end local v21    # "e":Ljava/io/IOException;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1187
    .restart local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1228
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v16    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v24    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v25    # "profileFile":Ljava/lang/String;
    .local v21, "e":Landroid/os/RemoteException;
    :cond_10
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1229
    throw v21

    .line 1249
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v16    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v24    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "profileFile":Ljava/lang/String;
    :cond_11
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1250
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_5

    .line 1176
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v21, "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_6
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2960
    const/4 v1, 0x0

    .line 2962
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    .line 2964
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 2965
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2969
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    .line 3014
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void

    .line 2976
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v9, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_3

    .line 2964
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2982
    :cond_3
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_2

    .line 2985
    if-nez v1, :cond_4

    .line 2986
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_1

    .line 2987
    :cond_4
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_2

    .line 2988
    if-nez v8, :cond_5

    .line 2989
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2990
    .restart local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2992
    :cond_5
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2996
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v8, :cond_0

    .line 3002
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3003
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 3004
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3006
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 3007
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 3009
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_0

    .line 3006
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3003
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2591
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 2592
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "containerNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2593
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2596
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    .line 2592
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2598
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2250
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2251
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2252
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 2253
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2250
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2256
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .prologue
    .line 3333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 3334
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 3335
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3324
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2419
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 7
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 715
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 716
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 717
    const/4 v0, 0x1

    .line 718
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 719
    if-eqz p2, :cond_0

    .line 720
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 722
    :cond_0
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 723
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 714
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 726
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 727
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 729
    :cond_3
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 690
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2847
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2848
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2849
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2851
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2852
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2853
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2856
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2871
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2872
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    move v4, v5

    .line 2919
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v4

    .line 2877
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    .line 2881
    .local v0, "isVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 2882
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    if-eq v3, p1, :cond_1

    if-ne p2, v0, :cond_3

    .line 2884
    :cond_1
    if-eqz p2, :cond_2

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    move v4, v6

    .line 2885
    goto :goto_0

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object p1, v4

    .line 2884
    goto :goto_1

    .line 2889
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_4

    move v4, v5

    .line 2894
    goto :goto_0

    .line 2895
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eq v7, p1, :cond_5

    move v4, v5

    .line 2901
    goto :goto_0

    .line 2904
    :cond_5
    if-eqz p2, :cond_6

    move-object v4, p1

    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 2905
    if-nez p2, :cond_7

    .line 2907
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2908
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7

    .line 2909
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 2912
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_8

    .line 2915
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    move v4, v6

    .line 2919
    goto :goto_0

    .line 2916
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    .prologue
    .line 797
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const v4, 0x10400

    invoke-interface {v3, p1, p2, v4, p5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 802
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 812
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 816
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 822
    :cond_0
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_1

    .line 823
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 824
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 828
    :cond_1
    if-eqz p4, :cond_2

    .line 829
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 830
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 834
    :cond_2
    return-object v0

    .line 802
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 803
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_0

    .line 474
    :goto_0
    return v1

    .line 459
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(I)V

    .line 464
    if-eqz p2, :cond_2

    .line 465
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 470
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 474
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v1

    goto :goto_0
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2474
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2479
    if-nez p1, :cond_0

    .line 2480
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 2483
    :cond_0
    const/4 v1, 0x0

    .line 2484
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2485
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 2487
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2488
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2489
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2490
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2491
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_3

    .line 2489
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2495
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2496
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_2

    .line 2487
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2500
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    return v1
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 528
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 538
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 532
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 533
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 534
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 535
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2948
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2949
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2950
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2951
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2952
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2953
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2951
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2948
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2956
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 3319
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3313
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3314
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3315
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2933
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 3327
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3328
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 3330
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .prologue
    .line 3338
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3339
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3340
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 695
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 696
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 697
    const/4 v0, 0x1

    .line 698
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 699
    if-eqz p1, :cond_0

    .line 700
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 702
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 703
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 694
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 706
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 707
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 709
    :cond_3
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1600
    if-eqz p1, :cond_2

    .line 1601
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1602
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 1603
    .local v0, "isHomeActivity":Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 1604
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    .line 1606
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 1607
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 1608
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 1610
    .end local v1    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1612
    .end local v0    # "isHomeActivity":Z
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void

    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    move v0, v4

    .line 1602
    goto :goto_0

    .restart local v0    # "isHomeActivity":Z
    :cond_4
    move v0, v4

    .line 1604
    goto :goto_1

    .restart local v1    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_5
    move v0, v4

    .line 1608
    goto :goto_2
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isLocked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3449
    if-nez p1, :cond_1

    .line 3451
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    .line 3452
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3453
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3454
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3455
    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 3456
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3474
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3460
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3461
    const-string v1, "ActivityManager"

    const-string v2, "setLockTaskMode: Attempt to start a second Lock Task Mode task."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3464
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 3465
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;)V

    .line 3466
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3469
    .restart local v0    # "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3470
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->userId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3471
    const/16 v2, 0x6d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3472
    if-nez p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3473
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method setNextTaskId(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 511
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-le p1, v0, :cond_0

    .line 512
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 514
    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 372
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 373
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 375
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 377
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 379
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 380
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 381
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 382
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 383
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_0

    .line 384
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 386
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 389
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    .line 390
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 392
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 395
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->isLeanbackOnlyDevice()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    .line 396
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    return-void
.end method

.method showLockTaskToast()V
    .locals 2

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(Z)V

    .line 3446
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 2735
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2737
    const/4 v8, 0x0

    .line 2738
    .local v8, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 2740
    .local v2, "endTime":J
    :goto_0
    const/4 v0, 0x0

    .line 2741
    .local v0, "cantShutdown":Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2742
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2743
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_0

    .line 2744
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v9

    or-int/2addr v0, v9

    .line 2743
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2741
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2747
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    if-eqz v0, :cond_3

    .line 2748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v2, v10

    .line 2749
    .local v6, "timeRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_2

    .line 2751
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2752
    :catch_0
    move-exception v9

    goto :goto_0

    .line 2755
    :cond_2
    const-string v9, "ActivityManager"

    const-string v10, "Activity manager shutdown timed out"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    const/4 v8, 0x1

    .line 2765
    .end local v6    # "timeRemaining":J
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 2766
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2768
    return v8
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 31
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 1015
    if-nez p4, :cond_0

    .line 1016
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1018
    :cond_0
    if-nez p5, :cond_1

    .line 1019
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1021
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 1022
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1027
    :cond_2
    if-ltz p2, :cond_3

    .line 1028
    const/4 v14, -0x1

    .line 1035
    .local v14, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1037
    .local v28, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1038
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    .line 1039
    .local v22, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    .line 1040
    aget-object v26, p4, v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    .local v26, "intent":Landroid/content/Intent;
    if-nez v26, :cond_5

    move-object/from16 v3, v26

    .line 1039
    .end local v26    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1029
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "callingPid":I
    .end local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v25    # "i":I
    .end local v28    # "origId":J
    :cond_3
    if-nez p1, :cond_4

    .line 1030
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1031
    .restart local v14    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 1033
    .end local v14    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    move/from16 v14, p2

    .restart local v14    # "callingPid":I
    goto :goto_0

    .line 1046
    .restart local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "i":I
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5
    if-eqz v26, :cond_6

    :try_start_2
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1047
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1083
    .end local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v25    # "i":I
    .end local v26    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1085
    :catchall_1
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1050
    .restart local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "i":I
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v21, 0x1

    .line 1053
    .local v21, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1056
    .end local v26    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    aget-object v4, p5, v25

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1058
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v8, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1060
    if-eqz v8, :cond_8

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_8

    .line 1063
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1050
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v21    # "componentSpecified":Z
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v21, 0x0

    goto :goto_3

    .line 1068
    .end local v26    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "componentSpecified":Z
    :cond_8
    if-eqz p7, :cond_9

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_9

    .line 1069
    move-object/from16 v20, p7

    .line 1073
    .local v20, "theseOptions":Landroid/os/Bundle;
    :goto_4
    aget-object v7, p5, v25

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v11, p6

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v14

    move/from16 v18, p2

    invoke-virtual/range {v4 .. v24}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 1077
    .local v27, "res":I
    if-gez v27, :cond_a

    .line 1078
    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1085
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v21    # "componentSpecified":Z
    .end local v27    # "res":I
    :goto_5
    return v27

    .line 1071
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "componentSpecified":Z
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "theseOptions":Landroid/os/Bundle;
    goto :goto_4

    .line 1081
    .restart local v27    # "res":I
    :cond_a
    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v22, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, v22, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p6, 0x0

    goto :goto_6

    .line 1083
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v21    # "componentSpecified":Z
    .end local v27    # "res":I
    :cond_c
    monitor-exit v30
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1085
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    const/16 v27, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 36
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "componentSpecified"    # Z
    .param p18, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p19, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p20, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1310
    const/16 v27, 0x0

    .line 1312
    .local v27, "err":I
    const/16 v24, 0x0

    .line 1313
    .local v24, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 1314
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    .line 1315
    if-eqz v24, :cond_3

    .line 1316
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 1317
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 1326
    :cond_0
    :goto_0
    if-nez v27, :cond_1

    .line 1327
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v34

    .line 1328
    .local v34, "userId":I
    :goto_1
    const-string v8, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START u"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " {"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "} from uid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " on display "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p19, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    .end local v34    # "userId":I
    :cond_1
    const/16 v31, 0x0

    .line 1337
    .local v31, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 1338
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_2

    .line 1339
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 1342
    if-eqz v31, :cond_2

    .line 1343
    if-ltz p9, :cond_2

    move-object/from16 v0, v31

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    .line 1344
    move-object/from16 v6, v31

    .line 1348
    :cond_2
    if-nez v6, :cond_8

    const/4 v4, 0x0

    .line 1350
    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v28

    .line 1352
    .local v28, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v5, v28

    if-eqz v5, :cond_b

    if-eqz v31, :cond_b

    .line 1355
    if-ltz p9, :cond_9

    .line 1356
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1357
    const/4 v5, -0x3

    .line 1540
    :goto_4
    return v5

    .line 1319
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "launchFlags":I
    .end local v31    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") when starting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/16 v27, -0x4

    goto/16 :goto_0

    .line 1327
    :cond_4
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 1328
    .restart local v34    # "userId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p19

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p19

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_2

    .line 1348
    .end local v34    # "userId":I
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    .line 1359
    .restart local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    .restart local v28    # "launchFlags":I
    :cond_9
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1360
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 1361
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 1362
    const/4 v5, 0x0

    move-object/from16 v0, v31

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1363
    if-eqz v6, :cond_a

    .line 1364
    move-object/from16 v0, v31

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1366
    :cond_a
    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p11

    if-ne v5, v0, :cond_b

    .line 1377
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p12, v0

    .line 1381
    :cond_b
    if-nez v27, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1384
    const/16 v27, -0x1

    .line 1387
    :cond_c
    if-nez v27, :cond_d

    if-nez p4, :cond_d

    .line 1390
    const/16 v27, -0x2

    .line 1393
    :cond_d
    if-nez v27, :cond_e

    if-eqz v31, :cond_e

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_e

    .line 1399
    const/high16 v5, 0x10000000

    and-int v5, v5, v28

    if-nez v5, :cond_e

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v8, :cond_e

    .line 1402
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v5, v8, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_e

    .line 1404
    const/16 v27, -0x7

    .line 1412
    :cond_e
    :goto_5
    if-nez v27, :cond_f

    if-eqz p5, :cond_f

    .line 1416
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v5, v8, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_f

    .line 1418
    const/16 v27, -0x7

    .line 1425
    :cond_f
    :goto_6
    if-eqz v27, :cond_11

    .line 1426
    if-eqz v6, :cond_10

    .line 1427
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1431
    :cond_10
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v5, v27

    .line 1432
    goto/16 :goto_4

    .line 1406
    :catch_0
    move-exception v26

    .line 1407
    .local v26, "e":Landroid/os/RemoteException;
    const/16 v27, -0x7

    goto :goto_5

    .line 1420
    .end local v26    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v26

    .line 1421
    .restart local v26    # "e":Landroid/os/RemoteException;
    const/16 v27, -0x7

    goto :goto_6

    .line 1435
    .end local v26    # "e":Landroid/os/RemoteException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v33

    .line 1437
    .local v33, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v25

    .line 1439
    .local v25, "componentPerm":I
    if-eqz v33, :cond_14

    if-eqz v25, :cond_14

    .line 1440
    if-eqz v6, :cond_12

    .line 1441
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1446
    :cond_12
    move-object/from16 v0, p4

    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_13

    .line 1447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " not exported from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1457
    .local v29, "msg":Ljava/lang/String;
    :goto_7
    const-string v5, "ActivityManager"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1452
    .end local v29    # "msg":Ljava/lang/String;
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " requires "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "msg":Ljava/lang/String;
    goto :goto_7

    .line 1461
    .end local v29    # "msg":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p2

    move/from16 v9, p11

    move/from16 v10, p10

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_18

    const/16 v23, 0x1

    .line 1464
    .local v23, "abort":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_15

    .line 1468
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v35

    .line 1469
    .local v35, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-interface {v5, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    if-nez v5, :cond_19

    const/4 v5, 0x1

    :goto_9
    or-int v23, v23, v5

    .line 1476
    .end local v35    # "watchIntent":Landroid/content/Intent;
    :cond_15
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsmController:Landroid/app/IActivityController;

    if-eqz v5, :cond_16

    .line 1478
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Intent;

    .line 1479
    .restart local v35    # "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsmController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-interface {v5, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    if-nez v5, :cond_1a

    const/4 v5, 0x1

    :goto_b
    or-int v23, v23, v5

    .line 1486
    .end local v35    # "watchIntent":Landroid/content/Intent;
    :cond_16
    :goto_c
    if-eqz v23, :cond_1b

    .line 1487
    if-eqz v6, :cond_17

    .line 1488
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1493
    :cond_17
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1494
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1461
    .end local v23    # "abort":Z
    :cond_18
    const/16 v23, 0x0

    goto :goto_8

    .line 1469
    .restart local v23    # "abort":Z
    .restart local v35    # "watchIntent":Landroid/content/Intent;
    :cond_19
    const/4 v5, 0x0

    goto :goto_9

    .line 1471
    .end local v35    # "watchIntent":Landroid/content/Intent;
    :catch_2
    move-exception v26

    .line 1472
    .restart local v26    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_a

    .line 1479
    .end local v26    # "e":Landroid/os/RemoteException;
    .restart local v35    # "watchIntent":Landroid/content/Intent;
    :cond_1a
    const/4 v5, 0x0

    goto :goto_b

    .line 1481
    .end local v35    # "watchIntent":Landroid/content/Intent;
    :catch_3
    move-exception v26

    .line 1482
    .restart local v26    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mUsmController:Landroid/app/IActivityController;

    goto :goto_c

    .line 1497
    .end local v26    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v7, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v9, v24

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v6

    move-object/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p17

    move-object/from16 v20, p0

    move-object/from16 v21, p19

    move-object/from16 v22, p16

    invoke-direct/range {v7 .. v22}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    .line 1500
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p18, :cond_1c

    .line 1501
    const/4 v5, 0x0

    aput-object v7, p18, v5

    .line 1504
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v32

    .line 1505
    .local v32, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p5, :cond_1e

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1d

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p11

    if-eq v5, v0, :cond_1e

    .line 1507
    :cond_1d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v13, "Activity start"

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p13

    move/from16 v12, p14

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1509
    new-instance v30, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, p15

    move-object/from16 v3, v32

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1511
    .local v30, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1513
    const/4 v5, 0x4

    goto/16 :goto_4

    .line 1517
    .end local v30    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_20

    .line 1523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 1528
    :goto_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 1530
    const/4 v14, 0x1

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, v31

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p20

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 1533
    if-gez v27, :cond_1f

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    :cond_1f
    move/from16 v5, v27

    .line 1540
    goto/16 :goto_4

    .line 1525
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_d
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 42
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Landroid/app/IActivityContainer;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 850
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v25, 0x1

    .line 856
    .local v25, "componentSpecified":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p16

    .line 859
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v29

    .local v29, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v27, p17

    .line 862
    check-cast v27, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 863
    .local v27, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 864
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 865
    .local v21, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 867
    .local v22, "realCallingUid":I
    if-ltz p2, :cond_a

    .line 868
    const/16 v18, -0x1

    .line 877
    .local v18, "callingPid":I
    :goto_1
    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 878
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v39

    .line 882
    .local v39, "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    if-eqz p14, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v39

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 889
    .local v34, "origId":J
    if-eqz v29, :cond_13

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_13

    .line 893
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 897
    :cond_2
    move/from16 v7, p2

    .line 898
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_3

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v30

    .line 900
    .local v30, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v30, :cond_e

    .line 901
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 911
    .end local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    move/from16 v8, p16

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v40

    .line 917
    .local v40, "target":Landroid/content/IIntentSender;
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 918
    .local v33, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_4

    .line 920
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 922
    :cond_4
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 926
    .local v32, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string v2, "cur_task"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    .end local v32    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_5
    const-string v2, "new_app"

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 934
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 936
    move-object/from16 p4, v33

    .line 937
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 938
    const/16 p1, 0x0

    .line 939
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 940
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v18

    .line 941
    const/16 v25, 0x1

    .line 943
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p16

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v37

    .line 948
    .local v37, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v37, :cond_f

    move-object/from16 v0, v37

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 949
    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p16

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 957
    .end local v7    # "appCallingUid":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "target":Landroid/content/IIntentSender;
    :goto_5
    const/16 v26, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move/from16 v17, p10

    move/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v23, p11

    move-object/from16 v24, p15

    move-object/from16 v28, p18

    :try_start_4
    invoke-virtual/range {v8 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v38

    .line 963
    .local v38, "res":I
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 965
    move-object/from16 v0, v39

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_6

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/4 v2, 0x0

    move-object/from16 v0, v39

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 978
    :cond_6
    if-eqz p13, :cond_8

    .line 979
    move/from16 v0, v38

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 980
    if-nez v38, :cond_10

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 984
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 987
    :goto_6
    :try_start_6
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    .line 1008
    :cond_8
    :goto_7
    monitor-exit v41
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v38    # "res":I
    :goto_8
    return v38

    .line 853
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v25    # "componentSpecified":Z
    .end local v27    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v34    # "origId":J
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 869
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v25    # "componentSpecified":Z
    .restart local v27    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_a
    if-nez p1, :cond_b

    .line 870
    move/from16 v18, v21

    .line 871
    .restart local v18    # "callingPid":I
    move/from16 p2, v22

    goto/16 :goto_1

    .line 873
    .end local v18    # "callingPid":I
    :cond_b
    const/16 p2, -0x1

    move/from16 v18, p2

    .restart local v18    # "callingPid":I
    goto/16 :goto_1

    .line 880
    :cond_c
    :try_start_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v39, v0

    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_2

    .line 882
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 903
    .restart local v7    # "appCallingUid":I
    .restart local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "origId":J
    :cond_e
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 907
    const/16 v38, -0x4

    monitor-exit v41
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_8

    .line 948
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 950
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v31

    move-object/from16 v12, v29

    .line 951
    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v31, "e":Landroid/os/RemoteException;
    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 988
    .end local v7    # "appCallingUid":I
    .end local v31    # "e":Landroid/os/RemoteException;
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v38    # "res":I
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_8

    .line 989
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    .line 990
    .local v36, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_11

    .line 991
    const/4 v2, 0x0

    move-object/from16 v0, p13

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 992
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 993
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 994
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_7

    .line 1009
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v34    # "origId":J
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "res":I
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    :goto_a
    monitor-exit v41
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 996
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v34    # "origId":J
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "res":I
    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_11
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1000
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1003
    :goto_b
    :try_start_b
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_12

    goto/16 :goto_7

    .line 1009
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v34    # "origId":J
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "res":I
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_a

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v34    # "origId":J
    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_a

    .line 1001
    .end local v7    # "appCallingUid":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "res":I
    :catch_1
    move-exception v2

    goto :goto_b

    .line 985
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_6

    .line 950
    .end local v38    # "res":I
    .restart local v7    # "appCallingUid":I
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :catch_3
    move-exception v31

    goto :goto_9

    .end local v7    # "appCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_13
    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_5
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .locals 40
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1617
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 1618
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 1624
    .local v12, "callingUid":I
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-boolean v4, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v4, :cond_0

    .line 1625
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting activity in task not in recents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/16 p8, 0x0

    .line 1629
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const/16 v23, 0x1

    .line 1630
    .local v23, "launchSingleTop":Z
    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    const/16 v21, 0x1

    .line 1631
    .local v21, "launchSingleInstance":Z
    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    const/16 v22, 0x1

    .line 1633
    .local v22, "launchSingleTask":Z
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 1634
    .local v20, "launchFlags":I
    const/high16 v4, 0x80000

    and-int v4, v4, v20

    if-eqz v4, :cond_c

    if-nez v21, :cond_1

    if-eqz v22, :cond_c

    .line 1637
    :cond_1
    const-string v4, "ActivityManager"

    const-string v5, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const v4, -0x8080001

    and-int v20, v20, v4

    .line 1657
    :goto_3
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_d

    if-nez v22, :cond_d

    if-nez v21, :cond_d

    const/high16 v4, 0x80000

    and-int v4, v4, v20

    if-eqz v4, :cond_d

    const/16 v24, 0x1

    .line 1661
    .local v24, "launchTaskBehind":Z
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_2

    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-eqz v4, :cond_2

    .line 1667
    const-string v4, "ActivityManager"

    const-string v5, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1671
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1674
    :cond_2
    const/high16 v4, 0x80000

    and-int v4, v4, v20

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_3

    .line 1675
    const/high16 v4, 0x10000000

    or-int v20, v20, v4

    .line 1680
    :cond_3
    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-eqz v4, :cond_5

    .line 1681
    if-nez v24, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 1683
    :cond_4
    const/high16 v4, 0x8000000

    or-int v20, v20, v4

    .line 1689
    :cond_5
    const/high16 v4, 0x40000

    and-int v4, v4, v20

    if-nez v4, :cond_e

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1695
    if-nez p6, :cond_6

    .line 1696
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1699
    :cond_6
    const/high16 v4, 0x1000000

    and-int v4, v4, v20

    if-eqz v4, :cond_f

    move-object/from16 v29, p1

    .line 1706
    .local v29, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_6
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_8

    .line 1707
    move-object/from16 v13, p2

    .line 1708
    .local v13, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v13, :cond_7

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 1711
    :cond_7
    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1713
    and-int/lit8 p5, p5, -0x2

    .line 1717
    .end local v13    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v10, 0x0

    .line 1718
    .local v10, "addingToTask":Z
    const/16 v31, 0x0

    .line 1723
    .local v31, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_1a

    if-eqz p8, :cond_1a

    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1a

    .line 1724
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1725
    .local v11, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 1726
    .local v32, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_10

    .line 1727
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1728
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launching into task without base intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1629
    .end local v10    # "addingToTask":Z
    .end local v11    # "baseIntent":Landroid/content/Intent;
    .end local v20    # "launchFlags":I
    .end local v21    # "launchSingleInstance":Z
    .end local v22    # "launchSingleTask":Z
    .end local v23    # "launchSingleTop":Z
    .end local v24    # "launchTaskBehind":Z
    .end local v29    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v32    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1630
    .restart local v23    # "launchSingleTop":Z
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1631
    .restart local v21    # "launchSingleInstance":Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1642
    .restart local v20    # "launchFlags":I
    .restart local v22    # "launchSingleTask":Z
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 1646
    :pswitch_1
    const/high16 v4, 0x80000

    or-int v20, v20, v4

    .line 1647
    goto/16 :goto_3

    .line 1649
    :pswitch_2
    const/high16 v4, 0x80000

    or-int v20, v20, v4

    .line 1650
    goto/16 :goto_3

    .line 1652
    :pswitch_3
    const v4, -0x8000001

    and-int v20, v20, v4

    goto/16 :goto_3

    .line 1657
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1689
    .restart local v24    # "launchTaskBehind":Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1699
    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 1734
    .restart local v10    # "addingToTask":Z
    .restart local v11    # "baseIntent":Landroid/content/Intent;
    .restart local v29    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v32    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_10
    if-nez v21, :cond_11

    if-eqz v22, :cond_13

    .line 1735
    :cond_11
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1736
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1737
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to launch singleInstance/Task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into different task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1740
    :cond_12
    if-eqz v32, :cond_13

    .line 1741
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1742
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caller with inTask "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has root "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but target is singleInstance/Task"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1749
    :cond_13
    if-nez v32, :cond_18

    .line 1750
    const v15, 0x18082000

    .line 1753
    .local v15, "flagsOfInterest":I
    const v4, -0x18082001

    and-int v4, v4, v20

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, 0x18082000

    and-int/2addr v5, v6

    or-int v20, v4, v5

    .line 1755
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1756
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1757
    const/4 v10, 0x1

    .line 1769
    .end local v15    # "flagsOfInterest":I
    :goto_7
    move-object/from16 v31, p8

    .line 1774
    .end local v11    # "baseIntent":Landroid/content/Intent;
    .end local v32    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_8
    if-nez p8, :cond_14

    .line 1775
    if-nez p2, :cond_1b

    .line 1778
    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-nez v4, :cond_14

    if-nez p8, :cond_14

    .line 1779
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/high16 v4, 0x10000000

    or-int v20, v20, v4

    .line 1795
    :cond_14
    :goto_9
    const/16 v27, 0x0

    .line 1796
    .local v27, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v28, 0x0

    .line 1798
    .local v28, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_1f

    .line 1799
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1e

    .line 1805
    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-nez v4, :cond_15

    .line 1806
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from finishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; forcing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/high16 v4, 0x10000000

    or-int v20, v20, v4

    .line 1809
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    .line 1810
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v28, v0

    .line 1812
    :cond_15
    const/16 p2, 0x0

    .line 1813
    const/16 v33, 0x0

    .line 1821
    .local v33, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_a
    const/16 v25, 0x0

    .line 1824
    .local v25, "movedHome":Z
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1831
    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-eqz v4, :cond_16

    const/high16 v4, 0x8000000

    and-int v4, v4, v20

    if-eqz v4, :cond_17

    :cond_16
    if-nez v21, :cond_17

    if-eqz v22, :cond_39

    .line 1838
    :cond_17
    if-nez p8, :cond_39

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_39

    .line 1843
    if-nez v21, :cond_20

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 1845
    .local v17, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_b
    if-eqz v17, :cond_39

    .line 1846
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1848
    const-string v4, "ActivityManager"

    const-string v5, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const/4 v4, 0x5

    .line 2238
    .end local v17    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_c
    return v4

    .line 1762
    .end local v25    # "movedHome":Z
    .end local v27    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "newTaskIntent":Landroid/content/Intent;
    .end local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "baseIntent":Landroid/content/Intent;
    .restart local v32    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_18
    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-eqz v4, :cond_19

    .line 1763
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1766
    :cond_19
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 1771
    .end local v11    # "baseIntent":Landroid/content/Intent;
    .end local v32    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/16 p8, 0x0

    goto/16 :goto_8

    .line 1783
    :cond_1b
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1c

    .line 1787
    const/high16 v4, 0x10000000

    or-int v20, v20, v4

    goto/16 :goto_9

    .line 1788
    :cond_1c
    if-nez v21, :cond_1d

    if-eqz v22, :cond_14

    .line 1791
    :cond_1d
    const/high16 v4, 0x10000000

    or-int v20, v20, v4

    goto/16 :goto_9

    .line 1815
    .restart local v27    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v28    # "newTaskIntent":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v33, v0

    .restart local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_a

    .line 1818
    .end local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_1f
    const/16 v33, 0x0

    .restart local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_a

    .line 1843
    .restart local v25    # "movedHome":Z
    :cond_20
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    goto :goto_b

    .line 1851
    .restart local v17    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_22

    .line 1852
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1854
    :cond_22
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1855
    .local v3, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1858
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 1859
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_23

    .line 1864
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1872
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .line 1873
    .local v19, "lastStack":Lcom/android/server/am/ActivityStack;
    if-nez v19, :cond_2a

    const/4 v14, 0x0

    .line 1875
    .local v14, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_d
    if-eqz v14, :cond_28

    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v5, :cond_24

    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eq v4, v5, :cond_28

    .line 1877
    :cond_24
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1878
    if-eqz p2, :cond_25

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v5, :cond_28

    .line 1882
    :cond_25
    if-eqz v24, :cond_26

    if-eqz p2, :cond_26

    .line 1883
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1885
    :cond_26
    const/16 v25, 0x1

    .line 1886
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 1887
    const v4, 0x10004000

    and-int v4, v4, v20

    const v5, 0x10004000

    if-ne v4, v5, :cond_27

    .line 1891
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1893
    :cond_27
    const/16 p7, 0x0

    .line 1898
    :cond_28
    const/high16 v4, 0x200000

    and-int v4, v4, v20

    if-eqz v4, :cond_29

    .line 1899
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 1901
    :cond_29
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_2c

    .line 1906
    if-eqz p6, :cond_2b

    .line 1907
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1911
    :goto_e
    const/4 v4, 0x1

    goto/16 :goto_c

    .line 1873
    .end local v14    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    goto/16 :goto_d

    .line 1909
    .restart local v14    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_e

    .line 1913
    :cond_2c
    const v4, 0x10008000

    and-int v4, v4, v20

    const v5, 0x10008000

    if-ne v4, v5, :cond_2e

    .line 1919
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    .line 1921
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    .line 1922
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    .line 1926
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2002
    :cond_2d
    :goto_f
    if-nez v10, :cond_39

    if-nez v31, :cond_39

    .line 2006
    if-eqz p6, :cond_38

    .line 2007
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2011
    :goto_10
    const/4 v4, 0x2

    goto/16 :goto_c

    .line 1924
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    iput-boolean v5, v0, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    throw v4

    .line 1927
    :cond_2e
    const/high16 v4, 0x4000000

    and-int v4, v4, v20

    if-nez v4, :cond_2f

    if-nez v21, :cond_2f

    if-eqz v22, :cond_32

    .line 1933
    :cond_2f
    const/16 v37, 0x0

    .line 1935
    .local v37, "top":Lcom/android/server/am/ActivityRecord;
    :try_start_1
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    .line 1936
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v37

    .line 1938
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    .line 1940
    if-eqz v37, :cond_31

    .line 1941
    move-object/from16 v0, v37

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_30

    .line 1946
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1948
    :cond_30
    const/16 v4, 0x7533

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1950
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_f

    .line 1938
    :catchall_1
    move-exception v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    throw v4

    .line 1956
    :cond_31
    const/4 v10, 0x1

    .line 1960
    move-object/from16 p2, v17

    goto :goto_f

    .line 1962
    .end local v37    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_32
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1969
    const/high16 v4, 0x20000000

    and-int v4, v4, v20

    if-nez v4, :cond_33

    if-eqz v23, :cond_35

    :cond_33
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1971
    const/16 v4, 0x7533

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1973
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_34

    .line 1974
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1976
    :cond_34
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_f

    .line 1977
    :cond_35
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1981
    const/4 v10, 0x1

    .line 1982
    move-object/from16 p2, v17

    goto/16 :goto_f

    .line 1984
    :cond_36
    const/high16 v4, 0x200000

    and-int v4, v4, v20

    if-nez v4, :cond_37

    .line 1990
    const/4 v10, 0x1

    .line 1991
    move-object/from16 p2, v17

    goto/16 :goto_f

    .line 1992
    :cond_37
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v4, :cond_2d

    .line 2000
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_f

    .line 2009
    :cond_38
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_10

    .line 2023
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_39
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_3d

    .line 2027
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v38

    .line 2028
    .local v38, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v37

    .line 2029
    .restart local v37    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v37, :cond_3f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_3f

    .line 2030
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v5, :cond_3f

    .line 2031
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3f

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_3f

    .line 2032
    const/high16 v4, 0x20000000

    and-int v4, v4, v20

    if-nez v4, :cond_3a

    if-nez v23, :cond_3a

    if-eqz v22, :cond_3f

    .line 2034
    :cond_3a
    const/16 v4, 0x7533

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v37

    invoke-static {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2038
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2039
    if-eqz p6, :cond_3b

    .line 2040
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2042
    :cond_3b
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2043
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_3c

    .line 2047
    const/4 v4, 0x1

    goto/16 :goto_c

    .line 2049
    :cond_3c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2050
    const/4 v4, 0x3

    goto/16 :goto_c

    .line 2057
    .end local v37    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_3d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_3e

    .line 2058
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2061
    :cond_3e
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2062
    const/4 v4, -0x2

    goto/16 :goto_c

    .line 2065
    .restart local v37    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_3f
    const/16 v26, 0x0

    .line 2066
    .local v26, "newTask":Z
    const/16 v18, 0x0

    .line 2068
    .local v18, "keepCurTransition":Z
    if-eqz v24, :cond_40

    if-eqz p2, :cond_40

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v36, v0

    .line 2072
    .local v36, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :goto_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_4b

    if-nez p8, :cond_4b

    if-nez v10, :cond_4b

    const/high16 v4, 0x10000000

    and-int v4, v4, v20

    if-eqz v4, :cond_4b

    .line 2074
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2075
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted Lock Task Mode violation r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v4, 0x5

    goto/16 :goto_c

    .line 2068
    .end local v36    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_40
    const/16 v36, 0x0

    goto :goto_11

    .line 2078
    .restart local v36    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_41
    const/16 v26, 0x1

    .line 2079
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2080
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    if-nez v24, :cond_42

    .line 2081
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2083
    :cond_42
    if-nez v31, :cond_4a

    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    if-eqz v27, :cond_47

    move-object/from16 v5, v27

    :goto_12
    if-eqz v28, :cond_48

    move-object/from16 v6, v28

    :goto_13
    if-nez v24, :cond_49

    const/4 v9, 0x1

    :goto_14
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2094
    :goto_15
    if-nez v25, :cond_43

    .line 2095
    const v4, 0x10004000

    and-int v4, v4, v20

    const v5, 0x10004000

    if-ne v4, v5, :cond_43

    .line 2100
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2222
    :cond_43
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move v5, v12

    move-object/from16 v7, v16

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 2225
    if-eqz p2, :cond_44

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2226
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2228
    :cond_44
    if-eqz v26, :cond_45

    .line 2229
    const/16 v4, 0x7534

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2231
    :cond_45
    const/16 v4, 0x7535

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2232
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v4, p1

    move/from16 v5, v26

    move/from16 v6, p6

    move/from16 v7, v18

    move-object/from16 v8, p7

    .line 2233
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 2234
    if-nez v24, :cond_46

    .line 2236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2238
    :cond_46
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 2084
    :cond_47
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_12

    :cond_48
    move-object/from16 v6, v16

    goto/16 :goto_13

    :cond_49
    const/4 v9, 0x0

    goto/16 :goto_14

    .line 2092
    :cond_4a
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_15

    .line 2103
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_4b
    if-eqz p2, :cond_52

    .line 2104
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v34, v0

    .line 2105
    .local v34, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2106
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted Lock Task Mode violation r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v4, 0x5

    goto/16 :goto_c

    .line 2109
    :cond_4c
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2110
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2111
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v39

    .line 2112
    .local v39, "topTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_4e

    .line 2113
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2117
    :goto_17
    if-nez v10, :cond_4f

    const/high16 v4, 0x4000000

    and-int v4, v4, v20

    if-eqz v4, :cond_4f

    .line 2121
    const/16 v37, 0x0

    .line 2123
    const/4 v4, 0x1

    :try_start_2
    move-object/from16 v0, v34

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    .line 2124
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v37

    .line 2126
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    .line 2128
    const/16 v18, 0x1

    .line 2129
    if-eqz v37, :cond_51

    .line 2130
    const/16 v4, 0x7533

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2131
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2134
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2135
    if-eqz p6, :cond_4d

    .line 2136
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2138
    :cond_4d
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2139
    const/4 v4, 0x3

    goto/16 :goto_c

    .line 2115
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto :goto_17

    .line 2126
    :catchall_2
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    iput-boolean v5, v0, Lcom/android/server/am/TaskRecord;->prohibitRemoval:Z

    throw v4

    .line 2141
    :cond_4f
    if-nez v10, :cond_51

    const/high16 v4, 0x20000

    and-int v4, v4, v20

    if-eqz v4, :cond_51

    .line 2146
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v37

    .line 2147
    if-eqz v37, :cond_51

    .line 2148
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v35, v0

    .line 2149
    .local v35, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2150
    const/16 v4, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2151
    move-object/from16 v0, v37

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2152
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2153
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2154
    if-eqz p6, :cond_50

    .line 2155
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2157
    :cond_50
    const/4 v4, 0x3

    goto/16 :goto_c

    .line 2163
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    :cond_51
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_16

    .line 2167
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v34    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .end local v39    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_52
    if-eqz p8, :cond_58

    .line 2170
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2171
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted Lock Task Mode violation r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const/4 v4, 0x5

    goto/16 :goto_c

    .line 2174
    :cond_53
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2175
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2176
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p8

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2181
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v37

    .line 2182
    if-eqz v37, :cond_56

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v5, :cond_56

    .line 2183
    const/high16 v4, 0x20000000

    and-int v4, v4, v20

    if-nez v4, :cond_54

    if-nez v23, :cond_54

    if-eqz v22, :cond_56

    .line 2185
    :cond_54
    const/16 v4, 0x7533

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v37

    invoke-static {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2186
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_55

    .line 2190
    const/4 v4, 0x1

    goto/16 :goto_c

    .line 2192
    :cond_55
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2193
    const/4 v4, 0x3

    goto/16 :goto_c

    .line 2197
    :cond_56
    if-nez v10, :cond_57

    .line 2200
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2201
    const/4 v4, 0x2

    goto/16 :goto_c

    .line 2204
    :cond_57
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_16

    .line 2212
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2213
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2214
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 2215
    .local v30, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v30, :cond_59

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_18
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_16

    .line 2215
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, v16

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_18

    .line 1642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserStartedState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3059
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 838
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(I)V

    .line 839
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 841
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 1274
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1276
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 1278
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1284
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1287
    :cond_1
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_0
    return-void

    .line 1289
    :catch_0
    move-exception v11

    .line 1290
    .local v11, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_0
.end method

.method switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 3017
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 3018
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3019
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 3021
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3022
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3023
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3024
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 3025
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3026
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 3027
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3028
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    .line 3029
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3024
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3022
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3034
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3035
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_3

    .line 3036
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 3038
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 3039
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3040
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 3041
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3042
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_4

    .line 3043
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3049
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    return v1

    .line 3047
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z

    goto :goto_2
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 732
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 733
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 734
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    move-object v5, v1

    .line 749
    :cond_0
    :goto_0
    return-object v5

    .line 739
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 740
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 741
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 742
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 743
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_2

    move-object v5, v1

    .line 745
    goto :goto_0

    .line 740
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2447
    const/4 v1, 0x0

    .line 2448
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2449
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2450
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 2451
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2452
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2453
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    .line 2454
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2448
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2455
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 2456
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 2450
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2465
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_4

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_4

    .line 2468
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2469
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2471
    :cond_4
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 0

    .prologue
    .line 3135
    return-void
.end method
