.class Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;
.super Ljava/lang/Object;
.source "AppConsumingDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->toggleStamina(Landroid/content/Context;)V

    .line 117
    return-void
.end method
