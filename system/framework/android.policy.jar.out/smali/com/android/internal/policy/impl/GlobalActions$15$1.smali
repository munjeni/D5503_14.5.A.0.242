.class Lcom/android/internal/policy/impl/GlobalActions$15$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$15;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$15;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$15;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$15$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$15;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2000(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1319
    return-void
.end method
