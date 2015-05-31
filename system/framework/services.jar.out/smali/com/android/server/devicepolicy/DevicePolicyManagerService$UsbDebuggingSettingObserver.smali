.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDebuggingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 9892
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 9893
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9894
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 9913
    :try_start_0
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 9921
    .local v4, "usbDebuggingSetting":I
    :goto_0
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUsbDebuggingDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9923
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9926
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040702

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9928
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040703

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9930
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080779

    .line 9932
    .local v0, "iconId":I
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UsbDebuggingSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9934
    .end local v0    # "iconId":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 9917
    .end local v4    # "usbDebuggingSetting":I
    :catch_0
    move-exception v2

    .line 9918
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v4, 0x0

    .restart local v4    # "usbDebuggingSetting":I
    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9897
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9898
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9901
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9904
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9905
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9906
    return-void
.end method
