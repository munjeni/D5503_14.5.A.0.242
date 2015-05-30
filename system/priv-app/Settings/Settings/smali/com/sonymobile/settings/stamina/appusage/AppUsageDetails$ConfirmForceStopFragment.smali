.class public Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;
.super Landroid/app/DialogFragment;
.source "AppUsageDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmForceStopFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;-><init>()V

    .line 261
    .local v0, "fragment":Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0805de

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0805df

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
