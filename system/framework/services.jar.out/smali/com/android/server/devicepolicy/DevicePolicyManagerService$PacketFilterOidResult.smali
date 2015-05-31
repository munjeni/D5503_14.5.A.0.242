.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$PacketFilterOidResult;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PacketFilterOidResult"
.end annotation


# static fields
.field static final OID_TYPE_ASSERT:I = 0x1

.field static final OID_TYPE_DONOTHING:I = 0x0

.field static final OID_TYPE_SAVE_XML:I = 0x2


# instance fields
.field oidType:I

.field userHandle:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "userHandle"    # I
    .param p2, "oidType"    # I

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PacketFilterOidResult;->userHandle:I

    .line 378
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$PacketFilterOidResult;->oidType:I

    .line 379
    return-void
.end method
