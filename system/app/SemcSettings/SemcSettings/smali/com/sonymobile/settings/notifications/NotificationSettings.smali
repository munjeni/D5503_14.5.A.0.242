.class public Lcom/sonymobile/settings/notifications/NotificationSettings;
.super Landroid/support/v4/app/FragmentActivity;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;
    }
.end annotation


# static fields
.field private static final SETTINGS_ICON:Ljava/lang/String; = "ic_launcher_settings"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "NotificationSettings"


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/support/v4/app/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/notifications/NotificationSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/notifications/NotificationSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public isBlackListed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationSettings;->mNotificationBlackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, "actionBar":Landroid/app/ActionBar;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.android.settings"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 53
    .local v5, "settingsResources":Landroid/content/res/Resources;
    const-string v8, "ic_launcher_settings"

    const-string v9, "mipmap"

    const-string v10, "com.android.settings"

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 55
    .local v3, "resId":I
    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resId":I
    .end local v5    # "settingsResources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    const v8, 0x7f030003

    invoke-virtual {p0, v8}, Lcom/sonymobile/settings/notifications/NotificationSettings;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lcom/sonyericsson/settings/SemcSettingsUtils;->getNotificationBlackList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/settings/notifications/NotificationSettings;->mNotificationBlackList:Ljava/util/Set;

    .line 68
    new-instance v4, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-direct {v4, p0, v8}, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;-><init>(Lcom/sonymobile/settings/notifications/NotificationSettings;Landroid/support/v4/app/FragmentManager;)V

    .line 71
    .local v4, "sectionsPagerAdapter":Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;
    const v8, 0x7f0b0002

    invoke-virtual {p0, v8}, Lcom/sonymobile/settings/notifications/NotificationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 72
    .local v7, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v7, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    const v8, 0x7f0b0003

    invoke-virtual {p0, v8}, Lcom/sonymobile/settings/notifications/NotificationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/PagerTabStrip;

    .line 74
    .local v6, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const/high16 v8, 0x7f070000

    invoke-static {p0, v8}, Lcom/sonyericsson/settings/SemcSettingsUtils;->getColorFromResource(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 77
    return-void

    .line 59
    .end local v4    # "sectionsPagerAdapter":Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;
    .end local v6    # "tabs":Landroid/support/v4/view/PagerTabStrip;
    .end local v7    # "viewPager":Landroid/support/v4/view/ViewPager;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "NotificationSettings"

    const-string v9, "Failed to load resource"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->finish()V

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 116
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 121
    return-void
.end method
