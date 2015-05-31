.class public abstract Lcom/android/server/job/JobSchedulerStamina;
.super Ljava/lang/Object;
.source "JobSchedulerStamina.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addWhitelistedUid(I)V
.end method

.method public abstract removeWhitelistedUid(I)V
.end method

.method public abstract setInternalWhitelist(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
