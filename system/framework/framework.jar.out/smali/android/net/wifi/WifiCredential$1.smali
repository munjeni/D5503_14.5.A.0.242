.class final Landroid/net/wifi/WifiCredential$1;
.super Ljava/lang/Object;
.source "WifiCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiCredential;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 366
    new-instance v0, Landroid/net/wifi/WifiCredential;

    invoke-direct {v0}, Landroid/net/wifi/WifiCredential;-><init>()V

    .line 367
    .local v0, "cred":Landroid/net/wifi/WifiCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setId(I)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setPriority(I)V

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setRealm(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setDomains([Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setRoamingConsortium(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/WifiCredential;->mPcsc:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiCredential;->access$002(Landroid/net/wifi/WifiCredential;I)I

    .line 373
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiEnterpriseConfig;

    # setter for: Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiCredential;->access$102(Landroid/net/wifi/WifiCredential;Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiEnterpriseConfig;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setProfileName(Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiCredential;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiCredential;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 380
    new-array v0, p1, [Landroid/net/wifi/WifiCredential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiCredential$1;->newArray(I)[Landroid/net/wifi/WifiCredential;

    move-result-object v0

    return-object v0
.end method