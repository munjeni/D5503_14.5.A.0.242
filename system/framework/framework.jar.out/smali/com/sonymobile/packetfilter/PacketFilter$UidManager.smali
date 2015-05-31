.class Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
.super Ljava/lang/Object;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidManager"
.end annotation


# instance fields
.field private mAppUIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/packetfilter/PacketFilter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;)V
    .locals 1

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p2, "x1"    # Lcom/sonymobile/packetfilter/PacketFilter$1;

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1064
    monitor-exit v1

    .line 1065
    return-void

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1031
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1032
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    .local v3, "uid":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1035
    :try_start_1
    const-string/jumbo v4, "try to get uid from system info."

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1036
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2100(Lcom/sonymobile/packetfilter/PacketFilter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1037
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1039
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1048
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1051
    monitor-exit v5

    return-object v3

    .line 1040
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public pop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->mAppUIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
