.class public final Landroid/app/admin/PolicyNotification;
.super Ljava/lang/Object;
.source "PolicyNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 114
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 118
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 120
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static showApplicationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    const v3, 0x10406ca

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10406cb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080716

    .line 32
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static showDeactivationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 52
    const v3, 0x104070f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "title":Ljava/lang/String;
    const v3, 0x1040710

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080716

    .line 58
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public static showLocationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    const v3, 0x10406fa

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10406fb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108037d

    .line 45
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public static showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 78
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 85
    .local v1, "notification":Landroid/app/Notification;
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 89
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 91
    .local v2, "token":J
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, p3, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static showRoamingDataLimitPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 101
    const v3, 0x1040713

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "title":Ljava/lang/String;
    const v3, 0x1040714

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080743

    .line 107
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public static showSafeModePolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 65
    const v3, 0x104074e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "title":Ljava/lang/String;
    const v3, 0x104074f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080716

    .line 71
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void
.end method
