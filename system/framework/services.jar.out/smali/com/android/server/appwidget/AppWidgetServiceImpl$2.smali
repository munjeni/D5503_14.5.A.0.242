.class Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Landroid/database/ContentObserver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUsmEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$702(Lcom/android/server/appwidget/AppWidgetServiceImpl;Z)Z

    .line 237
    return-void
.end method
