.class public Lcom/sonymobile/settings/stamina/BatteryInfoPreference;
.super Landroid/preference/Preference;
.source "BatteryInfoPreference.java"


# instance fields
.field private mBatteryText:Ljava/lang/String;

.field private mBatteryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->setWidgetLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 46
    const v0, 0x7f0e01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public updateBatteryText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryText:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method
