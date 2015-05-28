.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
.super Landroid/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSE_MASK:I = 0x1

.field private static final REVERSE_SHIFT:I = 0x20

.field private static final SOMC_MASK:I = 0x1

.field private static final SOMC_SHIFT:I = 0x21


# instance fields
.field final mStateIds:Landroid/util/SparseIntArray;

.field final mTransitions:Landroid/util/LongSparseLongArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimatedStateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 549
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 553
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 558
    :goto_0
    return-void

    .line 555
    :cond_0
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 556
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    goto :goto_0
.end method

.method private static generateTransitionKey(II)J
    .locals 4
    .param p0, "fromId"    # I
    .param p1, "toId"    # I

    .prologue
    .line 625
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    .line 576
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 577
    .local v0, "index":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    return v0
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;ZZ)I
    .locals 12
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "anim"    # Landroid/graphics/drawable/Drawable;
    .param p4, "reversible"    # Z
    .param p5, "somcTransition"    # Z

    .prologue
    .line 562
    invoke-super {p0, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 563
    .local v4, "pos":I
    int-to-long v10, v4

    if-eqz p5, :cond_1

    const-wide v8, 0x200000000L

    :goto_0
    or-long v6, v10, v8

    .line 564
    .local v6, "transition":J
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 565
    .local v0, "keyFromTo":J
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 567
    if-eqz p4, :cond_0

    .line 568
    invoke-static {p2, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v2

    .line 569
    .local v2, "keyToFrom":J
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide v8, 0x100000000L

    or-long/2addr v8, v6

    invoke-virtual {v5, v2, v3, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 572
    .end local v2    # "keyToFrom":J
    :cond_0
    return v4

    .line 563
    .end local v0    # "keyFromTo":J
    .end local v6    # "transition":J
    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method getKeyframeIdAt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 591
    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method indexOfKeyframe([I)I
    .locals 2
    .param p1, "stateSet"    # [I

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    .line 583
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 587
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    goto :goto_0
.end method

.method indexOfTransition(II)I
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .prologue
    .line 595
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 596
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method isSomcTransition(II)Z
    .locals 8
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 610
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 611
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const/16 v4, 0x21

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isTransitionReversed(II)Z
    .locals 8
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 600
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 601
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isTransitionReversible(II)Z
    .locals 2
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .prologue
    .line 605
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v0

    .line 606
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 621
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    return-object v0
.end method
