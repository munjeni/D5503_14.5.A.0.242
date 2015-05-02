.class public Lcom/sonymobile/gahelper/GaHelperExceptionParser;
.super Ljava/lang/Object;
.source "GaHelperExceptionParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GaHelper"

.field private static final MAX_CAUSE_DEPTH:I = 0x2

.field private static final MAX_MESSAGE_LENGTH:I = 0x28

.field private static final MAX_STACK_DEPTH:I = 0xa

.field private static final RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledExceptionTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sput-boolean v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->sEnabledExceptionTracking:Z

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "java."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javax."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sun."

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 143
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 147
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 149
    const-string v2, " Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 153
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 158
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    :cond_0
    return-object v2
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->gaStringFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized enableExceptionParsing(Lcom/google/analytics/tracking/android/Tracker;Landroid/content/Context;)V
    .locals 4
    .param p0, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->sEnabledExceptionTracking:Z

    if-nez v1, :cond_1

    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "tracker is not allowed to be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 78
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->sEnabledExceptionTracking:Z

    .line 80
    new-instance v0, Lcom/google/analytics/tracking/android/ExceptionReporter;

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3, p1}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 84
    .local v0, "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    new-instance v1, Lcom/sonymobile/gahelper/GaHelperExceptionParser$1;

    invoke-direct {v1}, Lcom/sonymobile/gahelper/GaHelperExceptionParser$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ExceptionReporter;->setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V

    .line 92
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v0    # "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    :cond_1
    monitor-exit v2

    return-void
.end method

.method public static enableExceptionParsingEasyTracker(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->enableExceptionParsing(Lcom/google/analytics/tracking/android/Tracker;Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public static gaStringFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 8
    .param p0, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/16 v7, 0xa

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 216
    .local v4, "stackTraceIndex":I
    const/4 v2, 0x0

    .line 217
    .local v2, "done":Z
    array-length v5, p0

    .line 219
    .local v5, "stackTraceLength":I
    :goto_0
    if-nez v2, :cond_2

    if-ge v4, v5, :cond_2

    if-ge v4, v7, :cond_2

    .line 220
    aget-object v3, p0, v4

    .line 222
    .local v3, "stackElement":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->packageNameIsReserved(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "classname":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_2
    if-eq v4, v7, :cond_3

    if-lt v4, v5, :cond_4

    .line 243
    :cond_3
    const/4 v4, 0x0

    .line 246
    :cond_4
    aget-object v3, p0, v4

    .line 253
    .restart local v3    # "stackElement":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_5

    .line 254
    const-string v6, " F:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " M:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " L:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " R:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 260
    :cond_5
    const-string v6, " ?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1
.end method

.method public static gaStringFromThrowable(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "description":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "T:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->removeTrailingNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string v2, "GaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaughtException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/gahelper/GaHelperLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internal exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/gahelper/GaHelperLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static packageNameIsReserved(Ljava/lang/String;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 275
    .local v1, "index":I
    :goto_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 276
    sget-object v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    return v0
.end method

.method private static removeTrailingNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 294
    .local v0, "done":Z
    move-object v3, p0

    .line 298
    .local v3, "retval":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 299
    new-instance v3, Ljava/lang/String;

    .end local v3    # "retval":Ljava/lang/String;
    const-string v4, "<unknown thread>"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v3    # "retval":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 304
    .local v2, "length":I
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 307
    .local v1, "lastCharacter":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "lastCharacter":C
    .end local v2    # "length":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 318
    move-object v3, p0

    .line 321
    :cond_3
    return-object v3
.end method
