.class Lcom/android/settings/dashboard/SearchResultsSummary$1;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, -0x1

    .line 217
    if-gez p3, :cond_0

    .line 301
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$400(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getCursorForPosition(I)Landroid/database/Cursor;

    move-result-object v12

    .line 223
    .local v12, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$400(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItemViewType(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 225
    const/4 v5, 0x6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "className":Ljava/lang/String;
    const/4 v5, 0x7

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "screenTitle":Ljava/lang/String;
    const/16 v5, 0x9

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "action":Ljava/lang/String;
    const/16 v5, 0xd

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 230
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 231
    .local v2, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->needToRevertToInitialFragment()V

    .line 233
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v4, "args":Landroid/os/Bundle;
    const-string v5, ":settings:fragment_args_key"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 300
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v8    # "screenTitle":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$500(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    goto :goto_0

    .line 241
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v8    # "screenTitle":Ljava/lang/String;
    .restart local v9    # "action":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    :cond_2
    const/16 v5, 0xa

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 243
    .local v20, "targetPackage":Ljava/lang/String;
    const/16 v5, 0xb

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 246
    .local v19, "targetClass":Ljava/lang/String;
    const-string v5, "@="

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    const-string v5, "@="

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 249
    .local v10, "array":[Ljava/lang/String;
    array-length v5, v10

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 250
    new-instance v16, Landroid/content/Intent;

    const/4 v5, 0x0

    aget-object v5, v10, v5

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v16, "intent":Landroid/content/Intent;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v14, "fragmentBundle":Landroid/os/Bundle;
    const-string v5, "extra_fragment_preference_xml"

    const/4 v6, 0x1

    aget-object v6, v10, v6

    invoke-virtual {v14, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    array-length v5, v10

    const/4 v6, 0x2

    if-le v5, v6, :cond_3

    .line 255
    const-string v5, "extra_fragment_help_resource"

    const/4 v6, 0x2

    aget-object v6, v10, v6

    invoke-virtual {v14, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_3
    const-class v5, Lcom/android/settings/SubSettings;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    const-string v5, ":settings:fragment_args_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v5, ":settings:show_fragment_title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v5, ":settings:show_fragment"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v5, ":settings:show_fragment_args"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 266
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 269
    .end local v10    # "array":[Ljava/lang/String;
    .end local v14    # "fragmentBundle":Landroid/os/Bundle;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v16    # "intent":Landroid/content/Intent;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 272
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v11, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    .end local v11    # "component":Landroid/content/ComponentName;
    :cond_5
    const-string v5, ":settings:fragment_args_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 281
    .end local v2    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v3    # "className":Ljava/lang/String;
    .end local v8    # "screenTitle":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "targetClass":Ljava/lang/String;
    .end local v20    # "targetPackage":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 282
    .restart local v2    # "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->needToRevertToInitialFragment()V

    .line 284
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 285
    .local v15, "header":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 286
    .local v21, "title":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 288
    .local v18, "summary":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 290
    .local v22, "uri":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    .line 293
    .restart local v16    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 294
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 295
    .local v13, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v13}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1
.end method
