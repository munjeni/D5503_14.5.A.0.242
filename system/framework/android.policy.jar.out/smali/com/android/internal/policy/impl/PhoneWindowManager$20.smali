.class Lcom/android/internal/policy/impl/PhoneWindowManager$20;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5605
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private saveStyleCoverConfig()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5640
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverConfigFile:Landroid/util/AtomicFile;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/util/AtomicFile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5641
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverConfigFile:Landroid/util/AtomicFile;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/util/AtomicFile;

    move-result-object v5

    monitor-enter v5

    .line 5644
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverConfigFile:Landroid/util/AtomicFile;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/util/AtomicFile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5651
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 5652
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5653
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5654
    const-string v6, "cover-config"

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverModeEnabled:Z

    if-eqz v7, :cond_1

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v1, v6, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->saveStyleCoverTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IZ)V

    .line 5655
    const-string v3, "cover-window-top"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowTop:I

    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->saveStyleCoverTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IZ)V

    .line 5656
    const-string v3, "cover-window-bottom"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowBottom:I

    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->saveStyleCoverTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IZ)V

    .line 5657
    const-string v3, "cover-window-left"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowLeft:I

    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->saveStyleCoverTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IZ)V

    .line 5658
    const-string v3, "cover-window-right"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowRight:I

    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->saveStyleCoverTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IZ)V

    .line 5659
    const/4 v3, 0x0

    const-string v4, "cover-config"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5660
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5661
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverConfigFile:Landroid/util/AtomicFile;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5666
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 5668
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    return-void

    .line 5645
    :catch_0
    move-exception v0

    .line 5646
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    monitor-exit v5

    goto :goto_2

    .line 5666
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    move v3, v4

    .line 5654
    goto :goto_0

    .line 5662
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 5663
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "WindowManager"

    const-string v4, "Failed to save cover configuration."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5664
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverConfigFile:Landroid/util/AtomicFile;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private saveStyleCoverTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "xmlOut"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "endTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5672
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5673
    const-string v0, "value"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5674
    if-eqz p4, :cond_0

    .line 5675
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5677
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 5608
    const-string v0, "com.sonymobile.covermode.intent.action.ACTION_CONFIGURE_COVER_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5611
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.sonymobile.covermode.intent.extra.COVER_MODE_ENABLED"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverModeEnabled:Z

    .line 5614
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_TOP"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowTop:I

    .line 5616
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_LEFT"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowLeft:I

    .line 5618
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_RIGHT"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowRight:I

    .line 5620
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.sonymobile.covermode.intent.extra.COVER_WINDOW_BOTTOM"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowBottom:I

    .line 5623
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowTop:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowBottom:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowLeft:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowRight:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowTop:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowLeft:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowRight:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverWindowBottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-gt v0, v1, :cond_1

    .line 5629
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeStyleCoverSysfsConfig()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5631
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->saveStyleCoverConfig()V

    .line 5632
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCoverModeIntent()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5637
    :cond_0
    :goto_0
    return-void

    .line 5634
    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "Illegal cover window specification."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
