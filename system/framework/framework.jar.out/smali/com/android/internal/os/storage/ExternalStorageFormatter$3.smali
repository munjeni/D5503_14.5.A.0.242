.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x1

    .line 270
    const/4 v4, 0x0

    .line 271
    .local v4, "success":Z
    const/4 v2, 0x0

    .line 272
    .local v2, "physicalVol":Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 274
    .local v3, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 275
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v6, 0x1

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z
    invoke-static {v5, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$402(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const/4 v4, 0x1

    .line 282
    :goto_0
    if-eqz v4, :cond_3

    .line 283
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const-string v5, "android.intent.extra.REASON"

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v5, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 325
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 279
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v6, v6, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-virtual {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;->getStringFormatError()I

    move-result v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v5, v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v6, v6, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const-string v6, ""

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 307
    :cond_3
    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$900(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    const-string v5, "android.intent.extra.REASON"

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v5, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    .line 314
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 319
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const-string v6, ""

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "ExternalStorageFormatter"

    const-string v6, "Failed talking with mount service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
