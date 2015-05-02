.class public Lcom/sonymobile/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# static fields
.field private static final ANALYTICS_BUILD_CUSTOM_DIM_IDX:I = 0x2

.field private static final ANALYTICS_MODEL_CUSTOM_DIM_IDX:I = 0x1

.field private static final ANALYTICS_SAMPLE_FREQUENCY_CUSTOM_DIM_IDX:I = 0x3

.field private static final ANALYTICS_TYPE_CUSTOM_DIM_IDX:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initEasyTracker()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/settings/SettingsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/settings/SettingsApplication;->initEasyTracker()V

    .line 38
    return-void
.end method
