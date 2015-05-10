.class Lcom/android/server/power/PowerManagerService$WakelockAcquiredRunnable;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakelockAcquiredRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakelockAcquiredRunnable;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAcquiredRunnable;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 484
    const-class v1, Lcom/android/server/AlarmManagerStamina;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerStamina;

    .line 488
    .local v0, "am":Lcom/android/server/AlarmManagerStamina;
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerStamina;->firstWakelockAcquired(J)V

    .line 489
    return-void
.end method
