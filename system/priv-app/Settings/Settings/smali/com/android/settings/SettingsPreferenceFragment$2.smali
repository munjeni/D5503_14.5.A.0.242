.class Lcom/android/settings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    # getter for: Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/SettingsPreferenceFragment;->access$000(Lcom/android/settings/SettingsPreferenceFragment;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->access$100(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    .line 99
    return-void
.end method
