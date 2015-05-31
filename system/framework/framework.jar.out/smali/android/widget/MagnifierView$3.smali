.class Landroid/widget/MagnifierView$3;
.super Ljava/lang/Object;
.source "MagnifierView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MagnifierView;


# direct methods
.method constructor <init>(Landroid/widget/MagnifierView;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Landroid/widget/MagnifierView$3;->this$0:Landroid/widget/MagnifierView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    .line 360
    iget-object v0, p0, Landroid/widget/MagnifierView$3;->this$0:Landroid/widget/MagnifierView;

    # getter for: Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;
    invoke-static {v0}, Landroid/widget/MagnifierView;->access$700(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/widget/MagnifierView$3;->this$0:Landroid/widget/MagnifierView;

    # getter for: Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;
    invoke-static {v0}, Landroid/widget/MagnifierView;->access$700(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/SpringDynamics;->update(J)V

    .line 362
    iget-object v0, p0, Landroid/widget/MagnifierView$3;->this$0:Landroid/widget/MagnifierView;

    invoke-virtual {v0}, Landroid/widget/MagnifierView;->invalidate()V

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierView$3;->this$0:Landroid/widget/MagnifierView;

    # getter for: Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;
    invoke-static {v0}, Landroid/widget/MagnifierView;->access$700(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Landroid/widget/MagnifierView$3;->this$0:Landroid/widget/MagnifierView;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/MagnifierView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :cond_1
    return-void
.end method
