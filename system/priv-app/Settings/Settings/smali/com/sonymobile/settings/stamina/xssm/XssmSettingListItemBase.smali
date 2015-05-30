.class abstract Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
.super Ljava/lang/Object;
.source "XssmSettingListItemBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;
.end method

.method protected abstract getApplicationIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getLabel()Ljava/lang/CharSequence;
.end method

.method protected initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 20
    const v3, 0x7f0e00cf

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    const v3, 0x7f0e0035

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 25
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 26
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method protected onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listAdapter"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .prologue
    .line 47
    return-void
.end method

.method protected onItemClick(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    return-void
.end method
