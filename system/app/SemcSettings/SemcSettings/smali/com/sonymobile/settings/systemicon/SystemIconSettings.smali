.class public Lcom/sonymobile/settings/systemicon/SystemIconSettings;
.super Landroid/app/ListActivity;
.source "SystemIconSettings.java"


# static fields
.field private static final EXCLUDED_SYSTEM_BAR_ICONS:Ljava/lang/String; = "excluded_system_bar_icons"

.field private static final SETTINGS_ICON:Ljava/lang/String; = "ic_launcher_settings"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SHOW_BATTERY_PERCENT:Ljava/lang/String; = "somc.show_battery_percent"

.field private static final TAG:Ljava/lang/String; = "SystemIconSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/systemicon/SystemIconSettings;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/systemicon/SystemIconSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->setBatteryShown(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/systemicon/SystemIconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/systemicon/SystemIconSettings;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->updateSecureDataBase()V

    return-void
.end method

.method private static createHashmap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "itemsString"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v3, Ljava/util/HashMap;

    array-length v6, p0

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 205
    .local v4, "s":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "stringArray":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 207
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "stringArray":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getExcludedSystemIcons()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "excludedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "excluded_system_bar_icons"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "settingsFromDB":Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, "excludedItems":[Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 178
    const-string v1, ";"

    .line 179
    .local v1, "divider":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 181
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    .line 182
    .local v5, "item":Ljava/lang/String;
    const-string v8, "SystemIconSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "divider":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "item":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_0
    return-object v3
.end method

.method private getSystemIcons()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/systemicon/SystemIconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v5, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/systemicon/SystemIconInfo;>;"
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f080000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->createHashmap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 141
    .local v3, "iconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v8, 0x7f080002

    invoke-direct {p0, v8}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getSystemIconsFromResources(I)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "allSystemIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->createHashmap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 145
    .local v7, "textMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getExcludedSystemIcons()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "excludedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 148
    .local v6, "systemIcon":Ljava/lang/String;
    const-string v9, "SystemIconSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "icon: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", resource: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v8, "battery_percent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    new-instance v4, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->isBatteryShown(Landroid/content/Context;)Z

    move-result v12

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v4, v6, v12, v8, v9}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v4, "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    const-string v8, "battery"

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v10

    :goto_1
    invoke-virtual {v4, v8}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->setEnabled(Z)V

    .line 154
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v8, v11

    .line 153
    goto :goto_1

    .line 155
    .end local v4    # "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_1
    const-string v8, "stamina"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 156
    new-instance v4, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move v12, v10

    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v4, v6, v12, v8, v9}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local v4    # "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    const-string v8, "battery"

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v10

    :goto_3
    invoke-virtual {v4, v8}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->setEnabled(Z)V

    .line 160
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v4    # "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_2
    move v12, v11

    .line 156
    goto :goto_2

    .restart local v4    # "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_3
    move v8, v11

    .line 159
    goto :goto_3

    .line 162
    .end local v4    # "info":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_4
    new-instance v13, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v12, v10

    :goto_4
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v13, v6, v12, v8, v9}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    move v12, v11

    goto :goto_4

    .line 166
    .end local v6    # "systemIcon":Ljava/lang/String;
    :cond_6
    return-object v5
.end method

.method private getSystemIconsFromResources(I)Ljava/util/List;
    .locals 8
    .param p1, "stringArrayResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v4, "systemIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 196
    .local v3, "s":Ljava/lang/String;
    const-string v5, "SystemIconSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private isBatteryShown(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "shown":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.show_battery_percent"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBatteryShown(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.show_battery_percent"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 253
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSecureDataBase()V
    .locals 9

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 227
    .local v0, "adapt":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 228
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 230
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/systemicon/SystemIconInfo;

    .line 231
    .local v3, "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    invoke-virtual {v3}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "item":Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "excluded_system_bar_icons"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 238
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, "actionBar":Landroid/app/ActionBar;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.settings"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 61
    .local v6, "settingsResources":Landroid/content/res/Resources;
    const-string v7, "ic_launcher_settings"

    const-string v8, "mipmap"

    const-string v9, "com.android.settings"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 63
    .local v5, "resId":I
    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "resId":I
    .end local v6    # "settingsResources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    new-instance v4, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings$1;-><init>(Lcom/sonymobile/settings/systemicon/SystemIconSettings;)V

    .line 103
    .local v4, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v1, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;

    const v7, 0x7f030005

    invoke-direct {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getSystemIcons()Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, p0, v7, v8, v4}, Lcom/sonymobile/settings/systemicon/SystemIconAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/sonymobile/settings/systemicon/SystemIconInfo;>;"
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/settings/systemicon/SystemIconSettings$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings$2;-><init>(Lcom/sonymobile/settings/systemicon/SystemIconSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    return-void

    .line 67
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/sonymobile/settings/systemicon/SystemIconInfo;>;"
    .end local v4    # "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SystemIconSettings"

    const-string v8, "Failed to load resource"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->finish()V

    .line 219
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/settings/systemicon/SystemIconSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 132
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 133
    return-void
.end method
