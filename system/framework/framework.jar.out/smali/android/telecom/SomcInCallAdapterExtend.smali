.class public final Landroid/telecom/SomcInCallAdapterExtend;
.super Ljava/lang/Object;
.source "SomcInCallAdapterExtend.java"


# instance fields
.field private final mAdapter:Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;


# direct methods
.method public constructor <init>(Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/telecom/SomcInCallAdapterExtend;->mAdapter:Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;

    .line 23
    return-void
.end method


# virtual methods
.method public somcExecuteCommandAsync(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "options"    # [Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Landroid/telecom/SomcInCallAdapterExtend;->mAdapter:Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;->somcExecuteCommandAsync(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public somcGetCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/SomcInCallAdapterExtend;->mAdapter:Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;->somcGetCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method
