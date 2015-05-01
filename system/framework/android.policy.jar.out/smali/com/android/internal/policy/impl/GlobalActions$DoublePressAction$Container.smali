.class Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# instance fields
.field private mIconResId:I

.field private mMessageResId:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;II)V
    .locals 0
    .param p2, "iconResId"    # I
    .param p3, "messageResId"    # I

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->this$0:Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mIconResId:I

    .line 935
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mMessageResId:I

    .line 936
    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    .prologue
    .line 929
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mIconResId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    .prologue
    .line 929
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mMessageResId:I

    return v0
.end method
