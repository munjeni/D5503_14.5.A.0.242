.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# instance fields
.field private final mBuiltInDisplayId:I

.field private final mDefaultPhysicalDisplayInfo:I

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mLastRequestedRefreshRate:F

.field private final mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mRefreshRateConfigIndices:[I

.field private mState:I

.field private mSupportedRefreshRates:[F

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 2
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 151
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 152
    new-instance v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v1, p4, p5

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 154
    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultPhysicalDisplayInfo:I

    .line 155
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {p0, p4, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 156
    return-void
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 313
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 314
    return-void
.end method

.method private updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 8
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activePhys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    const/4 v7, 0x0

    .line 319
    array-length v0, p1

    .line 320
    .local v0, "N":I
    const/4 v2, 0x0

    .line 321
    .local v2, "idx":I
    new-array v5, v0, [F

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 322
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 324
    aget-object v4, p1, v1

    .line 325
    .local v4, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v5, v6, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v5, v6, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 330
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    aput v6, v5, v3

    .line 331
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    aput v1, v5, v3

    .line 323
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 334
    .end local v4    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_0
    if-eq v3, v0, :cond_1

    .line 335
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v5, v7, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 336
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    invoke-static {v5, v7, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    .line 338
    :cond_1
    return-void

    .restart local v4    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_2
    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_1
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 176
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuiltInDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 180
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v4, :cond_1

    .line 181
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 182
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 183
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 184
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 185
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 186
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-wide v6, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 187
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-wide v6, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 188
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 192
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-boolean v4, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v5, 0xc

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 197
    :cond_0
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10405ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 200
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 202
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 203
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 204
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 205
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 206
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 252
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v4

    .line 208
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 209
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 210
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10405ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 212
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 213
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, v5, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v6, v6, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "frWfdState":Ljava/io/FileReader;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 221
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/sys/devices/virtual/switch/wfd/state"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v0    # "frWfdState":Ljava/io/FileReader;
    .local v1, "frWfdState":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v4

    int-to-char v3, v4

    .line 223
    .local v3, "wfdState":C
    const/16 v4, 0x31

    if-ne v4, v3, :cond_3

    .line 224
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :cond_3
    if-eqz v1, :cond_4

    .line 231
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v1

    .line 241
    .end local v1    # "frWfdState":Ljava/io/FileReader;
    .end local v3    # "wfdState":C
    .restart local v0    # "frWfdState":Ljava/io/FileReader;
    :goto_2
    const-string v4, "portrait"

    const-string v5, "persist.demo.hdmirotation"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 242
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 247
    :cond_5
    const-string v4, "persist.demo.hdmirotates"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_0

    .line 226
    :catch_0
    move-exception v4

    .line 230
    :goto_3
    if-eqz v0, :cond_6

    .line 231
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 236
    :cond_6
    :goto_4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 229
    :catchall_0
    move-exception v4

    .line 230
    :goto_5
    if-eqz v0, :cond_7

    .line 231
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    :cond_7
    :goto_6
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4

    .line 233
    .end local v0    # "frWfdState":Ljava/io/FileReader;
    .restart local v1    # "frWfdState":Ljava/io/FileReader;
    .restart local v3    # "wfdState":C
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v1    # "frWfdState":Ljava/io/FileReader;
    .end local v3    # "wfdState":C
    .restart local v0    # "frWfdState":Ljava/io/FileReader;
    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v5

    goto :goto_6

    .line 229
    .end local v0    # "frWfdState":Ljava/io/FileReader;
    .restart local v1    # "frWfdState":Ljava/io/FileReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "frWfdState":Ljava/io/FileReader;
    .restart local v0    # "frWfdState":Ljava/io/FileReader;
    goto :goto_5

    .line 226
    .end local v0    # "frWfdState":Ljava/io/FileReader;
    .restart local v1    # "frWfdState":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "frWfdState":Ljava/io/FileReader;
    .restart local v0    # "frWfdState":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public requestDisplayStateLocked(I)Ljava/lang/Runnable;
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 257
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eq v0, p1, :cond_0

    .line 258
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 259
    .local v3, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    .line 260
    .local v4, "token":Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v5

    .line 261
    .local v5, "mode":I
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 262
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 267
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IILandroid/os/IBinder;I)V

    .line 280
    .end local v3    # "displayId":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "mode":I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestRefreshRateLocked(F)V
    .locals 6
    .param p1, "refreshRate"    # F

    .prologue
    .line 285
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastRequestedRefreshRate:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    .line 301
    :goto_0
    return-void

    .line 288
    :cond_0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastRequestedRefreshRate:F

    .line 289
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    array-length v0, v3

    .line 291
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 292
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    aget v3, v3, v2

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    aget v1, v3, v2

    .line 294
    .local v1, "configIndex":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 291
    .end local v1    # "configIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_2
    const-string v3, "LocalDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested refresh rate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unsupported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultPhysicalDisplayInfo:I

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .locals 3
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    .prologue
    const/4 v1, 0x1

    .line 160
    aget-object v0, p1, p2

    .line 161
    .local v0, "newPhys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 163
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 164
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
