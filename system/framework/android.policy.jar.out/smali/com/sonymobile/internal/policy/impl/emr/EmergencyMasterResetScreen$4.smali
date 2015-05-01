.class Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$4;
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
    .line 124
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$4;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$4;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->emergencyMasterResetExit()V
    invoke-static {v0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$300(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    .line 127
    return-void
.end method
