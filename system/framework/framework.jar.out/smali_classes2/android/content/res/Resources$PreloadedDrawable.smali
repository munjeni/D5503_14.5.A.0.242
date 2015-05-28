.class final Landroid/content/res/Resources$PreloadedDrawable;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadedDrawable"
.end annotation


# instance fields
.field public final cookieName:Ljava/lang/String;

.field public final cs:Landroid/graphics/drawable/Drawable$ConstantState;

.field public final data:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "data"    # I
    .param p2, "cookieName"    # Ljava/lang/String;
    .param p3, "cs"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 3089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3090
    iput p1, p0, Landroid/content/res/Resources$PreloadedDrawable;->data:I

    .line 3091
    iput-object p2, p0, Landroid/content/res/Resources$PreloadedDrawable;->cookieName:Ljava/lang/String;

    .line 3092
    iput-object p3, p0, Landroid/content/res/Resources$PreloadedDrawable;->cs:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3093
    return-void
.end method
