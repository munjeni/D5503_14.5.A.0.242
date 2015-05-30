.class Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;
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
    .line 104
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->access$000(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->uninstallPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->access$100(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Ljava/lang/String;)V

    .line 108
    return-void
.end method
