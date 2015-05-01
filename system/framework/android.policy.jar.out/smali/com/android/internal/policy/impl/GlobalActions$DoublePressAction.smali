.class abstract Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DoublePressAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;
    }
.end annotation


# static fields
.field private static final LEFT_ACTION:I = 0x0

.field private static final RIGHT_ACTION:I = 0x1


# instance fields
.field private mConItems:[Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;


# direct methods
.method protected constructor <init>(IIII)V
    .locals 3
    .param p1, "leftIconResId"    # I
    .param p2, "leftMsgResId"    # I
    .param p3, "rightResIconId"    # I
    .param p4, "rightMsgResId"    # I

    .prologue
    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->mConItems:[Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->mConItems:[Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;-><init>(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;II)V

    aput-object v2, v0, v1

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->mConItems:[Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;-><init>(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;II)V

    aput-object v2, v0, v1

    .line 944
    return-void
.end method

.method private assignControlsValues(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "item"    # Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "messageView"    # Landroid/widget/TextView;

    .prologue
    .line 1018
    # getter for: Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mIconResId:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->access$1600(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mIconResId:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->access$1600(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1020
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    .end local v0    # "img":Landroid/graphics/drawable/Drawable;
    :cond_0
    # getter for: Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mMessageResId:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->access$1700(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1023
    # getter for: Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->mMessageResId:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;->access$1700(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    :cond_1
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 962
    const v7, 0x1090054

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 964
    .local v6, "v":Landroid/view/View;
    const v7, 0x1020301

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 966
    .local v2, "iconView1":Landroid/widget/ImageView;
    const v7, 0x1020302

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 968
    .local v4, "messageView1":Landroid/widget/TextView;
    const v7, 0x1020300

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 971
    .local v0, "group1":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->mConItems:[Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    aget-object v7, v7, v8

    invoke-direct {p0, v7, p1, v2, v4}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->assignControlsValues(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 974
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 975
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    const v7, 0x1020304

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 980
    .local v3, "iconView2":Landroid/widget/ImageView;
    const v7, 0x1020305

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 982
    .local v5, "messageView2":Landroid/widget/TextView;
    const v7, 0x1020303

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 985
    .local v1, "group2":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->mConItems:[Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;

    aget-object v7, v7, v9

    invoke-direct {p0, v7, p1, v3, v5}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->assignControlsValues(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$Container;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 988
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;

    invoke-direct {v8, p0, v6}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1013
    return-object v6
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1033
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1035
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->onPressItemLeft()V

    goto :goto_0

    .line 1038
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$DoublePressAction;->onPressItemRight()V

    goto :goto_0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 951
    return-void
.end method

.method public abstract onPressItemLeft()V
.end method

.method public abstract onPressItemRight()V
.end method
