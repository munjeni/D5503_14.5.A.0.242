.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 166
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevelUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$500(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
