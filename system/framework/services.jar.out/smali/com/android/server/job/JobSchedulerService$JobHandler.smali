.class Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 535
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 536
    return-void
.end method

.method private isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    .line 668
    .local v2, "jobReady":Z
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 669
    .local v1, "jobPending":Z
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v4, p1}, Lcom/android/server/job/JobSchedulerService;->access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 670
    .local v0, "jobActive":Z
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 677
    .local v3, "userRunning":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, "chargingCount":I
    const/4 v4, 0x0

    .line 612
    .local v4, "idleCount":I
    const/4 v0, 0x0

    .line 613
    .local v0, "backoffCount":I
    const/4 v2, 0x0

    .line 614
    .local v2, "connectivityCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v7, "runnableJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v6

    .line 616
    .local v6, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 617
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 618
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 619
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    if-lez v8, :cond_0

    .line 620
    add-int/lit8 v0, v0, 0x1

    .line 622
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 623
    add-int/lit8 v4, v4, 0x1

    .line 625
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 626
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 628
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 629
    add-int/lit8 v1, v1, 0x1

    .line 631
    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 633
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v8, v5}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 636
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    if-gtz v0, :cond_8

    if-ge v4, v9, :cond_8

    if-ge v2, v10, :cond_8

    if-ge v1, v9, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v10, :cond_9

    .line 644
    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_9

    .line 645
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 657
    :cond_9
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .locals 9

    .prologue
    .line 695
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v7

    .line 696
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 700
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 702
    .local v4, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    const/4 v0, 0x0

    .line 703
    .local v0, "availableContext":Lcom/android/server/job/JobServiceContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 704
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 705
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    .line 706
    .local v5, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 709
    const/4 v0, 0x0

    .line 716
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 721
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v6, v4}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 723
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 726
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 712
    .restart local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .restart local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 713
    move-object v0, v3

    .line 703
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 726
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .end local v1    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    return-void
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .locals 4

    .prologue
    .line 575
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 579
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 580
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 581
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v3, v1}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 598
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_0

    .line 542
    monitor-exit v2

    .line 568
    :goto_0
    return-void

    .line 544
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 565
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeRunPendingJobsH()V

    .line 567
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 547
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 548
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 551
    .local v0, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V

    .line 556
    monitor-exit v2

    goto :goto_1

    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 559
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 561
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeQueueReadyJobsForExecutionLockedH()V

    .line 562
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
