.class Lcom/android/server/NetworkManagementService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 236
    const-string v8, "com.sonymobile.telephony.intent.ACTION_UNSOL_BAND_INFO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    const-string v8, "com.sonymobile.telephony.extra.PAYLOAD"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 238
    .local v5, "payload":[B
    if-eqz v5, :cond_0

    .line 244
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v1, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 245
    .local v1, "data":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "info":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x8e

    if-ne v8, v9, :cond_1

    .line 251
    .local v3, "isUsingBand40":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    if-eqz v3, :cond_2

    const/16 v7, 0xb

    :goto_1
    # setter for: Lcom/android/server/NetworkManagementService;->mPreferredSoftapChannel:I
    invoke-static {v8, v7}, Lcom/android/server/NetworkManagementService;->access$002(Lcom/android/server/NetworkManagementService;I)I

    .line 261
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "info":[Ljava/lang/String;
    .end local v3    # "isUsingBand40":Z
    .end local v5    # "payload":[B
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "info":[Ljava/lang/String;
    .restart local v5    # "payload":[B
    :cond_1
    move v3, v7

    .line 249
    goto :goto_0

    .line 251
    .restart local v3    # "isUsingBand40":Z
    :cond_2
    iget-object v7, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mSoftapDefaultChannel:I
    invoke-static {v7}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    goto :goto_1

    .line 252
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "info":[Ljava/lang/String;
    .end local v3    # "isUsingBand40":Z
    :catch_0
    move-exception v6

    .line 253
    .local v6, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v7, "NetworkManagementService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported payload format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 254
    .end local v6    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 255
    .local v0, "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "NetworkManagementService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong payload format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 256
    .end local v0    # "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v4

    .line 257
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const-string v7, "NetworkManagementService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong band info of payload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
