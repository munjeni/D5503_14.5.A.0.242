.class public Lcom/sonymobile/gahelper/GaHelper;
.super Ljava/lang/Object;
.source "GaHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GaHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static readAndSetGaEnabled(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    const/4 v0, 0x1

    .line 43
    .local v0, "defaultValueEnabled":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "somc.google_analytics_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    move v1, v2

    .line 46
    .local v1, "gaEnabled":Z
    :goto_0
    const-string v4, "GaHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "somc.google_analytics_enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonymobile/gahelper/GaHelperLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 51
    return-void

    .end local v1    # "gaEnabled":Z
    :cond_0
    move v1, v3

    .line 43
    goto :goto_0

    .restart local v1    # "gaEnabled":Z
    :cond_1
    move v2, v3

    .line 50
    goto :goto_1
.end method
