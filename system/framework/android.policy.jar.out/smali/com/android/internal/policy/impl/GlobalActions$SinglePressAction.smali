.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# static fields
.field protected static rebootMode:I

.field protected static final rebootOptions:[Ljava/lang/String;


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .local v0, "as":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fastboot"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flashmode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enginering"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 855
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 856
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 857
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 858
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 862
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 863
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 864
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 865
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 870
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 872
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 894
    const v5, 0x1090055

    const/4 v6, 0x0

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 896
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 897
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 899
    .local v1, "messageView":Landroid/widget/TextView;
    const v5, 0x1020306

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 900
    .local v3, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, "status":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 902
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 907
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 912
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 913
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :goto_2
    return-object v4

    .line 904
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 909
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_0

    .line 910
    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 915
    :cond_3
    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 888
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method