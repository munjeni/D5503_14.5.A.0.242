.class Lcom/sonymobile/settings/systemicon/SystemIconSettings$2;
.super Ljava/lang/Object;
.source "SystemIconSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/systemicon/SystemIconSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/systemicon/SystemIconSettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonymobile/settings/systemicon/SystemIconSettings$2;->this$0:Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f0b0006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f0b0007

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 114
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 115
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 116
    return-void
.end method
