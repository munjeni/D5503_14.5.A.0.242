.class final Lcom/android/server/am/ActivityManagerService$StaminaService;
.super Landroid/app/ActivityManagerStamina;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StaminaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 19493
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$StaminaService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerStamina;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .prologue
    .line 19493
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$StaminaService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public setStaminaKillObserver(Lcom/sony/stamina/IProcessKillObserver;)V
    .locals 7
    .param p1, "observer"    # Lcom/sony/stamina/IProcessKillObserver;

    .prologue
    .line 19497
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$StaminaService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 19498
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$StaminaService;->this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mStaminaKillObserver:Lcom/sony/stamina/IProcessKillObserver;
    invoke-static {v4, p1}, Lcom/android/server/am/ActivityManagerService;->access$1702(Lcom/android/server/am/ActivityManagerService;Lcom/sony/stamina/IProcessKillObserver;)Lcom/sony/stamina/IProcessKillObserver;

    .line 19500
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$StaminaService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 19501
    .local v0, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "nsize":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 19502
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$StaminaService;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mStaminaKillObserver:Lcom/sony/stamina/IProcessKillObserver;
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;)Lcom/sony/stamina/IProcessKillObserver;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessRecord;->setStaminaKillObserver(Lcom/sony/stamina/IProcessKillObserver;)V

    .line 19501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19505
    .end local v0    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1    # "i":I
    .end local v3    # "nsize":I
    :cond_1
    monitor-exit v5

    .line 19506
    return-void

    .line 19505
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setUsmController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 19510
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$StaminaService;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->setUsmController(Landroid/app/IActivityController;)V
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V

    .line 19511
    return-void
.end method
