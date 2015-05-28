.class public abstract Landroid/media/IMediaHTTPConnection$Stub;
.super Landroid/os/Binder;
.source "IMediaHTTPConnection.java"

# interfaces
.implements Landroid/media/IMediaHTTPConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaHTTPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaHTTPConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaHTTPConnection"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getDurationUs:I = 0x7

.field static final TRANSACTION_getEndOffset:I = 0x6

.field static final TRANSACTION_getHeader:I = 0xb

.field static final TRANSACTION_getMIMEType:I = 0x9

.field static final TRANSACTION_getSeekTimeUs:I = 0x8

.field static final TRANSACTION_getSize:I = 0x5

.field static final TRANSACTION_getUri:I = 0xa

.field static final TRANSACTION_readAt:I = 0x3

.field static final TRANSACTION_readAtTime:I = 0x4

.field static final TRANSACTION_setSeekModeSupport:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.media.IMediaHTTPConnection"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaHTTPConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaHTTPConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMediaHTTPConnection;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/media/IMediaHTTPConnection;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/media/IMediaHTTPConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IMediaHTTPConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v0, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/media/IMediaHTTPConnection$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 54
    .local v8, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 60
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/IBinder;
    :sswitch_2
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->disconnect()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 71
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaHTTPConnection$Stub;->readAt(JI)I

    move-result v8

    .line 73
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_4
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 83
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 85
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    move-object v1, p0

    .line 86
    invoke-virtual/range {v1 .. v6}, Landroid/media/IMediaHTTPConnection$Stub;->readAtTime(JJI)I

    move-result v8

    .line 87
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v8    # "_result":I
    :sswitch_5
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getSize()J

    move-result-wide v8

    .line 95
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 101
    .end local v8    # "_result":J
    :sswitch_6
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getEndOffset()J

    move-result-wide v8

    .line 103
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 109
    .end local v8    # "_result":J
    :sswitch_7
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getDurationUs()J

    move-result-wide v8

    .line 111
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 117
    .end local v8    # "_result":J
    :sswitch_8
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getSeekTimeUs()J

    move-result-wide v8

    .line 119
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 125
    .end local v8    # "_result":J
    :sswitch_9
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getMIMEType()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 135
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/media/IMediaHTTPConnection$Stub;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Landroid/media/IMediaHTTPConnection$Stub;->setSeekModeSupport(II)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
