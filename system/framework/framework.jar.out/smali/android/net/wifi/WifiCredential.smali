.class public Landroid/net/wifi/WifiCredential;
.super Ljava/lang/Object;
.source "WifiCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiCredential;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_KEY:Ljava/lang/String; = "domain"

.field private static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final INVALID_CREDENTIAL_ID:I = -0x1

.field private static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PCSC_KEY:Ljava/lang/String; = "pcsc"

.field private static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field public static final PRIVATEKEY_KEY:Ljava/lang/String; = "private_key"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final PROFILE_NAME_KEY:Ljava/lang/String; = "profile_name"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final ROAMING_CONSORTIUM_KEY:Ljava/lang/String; = "roaming_consortium"

.field public static final USERNAME_KEY:Ljava/lang/String; = "username"


# instance fields
.field private mCredentialId:I

.field private mDomains:[Ljava/lang/String;

.field private mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mPcsc:I

.field private mPriority:I

.field private mProfileName:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mRoamingConsortium:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Landroid/net/wifi/WifiCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiCredential;->mCredentialId:I

    .line 74
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiCredential;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiCredential;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/net/wifi/WifiCredential;->getId()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiCredential;->mCredentialId:I

    .line 336
    invoke-virtual {p1}, Landroid/net/wifi/WifiCredential;->getPriority()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiCredential;->mPriority:I

    .line 337
    invoke-virtual {p1}, Landroid/net/wifi/WifiCredential;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mRealm:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/net/wifi/WifiCredential;->getDomains()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mDomains:[Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/net/wifi/WifiCredential;->getRoamingConsortium()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mRoamingConsortium:Ljava/lang/String;

    .line 340
    iget v0, p1, Landroid/net/wifi/WifiCredential;->mPcsc:I

    iput v0, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    .line 341
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p1, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 342
    invoke-virtual {p1}, Landroid/net/wifi/WifiCredential;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mProfileName:Ljava/lang/String;

    .line 344
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiCredential;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiCredential;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiCredential;Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiCredential;
    .param p1, "x1"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 18
    iput-object p1, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object p1
.end method

.method public static getEnterpriseSupplicantKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "eap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "phase2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "client_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ca_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "key_id"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomains()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mDomains:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mDomains:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getEapMethod()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    return v0
.end method

.method public getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/net/wifi/WifiCredential;->mCredentialId:I

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcsc()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    return v0
.end method

.method public getPhase2Method()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/net/wifi/WifiCredential;->mPriority:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingConsortium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mRoamingConsortium:Ljava/lang/String;

    return-object v0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public setDomains([Ljava/lang/String;)V
    .locals 1
    .param p1, "domains"    # [Ljava/lang/String;

    .prologue
    .line 137
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/WifiCredential;->mDomains:[Ljava/lang/String;

    .line 138
    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setEapMethod(I)V
    .locals 2
    .param p1, "eapMethod"    # I

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 246
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    .line 248
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 249
    return-void

    .line 243
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 83
    iput p1, p0, Landroid/net/wifi/WifiCredential;->mCredentialId:I

    .line 84
    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setPcsc(I)V
    .locals 0
    .param p1, "pcsc"    # I

    .prologue
    .line 173
    iput p1, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    .line 174
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 1
    .param p1, "phase2Method"    # I

    .prologue
    .line 266
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 267
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 101
    iput p1, p0, Landroid/net/wifi/WifiCredential;->mPriority:I

    .line 102
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Landroid/net/wifi/WifiCredential;->mProfileName:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/net/wifi/WifiCredential;->mRealm:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRoamingConsortium(Ljava/lang/String;)V
    .locals 0
    .param p1, "oi"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/net/wifi/WifiCredential;->mRoamingConsortium:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credentialId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiCredential;->mCredentialId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiCredential;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCredential;->mDomains:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "roamingConsortium="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCredential;->mRoamingConsortium:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pcsc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCredential;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 353
    iget v0, p0, Landroid/net/wifi/WifiCredential;->mCredentialId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Landroid/net/wifi/WifiCredential;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mDomains:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mRoamingConsortium:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget v0, p0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 360
    iget-object v0, p0, Landroid/net/wifi/WifiCredential;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    return-void
.end method
