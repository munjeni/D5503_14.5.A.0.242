.class final Lcom/android/internal/os/ZygoteInit$2;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preloadResources([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$drawableArrayId:I

.field final synthetic val$runtimeSkinPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$2;->val$runtimeSkinPaths:[Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/os/ZygoteInit$2;->val$drawableArrayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 495
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v11

    .line 496
    .local v11, "runtime":Ldalvik/system/VMRuntime;
    const/4 v8, 0x0

    .line 499
    .local v8, "origConfig":Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    # setter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->access$102(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 500
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/ZygoteInit$2;->val$runtimeSkinPaths:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->startPreloading([Ljava/lang/String;)V

    .line 502
    new-instance v9, Landroid/content/res/Configuration;

    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v8    # "origConfig":Landroid/content/res/Configuration;
    .local v9, "origConfig":Landroid/content/res/Configuration;
    :try_start_1
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Original config: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getPreloadConfigurations()Ljava/util/ArrayList;

    move-result-object v4

    .line 506
    .local v4, "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 507
    .local v7, "nconfigs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 508
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 509
    .local v10, "resconf":Landroid/content/res/Configuration;
    invoke-virtual {v10, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 510
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/Configuration;

    invoke-virtual {v10, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 511
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 512
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Preloading resources for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 515
    .local v12, "startTime":J
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/os/ZygoteInit$2;->val$drawableArrayId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 517
    .local v3, "ar":Landroid/content/res/TypedArray;
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    invoke-static {v11, v3}, Lcom/android/internal/os/ZygoteInit;->access$200(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v2

    .line 518
    .local v2, "N":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 519
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "...preloaded "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resources in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 523
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070007

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 525
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    invoke-static {v11, v3}, Lcom/android/internal/os/ZygoteInit;->access$300(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v2

    .line 526
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 527
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "...preloaded "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resources in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 531
    .end local v2    # "N":I
    .end local v3    # "ar":Landroid/content/res/TypedArray;
    .end local v10    # "resconf":Landroid/content/res/Configuration;
    .end local v12    # "startTime":J
    :cond_0
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    if-eqz v9, :cond_3

    .line 536
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 537
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 538
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Restored config: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 541
    .end local v4    # "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    .end local v6    # "i":I
    .end local v7    # "nconfigs":I
    .end local v9    # "origConfig":Landroid/content/res/Configuration;
    .restart local v8    # "origConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_1
    return-void

    .line 532
    :catch_0
    move-exception v5

    .line 533
    .local v5, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_2
    const-string v14, "Zygote"

    const-string v15, "Failure preloading resources"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    if-eqz v8, :cond_1

    .line 536
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 537
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 538
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Restored config: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 535
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v8, :cond_2

    .line 536
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 537
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 538
    const-string v15, "Zygote"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Restored config: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v14

    .line 535
    .end local v8    # "origConfig":Landroid/content/res/Configuration;
    .restart local v9    # "origConfig":Landroid/content/res/Configuration;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "origConfig":Landroid/content/res/Configuration;
    .restart local v8    # "origConfig":Landroid/content/res/Configuration;
    goto :goto_3

    .line 532
    .end local v8    # "origConfig":Landroid/content/res/Configuration;
    .restart local v9    # "origConfig":Landroid/content/res/Configuration;
    :catch_1
    move-exception v5

    move-object v8, v9

    .end local v9    # "origConfig":Landroid/content/res/Configuration;
    .restart local v8    # "origConfig":Landroid/content/res/Configuration;
    goto :goto_2

    .end local v8    # "origConfig":Landroid/content/res/Configuration;
    .restart local v4    # "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    .restart local v6    # "i":I
    .restart local v7    # "nconfigs":I
    .restart local v9    # "origConfig":Landroid/content/res/Configuration;
    :cond_3
    move-object v8, v9

    .end local v9    # "origConfig":Landroid/content/res/Configuration;
    .restart local v8    # "origConfig":Landroid/content/res/Configuration;
    goto :goto_1
.end method
