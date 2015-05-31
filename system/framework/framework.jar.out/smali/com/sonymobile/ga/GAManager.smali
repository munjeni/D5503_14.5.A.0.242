.class public Lcom/sonymobile/ga/GAManager;
.super Ljava/lang/Object;
.source "GAManager.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final DEBUG:Z = false

.field private static final EVENT_ACTION:Ljava/lang/String; = "eventAction"

.field private static final EVENT_CATEGORY:Ljava/lang/String; = "eventCategory"

.field private static final EVENT_LABEL:Ljava/lang/String; = "eventLabel"

.field private static final EVENT_NAME:Ljava/lang/String; = "eventName"

.field private static final EVENT_TIME:Ljava/lang/String; = "eventTime"

.field private static final EVENT_TYPE:Ljava/lang/String; = "event"

.field private static final EVENT_TYPE_APP_VIEW:Ljava/lang/String; = "appView"

.field private static final EVENT_TYPE_EVENT:Ljava/lang/String; = "event"

.field private static final EVENT_TYPE_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final EVENT_TYPE_TIMING:Ljava/lang/String; = "timing"

.field private static final EVENT_VALUE:Ljava/lang/String; = "eventValue"

.field private static final EXCEPTION_DESCRIPTION:Ljava/lang/String; = "exceptionDescription"

.field private static final EXCEPTION_FATAL:Ljava/lang/String; = "exceptionFatal"

