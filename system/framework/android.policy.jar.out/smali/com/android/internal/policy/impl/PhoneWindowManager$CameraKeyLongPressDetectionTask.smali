.class final Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraKeyLongPressDetectionTask"
.end annotation


# instance fields
.field private mIsSecure:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5336
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 5336
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public applySecurityLevel(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 5342
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->mIsSecure:Z

    .line 5343
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 5347
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenUnlockSecuritySkipEnabled()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5353
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelSemcCameraApplication()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5356
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFastCaptureWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5390
    :goto_0
    return-void

    .line 5363
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5372
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->mIsSecure:Z

    if-nez v1, :cond_1

    .line 5376
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 5380
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 5383
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->mIsSecure:Z

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->startSemcCameraApplication(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 5386
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 5389
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$CameraKeyLongPressDetectionTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFastCaptureWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 5364
    :catch_0
    move-exception v0

    .line 5368
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Camera key long press task, dismiss keyguard failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method