.class Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$2;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;
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
    .line 86
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$2;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$2;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V
    invoke-static {v0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$100(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    .line 90
    return-void
.end method
