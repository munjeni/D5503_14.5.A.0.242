.class Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;
.super Ljava/lang/Object;
.source "UltraStaminaMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.superstamina.USM_HINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