.field public static final REQUIRED_VALUES:[Ljava/lang/String;

.field private static final SCREEN_NAME:Ljava/lang/String; = "screenName"

.field public static final SERVICE_NAME:Ljava/lang/String; = "platform_analytics"

.field private static final TAG:Ljava/lang/String; = "GAProxy"

.field public static final TRACKING_ID:Ljava/lang/String; = "tid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "tid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/ga/GAManager;->REQUIRED_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAppValues(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/sonymobile/ga/GAEvent;

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 321
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 322
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 328
    :goto_0
    const-string v4, "appId"

    invoke-virtual {p1, v4, v2}, Lcom/sonymobile/ga/GAEvent;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    const-string v4, "appName"

    invoke-virtual {p1, v4, v2}, Lcom/sonymobile/ga/GAEvent;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    const-string v5, "appVersion"

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v5, v4}, Lcom/sonymobile/ga/GAEvent;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "GAProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get package info for pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v4, "?.?.?"

    goto :goto_1
.end method

.method private static generateExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 356
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 357
    .local v4, "st":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 358
    .local v1, "exception":Ljava/lang/String;
    const/4 v0, 0x0

    .line 359
    .local v0, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 360
    .local v3, "methodName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 361
    .local v2, "lineNumber":I
    array-length v5, v4

    if-lez v5, :cond_0

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 363
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 364
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 365
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 367
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getService()Lcom/sonymobile/ga/IGAService;
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v1, "platform_analytics"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/ga/IGAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/ga/IGAService;

    move-result-object v0

    .line 121
    .local v0, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v0, :cond_0

    .line 126
    :cond_0
    return-object v0
.end method

.method public static push(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/sonymobile/ga/GAEvent;

    .prologue
    .line 272
    invoke-static {}, Lcom/sonymobile/ga/GAManager;->getService()Lcom/sonymobile/ga/IGAService;

    move-result-object v0

    .line 273
    .local v0, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {p0, p1}, Lcom/sonymobile/ga/GAManager;->addAppValues(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V

    .line 277
    invoke-static {v0, p1}, Lcom/sonymobile/ga/GAManager;->push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V

    goto :goto_0
.end method

.method public static push(Lcom/sonymobile/ga/GAEvent;)V
    .locals 1
    .param p0, "data"    # Lcom/sonymobile/ga/GAEvent;

    .prologue
    .line 288
    invoke-static {}, Lcom/sonymobile/ga/GAManager;->getService()Lcom/sonymobile/ga/IGAService;

    move-result-object v0

    .line 289
    .local v0, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {v0, p0}, Lcom/sonymobile/ga/GAManager;->push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V

    goto :goto_0
.end method

.method private static push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V
    .locals 3
    .param p0, "service"    # Lcom/sonymobile/ga/IGAService;
    .param p1, "data"    # Lcom/sonymobile/ga/GAEvent;

    .prologue
    .line 305
    invoke-static {p1}, Lcom/sonymobile/ga/GAManager;->validateData(Lcom/sonymobile/ga/GAEvent;)V

    .line 307
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sonymobile/ga/IGAService;->push(Lcom/sonymobile/ga/GAEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GAProxy"

    const-string v2, "Failed to push to GAService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static pushAppView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {}, Lcom/sonymobile/ga/GAManager;->getService()Lcom/sonymobile/ga/IGAService;

    move-result-object v1

    .line 220
    .local v1, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/sonymobile/ga/GAEvent;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "appView"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "screenName"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-direct {v0, v2}, Lcom/sonymobile/ga/GAEvent;-><init>([Ljava/lang/String;)V

    .line 226
    .local v0, "data":Lcom/sonymobile/ga/GAEvent;
    invoke-static {p0, v0}, Lcom/sonymobile/ga/GAManager;->addAppValues(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V

    .line 227
    invoke-static {v1, v0}, Lcom/sonymobile/ga/GAManager;->push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V

    goto :goto_0
.end method

.method public static pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    .line 153
    invoke-static {}, Lcom/sonymobile/ga/GAManager;->getService()Lcom/sonymobile/ga/IGAService;

    move-result-object v1

    .line 154
    .local v1, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/sonymobile/ga/GAEvent;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "eventCategory"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    const/4 v3, 0x6

    const-string v4, "eventAction"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p3, v2, v3

    const/16 v3, 0x8

    const-string v4, "eventLabel"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p4, v2, v3

    const/16 v3, 0xa

    const-string v4, "eventValue"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Lcom/sonymobile/ga/GAEvent;-><init>([Ljava/lang/String;)V

    .line 163
    .local v0, "data":Lcom/sonymobile/ga/GAEvent;
    invoke-static {p0, v0}, Lcom/sonymobile/ga/GAManager;->addAppValues(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V

    .line 164
    invoke-static {v1, v0}, Lcom/sonymobile/ga/GAManager;->push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V

    goto :goto_0
.end method

.method public static pushException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "fatal"    # Z

    .prologue
    .line 248
    invoke-static {}, Lcom/sonymobile/ga/GAManager;->getService()Lcom/sonymobile/ga/IGAService;

    move-result-object v1

    .line 249
    .local v1, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/sonymobile/ga/GAEvent;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "exception"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "exceptionDescription"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p2}, Lcom/sonymobile/ga/GAManager;->generateExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "exceptionFatal"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Lcom/sonymobile/ga/GAEvent;-><init>([Ljava/lang/String;)V

    .line 256
    .local v0, "data":Lcom/sonymobile/ga/GAEvent;
    invoke-static {p0, v0}, Lcom/sonymobile/ga/GAManager;->addAppValues(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V

    .line 257
    invoke-static {v1, v0}, Lcom/sonymobile/ga/GAManager;->push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V

    goto :goto_0
.end method

.method public static pushTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "time"    # J

    .prologue
    .line 191
    invoke-static {}, Lcom/sonymobile/ga/GAManager;->getService()Lcom/sonymobile/ga/IGAService;

    move-result-object v1

    .line 192
    .local v1, "gapService":Lcom/sonymobile/ga/IGAService;
    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Lcom/sonymobile/ga/GAEvent;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "timing"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "eventCategory"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    const/4 v3, 0x6

    const-string v4, "eventName"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p3, v2, v3

    const/16 v3, 0x8

    const-string v4, "eventLabel"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p4, v2, v3

    const/16 v3, 0xa

    const-string v4, "eventTime"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Lcom/sonymobile/ga/GAEvent;-><init>([Ljava/lang/String;)V

    .line 201
    .local v0, "data":Lcom/sonymobile/ga/GAEvent;
    invoke-static {p0, v0}, Lcom/sonymobile/ga/GAManager;->addAppValues(Landroid/content/Context;Lcom/sonymobile/ga/GAEvent;)V

    .line 202
    invoke-static {v1, v0}, Lcom/sonymobile/ga/GAManager;->push(Lcom/sonymobile/ga/IGAService;Lcom/sonymobile/ga/GAEvent;)V

    goto :goto_0
.end method

.method private static validateData(Lcom/sonymobile/ga/GAEvent;)V
    .locals 7
    .param p0, "data"    # Lcom/sonymobile/ga/GAEvent;

    .prologue
    .line 341
    sget-object v0, Lcom/sonymobile/ga/GAManager;->REQUIRED_VALUES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 342
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonymobile/ga/GAEvent;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data need to contain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 341
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method
