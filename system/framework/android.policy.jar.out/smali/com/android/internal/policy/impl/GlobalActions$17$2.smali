.class Lcom/android/internal/policy/impl/GlobalActions$17$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$17;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$17;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$17;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$17$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 308
    sput p2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    .line 309
    return-void
.end method
