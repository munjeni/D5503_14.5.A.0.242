.class public Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.super Landroid/widget/BaseAdapter;
.source "XssmWhitelistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whiteList"    # Landroid/database/Cursor;
    .param p3, "whiteListGroups"    # Landroid/database/Cursor;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 39
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 99
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhiteListFromCursor(Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V

    .line 101
    invoke-direct {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhitelistGroupsFromCursor(Landroid/database/Cursor;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initWhiteListFromCursor(Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 48
    const-string v3, "package"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, "uidColumnIndex":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-direct {v4, p2, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 59
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 60
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    :cond_1
    return-void
.end method

.method private initWhitelistGroupsFromCursor(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 65
    const-string v1, "settingIntentPkg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 66
    .local v13, "settingIntentPkgColumnIndex":I
    const-string v1, "settingIntentCls"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 67
    .local v12, "settingIntentClsColumnIndex":I
    const-string v1, "infoIntentPkg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 68
    .local v9, "infoIntentPkgColumnIndex":I
    const-string v1, "infoIntentCls"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 69
    .local v8, "infoIntentClsColumnIndex":I
    const-string v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 70
    .local v10, "labelColumnIndex":I
    const-string v1, "icon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 72
    .local v7, "iconColumnIndex":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "settingIntenComponentName":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 76
    .local v5, "infoIntenComponentName":Landroid/content/ComponentName;
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "pkg":Ljava/lang/String;
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "cls":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-eqz v6, :cond_0

    .line 80
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "settingIntenComponentName":Landroid/content/ComponentName;
    invoke-direct {v4, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .restart local v4    # "settingIntenComponentName":Landroid/content/ComponentName;
    :cond_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 84
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    .line 87
    new-instance v5, Landroid/content/ComponentName;

    .end local v5    # "infoIntenComponentName":Landroid/content/ComponentName;
    invoke-direct {v5, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .restart local v5    # "infoIntenComponentName":Landroid/content/ComponentName;
    :cond_1
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 94
    .local v0, "item":Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "item":Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;
    .end local v4    # "settingIntenComponentName":Landroid/content/ComponentName;
    .end local v5    # "infoIntenComponentName":Landroid/content/ComponentName;
    .end local v6    # "cls":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400d0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 134
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x7f0e01cd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v2, 0x7f0e01ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    .line 138
    .local v1, "item":Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;)V

    .line 139
    return-object p2
.end method

.method protected removeItemFromList(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->notifyDataSetChanged()V

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from list, but failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
