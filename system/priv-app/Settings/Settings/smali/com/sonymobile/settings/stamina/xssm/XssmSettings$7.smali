.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->createAndShowHintDialog()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$600(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method
