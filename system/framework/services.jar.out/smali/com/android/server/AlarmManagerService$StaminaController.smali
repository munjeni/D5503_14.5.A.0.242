.class Lcom/android/server/AlarmManagerService$StaminaController;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaController"
.end annotation


# static fields
.field private static final RESUME_ALARMS:I = 0x3

.field private static final SUPPRESS_ALARMS:I = 0x1

.field private static final SUPPRESS_ALARMS_BEFORE_SPECIFIC_TIME:I = 0x2


# instance fields
.field private mAlarmsState:I

.field private mEmergencyTimeOut:J

.field private mPowerState:I

.field private mReleaseAlarmsFrom:J

.field private final mSuperStaminaInternalWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuperStaminaUidWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2357
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    .line 2335
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    .line 2342
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mReleaseAlarmsFrom:J

    .line 2358
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    .line 2359
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    .line 2360
    new-instance v1, Lcom/android/server/AlarmManagerService$StaminaReceiver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/AlarmManagerService$StaminaReceiver;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$StaminaController;)V

    .line 2361
    .local v1, "staminaReceiver":Lcom/android/server/AlarmManagerService$StaminaReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2362
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2363
    const-string v2, "com.sonymobile.XSSM_SMS_EMERGENCY_CB"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2365
    return-void
.end method

.method private changeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2469
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/AlarmManagerService$StaminaController;->changeState(IJ)V

    .line 2470
    return-void
.end method

.method private changeState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "releaseFrom"    # J

    .prologue
    .line 2480
    iget v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    if-eq p1, v0, :cond_0

    .line 2481
    iput p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    .line 2482
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mReleaseAlarmsFrom:J

    .line 2483
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked()V

    .line 2485
    :cond_0
    return-void
.end method

.method private isAlarmSuppressed(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2605
    iget v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 2612
    :cond_0
    :goto_0
    return v0

    .line 2607
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2609
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 2610
    :cond_1
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mReleaseAlarmsFrom:J

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/AlarmManagerService$StaminaController;->isExpiringAfter(Lcom/android/server/AlarmManagerService$Alarm;J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isExpiringAfter(Lcom/android/server/AlarmManagerService$Alarm;J)Z
    .locals 2
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 2616
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()Z
    .locals 4

    .prologue
    .line 2573
    const/4 v2, 0x0

    .line 2574
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarms:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2575
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2576
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2577
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2578
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2580
    const/4 v2, 0x1

    goto :goto_0

    .line 2584
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2585
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2586
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2587
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->isAlarmSuppressed(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2588
    const/4 v2, 0x1

    .line 2589
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2590
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarms:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2593
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    return v2
.end method


# virtual methods
.method public addSuppressedAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    return-void
.end method

.method public addWhitelistedUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->isAlarmsSuppressedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2499
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked()V

    .line 2501
    :cond_0
    monitor-exit v1

    .line 2502
    return-void

    .line 2501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;JJ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J

    .prologue
    .line 2627
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    const-string v1, " Super Stamina debug info:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Power state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Internal Whitelist ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2634
    .local v9, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2636
    .end local v9    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " User Whitelist ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 2639
    .local v10, "uid":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2642
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2643
    const-string v1, "Suppressed alarms: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2644
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2645
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2646
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2647
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    const-string v3, "  "

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    # invokes: Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->access$1400(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2649
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    return-void
.end method

.method public isAlarmsSuppressedLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2460
    iget v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v2, 0x1

    .line 2527
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_1

    .line 2537
    :cond_0
    :goto_0
    return v2

    .line 2532
    :cond_1
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 2533
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 2534
    .local v1, "uid":I
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2537
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public onEmergencySMS(J)V
    .locals 23
    .param p1, "postponeTime"    # J

    .prologue
    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2660
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2662
    .local v14, "rtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2664
    .local v8, "elapsed":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mEmergencyTimeOut:J

    move-wide/from16 v18, v0

    cmp-long v16, v18, v8

    if-gtz v16, :cond_1

    .line 2665
    add-long v18, v8, p1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$StaminaController;->mEmergencyTimeOut:J

    .line 2666
    add-long v10, v8, p1

    .line 2667
    .local v10, "newElapsed":J
    add-long v12, v14, p1

    .line 2668
    .local v12, "newRtc":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2671
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mEmergencyTimeOut:J

    move-wide/from16 v20, v0

    cmp-long v16, v18, v20

    if-gez v16, :cond_0

    .line 2672
    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 2683
    :goto_1
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v18, v0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v20, v0

    sub-long v6, v18, v20

    .line 2684
    .local v6, "diff":J
    iput-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2685
    add-long v18, v10, v6

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    goto :goto_0

    .line 2690
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "diff":J
    .end local v8    # "elapsed":J
    .end local v10    # "newElapsed":J
    .end local v12    # "newRtc":J
    .end local v14    # "rtc":J
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 2675
    .restart local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "elapsed":J
    .restart local v10    # "newElapsed":J
    .restart local v12    # "newRtc":J
    .restart local v14    # "rtc":J
    :pswitch_0
    :try_start_1
    iput-wide v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_1

    .line 2679
    :pswitch_1
    iput-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_1

    .line 2690
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "elapsed":J
    .end local v10    # "newElapsed":J
    .end local v12    # "newRtc":J
    .end local v14    # "rtc":J
    :cond_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2691
    return-void

    .line 2672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 2403
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2404
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2405
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2407
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2408
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2411
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2412
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2415
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2416
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2417
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2419
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2420
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2423
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2424
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 2427
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2428
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2429
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2431
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2432
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2435
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2436
    return-void
.end method

.method public removeWhitelistedUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2449
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->isAlarmsSuppressedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2450
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked()V

    .line 2452
    :cond_0
    monitor-exit v1

    .line 2453
    return-void

    .line 2452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeAlarmsAfter(J)V
    .locals 3
    .param p1, "start"    # J

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2397
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 2400
    :goto_0
    return-void

    .line 2398
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/AlarmManagerService$StaminaController;->changeState(IJ)V

    .line 2399
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInternalWhitelist(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2373
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2376
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2377
    monitor-exit v1

    .line 2378
    return-void

    .line 2377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPowerState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2547
    :try_start_0
    iput p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    .line 2548
    packed-switch p1, :pswitch_data_0

    .line 2562
    :goto_0
    monitor-exit v1

    .line 2563
    return-void

    .line 2551
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;J)J

    .line 2552
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->access$1202(Lcom/android/server/AlarmManagerService;J)J

    .line 2553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V

    goto :goto_0

    .line 2562
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2556
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public suppressAlarms(Z)V
    .locals 2
    .param p1, "suppress"    # Z

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2513
    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    if-nez v0, :cond_0

    monitor-exit v1

    .line 2516
    :goto_0
    return-void

    .line 2514
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->changeState(I)V

    .line 2515
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2514
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method
