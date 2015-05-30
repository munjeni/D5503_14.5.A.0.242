.class Lcom/android/settings/wifi/WifiSettings$7;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1035
    packed-switch p1, :pswitch_data_0

    .line 1053
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$502(Lcom/android/settings/wifi/WifiSettings;I)I

    .line 1056
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 1059
    :cond_0
    return-void

    .line 1037
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f080344

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$502(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1040
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f080341

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$502(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1043
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f080342

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$502(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1046
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f08033f

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$502(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1049
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f080343

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$502(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1029
    return-void
.end method

.method public onSucceeded()V
    .locals 0

    .prologue
    .line 1032
    return-void
.end method
