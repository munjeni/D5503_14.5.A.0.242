.class public Lcom/android/settings/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;,
        Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 58
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/RecentLocationApps;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/RecentLocationApps;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "isHighBattery"    # Z
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "listener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 108
    new-instance v0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1, p4}, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 109
    .local v0, "pref":Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;
    invoke-virtual {v0, p1}, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    if-eqz p3, :cond_0

    .line 112
    const v1, 0x7f08052d

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->setSummary(I)V

    .line 116
    :goto_0
    invoke-virtual {v0, p5}, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    return-object v0

    .line 114
    :cond_0
    const v1, 0x7f08052e

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 26
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "now"    # J
    .param p4, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 168
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, "packageName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 170
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v5, 0x0

    .line 171
    .local v5, "highBattery":Z
    const/4 v15, 0x0

    .line 173
    .local v15, "normalBattery":Z
    const-wide/32 v24, 0xdbba0

    sub-long v18, p2, v24

    .line 174
    .local v18, "recentLocationCutoffTime":J
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 175
    .local v12, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v24

    cmp-long v2, v24, v18

    if-ltz v2, :cond_0

    .line 176
    :cond_1
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    const/4 v15, 0x1

    .line 179
    goto :goto_0

    .line 181
    :pswitch_1
    const/4 v5, 0x1

    .line 182
    goto :goto_0

    .line 189
    .end local v12    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v5, :cond_4

    if-nez v15, :cond_4

    .line 190
    sget-object v2, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    sget-object v2, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v24, " hadn\'t used location within the time interval."

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    const/16 v17, 0x0

    .line 226
    :goto_1
    return-object v17

    .line 198
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    .line 199
    .local v21, "uid":I
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 201
    .local v23, "userId":I
    const/16 v17, 0x0

    .line 203
    .local v17, "preference":Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 204
    .local v14, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v2, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v14, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 206
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v9, :cond_5

    .line 207
    sget-object v2, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Null application info retrieved for package "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v24, ", userId "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v17, 0x0

    goto :goto_1

    .line 211
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 213
    .local v20, "res":Landroid/content/res/Resources;
    new-instance v22, Landroid/os/UserHandle;

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    .line 214
    .local v22, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 215
    .local v8, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v8, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 216
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 217
    .local v4, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 218
    .local v6, "badgedAppLabel":Ljava/lang/CharSequence;
    new-instance v7, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1}, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_1

    .line 221
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "appLabel":Ljava/lang/CharSequence;
    .end local v6    # "badgedAppLabel":Ljava/lang/CharSequence;
    .end local v8    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local v22    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v10

    .line 222
    .local v10, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error while retrieving application info for package "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v24, ", userId "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    move-object/from16 v17, v0

    const-string v18, "appops"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 127
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v12, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 133
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    move-object/from16 v17, v0

    const-string v18, "user"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 134
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 136
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 137
    .local v4, "appOpsN":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 138
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 141
    .local v7, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    .line 143
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 144
    .local v16, "userId":I
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ne v14, v0, :cond_1

    const-string v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v6, 0x1

    .line 146
    .local v6, "isAndroidOs":Z
    :goto_1
    if-nez v6, :cond_0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 137
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    .end local v6    # "isAndroidOs":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 149
    .restart local v6    # "isAndroidOs":Z
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9, v7}, Lcom/android/settings/location/RecentLocationApps;->getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v11

    .line 150
    .local v11, "preference":Landroid/preference/Preference;
    if-eqz v11, :cond_0

    .line 151
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    .end local v6    # "isAndroidOs":Z
    .end local v7    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "preference":Landroid/preference/Preference;
    .end local v14    # "uid":I
    .end local v16    # "userId":I
    :cond_3
    return-object v12

    .line 127
    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method
