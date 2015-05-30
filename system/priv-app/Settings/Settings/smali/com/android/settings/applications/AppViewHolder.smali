.class public Lcom/android/settings/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appDate:Landroid/widget/TextView;

.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public appSize:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/CheckBox;

.field public disabled:Landroid/widget/TextView;

.field public entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;I)Lcom/android/settings/applications/AppViewHolder;
    .locals 8
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "filterMode"    # I

    .prologue
    const v7, 0x7f0e00d8

    const v6, 0x7f0e00d7

    const v5, 0x7f0e00d6

    const v4, 0x7f0e000d

    const v3, 0x7f0e000c

    .line 29
    if-nez p1, :cond_1

    .line 33
    new-instance v0, Lcom/android/settings/applications/AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/applications/AppViewHolder;-><init>()V

    .line 34
    .local v0, "holder":Lcom/android/settings/applications/AppViewHolder;
    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 36
    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 39
    iput-object p1, v0, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 40
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e00d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appDate:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .end local v0    # "holder":Lcom/android/settings/applications/AppViewHolder;
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "holder":Lcom/android/settings/applications/AppViewHolder;
    :cond_0
    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    iput-object p1, v0, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 53
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v0    # "holder":Lcom/android/settings/applications/AppViewHolder;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method updateSizeText(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "invalidSizeStr"    # Ljava/lang/CharSequence;
    .param p2, "whichSize"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    packed-switch p2, :pswitch_data_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
