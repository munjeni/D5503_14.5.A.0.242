.class Lcom/android/internal/policy/impl/GlobalActions$7;
.super Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->getScreenRecordingAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIII)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 569
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPressItemLeft()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->doScreenCapture()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    return-void
.end method

.method public onPressItemRight()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->doScreenRecording()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 582
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method
