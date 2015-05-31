.class Lcom/sonymobile/packetfilter/PacketFilter$1;
.super Landroid/content/BroadcastReceiver;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/packetfilter/PacketFilter;


# direct methods
.method constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$1;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    :cond_0
    const-string/jumbo v3, "package added"

    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$1;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->updatePackageName(Ljava/lang/String;)J
    invoke-static {v3, v2}, Lcom/sonymobile/packetfilter/PacketFilter;->access$100(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/String;)J

    .line 174
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method
