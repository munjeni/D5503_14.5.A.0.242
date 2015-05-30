.class Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;
.super Lcom/android/settings/location/DimmableIconPreference;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessiblePreference"
.end annotation


# instance fields
.field public mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/location/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p2, p0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/location/DimmableIconPreference;->onBindView(Landroid/view/View;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 96
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
