.class Lcom/sonymobile/settings/stamina/appusage/PackageList$2;
.super Landroid/database/ContentObserver;
.source "PackageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/PackageList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;->onChange(ZLandroid/net/Uri;)V

    .line 81
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->access$000(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V

    .line 84
    return-void
.end method
