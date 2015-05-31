.class public interface abstract Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;
.super Ljava/lang/Object;
.source "IInCallAdapterExtend.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/internal/telecom/IInCallAdapterExtend$Stub;
    }
.end annotation


# virtual methods
.method public abstract somcExecuteCommandAsync(I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract somcGetCommand(ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
