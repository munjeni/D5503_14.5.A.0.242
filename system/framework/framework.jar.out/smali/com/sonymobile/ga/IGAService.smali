.class public interface abstract Lcom/sonymobile/ga/IGAService;
.super Ljava/lang/Object;
.source "IGAService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/ga/IGAService$Stub;
    }
.end annotation


# virtual methods
.method public abstract push(Lcom/sonymobile/ga/GAEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
