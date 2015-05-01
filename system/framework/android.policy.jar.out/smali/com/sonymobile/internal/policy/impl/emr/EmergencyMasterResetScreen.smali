.class public Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;
.super Landroid/widget/LinearLayout;
.source "EmergencyMasterResetScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MASTER_CLEAR_EXECUTE_BATTERY_LEVEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "EmergencyMasterResetScreen"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevelOk:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

.field private mFinalConfirmationDialog:Landroid/app/AlertDialog;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mBatteryLevelOk:Z

    .line 65
    new-instance v5, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$1;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    iput-object v5, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v5, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$2;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    iput-object v5, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    .line 103
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 106
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900cd

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 108
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 109
    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 110
    const v5, 0x10203a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 112
    .local v3, "resetBtn":Landroid/widget/Button;
    const v5, 0x10203a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    .local v0, "exitBtn":Landroid/widget/Button;
    new-instance v5, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$3;

    invoke-direct {v5, p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$3;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v5, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$4;

    invoke-direct {v5, p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$4;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mBatteryLevelOk:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->getFinalConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->emergencyMasterResetExit()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->executeMasterReset()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method private emergencyMasterResetExit()V
    .locals 3

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V

    .line 281
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 282
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    return-void
.end method

.method private executeMasterReset()V
    .locals 5

    .prologue
    .line 245
    const-string v2, "ro.monkey"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mBatteryLevelOk:Z

    if-eqz v2, :cond_1

    .line 250
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "pd":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const v3, 0x1040496

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 254
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 255
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 256
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V

    .line 261
    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->getLowBatteryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 267
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 268
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V

    goto :goto_0
.end method

.method private getFinalConfirmationDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;

    const v1, 0x1080027

    const v2, 0x104075b

    const v3, 0x104075a

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;III)V

    iput-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    .line 199
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$5;

    invoke-direct {v3, p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$5;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getLowBatteryDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;

    const v1, 0x1080027

    const v2, 0x1040759

    const v3, 0x1040758

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;-><init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;III)V

    iput-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 229
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private pokeWakelock()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 289
    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    iput-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    iput-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 149
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V

    .line 184
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public final needsInput()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 160
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->cleanUp()V

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 168
    return-void
.end method
