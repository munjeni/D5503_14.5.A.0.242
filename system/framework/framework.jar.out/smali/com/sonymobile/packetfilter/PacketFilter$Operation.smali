.class Lcom/sonymobile/packetfilter/PacketFilter$Operation;
.super Ljava/lang/Object;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Operation"
.end annotation


# static fields
.field private static final COMMAND_DROPALL_HTTP:I = 0x7

.field private static final COMMAND_DROPALL_TCP:I = 0x8

.field private static final COMMAND_DROPALL_UDP:I = 0x6

.field private static final COMMAND_MATCH_HTTP_ASC:I = 0x4

.field private static final COMMAND_MATCH_HTTP_ASC_PATH:I = 0x5

.field private static final COMMAND_MATCH_TCP_IP:I = 0x2

.field private static final COMMAND_MATCH_TCP_IP_RANGE:I = 0x3

.field private static final COMMAND_MATCH_UDP:I = 0x1

.field private static final COMMAND_MATCH_UID:I = 0x0

.field private static final HEADER_UID:Ljava/lang/String; = "-m owner --uid-owner "

.field private static final OPERATION_ADD:I = 0x1

.field private static final OPERATION_NAME_NEW:Ljava/lang/String; = "newChainCmd"

.field private static final OPERATION_NAME_REMOVE:Ljava/lang/String; = "removeChainCmd"

.field private static final OPERATION_NAME_UPDATE:Ljava/lang/String; = "updateChainCmd"

.field private static final OPERATION_NEW_CHAIN:I = 0x4

.field private static final OPERATION_REMOVE_ALL:I = 0x2

.field private static final OPERATION_REMOVE_CHAIN:I = 0x5

.field private static final OPERATION_UPDATE:I = 0x3

.field private static final RESTORE_COMMIT:Ljava/lang/String; = "COMMIT\n"

.field private static final RESTORE_FILTER:Ljava/lang/String; = "*filter\n"

.field private static final RESTORE_NAME_LEFT:Ljava/lang/String; = ": "

.field private static final RESTORE_NAME_RIGHT:Ljava/lang/String; = " - [0:0]\n"

.field private static final VALUE_TARGET_ACCEPT:Ljava/lang/String; = "ACCEPT"

.field private static final VALUE_TARGET_DROP:Ljava/lang/String; = "DROP"


# instance fields
.field private mChain:Ljava/lang/String;

.field private mClient:Landroid/content/ComponentName;

.field private mCommandFormatStr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOid:J

.field private mOperationName:Ljava/lang/String;

.field private mOperationType:I

.field private mOperationUser:I

.field private mOrder:I

.field private mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

.field private mScriptFullpath:Ljava/lang/String;

.field private mTable:Ljava/lang/String;

.field private mTarget:I

