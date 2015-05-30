.class public Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;
.super Landroid/app/Fragment;
.source "UltraStaminaMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$3;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$3;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "timeLeft"    # I

    .prologue
    const v10, 0x7f0f0001

    const/high16 v9, 0x7f0f0000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    div-int/lit8 v1, p2, 0x18

    .line 125
    .local v1, "days":I
    rem-int/lit8 v3, p2, 0x18

    .line 128
    .local v3, "hours":I
    if-nez v1, :cond_0

    .line 129
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "standbyTime":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 132
    .end local v4    # "standbyTime":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 133
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "standbyTime":Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v4    # "standbyTime":Ljava/lang/String;
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "hourStr":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "dayStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "standbyTime":Ljava/lang/String;
    goto :goto_0
.end method

.method private isUsmEnabled()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accentColor"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimate(Landroid/content/Context;)I

    move-result v2

    .line 110
    .local v2, "timeLeft":I
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "remainingBatteryTime":Ljava/lang/String;
    const v3, 0x7f0e01af

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, "batteryTimeView":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method private setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmStandbyTimeEstimate(Landroid/content/Context;)I

    move-result v2

    .line 118
    .local v2, "timeLeft":I
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "standbyTime":Ljava/lang/String;
    const v3, 0x7f0e01b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, "standbyTimeView":Landroid/widget/TextView;
    const v3, 0x7f080024

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 58
    const v7, 0x7f0400cf

    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 59
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0e01cc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 60
    .local v4, "toggleUsmButton":Landroid/widget/Button;
    const v7, 0x7f0e01cb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 62
    .local v3, "infoUsmButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->isUsmEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const v7, 0x7f08007d

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 66
    :cond_0
    new-instance v7, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;

    invoke-direct {v7, p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;-><init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v7, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;

    invoke-direct {v7, p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;-><init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v7, 0x7f0e01ac

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 81
    .local v2, "estimate":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f07002b

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->getColorFromResource(Landroid/content/Context;I)I

    move-result v0

    .line 84
    .local v0, "accentColor":I
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, v6, v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 88
    const v7, 0x7f0e01b1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 89
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    const v7, 0x7f0e01b2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 91
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const v7, 0x7f0e01ae

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 93
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_1

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 101
    :cond_1
    return-object v6
.end method
