.class final Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceAidInfo"
.end annotation


# instance fields
.field aid:Ljava/lang/String;

.field category:Ljava/lang/String;

.field service:Landroid/nfc/cardemulation/ApduServiceInfo;

.field final synthetic this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    .line 87
    .local v0, "that":Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 89
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v4, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
