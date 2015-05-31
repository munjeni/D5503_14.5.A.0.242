.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FIVE_POLE_ACCESSORY_STATUS:Ljava/lang/String; = "com.sonymobile.media.intent.action.FIVE_POLE_ACCESSORY_STATUS"

.field private static final BIT_FIVE_POLE_ACCESSORY_HEADSET:I = 0x40

.field private static final BIT_FIVE_POLE_ACCESSORY_MIC:I = 0x80

.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final MSG_UNSUPPORTED_HEADSET_INSERT:I = 0x0

.field private static final MSG_UNSUPPORTED_HEADSET_REMOVE:I = 0x1

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0xff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mFivePoleIntentPendingState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mPreviousFivePoleIntentPendingState:I

.field private mSwitchValues:I

.field private final mUnsupportedHeadsetHandler:Landroid/os/Handler;

.field private mUnsupportedHeadsetNotificationShown:Z

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 119
    iput-boolean v4, p0, Lcom/android/server/WiredAccessoryManager;->mBootCompleted:Z

    .line 121
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    .line 123
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mPreviousFivePoleIntentPendingState:I

    .line 237
    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedHeadsetHandler:Landroid/os/Handler;

    .line 337
    new-instance v1, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 127
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 128
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 130
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 136
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager;->onUnsupportedHeadset(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedHeadsetNotificationShown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/WiredAccessoryManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedHeadsetNotificationShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private onSystemReady()V
    .locals 7

    .prologue
    const/16 v6, -0x100

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 140
    iput-boolean v5, p0, Lcom/android/server/WiredAccessoryManager;->mBootCompleted:Z

    .line 141
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mPreviousFivePoleIntentPendingState:I

    if-eq v2, v3, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.media.intent.action.FIVE_POLE_ACCESSORY_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    const/4 v2, 0x0

    invoke-static {v0, v2, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 148
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mPreviousFivePoleIntentPendingState:I

    .line 149
    iput v4, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v2, :cond_6

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "switchValues":I
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 154
    or-int/lit8 v1, v1, 0x4

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 157
    or-int/lit8 v1, v1, 0x10

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 160
    or-int/lit8 v1, v1, 0x40

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x1e

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 163
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x1f

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 166
    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    .line 169
    :cond_5
    const-wide/16 v2, 0x0

    const v4, -0x7fffffac

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 174
    .end local v1    # "switchValues":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 175
    return-void
.end method

.method private onUnsupportedHeadset(Z)V
    .locals 5
    .param p1, "inserted"    # Z

    .prologue
    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.unsupportedheadsetnotifier/.AccessoryNotSupportedActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const-string v2, "inserted"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsupportedHeadset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 10
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x10000000

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 368
    and-int v4, p2, p1

    and-int v5, p3, p1

    if-eq v4, v5, :cond_1

    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "outDevice":I
    const/4 v0, 0x0

    .line 374
    .local v0, "inDevice":I
    and-int v4, p2, p1

    if-eqz v4, :cond_2

    .line 375
    const/4 v3, 0x1

    .line 380
    .local v3, "state":I
    :goto_0
    const/16 v4, 0x40

    if-ne p1, v4, :cond_5

    .line 381
    iget-boolean v4, p0, Lcom/android/server/WiredAccessoryManager;->mBootCompleted:Z

    if-eqz v4, :cond_3

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonymobile.media.intent.action.FIVE_POLE_ACCESSORY_STATUS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 386
    invoke-static {v1, v9, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 390
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    if-ne v3, v7, :cond_4

    .line 391
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "anc_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 395
    :goto_2
    const/4 v2, 0x4

    .line 396
    const v0, -0x7ffffff0

    .line 427
    :goto_3
    sget-object v5, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v3, v7, :cond_e

    const-string v4, " connected"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz v2, :cond_0

    .line 430
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2, v3, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 432
    :cond_0
    if-eqz v0, :cond_1

    .line 433
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v0, v3, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 436
    .end local v0    # "inDevice":I
    .end local v2    # "outDevice":I
    .end local v3    # "state":I
    :cond_1
    :goto_5
    return-void

    .line 377
    .restart local v0    # "inDevice":I
    .restart local v2    # "outDevice":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "state":I
    goto :goto_0

    .line 388
    :cond_3
    iput v3, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    goto :goto_1

    .line 393
    :cond_4
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "anc_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :cond_5
    const/16 v4, 0x80

    if-ne p1, v4, :cond_7

    .line 398
    iget-boolean v4, p0, Lcom/android/server/WiredAccessoryManager;->mBootCompleted:Z

    if-eqz v4, :cond_6

    .line 400
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonymobile.media.intent.action.FIVE_POLE_ACCESSORY_STATUS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    invoke-static {v1, v9, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 407
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_6
    const/high16 v0, -0x7f800000

    goto :goto_3

    .line 405
    :cond_6
    iput v3, p0, Lcom/android/server/WiredAccessoryManager;->mFivePoleIntentPendingState:I

    goto :goto_6

    .line 408
    :cond_7
    if-ne p1, v7, :cond_8

    .line 409
    const/4 v2, 0x4

    .line 410
    const v0, -0x7ffffff0

    goto :goto_3

    .line 411
    :cond_8
    const/4 v4, 0x2

    if-ne p1, v4, :cond_9

    .line 412
    const/16 v2, 0x8

    goto :goto_3

    .line 413
    :cond_9
    const/16 v4, 0x20

    if-ne p1, v4, :cond_a

    .line 414
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 415
    :cond_a
    const/4 v4, 0x4

    if-ne p1, v4, :cond_b

    .line 416
    const/16 v2, 0x800

    goto/16 :goto_3

    .line 417
    :cond_b
    const/16 v4, 0x8

    if-ne p1, v4, :cond_c

    .line 418
    const/16 v2, 0x1000

    goto/16 :goto_3

    .line 419
    :cond_c
    const/16 v4, 0x10

    if-ne p1, v4, :cond_d

    .line 420
    const/16 v2, 0x400

    goto/16 :goto_3

    .line 422
    :cond_d
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDeviceState() invalid headset type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 427
    :cond_e
    const-string v4, " disconnected"

    goto/16 :goto_4
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 356
    const/16 v0, 0xff

    .line 357
    .local v0, "allHeadsets":I
    const/4 v1, 0x1

    .local v1, "curHeadset":I
    :goto_0
    if-eqz v0, :cond_1

    .line 358
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 359
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 360
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 357
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    monitor-exit v3

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 3
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 439
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    :cond_0
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 446
    const-string v1, "SW_MICROPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    :cond_1
    and-int v1, p2, v2

    if-eqz v1, :cond_2

    and-int v1, p1, v2

    if-eqz v1, :cond_2

    .line 450
    const-string v1, "SW_MICROPHONE2_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .locals 10
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    .line 290
    and-int/lit16 v2, p2, 0xff

    .line 291
    .local v2, "headsetState":I
    and-int/lit8 v5, v2, 0x4

    .line 292
    .local v5, "usb_headset_anlg":I
    and-int/lit8 v6, v2, 0x8

    .line 293
    .local v6, "usb_headset_dgtl":I
    and-int/lit16 v1, v2, 0xe3

    .line 296
    .local v1, "h2w_headset":I
    const/4 v0, 0x1

    .line 297
    .local v0, "h2wStateChange":Z
    const/4 v4, 0x1

    .line 298
    .local v4, "usbStateChange":Z
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prev headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v7, v2, :cond_0

    .line 304
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "No state change."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 311
    :cond_0
    const/16 v7, 0xe3

    if-ne v1, v7, :cond_1

    .line 314
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 319
    :cond_1
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 320
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v4, 0x0

    .line 323
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 324
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "invalid transition, returning ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_3
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 330
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v7, v8, v2, v9, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 332
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    goto :goto_0
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    const/4 v4, 0x0

    .line 179
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedHeadsetHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    xor-int/lit8 v3, p4, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 188
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    const v3, -0x3fffffac    # -2.00002f

    and-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 227
    const/4 v0, 0x0

    .line 231
    .local v0, "headset":I
    :goto_0
    const-string v1, "h2w"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit16 v3, v3, -0xe4

    or-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    .line 234
    monitor-exit v2

    .line 235
    return-void

    .line 192
    .end local v0    # "headset":I
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedHeadsetHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    const/4 v0, 0x0

    .line 194
    .restart local v0    # "headset":I
    goto :goto_0

    .line 197
    .end local v0    # "headset":I
    :sswitch_1
    const/4 v0, 0x2

    .line 198
    .restart local v0    # "headset":I
    goto :goto_0

    .line 201
    .end local v0    # "headset":I
    :sswitch_2
    const/16 v0, 0x20

    .line 202
    .restart local v0    # "headset":I
    goto :goto_0

    .line 205
    .end local v0    # "headset":I
    :sswitch_3
    const/4 v0, 0x1

    .line 206
    .restart local v0    # "headset":I
    goto :goto_0

    .line 209
    .end local v0    # "headset":I
    :sswitch_4
    const/16 v0, 0x40

    .line 210
    .restart local v0    # "headset":I
    goto :goto_0

    .line 213
    .end local v0    # "headset":I
    :sswitch_5
    const/4 v0, 0x1

    .line 214
    .restart local v0    # "headset":I
    goto :goto_0

    .line 217
    .end local v0    # "headset":I
    :sswitch_6
    const/16 v0, 0x80

    .line 218
    .restart local v0    # "headset":I
    goto :goto_0

    .line 221
    .end local v0    # "headset":I
    :sswitch_7
    const/4 v0, 0x0

    .line 222
    .restart local v0    # "headset":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedHeadsetHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 234
    .end local v0    # "headset":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffffff0 -> :sswitch_6
        -0x7fffffec -> :sswitch_4
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_5
        0x14 -> :sswitch_3
        0x40 -> :sswitch_2
        0x40000000 -> :sswitch_7
    .end sparse-switch
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 274
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 275
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    monitor-exit v2

    .line 277
    return-void

    .line 276
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
