.class Landroid/content/pm/PackageParser$ResourcePreloader;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourcePreloader"
.end annotation


# instance fields
.field final mLock:Ljava/lang/Object;

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$PreloadedResource;",
            ">;"
        }
    .end annotation
.end field

.field mQuit:Z

.field mResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Landroid/content/pm/PackageParser$PreloadedResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQueue:Ljava/util/ArrayList;

    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mResults:Ljava/util/HashMap;

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQuit:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageParser$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/pm/PackageParser$1;

    .prologue
    .line 688
    invoke-direct {p0}, Landroid/content/pm/PackageParser$ResourcePreloader;-><init>()V

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQuit:Z

    .line 765
    iget-object v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 766
    iget-object v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mResults:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 767
    iget-object v0, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 768
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method load(Ljava/io/File;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$PreloadedResource;
    .locals 5
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "flags"    # I

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 712
    .local v1, "preload":Landroid/content/pm/PackageParser$PreloadedResource;
    iget-object v3, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 713
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mResults:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$PreloadedResource;

    move-object v1, v0

    .line 714
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 717
    iget-object v3, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 718
    :try_start_1
    iget-boolean v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQuit:Z

    if-eqz v2, :cond_1

    .line 720
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 733
    :cond_0
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to preload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    .end local v1    # "preload":Landroid/content/pm/PackageParser$PreloadedResource;
    :goto_1
    return-object v1

    .line 714
    .restart local v1    # "preload":Landroid/content/pm/PackageParser$PreloadedResource;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 722
    :cond_1
    :try_start_3
    iget v2, v1, Landroid/content/pm/PackageParser$PreloadedResource;->mPreloadStatus:I

    if-nez v2, :cond_2

    .line 723
    monitor-exit v3

    goto :goto_1

    .line 731
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 726
    :cond_2
    :try_start_4
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 731
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 727
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method requestPreload(Ljava/io/File;Landroid/util/DisplayMetrics;I)V
    .locals 4
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "flags"    # I

    .prologue
    .line 699
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 700
    :try_start_0
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQuit:Z

    if-eqz v1, :cond_0

    .line 701
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "attempt to use disposed ResourcePreloader"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 703
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/pm/PackageParser$PreloadedResource;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/PackageParser$PreloadedResource;-><init>(Ljava/io/File;Landroid/util/DisplayMetrics;I)V

    .line 704
    .local v0, "data":Landroid/content/pm/PackageParser$PreloadedResource;
    iget-object v1, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mResults:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v1, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v1, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 707
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 739
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 740
    .local v1, "data":Landroid/content/pm/PackageParser$PreloadedResource;
    iget-object v3, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 741
    :try_start_0
    iget-boolean v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQuit:Z

    if-eqz v2, :cond_1

    .line 742
    monitor-exit v3

    .line 760
    return-void

    .line 743
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 744
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$PreloadedResource;

    move-object v1, v0

    .line 752
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 753
    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PreloadedResource;->load()V

    .line 755
    iget-object v3, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 756
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 757
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 747
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/content/pm/PackageParser$ResourcePreloader;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 748
    :catch_0
    move-exception v2

    goto :goto_1

    .line 752
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method startThread()V
    .locals 2

    .prologue
    .line 695
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ResourcePreloader<0>"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 696
    return-void
.end method
