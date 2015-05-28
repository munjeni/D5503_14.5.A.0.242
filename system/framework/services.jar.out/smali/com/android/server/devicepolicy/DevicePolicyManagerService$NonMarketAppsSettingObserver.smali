.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonMarketAppsSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 10197
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10198
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 10199
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 10221
    :try_start_0
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "install_non_market_apps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 10229
    .local v2, "nonMarketAppsSetting":I
    :goto_0
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isNonMarketAppsDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10231
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "install_non_market_apps"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10234
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10406c3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10236
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10406c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10238
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080772

    .line 10240
    .local v0, "iconId":I
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$NonMarketAppsSettingObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 10242
    .end local v0    # "iconId":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 10225
    .end local v2    # "nonMarketAppsSetting":I
    :catch_0
    move-exception v3

    .line 10226
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "nonMarketAppsSetting":I
    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 10203
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "install_non_market_apps"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 10208
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 10212
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10214
    return-void
.end method
