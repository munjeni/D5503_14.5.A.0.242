.class Lcom/android/server/am/RePreloader;
.super Ljava/lang/Thread;
.source "RePreloader.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SYSTEM_SERVER_PRELOAD_LIST_NAME:Ljava/lang/String; = "android:array/system_server_preloaded_drawables"

.field private static final TAG:Ljava/lang/String; = "RePreloader"

.field private static final WRITER_BUFSIZE:I = 0x200

.field private static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field private static sCurrent:Lcom/android/server/am/RePreloader;


# instance fields
.field private volatile mCancelled:Z

.field private final mSkinPackageSeq:I

.field private final mUserId:I

.field private mZygoteInputStream:Ljava/io/DataInputStream;

.field private mZygoteSocket:Landroid/net/LocalSocket;

.field private mZygoteWriter:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "skinPackageSeq"    # I
    .param p2, "userId"    # I

    .prologue
    .line 53
    const-string v0, "RePreloader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    iput p1, p0, Lcom/android/server/am/RePreloader;->mSkinPackageSeq:I

    .line 55
    iput p2, p0, Lcom/android/server/am/RePreloader;->mUserId:I

    .line 56
    return-void
.end method

.method private static cancelAndWaitLocked()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2000

    .line 77
    sget-object v1, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v1, "cancel skin re-preload"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 82
    :try_start_0
    sget-object v1, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/RePreloader;->mCancelled:Z

    .line 83
    sget-object v1, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    invoke-virtual {v1}, Lcom/android/server/am/RePreloader;->interrupt()V

    .line 84
    sget-object v1, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    invoke-direct {v1}, Lcom/android/server/am/RePreloader;->closeZygoteConn()V

    .line 85
    sget-object v1, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    invoke-virtual {v1}, Lcom/android/server/am/RePreloader;->join()V

    .line 86
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private closeZygoteConn()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/am/RePreloader;->mZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/RePreloader;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/RePreloader;->mZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    :cond_0
    :goto_2
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RePreloader"

    const-string v2, "Failed to close zygote input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "RePreloader"

    const-string v2, "Failed to close zygote writer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 182
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "RePreloader"

    const-string v2, "Failed to close zygote socket"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getActiveRuntimeSkinPaths()[Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x2000

    .line 114
    const-string v2, "get skin paths"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 116
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 117
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_0

    .line 118
    iget v2, p0, Lcom/android/server/am/RePreloader;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getActiveRuntimeSkinPaths(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 125
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 128
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return-object v2

    .line 120
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :try_start_1
    const-string v2, "RePreloader"

    const-string v3, "Failed to get package manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 128
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "RePreloader"

    const-string v3, "Failed to get runtime skin paths"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static declared-synchronized handleNewSkinMayWait(II)V
    .locals 2
    .param p0, "skinPackageSeq"    # I
    .param p1, "userId"    # I

    .prologue
    .line 67
    const-class v1, Lcom/android/server/am/RePreloader;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/RePreloader;->cancelAndWaitLocked()V

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->clearSystemServerPreloads()V

    .line 69
    invoke-static {p0, p1}, Lcom/android/server/am/RePreloader;->scheduleNewLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private openZygoteConn()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x2000

    .line 151
    const-string v0, "connect to zygote"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 153
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RePreloader;->mZygoteSocket:Landroid/net/LocalSocket;

    .line 155
    iget-object v0, p0, Lcom/android/server/am/RePreloader;->mZygoteSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "zygote"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 158
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/android/server/am/RePreloader;->mZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/am/RePreloader;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 160
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/android/server/am/RePreloader;->mZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private readZygoteReply()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x2000

    .line 219
    iget-boolean v1, p0, Lcom/android/server/am/RePreloader;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v1, "wait for zygote"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/RePreloader;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 225
    .local v0, "result":I
    if-gez v0, :cond_1

    .line 226
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zygote replied with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .restart local v0    # "result":I
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method private repreload()V
    .locals 5

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->getActiveRuntimeSkinPaths()[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "skinPaths":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->openZygoteConn()V

    .line 137
    invoke-direct {p0, v1}, Lcom/android/server/am/RePreloader;->tellZygote([Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->systemServerMiniRePreload()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->readZygoteReply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->closeZygoteConn()V

    .line 144
    iget-boolean v2, p0, Lcom/android/server/am/RePreloader;->mCancelled:Z

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "RePreloader"

    const-string v3, "RePreload cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "RePreloader"

    const-string v3, "Failure while re-preloading resources"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->closeZygoteConn()V

    .line 144
    iget-boolean v2, p0, Lcom/android/server/am/RePreloader;->mCancelled:Z

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "RePreloader"

    const-string v3, "RePreload cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->closeZygoteConn()V

    .line 144
    iget-boolean v3, p0, Lcom/android/server/am/RePreloader;->mCancelled:Z

    if-eqz v3, :cond_1

    .line 145
    const-string v3, "RePreloader"

    const-string v4, "RePreload cancelled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v2
.end method

.method private static scheduleNewLocked(II)V
    .locals 2
    .param p0, "skinPackageSeq"    # I
    .param p1, "userId"    # I

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RePreloader already scheduled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lcom/android/server/am/RePreloader;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/RePreloader;-><init>(II)V

    sput-object v0, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    .line 101
    sget-object v0, Lcom/android/server/am/RePreloader;->sCurrent:Lcom/android/server/am/RePreloader;

    invoke-virtual {v0}, Lcom/android/server/am/RePreloader;->start()V

    .line 102
    return-void
.end method

.method private systemServerMiniRePreload()V
    .locals 18

    .prologue
    .line 238
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 240
    .local v17, "sysres":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 246
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v14, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 248
    .local v14, "origConfig":Landroid/content/res/Configuration;
    const-string v2, "android:array/system_server_preloaded_drawables"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 250
    .local v15, "preloadListId":I
    if-nez v15, :cond_0

    .line 251
    const-string v2, "RePreloader"

    const-string v3, "Resource android:array/system_server_preloaded_drawables does not exist; not re-preloading."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->startSystemServerPreloading()V

    .line 258
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getPreloadConfigurations()Ljava/util/ArrayList;

    move-result-object v9

    .line 260
    .local v9, "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 261
    .local v13, "nconfigs":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v13, :cond_4

    .line 262
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    .line 263
    .local v16, "resconf":Landroid/content/res/Configuration;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 264
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 265
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 270
    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 271
    .local v8, "ar":Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    .line 272
    .local v7, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v7, :cond_3

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v8, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 274
    .local v11, "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/RePreloader;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {v1}, Landroid/content/res/Resources;->finishSystemServerPreloading()V

    goto :goto_0

    .line 277
    :cond_1
    if-eqz v11, :cond_2

    .line 278
    :try_start_1
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .end local v7    # "N":I
    .end local v8    # "ar":Landroid/content/res/TypedArray;
    .end local v9    # "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    .end local v10    # "i":I
    .end local v11    # "id":I
    .end local v12    # "j":I
    .end local v13    # "nconfigs":I
    .end local v16    # "resconf":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->finishSystemServerPreloading()V

    throw v2

    .line 272
    .restart local v7    # "N":I
    .restart local v8    # "ar":Landroid/content/res/TypedArray;
    .restart local v9    # "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    .restart local v10    # "i":I
    .restart local v11    # "id":I
    .restart local v12    # "j":I
    .restart local v13    # "nconfigs":I
    .restart local v16    # "resconf":Landroid/content/res/Configuration;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 286
    .end local v11    # "id":I
    :cond_3
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 289
    .end local v7    # "N":I
    .end local v8    # "ar":Landroid/content/res/TypedArray;
    .end local v10    # "i":I
    .end local v16    # "resconf":Landroid/content/res/Configuration;
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/Resources;->finishSystemServerPreloading()V

    goto/16 :goto_0
.end method

.method private tellZygote([Ljava/lang/String;)V
    .locals 8
    .param p1, "skinPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2000

    .line 189
    iget-boolean v4, p0, Lcom/android/server/am/RePreloader;->mCancelled:Z

    if-eqz v4, :cond_0

    .line 216
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v4, "tell zygote"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    const-string v5, "set_skin\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    iget v5, p0, Lcom/android/server/am/RePreloader;->mSkinPackageSeq:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 201
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 204
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 205
    .local v3, "pkg":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 206
    new-instance v4, Ljava/io/IOException;

    const-string v5, "embedded newlines not allowed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 208
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/RePreloader;->mZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x2000

    .line 105
    const-string v0, "skin re-preload"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/RePreloader;->repreload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
