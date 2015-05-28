.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriorityWeightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 1

    .prologue
    .line 947
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPriorityWeightMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 947
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method

.method private loadPriorityWeights()V
    .locals 11

    .prologue
    .line 956
    iget-object v9, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPriorityWeightMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 957
    iget-object v9, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 964
    .local v7, "priorityWeights":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 965
    .local v2, "entry":Ljava/lang/String;
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 966
    .local v5, "n":I
    if-ltz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_1

    .line 967
    :cond_0
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to load weight prioritization: Malformed weight entry"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 970
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 972
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    :try_start_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    .line 973
    .local v8, "weight":Ljava/lang/Float;
    iget-object v9, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPriorityWeightMap:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 974
    .end local v8    # "weight":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 975
    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to load weight prioritization: Bad weight"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 978
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "entry":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 982
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v4, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 984
    .local v4, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 985
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel$DefaultSorter;->loadPriorityWeights()V

    .line 987
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 988
    .local v1, "activityCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 989
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 990
    .local v0, "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v10, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 991
    .local v2, "activityPackage":Ljava/lang/String;
    iget-object v10, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPriorityWeightMap:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 992
    .local v5, "extraWeight":Ljava/lang/Float;
    if-eqz v5, :cond_0

    .line 993
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iput v10, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 997
    :goto_1
    new-instance v3, Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 995
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    goto :goto_1

    .line 1003
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "activityPackage":Ljava/lang/String;
    .end local v5    # "extraWeight":Ljava/lang/Float;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .line 1004
    .local v8, "lastShareIndex":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1005
    .local v9, "nextRecordWeight":F
    move v7, v8

    :goto_2
    if-ltz v7, :cond_3

    .line 1006
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1007
    .local v6, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v3, v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1008
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1009
    .restart local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_2

    .line 1010
    iget v10, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v11, v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    iput v10, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1011
    const v10, 0x3f733333    # 0.95f

    mul-float/2addr v9, v10

    .line 1005
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1015
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1022
    return-void
.end method
