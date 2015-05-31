.class public abstract Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapterExtend.java"

# interfaces
.implements Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.internal.telecom.IConnectionServiceAdapterExtend"

.field static final TRANSACTION_setExtraParams:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.sonymobile.internal.telecom.IConnectionServiceAdapterExtend"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.sonymobile.internal.telecom.IConnectionServiceAdapterExtend"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v3, "com.sonymobile.internal.telecom.IConnectionServiceAdapterExtend"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "com.sonymobile.internal.telecom.IConnectionServiceAdapterExtend"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/internal/telecom/IConnectionServiceAdapterExtend$Stub;->setExtraParams(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
