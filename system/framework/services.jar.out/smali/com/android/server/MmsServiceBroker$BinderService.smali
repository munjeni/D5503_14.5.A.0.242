.class final Lcom/android/server/MmsServiceBroker$BinderService;
.super Lcom/android/internal/telephony/IMms$Stub;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Lcom/android/internal/telephony/IMms$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MmsServiceBroker;
    .param p2, "x1"    # Lcom/android/server/MmsServiceBroker$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method


# virtual methods
.method public addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Add MMS draft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$1200()Landroid/net/Uri;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Add SMS draft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$1100()Landroid/net/Uri;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # J
    .param p4, "archived"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Update SMS/MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Delete conversation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Delete SMS/MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "locationUrl"    # Ljava/lang/String;
    .param p5, "contentUri"    # Landroid/net/Uri;
    .param p6, "configOverrides"    # Landroid/os/Bundle;
    .param p7, "downloadedIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v0, "MmsServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECEIVE_MMS"

    const-string v2, "Download MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getAutoPersisting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z

    move-result v0

    return v0
.end method

.method public getCarrierConfigValues(J)Landroid/os/Bundle;
    .locals 3
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "MmsServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarrierConfigValues() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getCallingPackageName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/MmsServiceBroker;->access$800(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "timestampSecs"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Import MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$1000()Landroid/net/Uri;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "timestampMillis"    # J
    .param p7, "seen"    # Z
    .param p8, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Import SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$900()Landroid/net/Uri;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;
    .param p5, "locationUrl"    # Ljava/lang/String;
    .param p6, "configOverrides"    # Landroid/os/Bundle;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v0, "MmsServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Send MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "configOverrides"    # Landroid/os/Bundle;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Send stored MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Set auto persist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateMmsDownloadStatus(II)V
    .locals 1
    .param p1, "messageRef"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->enforceCarrierPrivilege()V
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$700(Lcom/android/server/MmsServiceBroker;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->updateMmsDownloadStatus(II)V

    .line 269
    return-void
.end method

.method public updateMmsSendStatus(I[BI)V
    .locals 1
    .param p1, "messageRef"    # I
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->enforceCarrierPrivilege()V
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$700(Lcom/android/server/MmsServiceBroker;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateMmsSendStatus(I[BI)V

    .line 263
    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "statusValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Update SMS/MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
