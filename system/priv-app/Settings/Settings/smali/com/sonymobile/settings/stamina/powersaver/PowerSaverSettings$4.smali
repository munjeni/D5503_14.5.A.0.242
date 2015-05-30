.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;
.super Ljava/lang/Object;
.source "PowerSaverSettings.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevelUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # invokes: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setActivationLevelText(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$700(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Ljava/lang/String;)V

    .line 245
    return-void
.end method
