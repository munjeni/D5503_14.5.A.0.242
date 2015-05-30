.class public Lcom/sonymobile/settings/nfc/HceOverflowDialog;
.super Landroid/app/Activity;
.source "HceOverflowDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;

    invoke-direct {v6, p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;-><init>(Lcom/sonymobile/settings/nfc/HceOverflowDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;

    invoke-direct {v6, p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;-><init>(Lcom/sonymobile/settings/nfc/HceOverflowDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 63
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    return-void
.end method
