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
    .locals 7
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x1

    .line 314
    sget v4, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 316
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$17$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$17;

    iget-object v4, v4, Lcom/android/internal/policy/impl/GlobalActions$17;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 318
    .local v3, "s2":Ljava/lang/String;
    sget v4, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-nez v4, :cond_2

    .line 319
    const/4 v3, 0x0

    .line 330
    :cond_0
    :goto_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 332
    .local v2, "pm":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v2, v4, v3, v5}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pm":Landroid/os/IPowerManager;
    .end local v3    # "s2":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 320
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "s2":Ljava/lang/String;
    :cond_2
    sget v4, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-ne v4, v6, :cond_3

    .line 321
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$17$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$17;

    iget-object v4, v4, Lcom/android/internal/policy/impl/GlobalActions$17;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions;->bootCommand()V

    .line 322
    const-string v3, "recovery"

    goto :goto_0

    .line 323
    :cond_3
    sget v4, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 324
    const-string v3, "bootloader"

    goto :goto_0

    .line 325
    :cond_4
    sget v4, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 326
    const-string v3, "oem-53"

    goto :goto_0

    .line 327
    :cond_5
    sget v4, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 328
    const-string v3, "enl"

    goto :goto_0

    .line 333
    .restart local v2    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Failed to reboot."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
