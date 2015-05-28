.class public Lcom/sony/smallapp/internal/util/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWindowTypeIfNeeded(Landroid/view/Window;Landroid/content/Context;)V
    .locals 3
    .param p0, "w"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    move-object v0, p1

    .line 24
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    :goto_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 26
    instance-of v2, v0, Lcom/sony/smallapp/AbstractSmallApplication;

    if-eqz v2, :cond_1

    .line 27
    const/16 v2, 0xbb5

    invoke-virtual {p0, v2}, Landroid/view/Window;->setType(I)V

    .line 36
    :cond_0
    return-void

    .line 30
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "ctx":Landroid/content/Context;
    goto :goto_0
.end method
