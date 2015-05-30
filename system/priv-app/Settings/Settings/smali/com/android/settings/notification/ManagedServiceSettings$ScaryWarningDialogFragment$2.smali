.class Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->this$0:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 117
    # getter for: Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/settings/notification/ManagedServiceSettings;->access$200()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    # invokes: Lcom/android/settings/notification/ManagedServiceSettings;->saveEnabledServices()V
    invoke-static {}, Lcom/android/settings/notification/ManagedServiceSettings;->access$300()V

    .line 119
    return-void
.end method
