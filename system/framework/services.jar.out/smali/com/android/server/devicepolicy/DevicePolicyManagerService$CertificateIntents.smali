.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$CertificateIntents;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertificateIntents"
.end annotation


# static fields
.field public static final BUFFER_NAME:Ljava/lang/String; = "BUFFER_NAME"

.field public static final CERT_NAME:Ljava/lang/String; = "CERT_NAME"

.field public static final ENTERPRISE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.enterprise.service"

.field public static final INCORRECT_RESULT:I = -0x64

.field public static final INCORRECT_USAGE:I = -0x1

.field public static final INSTALL_CERT_FROM_DER:Ljava/lang/String; = "com.sonymobile.enterprise.certificates.INSTALL_CERT_FROM_DER"

.field public static final INSTALL_CERT_FROM_PKCS12:Ljava/lang/String; = "com.sonymobile.enterprise.certificates.INSTALL_CERT_FROM_PKCS12"

.field public static final LIST_CERT:Ljava/lang/String; = "com.sonymobile.enterprise.certificates.LIST_CERT"

.field public static final PASSWORD_NAME:Ljava/lang/String; = "PASSWORD_NAME"

.field public static final REMOVE_CERT:Ljava/lang/String; = "com.sonymobile.enterprise.certificates.REMOVE_CERT"

.field public static final REMOVE_FAILED:I = -0x1

.field public static final REMOVE_SUCCEEDED:I = 0x0

.field public static final RESPONSE_TIMEOUT:I = 0xa

.field public static final RESULT:Ljava/lang/String; = "com.sonymobile.enterprise.certificates.RESULT"

.field public static final RESULT_CERT_LIST:Ljava/lang/String; = "RESULT_CERT_LIST"

.field public static final RESULT_CODE_NAME:Ljava/lang/String; = "RESULT_CODE_NAME"

.field public static final SERVICE_CLASS:Ljava/lang/String; = ".CertificateService"

.field public static final TYPE_NAME:Ljava/lang/String; = "TYPE_NAME"

.field public static final USAGE_NAME:Ljava/lang/String; = "USAGE_NAME"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
