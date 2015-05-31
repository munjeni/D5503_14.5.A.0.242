.class Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;
.super Ljava/util/TimerTask;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/packetfilter/PacketFilter$Operation;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;


# direct methods
.method constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z
    invoke-static {v0, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2202(Lcom/sonymobile/packetfilter/PacketFilter$Operation;Z)Z

    .line 1007
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mConnector:Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2300(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

    move-result-object v0

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->cleanup()V
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->access$2400(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;)V

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "operation timeout: oid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    const/4 v1, -0x4

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->finish(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;I)V

    .line 1010
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2700(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    iget-object v3, v3, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2802(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1012
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2800(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;->this$1:Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", timeout: starting a new thread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 1014
    monitor-exit v1

    .line 1015
    return-void

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
