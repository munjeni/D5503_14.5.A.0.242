.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;
.super Landroid/os/AsyncTask;
.source "PackageDisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/Vector",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;",
        "Ljava/util/Vector",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 11
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 58
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 60
    .local v3, "tmpLaunchableSortedUids":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 64
    .local v4, "tmpOthersSortedUids":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    const-string v9, "uid"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 65
    .local v6, "uidIndex":I
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    const-string v9, "package_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "packageNameIndex":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 68
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 69
    .local v5, "uid":I
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mInternalWhitelist:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x3e8

    if-eq v5, v8, :cond_0

    .line 73
    :try_start_1
    new-instance v7, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 75
    .local v7, "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {v7}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 76
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v8, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->isLaunchable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    invoke-virtual {v3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v7    # "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 79
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageNameIndex":I
    .end local v5    # "uid":I
    .end local v6    # "uidIndex":I
    .end local v7    # "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v2    # "packageNameIndex":I
    .restart local v6    # "uidIndex":I
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 94
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    if-le v8, v10, :cond_3

    .line 95
    # invokes: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->sort(Ljava/util/Vector;)V
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$100(Ljava/util/Vector;)V

    .line 97
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    if-le v8, v10, :cond_4

    .line 98
    # invokes: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->sort(Ljava/util/Vector;)V
    invoke-static {v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$100(Ljava/util/Vector;)V

    .line 101
    :cond_4
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected isLaunchable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "sortedUids":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Vector<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;Ljava/util/Vector<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;>;"
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    # setter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedLaunchablePackages:Ljava/util/Vector;
    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$202(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/Vector;)Ljava/util/Vector;

    .line 109
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    # setter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedOthersPackages:Ljava/util/Vector;
    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$302(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/Vector;)Ljava/util/Vector;

    .line 110
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$402(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Z)Z

    .line 113
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mExecuteWhenLoaded:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$500(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mExecuteWhenLoaded:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->access$500(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
