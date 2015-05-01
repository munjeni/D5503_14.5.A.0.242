.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 5856
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5857
    if-eqz p2, :cond_0

    .line 5858
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->notifyMhlDriverofInitialScreenStatus(Landroid/content/Context;Z)V

    .line 5860
    :cond_0
    return-void
.end method

.method private notifyMhlDriverOfScreenStatusOnOrOff(I)V
    .locals 2
    .param p1, "screenStatus"    # I

    .prologue
    .line 5889
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->getSysfsPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;-><init>(ILjava/lang/String;)V

    .line 5890
    .local v0, "notifier":Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->start()V

    .line 5891
    return-void
.end method


# virtual methods
.method protected getSysfsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5843
    const-string v0, "/sys/class/mhl/sii8334/screen_status"

    return-object v0
.end method

.method protected isScreenOn(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5852
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5853
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method public notifyMhlDriverofInitialScreenStatus(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isScreenOn"    # Z

    .prologue
    .line 5875
    if-eqz p2, :cond_0

    .line 5876
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->notifyMhlDriverOfScreenStatusOnOrOff(I)V

    .line 5880
    :goto_0
    return-void

    .line 5878
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->notifyMhlDriverOfScreenStatusOnOrOff(I)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 5864
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 5865
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5866
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->notifyMhlDriverOfScreenStatusOnOrOff(I)V

    .line 5872
    :cond_0
    :goto_1
    return-void

    .line 5864
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5867
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5868
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->notifyMhlDriverOfScreenStatusOnOrOff(I)V

    goto :goto_1

    .line 5869
    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5870
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnOffReceiver;->notifyMhlDriverOfScreenStatusOnOrOff(I)V

    goto :goto_1
.end method
