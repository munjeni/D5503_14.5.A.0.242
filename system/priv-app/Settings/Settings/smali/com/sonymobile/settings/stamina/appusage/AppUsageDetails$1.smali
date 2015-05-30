.class Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;
.super Ljava/lang/Object;
.source "AppUsageDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->setUpData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->uninstallPackage()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->access$000(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V

    .line 146
    return-void
.end method
