.class public Lcom/sonymobile/enterprise/otplock/OneTimePassLock;
.super Ljava/lang/Object;
.source "OneTimePassLock.java"


# static fields
.field public static final ADMIN_MSG:Ljava/lang/String; = "admin_msg"

.field public static final ADMIN_NUMBER:Ljava/lang/String; = "admin_number"

.field private static final DEBUG:Z = false

.field public static final ONE_TIME_PASSWORD:Ljava/lang/String; = "one_time_password"

.field private static final ONE_TIME_PASS_LOCK:Landroid/content/ComponentName;

.field public static final OTP_LOCKSCREEN_UNLOCK:Ljava/lang/String; = "com.sonymobile.lockscreen.otp.unlock"

.field public static final REMOTE_OTP_UNLOCK:Ljava/lang/String; = "remote_otp_unlock"

.field private static final TAG:Ljava/lang/String; = "OneTimePassLock"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonymobile.lockscreen.otp"

    const-string v2, "com.sonymobile.lockscreen.otp.OTPLockscreenActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->ONE_TIME_PASS_LOCK:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    return-void
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mContext:Landroid/content/Context;

    const v3, 0x1040050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "otpConfig":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 108
    :cond_0
    if-nez v0, :cond_1

    .line 109
    sget-object v0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->ONE_TIME_PASS_LOCK:Landroid/content/ComponentName;

    .line 112
    :cond_1
    return-object v0
.end method


# virtual methods
.method public launchIfLockActive()Z
    .locals 5

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "retAppStarted":Z
    iget-object v3, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 86
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOtpLockActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const-string v3, "admin_msg"

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getOtpMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v3, "admin_number"

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getOtpPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    const/4 v2, 0x1

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return v2
.end method
