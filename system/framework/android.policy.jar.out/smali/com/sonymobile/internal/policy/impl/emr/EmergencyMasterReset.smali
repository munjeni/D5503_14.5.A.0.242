.class public Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterReset;
.super Ljava/lang/Object;
.source "EmergencyMasterReset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 20
    new-instance v8, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-direct {v8, p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;-><init>(Landroid/content/Context;)V

    .line 22
    .local v8, "view":Landroid/view/View;
    const v4, 0x10100

    .line 25
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 26
    .local v6, "stretch":I
    const/16 v7, 0x7d9

    .line 27
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 29
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 30
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 31
    const-string v1, "EmergencyMasterReset"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 34
    .local v9, "wm":Landroid/view/WindowManager;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    const v1, 0x600f06

    invoke-virtual {v8, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 45
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method
