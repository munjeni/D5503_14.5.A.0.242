.class final Landroid/telecom/SomcConnectionServiceAdapterExtend;
.super Ljava/lang/Object;
.source "SomcConnectionServiceAdapterExtend.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/SomcConnectionServiceAdapterExtend;->mAdapters:Ljava/util/Set;

    .line 35
    return-void
.end method


# virtual methods
.method addAdapter(Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;)V
    .locals 3
    .param p1, "adapter"    # Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;

    .prologue
    .line 38
    iget-object v1, p0, Landroid/telecom/SomcConnectionServiceAdapterExtend;->mAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telecom/SomcConnectionServiceAdapterExtend;->mAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Landroid/telecom/SomcConnectionServiceAdapterExtend;->mAdapters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;

    .line 53
    .local v0, "adapter":Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;
    invoke-interface {v0}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 55
    invoke-interface {v0}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 58
    .end local v0    # "adapter":Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;
    :cond_1
    return-void
.end method

.method setExtraParams(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extraParams"    # [Ljava/lang/String;

    .prologue
    .line 61
    iget-object v2, p0, Landroid/telecom/SomcConnectionServiceAdapterExtend;->mAdapters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;

    .line 63
    .local v0, "adapter":Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;->setExtraParams(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    goto :goto_0

    .line 67
    .end local v0    # "adapter":Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;
    :cond_0
    return-void
.end method
