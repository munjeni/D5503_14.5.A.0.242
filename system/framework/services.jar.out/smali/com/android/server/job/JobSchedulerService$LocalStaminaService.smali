.class Lcom/android/server/job/JobSchedulerService$LocalStaminaService;
.super Lcom/android/server/job/JobSchedulerStamina;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalStaminaService"
.end annotation


# instance fields
.field private mStaminaController:Lcom/android/server/job/controllers/StaminaController;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/StaminaController;)V
    .locals 0
    .param p2, "staminaController"    # Lcom/android/server/job/controllers/StaminaController;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalStaminaService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerStamina;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$LocalStaminaService;->mStaminaController:Lcom/android/server/job/controllers/StaminaController;

    .line 296
    return-void
.end method


# virtual methods
.method public addWhitelistedUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalStaminaService;->mStaminaController:Lcom/android/server/job/controllers/StaminaController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StaminaController;->addWhitelistedUid(I)V

    .line 306
    return-void
.end method

.method public removeWhitelistedUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalStaminaService;->mStaminaController:Lcom/android/server/job/controllers/StaminaController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StaminaController;->removeWhitelistedUid(I)V

    .line 311
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
    .line 300
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalStaminaService;->mStaminaController:Lcom/android/server/job/controllers/StaminaController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StaminaController;->setInternalWhitelist(Ljava/util/List;)V

    .line 301
    return-void
.end method