.field private mTimeOut:Z

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/sonymobile/packetfilter/PacketFilter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;II)V
    .locals 4
    .param p2, "operate"    # I
    .param p3, "client"    # Landroid/content/ComponentName;
    .param p4, "rules"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p5, "target"    # I
    .param p6, "order"    # I

    .prologue
    const/4 v3, 0x0

    .line 450
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    .line 399
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const-string v1, "-A %s %s -p tcp -j %s\n"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "-A %s -p udp --dport 53 -m string --hex-string %s --algo bm -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "-A %s %s -p tcp -d %s -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "-A %s %s -p tcp -m iprange --dst-range %s -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "-A %s %s -p tcp ! --dport 443 --tcp-flags PSH PSH -m string --string %s --algo bm -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "-A %s %s -p tcp ! --dport 443 --tcp-flags PSH PSH -m string --string %s --algo bm -m string --string %s --algo bm -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "-A %s -p udp --dport 53 -j DROP\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "-A %s -p tcp ! --dport 443 --tcp-flags PSH PSH -j DROP\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "-A %s -p tcp -j DROP\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 434
    iput-boolean v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    .line 437
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimer:Ljava/util/Timer;

    .line 451
    iput p2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    .line 452
    iput-object p3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    .line 453
    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->getExtendedRule([Lcom/sonymobile/packetfilter/PacketFilterRuleBase;)[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 454
    iput p5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    .line 455
    iput p6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOrder:I

    .line 456
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$600(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;

    .line 457
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mRoot:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$700(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;

    .line 458
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->getCurrentUser()I
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$800(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationUser:I

    .line 459
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;IILcom/sonymobile/packetfilter/PacketFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/ComponentName;
    .param p4, "x3"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/sonymobile/packetfilter/PacketFilter$1;

    .prologue
    .line 365
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sonymobile/packetfilter/PacketFilter$Operation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .param p1, "x1"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/sonymobile/packetfilter/PacketFilter$Operation;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .param p1, "x1"    # J

    .prologue
    .line 365
    iput-wide p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .param p1, "x1"    # I

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->finish(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->process()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->startTimer()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->stopTimer()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->check()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 365
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    return v0
.end method

.method private add(Ljava/util/HashMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 567
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .line 568
    .local v0, "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    if-nez v0, :cond_2

    .line 569
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add clientDataMap.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 571
    const/4 v3, -0x2

    .line 601
    :cond_0
    :goto_0
    return v3

    .line 573
    :cond_1
    new-instance v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {v0, v4, v7}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$1;)V

    .line 574
    .restart local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :goto_1
    iget v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOrder:I

    if-nez v4, :cond_3

    .line 583
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 588
    .local v1, "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 591
    .local v2, "temp_size":I
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 593
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_4

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add listSize over: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 595
    const/4 v3, -0x3

    goto :goto_0

    .line 577
    .end local v1    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v2    # "temp_size":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    new-instance v5, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {v5, v6, v0, v7}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;Lcom/sonymobile/packetfilter/PacketFilter$1;)V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .restart local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    goto :goto_1

    .line 585
    :cond_3
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .restart local v1    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    goto :goto_2

    .line 597
    .restart local v2    # "temp_size":I
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add repeated rule: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private check()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check mOperationType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 491
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    if-ne v6, v5, :cond_2

    .line 492
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .local v0, "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 493
    .local v3, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->checkRule()Z
    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R_RULE_UNSUPPORT: check OPERATION mOperationType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 509
    .end local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :goto_1
    return v4

    .line 492
    .restart local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_1
    move v4, v5

    .line 499
    goto :goto_1

    .line 500
    .end local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_2
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v4, v5

    .line 501
    goto :goto_1

    .line 502
    :cond_3
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move v4, v5

    .line 503
    goto :goto_1

    .line 504
    :cond_4
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_5
    move v4, v5

    .line 506
    goto :goto_1

    .line 508
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R_OP_UNDEFINE: check OPERATION mOperationType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private combineRules(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    const/4 v4, 0x5

    const/4 v0, -0x6

    const/4 v1, 0x0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "combine mOperationType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 521
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 522
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->add(Ljava/util/HashMap;)I

    move-result v0

    .line 547
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 524
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 528
    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    :cond_2
    :goto_1
    move v0, v1

    .line 547
    goto :goto_0

    .line 534
    :cond_3
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 535
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->updateCheck(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->pop(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 540
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No need to update mPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_5
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    if-ne v0, v4, :cond_2

    .line 544
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method private createScriptFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "insertCommands"    # Ljava/lang/String;
    .param p2, "appendCommands"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/apfd/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->access$600(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_updatechain.script"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "script file location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 703
    const/4 v1, 0x0

    .line 705
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/system/apfd/"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .local v3, "scriptDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    .local v4, "scriptFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 709
    const-string/jumbo v6, "script file directory is not existed"

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    if-eqz v1, :cond_0

    .line 732
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    .end local v3    # "scriptDir":Ljava/io/File;
    .end local v4    # "scriptFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v5

    .line 734
    .restart local v3    # "scriptDir":Ljava/io/File;
    .restart local v4    # "scriptFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing io fails due to IOException.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 713
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 714
    const-string v6, "create script file failed"

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    if-eqz v1, :cond_0

    .line 732
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 734
    :catch_1
    move-exception v0

    .line 735
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing io fails due to IOException.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_4
    const-string v6, "change group access permision of the script file to r/w/x"

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 720
    const/16 v6, 0x1f8

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v4, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 723
    :cond_3
    new-instance v2, Ljava/io/FileWriter;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 724
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 731
    if-eqz v2, :cond_4

    .line 732
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 738
    :cond_4
    :goto_1
    const/4 v5, 0x1

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 734
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 735
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closing io fails due to IOException.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 726
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "scriptDir":Ljava/io/File;
    .end local v4    # "scriptFile":Ljava/io/File;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .line 727
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writing fails due to IOException.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 731
    if-eqz v1, :cond_0

    .line 732
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 734
    :catch_4
    move-exception v0

    .line 735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing io fails due to IOException.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 731
    :goto_3
    if-eqz v1, :cond_5

    .line 732
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 736
    :cond_5
    :goto_4
    throw v5

    .line 734
    :catch_5
    move-exception v0

    .line 735
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing io fails due to IOException.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_4

    .line 730
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "scriptDir":Ljava/io/File;
    .restart local v4    # "scriptFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 726
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private feedback(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 993
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sonymobile.enterprise.intent.action.PACKETFILTER_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 995
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.enterprise.extra.PACKET_FILTER_EXTRA_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 996
    const-string v1, "com.sonymobile.enterprise.extra.PACKET_FILTER_EXTRA_ID"

    iget-wide v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 999
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2100(Lcom/sonymobile/packetfilter/PacketFilter;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1000
    return-void
.end method

.method private finish(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 976
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 989
    :goto_0
    return-void

    .line 979
    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 981
    :cond_1
    const-string/jumbo v0, "result is set to OK since it\'s a REMOVE_CHAIN/REMOVE_ALL operation"

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 982
    const/4 p1, 0x0

    .line 984
    :cond_2
    if-nez p1, :cond_3

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userhandle current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 986
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->sync()V

    .line 988
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->feedback(I)V

    goto :goto_0
.end method

.method private formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;
    .locals 11
    .param p1, "command"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "target"    # I
    .param p4, "rule"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 926
    const-string v0, ""

    .line 927
    .local v0, "cmd":Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 928
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    move-result-object v4

    iget-object v5, p4, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, "uid":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 931
    iget v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 933
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, ""

    .line 934
    .local v2, "targetUid":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_2

    const-string v1, "DROP"

    .line 937
    .local v1, "dropOrAccept":Ljava/lang/String;
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 964
    .end local v1    # "dropOrAccept":Ljava/lang/String;
    .end local v2    # "targetUid":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a command item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 965
    return-object v0

    .line 933
    .restart local v3    # "uid":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 934
    .restart local v2    # "targetUid":Ljava/lang/String;
    :cond_2
    const-string v1, "ACCEPT"

    goto :goto_1

    .line 941
    .restart local v1    # "dropOrAccept":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v2, v5, v8

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1800(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 943
    goto :goto_2

    .line 947
    :pswitch_1
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v2, v5, v8

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1800(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 949
    goto :goto_2

    .line 951
    :pswitch_2
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1800(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->toHexString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2000(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 953
    goto/16 :goto_2

    .line 955
    :pswitch_3
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v2, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 957
    goto/16 :goto_2

    .line 962
    .end local v1    # "dropOrAccept":Ljava/lang/String;
    .end local v2    # "targetUid":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getExtendedRule([Lcom/sonymobile/packetfilter/PacketFilterRuleBase;)[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .locals 5
    .param p1, "rules"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    .prologue
    .line 465
    array-length v2, p1

    new-array v1, v2, [Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 466
    .local v1, "rulesEx":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 467
    new-instance v2, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilterRuleBase;)V

    aput-object v2, v1, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-object v1
.end method

.method private process()I
    .locals 15

    .prologue
    const/4 v12, -0x6

    const/4 v14, 0x1

    const/4 v11, 0x0

    .line 640
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "process operation: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 642
    const/4 v7, 0x0

    .line 643
    .local v7, "insertCommands":Ljava/lang/String;
    const/4 v1, 0x0

    .line 647
    .local v1, "appendCommands":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1100(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13

    .line 648
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1100(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 649
    .local v3, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-direct {p0, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->combineRules(Ljava/util/HashMap;)I

    move-result v9

    .line 651
    .local v9, "result":I
    if-eqz v9, :cond_0

    .line 652
    const-string v10, "combine fail"

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 689
    .end local v9    # "result":I
    :goto_0
    return v9

    .line 649
    .end local v3    # "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 655
    .restart local v3    # "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    .restart local v9    # "result":I
    :cond_0
    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1

    .line 656
    const-string/jumbo v10, "newChainCmd"

    iput-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    :goto_1
    move v9, v11

    .line 689
    goto :goto_0

    .line 657
    :cond_1
    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    if-eq v10, v14, :cond_2

    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x2

    if-eq v10, v13, :cond_2

    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_5

    .line 659
    :cond_2
    const-string/jumbo v10, "updateChainCmd"

    iput-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    .line 660
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v8, "insertDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 662
    .local v6, "insertAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 663
    .local v2, "appendDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 666
    .local v0, "appendAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mClientDataMap = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1100(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 667
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clientDataMap = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 669
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 670
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 671
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 672
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 675
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v8, v11, v11}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(Ljava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6, v14, v11}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(Ljava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 677
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2, v11, v14}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(Ljava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v0, v14, v14}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(Ljava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertCommands cmds:\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appendCommands cmds:\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, v7, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->createScriptFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v11

    :goto_3
    move v9, v10

    goto/16 :goto_0

    :cond_4
    move v10, v12

    goto :goto_3

    .line 683
    .end local v0    # "appendAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v2    # "appendDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "insertAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v8    # "insertDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :cond_5
    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x5

    if-ne v10, v13, :cond_6

    .line 684
    const-string/jumbo v10, "removeChainCmd"

    iput-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    goto/16 :goto_1

    .line 686
    :cond_6
    const-string/jumbo v10, "unexpected PacketFilterChain operation type"

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    move v9, v12

    .line 687
    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;-><init>(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1017
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1021
    return-void
.end method

.method private sync()V
    .locals 2

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sync mOperationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1100(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1100(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->combineRules(Ljava/util/HashMap;)I

    .line 557
    monitor-exit v1

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private toCommands(Ljava/util/HashSet;II)Ljava/lang/String;
    .locals 20
    .param p2, "target"    # I
    .param p3, "orderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 787
    .local v15, "matchUIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 788
    .local v14, "matchUDPs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 789
    .local v13, "matchTCPIPs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 794
    .local v12, "matchHTTPURLs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 798
    .local v5, "acceptUIDRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 799
    .local v4, "acceptUDPRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    const/4 v9, 0x0

    .line 800
    .local v9, "dropAllHTTPFlag":Z
    const/4 v10, 0x0

    .line 801
    .local v10, "dropAllTCPFlag":Z
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v8, "cmds":Ljava/lang/StringBuffer;
    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mInsertChainName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1400(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v6

    .line 805
    .local v6, "chain":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 806
    .local v16, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 810
    .local v17, "uid":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 811
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 812
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 813
    const/4 v10, 0x1

    goto :goto_1

    .line 802
    .end local v6    # "chain":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v17    # "uid":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mAppendChainName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 815
    .restart local v6    # "chain":Ljava/lang/String;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .restart local v17    # "uid":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 821
    :cond_3
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    goto :goto_1

    .line 871
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 824
    :pswitch_1
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 827
    :pswitch_2
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 831
    :pswitch_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 832
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_4
    if-nez p2, :cond_5

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 836
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 840
    :cond_5
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 843
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 844
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 849
    :pswitch_4
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 851
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 852
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 853
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 856
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 858
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 863
    :pswitch_5
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 865
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 866
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 878
    .end local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v17    # "uid":Ljava/lang/String;
    :cond_7
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 879
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_8
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 880
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_9
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 881
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 884
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->size()I

    move-result v18

    if-lez v18, :cond_14

    .line 885
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    .line 887
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 888
    .restart local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v7

    .line 890
    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 894
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_d
    const/16 v18, 0x6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    :cond_e
    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f

    if-eqz v9, :cond_10

    .line 898
    :cond_f
    const/16 v18, 0x7

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 900
    :cond_10
    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_11

    if-eqz v10, :cond_14

    .line 902
    :cond_11
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_12
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 903
    .restart local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v7

    .line 905
    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_12

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 909
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v16    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_13
    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    :cond_14
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private toScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "insertCommands"    # Ljava/lang/String;
    .param p2, "appendCommands"    # Ljava/lang/String;

    .prologue
    .line 749
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 771
    :cond_0
    :goto_0
    const-string v1, "COMMIT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 752
    :cond_1
    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 754
    :cond_2
    const-string v1, "*filter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mInsertChainName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1400(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    const-string v1, " - [0:0]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mAppendChainName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    const-string v1, " - [0:0]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 765
    :cond_3
    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such operate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCheck(Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 611
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 612
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .line 613
    .local v0, "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 615
    .local v4, "rulesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 616
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 617
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 618
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 619
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 620
    .local v3, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v4    # "rulesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :goto_0
    return v7

    :cond_2
    move v7, v6

    .line 625
    goto :goto_0

    .line 627
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCheck all uid: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    move v7, v5

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 474
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .local v4, "rules":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    if-eqz v5, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .local v0, "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 477
    .local v3, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOperationType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mClient:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
