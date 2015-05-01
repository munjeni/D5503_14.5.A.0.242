.class Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$3;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$3;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$3;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->getFinalConfirmationDialog()Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$200(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 119
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$3;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V
    invoke-static {v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$100(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    .line 121
    return-void
.end method
