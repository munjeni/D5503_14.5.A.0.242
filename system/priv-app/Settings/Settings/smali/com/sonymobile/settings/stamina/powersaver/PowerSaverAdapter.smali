.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerSaverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPowerSaverEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    .line 96
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->loadFeatures()V

    .line 98
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 191
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v1

    .line 197
    .local v1, "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    if-nez p2, :cond_0

    .line 198
    iget-object v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 199
    .local v4, "li":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 200
    .local v3, "layout":I
    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    packed-switch v6, :pswitch_data_0

    .line 210
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v4, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 214
    .end local v3    # "layout":I
    .end local v4    # "li":Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f0e00cf

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 215
    .local v5, "tv":Landroid/widget/TextView;
    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    const v6, 0x7f0e0035

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 220
    .local v2, "icon":Landroid/widget/ImageView;
    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 224
    const v6, 0x7f0e01c1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 225
    .local v0, "btn":Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 226
    iget-boolean v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 230
    :cond_1
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    return-object p2

    .line 202
    .end local v0    # "btn":Landroid/widget/CheckBox;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v5    # "tv":Landroid/widget/TextView;
    .restart local v3    # "layout":I
    .restart local v4    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    const v3, 0x7f0400c6

    .line 203
    goto :goto_0

    .line 205
    :pswitch_1
    const v3, 0x7f0400c7

    .line 206
    goto :goto_0

    .line 221
    .end local v3    # "layout":I
    .end local v4    # "li":Landroid/view/LayoutInflater;
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "tv":Landroid/widget/TextView;
    :cond_2
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public isPowerSaverEnabled()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    return v0
.end method

.method public loadFeatures()V
    .locals 12

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 104
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverFeatures(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 107
    .local v7, "idIndex":I
    const-string v1, "overriden"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 108
    .local v8, "isEnabledIndex":I
    const-string v1, "param"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 109
    .local v9, "paramIndex":I
    const-string v1, "saved_state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 110
    .local v10, "savedIndex":I
    const-string v1, "state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 112
    .local v11, "stateIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 113
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;-><init>(Ljava/lang/String;ZIII)V

    .line 118
    .local v0, "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    const-string v1, "Brightness"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    .line 120
    const v1, 0x7f0200fe

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 121
    const v1, 0x7f08002f

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .end local v7    # "idIndex":I
    .end local v8    # "isEnabledIndex":I
    .end local v9    # "paramIndex":I
    .end local v10    # "savedIndex":I
    .end local v11    # "stateIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 122
    .restart local v0    # "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .restart local v7    # "idIndex":I
    .restart local v8    # "isEnabledIndex":I
    .restart local v9    # "paramIndex":I
    .restart local v10    # "savedIndex":I
    .restart local v11    # "stateIndex":I
    :cond_0
    :try_start_1
    const-string v1, "AutoSync"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const v1, 0x7f020104

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 124
    const v1, 0x7f080036

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 125
    :cond_1
    const-string v1, "BT"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const v1, 0x7f0200fc

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 127
    const v1, 0x7f080034

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 128
    :cond_2
    const-string v1, "DataTraffic"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const v1, 0x7f0200ff

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 130
    const v1, 0x7f080037

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 131
    :cond_3
    const-string v1, "Gamma"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    const v1, 0x7f020100

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 133
    const v1, 0x7f080038

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 134
    :cond_4
    const-string v1, "GPS"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    const v1, 0x7f020101

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 136
    const v1, 0x7f080035

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 137
    :cond_5
    const-string v1, "haptic"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    const v1, 0x7f020102

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 139
    const v1, 0x7f080033

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 140
    :cond_6
    const-string v1, "Timeout"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    .line 142
    const v1, 0x7f020105

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 143
    const v1, 0x7f080031

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 144
    :cond_7
    const-string v1, "Wifi"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    const v1, 0x7f020106

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 146
    const v1, 0x7f080032

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 147
    :cond_8
    const-string v1, "BraviaEngine"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 148
    const v1, 0x7f0200fd

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 149
    const v1, 0x7f080039

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 150
    :cond_9
    const-string v1, "XReality"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 151
    const v1, 0x7f0200fd

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 152
    const v1, 0x7f08003a

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 153
    :cond_a
    const-string v1, "ImageEnhancement"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 154
    const v1, 0x7f0200fd

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 155
    const v1, 0x7f08003b

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 156
    :cond_b
    const-string v1, "xLOUD"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    const v1, 0x7f020107

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 158
    const v1, 0x7f08003c

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 160
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0    # "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    return-void
.end method

.method public setPowerSaverEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    .line 257
    return-void
.end method
