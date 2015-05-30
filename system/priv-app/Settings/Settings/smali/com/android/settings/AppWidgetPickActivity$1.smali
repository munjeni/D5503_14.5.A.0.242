.class Lcom/android/settings/AppWidgetPickActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppWidgetPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AppWidgetPickActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/AppWidgetPickActivity$1;->this$0:Lcom/android/settings/AppWidgetPickActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity$1;->this$0:Lcom/android/settings/AppWidgetPickActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity$1;->this$0:Lcom/android/settings/AppWidgetPickActivity;

    invoke-virtual {v0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    .line 80
    :cond_0
    return-void
.end method
