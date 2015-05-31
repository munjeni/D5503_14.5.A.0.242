.class public interface abstract Lcom/sony/stamina/IProcessKillObserver;
.super Ljava/lang/Object;
.source "IProcessKillObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/stamina/IProcessKillObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProcessKill(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
