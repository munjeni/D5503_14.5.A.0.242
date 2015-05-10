.class Lcom/android/server/job/controllers/StaminaController$StaminaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StaminaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/StaminaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaReceiver"
.end annotation


# static fields
.field private static final ACTION_POWER_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/StaminaController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/StaminaController;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/job/controllers/StaminaController$StaminaReceiver;->this$0:Lcom/android/server/job/controllers/StaminaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/StaminaController;Lcom/android/server/job/controllers/StaminaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/StaminaController;
    .param p2, "x1"    # Lcom/android/server/job/controllers/StaminaController$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StaminaController$StaminaReceiver;-><init>(Lcom/android/server/job/controllers/StaminaController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/job/controllers/StaminaController$StaminaReceiver;->this$0:Lcom/android/server/job/controllers/StaminaController;

    const-string v1, "power_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/server/job/controllers/StaminaController;->setPowerState(I)V
    invoke-static {v0, v1}, Lcom/android/server/job/controllers/StaminaController;->access$100(Lcom/android/server/job/controllers/StaminaController;I)V

    .line 146
    return-void
.end method
