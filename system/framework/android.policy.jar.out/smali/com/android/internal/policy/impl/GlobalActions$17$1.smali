.class Lcom/android/internal/policy/impl/GlobalActions$17$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$17;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$17;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$17;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$17$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 314
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$17$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$17;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$17;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 318
    .local v1, "s2":Ljava/lang/String;
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-nez v2, :cond_2

    .line 319
    const/4 v1, 0x0

    .line 330
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 332
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "s2":Ljava/lang/String;
    :cond_1
    return-void

    .line 320
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "s2":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$17$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$17;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$17;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->bootCommand()V

    .line 322
    const-string v1, "recovery"

    goto :goto_0

    .line 323
    :cond_3
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 324
    const-string v1, "bootloader"

    goto :goto_0

    .line 325
    :cond_4
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 326
    const-string v1, "oem-53"

    goto :goto_0

    .line 327
    :cond_5
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 328
    const-string v1, "enl"

    goto :goto_0
.end method
