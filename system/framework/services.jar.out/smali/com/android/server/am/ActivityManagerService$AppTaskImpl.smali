.class Lcom/android/server/am/ActivityManagerService$AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTaskImpl"
.end annotation


# instance fields
.field private mCallingUid:I

.field private mTaskId:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .locals 0
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 19523
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 19524
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    .line 19525
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    .line 19526
    return-void
.end method

.method private checkCaller()V
    .locals 3

    .prologue
    .line 19529
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 19530
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19533
    :cond_0
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 19537
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 19539
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 19540
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 19542
    .local v2, "origId":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 19543
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_0

    .line 19544
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find task ID "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19553
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 19555
    .end local v2    # "origId":J
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 19547
    .restart local v2    # "origId":J
    .restart local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 19548
    .local v0, "flags":I
    and-int v8, v0, v10

    if-ne v8, v10, :cond_1

    move v1, v5

    .line 19550
    .local v1, "isDocument":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    if-nez v1, :cond_2

    :goto_1
    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(II)Z
    invoke-static {v8, v9, v5}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19553
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19555
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19556
    return-void

    .end local v1    # "isDocument":Z
    :cond_1
    move v1, v6

    .line 19548
    goto :goto_0

    .restart local v1    # "isDocument":Z
    :cond_2
    move v5, v6

    .line 19550
    goto :goto_1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 7

    .prologue
    .line 19560
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 19562
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 19563
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 19565
    .local v0, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    invoke-static {v3, v5}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 19566
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_0

    .line 19567
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19571
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 19573
    .end local v0    # "origId":J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 19569
    .restart local v0    # "origId":J
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->createRecentTaskInfoFromTaskRecord(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->access$2000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 19571
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3
.end method

.method public moveToFront()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 19578
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 19581
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 19582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    invoke-static {v1, v3}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 19583
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v0, :cond_0

    .line 19584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find task ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19590
    .end local v0    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 19586
    .restart local v0    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19587
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILandroid/os/Bundle;)V

    .line 19588
    monitor-exit v2

    .line 19593
    :goto_0
    return-void

    .line 19590
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19592
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecentsInner(ILandroid/os/Bundle;)I

    goto :goto_0
.end method

.method public setExcludeFromRecents(Z)V
    .locals 8
    .param p1, "exclude"    # Z

    .prologue
    .line 19620
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 19622
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 19623
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 19625
    .local v2, "origId":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    invoke-static {v4, v6}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 19626
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    .line 19627
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find task ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19637
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 19639
    .end local v2    # "origId":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 19629
    .restart local v1    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "origId":J
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19630
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 19631
    const/high16 v4, 0x800000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19637
    :goto_0
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19639
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19640
    return-void

    .line 19633
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v6, -0x800001

    and-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 20
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 19598
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 19600
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    .line 19603
    .local v17, "callingUser":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 19604
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    invoke-static {v1, v4}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/TaskRecord;

    move-result-object v19

    .line 19605
    .local v19, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v19, :cond_0

    .line 19606
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19612
    .end local v19    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 19608
    .restart local v19    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 19609
    .local v2, "appThread":Landroid/app/IApplicationThread;
    if-nez v2, :cond_1

    .line 19610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad app thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19612
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    return v1
.end method
