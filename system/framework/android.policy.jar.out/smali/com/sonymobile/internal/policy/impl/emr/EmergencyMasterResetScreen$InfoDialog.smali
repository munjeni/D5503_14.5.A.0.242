.class final Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;
.super Landroid/app/AlertDialog;
.source "EmergencyMasterResetScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InfoDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;III)V
    .locals 2
    .param p2, "iconId"    # I
    .param p3, "titleId"    # I
    .param p4, "messageId"    # I

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    .line 303
    # getter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$500(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->setIcon(I)V

    .line 305
    invoke-virtual {p0, p3}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->setTitle(I)V

    .line 306
    # getter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$500(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 309
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    .line 318
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V
    invoke-static {v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$100(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 321
    .local v0, "keyCode":I
    if-eq v0, v5, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 323
    :cond_0
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # getter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$600(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 325
    iget-object v3, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    invoke-virtual {p0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    # setter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$602(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 329
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # getter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$600(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # getter for: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$600(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v0, v5, :cond_3

    move v1, v2

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 342
    :cond_2
    :goto_1
    return v2

    .line 329
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 332
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 342
    :cond_4
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;

    # invokes: Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->pokeWakelock()V
    invoke-static {v0}, Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;->access$100(Lcom/sonymobile/internal/policy/impl/emr/EmergencyMasterResetScreen;)V

    .line 353
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
