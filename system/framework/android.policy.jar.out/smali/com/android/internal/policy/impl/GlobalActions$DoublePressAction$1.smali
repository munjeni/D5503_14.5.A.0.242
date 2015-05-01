.class Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 994
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;->val$v:Landroid/view/View;

    const v4, 0x1020302

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 996
    .local v1, "text1":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;->val$v:Landroid/view/View;

    const v4, 0x1020305

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 999
    .local v2, "text2":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1000
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-gt v3, v5, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 1001
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1002
    .local v0, "smallStyle":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010042

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1005
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1008
    .end local v0    # "smallStyle":Landroid/util/TypedValue;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1010
    :cond_2
    return-void
.end method
