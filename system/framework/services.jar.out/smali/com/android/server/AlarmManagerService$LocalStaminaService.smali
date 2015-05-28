.class Lcom/android/server/AlarmManagerService$LocalStaminaService;
.super Lcom/android/server/AlarmManagerStamina;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalStaminaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$LocalStaminaService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AlarmManagerStamina;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "x1"    # Lcom/android/server/AlarmManagerService$1;

    .prologue
    .line 2248
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$LocalStaminaService;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public addWhitelistedUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalStaminaService;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$StaminaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->addWhitelistedUid(I)V

    .line 2253
    return-void
.end method

.method public firstWakelockAcquired(J)V
    .locals 5
    .param p1, "sinceWakelockAcquired"    # J

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalStaminaService;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$StaminaController;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService$StaminaController;->resumeAlarmsAfter(J)V

    .line 2269
    return-void
.end method

.method public lastWakelockReleased()V
    .locals 2

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalStaminaService;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$StaminaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V

    .line 2263
    return-void
.end method

.method public removeWhitelistedUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalStaminaService;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$StaminaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->removeWhitelistedUid(I)V

    .line 2258
    return-void
.end method

.method public setInternalWhitelist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2273
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalStaminaService;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$StaminaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->setInternalWhitelist(Ljava/util/List;)V

    .line 2274
    return-void
.end method
