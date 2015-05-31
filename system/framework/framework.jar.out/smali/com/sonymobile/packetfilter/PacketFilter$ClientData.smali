.class Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
.super Ljava/lang/Object;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientData"
.end annotation


# instance fields
.field private appendRuleLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;",
            ">;>;"
        }
    .end annotation
.end field

.field private insertRuleLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/packetfilter/PacketFilter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    .line 343
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p2, "x1"    # Lcom/sonymobile/packetfilter/PacketFilter$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)V
    .locals 4
    .param p2, "other"    # Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    .line 351
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;Lcom/sonymobile/packetfilter/PacketFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p2, "x1"    # Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    .param p3, "x2"    # Lcom/sonymobile/packetfilter/PacketFilter$1;

    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;

    return-object v0
.end method
