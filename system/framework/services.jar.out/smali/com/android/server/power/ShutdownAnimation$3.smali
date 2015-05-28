.class Lcom/android/server/power/ShutdownAnimation$3;
.super Ljava/lang/Object;
.source "ShutdownAnimation.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownAnimation;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/power/ShutdownAnimation$3;->this$0:Lcom/android/server/power/ShutdownAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "frameworkErr"    # I
    .param p3, "implErr"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
