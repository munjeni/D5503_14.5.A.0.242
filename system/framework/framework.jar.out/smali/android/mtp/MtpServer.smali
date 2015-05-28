.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LAST_COMMAND:I = 0x10001

.field public static final MTP_SERVER_DESTROYED:I = 0x10001

.field private static final MTP_UI_NOTIFY_CONNECTED:I = 0x1

.field private static final MTP_UI_NOTIFY_DISCONNECTED:I = 0x3

.field private static final MTP_UI_NOTIFY_EMPTY_UUID:I = 0x4

.field private static final MTP_UI_NOTIFY_NOTRESPONDING:I = 0x2

.field private static final SERVER_TIMEOUT:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "MtpServer"

.field private static final VENDOR_HANDLER_NOT_STARTED:I = 0x0

.field private static final VENDOR_HANDLER_STARTED:I = 0x1

.field private static final VENDOR_HANDLER_STOPPED:I = 0x2

.field private static mMtpStatus:I

.field private static final sServerStartedLock:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHostEui64:[Ljava/lang/String;

.field private mHostId:I

.field private mHostName:Ljava/lang/String;

.field private mMtpIpManager:Landroid/mtp/MtpIpManager;

.field private mMtpServiceHandler:Landroid/os/Handler;

.field private mNativeContext:J

.field private mUseIp:Z

.field private mUuid:Ljava/lang/String;

.field private mVendorHandler:Landroid/mtp/MtpVendorHandler;

.field private mVendorHandlerStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    .line 61
    const/4 v0, 0x7

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 68
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 2
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 56
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpIpManager:Landroid/mtp/MtpIpManager;

    .line 63
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 72
    invoke-direct {p0, p1, p2, v1}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLandroid/content/Context;)V
    .locals 2
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 56
    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpIpManager:Landroid/mtp/MtpIpManager;

    .line 63
    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 77
    iput-boolean v1, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    .line 78
    iput-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostEui64:[Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mHostId:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    .line 82
    const/16 v0, 0x8

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 83
    iput-object p3, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/mtp/MtpVendorHandler;

    invoke-direct {v0, p3}, Landroid/mtp/MtpVendorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    .line 85
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 86
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLandroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "hostId"    # I
    .param p5, "hostName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 56
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpIpManager:Landroid/mtp/MtpIpManager;

    .line 63
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 91
    if-lez p4, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    .line 93
    invoke-virtual {p1}, Landroid/mtp/MtpDatabase;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object v1, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 97
    :cond_0
    invoke-virtual {p1, p4}, Landroid/mtp/MtpDatabase;->getHostIdsAsArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostEui64:[Ljava/lang/String;

    .line 98
    iput p4, p0, Landroid/mtp/MtpServer;->mHostId:I

    .line 99
    iput-object p5, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    .line 100
    const/4 v0, 0x5

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 101
    new-instance v0, Landroid/mtp/MtpIpManager;

    invoke-direct {v0, p3}, Landroid/mtp/MtpIpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpIpManager:Landroid/mtp/MtpIpManager;

    .line 110
    :goto_0
    new-instance v0, Landroid/mtp/MtpVendorHandler;

    invoke-direct {v0, p3}, Landroid/mtp/MtpVendorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    .line 111
    iput-object p3, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 114
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 115
    return-void

    .line 103
    :cond_1
    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    .line 104
    iput-object v1, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Landroid/mtp/MtpServer;->mHostEui64:[Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mHostId:I

    .line 107
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    .line 108
    const/16 v0, 0x8

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_0
.end method

.method public static getMtpStatus()I
    .locals 1

    .prologue
    .line 224
    sget v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    return v0
.end method

.method private final native native_abort()V
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V
.end method

.method private notifyMtpService(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 235
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 236
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 237
    iget-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    return-void
.end method

.method public static resetServerLock()V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 184
    return-void
.end method

.method private sendNotification(I)V
    .locals 4
    .param p1, "errCode"    # I

    .prologue
    .line 241
    const/4 v1, 0x1

    .line 243
    .local v1, "status":I
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 245
    :pswitch_0
    const/4 v2, 0x0

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 262
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.mtpwifi.NOTIFY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "response":Landroid/content/Intent;
    const-string/jumbo v2, "value_0"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string/jumbo v2, "value_1"

    iget v3, p0, Landroid/mtp/MtpServer;->mHostId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string/jumbo v2, "value_2"

    sget v3, Landroid/mtp/MtpServer;->mMtpStatus:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string/jumbo v2, "value_3"

    iget-object v3, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "is_response_to"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    const-string v3, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v0    # "response":Landroid/content/Intent;
    :pswitch_1
    const/4 v2, 0x4

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_1

    .line 251
    :pswitch_2
    const/4 v1, 0x0

    .line 252
    const/4 v2, 0x7

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_1

    .line 255
    :pswitch_3
    const/4 v1, 0x0

    .line 256
    const/4 v2, 0x6

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized stopVendorHandler()V
    .locals 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-virtual {v0}, Landroid/mtp/MtpVendorHandler;->stop()V

    .line 231
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static waitForServerStarted()V
    .locals 5

    .prologue
    .line 167
    :try_start_0
    sget-object v1, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const-string v1, "MtpServer"

    const-string v2, "MtpServer takes too much time to start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v0, "exception":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 170
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 171
    .restart local v0    # "exception":Ljava/lang/InterruptedException;
    const-string v1, "MtpServer"

    const-string v2, "InterruptedException while tryAcquire() in waitForServerStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 204
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 209
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "extMntPath":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_abort()V

    .line 221
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const v1, 0x10001

    .line 124
    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->sendNotification(I)V

    .line 127
    invoke-direct {p0, v1}, Landroid/mtp/MtpServer;->notifyMtpService(I)V

    .line 147
    :goto_0
    return-void

    .line 130
    :cond_0
    monitor-enter p0

    .line 131
    :try_start_0
    iget v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    iget-wide v2, p0, Landroid/mtp/MtpServer;->mNativeContext:J

    invoke-virtual {v0, v2, v3}, Landroid/mtp/MtpVendorHandler;->start(J)V

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 135
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    sget-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 137
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 138
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 139
    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->sendNotification(I)V

    .line 141
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpIpManager:Landroid/mtp/MtpIpManager;

    invoke-virtual {v0}, Landroid/mtp/MtpIpManager;->clean()V

    .line 143
    :cond_2
    const/4 v0, 0x7

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 144
    invoke-direct {p0}, Landroid/mtp/MtpServer;->stopVendorHandler()V

    .line 146
    invoke-direct {p0, v1}, Landroid/mtp/MtpServer;->notifyMtpService(I)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0
    .param p1, "property"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 200
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 192
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 196
    return-void
.end method

.method public setMtpServiceHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 187
    iput-object p1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 188
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_abort()V

    .line 154
    invoke-direct {p0}, Landroid/mtp/MtpServer;->stopVendorHandler()V

    .line 155
    return-void
.end method
