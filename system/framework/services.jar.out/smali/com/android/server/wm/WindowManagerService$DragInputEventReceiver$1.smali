.class Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    .line 737
    return-void
.end method
