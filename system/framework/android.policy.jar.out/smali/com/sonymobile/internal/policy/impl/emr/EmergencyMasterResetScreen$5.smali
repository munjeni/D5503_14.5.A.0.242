.class Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$5;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->getFinalConfirmationDialog()Landroid/app/AlertDialog;
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
    .line 202
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$5;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$5;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->executeMasterReset()V
    invoke-static {v0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$400(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    .line 208
    return-void
.end method
