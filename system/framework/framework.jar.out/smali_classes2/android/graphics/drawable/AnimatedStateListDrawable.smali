.class public Landroid/graphics/drawable/AnimatedStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedStateListDrawable$1;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final INDEX_SOMC_EXTENDED_LAF:I = 0x0

.field private static final LOGTAG:Ljava/lang/String;

.field private static final SOMC_ATTRS:[I

.field private static final SOMC_ATTR_EXTENDED_LAF:I = 0x2010006


# instance fields
.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

.field private mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-class v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    .line 714
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2010006

    aput v2, v0, v1

    sput-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->SOMC_ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, -0x1

    .line 636
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 79
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 82
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 638
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 639
    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;)V

    .line 640
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 641
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    .line 642
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimatedStateListDrawable$1;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 16
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v3, 0x0

    .line 485
    .local v3, "drawableRes":I
    const/4 v8, 0x0

    .line 487
    .local v8, "keyframeId":I
    const/4 v6, 0x0

    .line 488
    .local v6, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 489
    .local v9, "numAttrs":I
    new-array v11, v9, [I

    .line 490
    .local v11, "states":[I
    const/4 v5, 0x0

    .local v5, "i":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 491
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v10

    .line 492
    .local v10, "stateResId":I
    sparse-switch v10, :sswitch_data_0

    .line 502
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v13}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v4

    .line 503
    .local v4, "hasState":Z
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    if-eqz v4, :cond_0

    .end local v10    # "stateResId":I
    :goto_1
    aput v10, v11, v7

    .line 490
    .end local v4    # "hasState":Z
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    goto :goto_0

    .restart local v10    # "stateResId":I
    :sswitch_0
    move v6, v7

    .line 494
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_2

    .line 496
    .end local v6    # "j":I
    .restart local v7    # "j":I
    :sswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v13}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    move v6, v7

    .line 497
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_2

    .line 499
    .end local v6    # "j":I
    .restart local v7    # "j":I
    :sswitch_2
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v13}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    move v6, v7

    .line 500
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_2

    .line 503
    .restart local v4    # "hasState":Z
    :cond_0
    neg-int v10, v10

    goto :goto_1

    .line 506
    .end local v4    # "hasState":Z
    .end local v6    # "j":I
    .end local v10    # "stateResId":I
    .restart local v7    # "j":I
    :cond_1
    invoke-static {v11, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v11

    .line 509
    if-eqz v3, :cond_2

    .line 510
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 524
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v13, v11, v2, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v13

    return v13

    .line 513
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x4

    if-eq v12, v13, :cond_2

    .line 515
    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    .line 516
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "child tag defining a drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 521
    :cond_3
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 492
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Z)I
    .locals 13
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "somcTransition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v7, 0x0

    .line 434
    .local v7, "drawableRes":I
    const/4 v2, 0x0

    .line 435
    .local v2, "fromId":I
    const/4 v3, 0x0

    .line 436
    .local v3, "toId":I
    const/4 v5, 0x0

    .line 438
    .local v5, "reversible":Z
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 439
    .local v9, "numAttrs":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 440
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v10

    .line 441
    .local v10, "stateResId":I
    sparse-switch v10, :sswitch_data_0

    .line 439
    :goto_1
    :sswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 445
    :sswitch_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v2

    .line 446
    goto :goto_1

    .line 448
    :sswitch_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    .line 449
    goto :goto_1

    .line 451
    :sswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    .line 452
    goto :goto_1

    .line 454
    :sswitch_4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    .line 455
    goto :goto_1

    .line 457
    :sswitch_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result p5

    goto :goto_1

    .line 463
    .end local v10    # "stateResId":I
    :cond_0
    if-eqz v7, :cond_1

    .line 464
    move-object/from16 v0, p4

    invoke-virtual {p1, v7, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 478
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;ZZ)I

    move-result v1

    return v1

    .line 467
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v1, 0x4

    if-eq v11, v1, :cond_1

    .line 469
    const/4 v1, 0x2

    if-eq v11, v1, :cond_2

    .line 470
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "child tag defining a drawable"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_2
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1010199 -> :sswitch_3
        0x1010449 -> :sswitch_2
        0x101044a -> :sswitch_1
        0x101044b -> :sswitch_4
        0x2010006 -> :sswitch_5
    .end sparse-switch
.end method

.method private selectTransition(I)Z
    .locals 14
    .param p1, "toIndex"    # I

    .prologue
    const/4 v13, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 172
    .local v0, "currentTransition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    if-eqz v0, :cond_3

    .line 173
    iget v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    if-ne p1, v12, :cond_0

    .line 241
    :goto_0
    return v10

    .line 176
    :cond_0
    iget v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    if-ne p1, v12, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->canReverse()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->reverse()V

    .line 179
    iget v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    iput v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 180
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    goto :goto_0

    .line 185
    :cond_1
    iget v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 188
    .local v3, "fromIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    .line 194
    :goto_1
    const/4 v12, 0x0

    iput-object v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 195
    iput v13, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 196
    iput v13, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 198
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 199
    .local v6, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v2

    .line 200
    .local v2, "fromId":I
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v7

    .line 201
    .local v7, "toId":I
    if-eqz v7, :cond_2

    if-nez v2, :cond_4

    :cond_2
    move v10, v11

    .line 203
    goto :goto_0

    .line 190
    .end local v2    # "fromId":I
    .end local v3    # "fromIndex":I
    .end local v6    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .end local v7    # "toId":I
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    .restart local v3    # "fromIndex":I
    goto :goto_1

    .line 206
    .restart local v2    # "fromId":I
    .restart local v6    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .restart local v7    # "toId":I
    :cond_4
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v9

    .line 207
    .local v9, "transitionIndex":I
    if-gez v9, :cond_5

    move v10, v11

    .line 209
    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {p0, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 217
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v12, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v12, :cond_7

    .line 218
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v4

    .line 219
    .local v4, "reversed":Z
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isSomcTransition(II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversible(II)Z

    move-result v5

    .line 221
    .local v5, "reversible":Z
    :goto_2
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 236
    .end local v4    # "reversed":Z
    .end local v5    # "reversible":Z
    .local v8, "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :goto_3
    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    .line 238
    iput-object v8, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 239
    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 240
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    goto :goto_0

    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "reversed":Z
    :cond_6
    move v5, v10

    .line 219
    goto :goto_2

    .line 223
    .end local v4    # "reversed":Z
    :cond_7
    instance-of v12, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v12, :cond_9

    .line 224
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v4

    .line 225
    .restart local v4    # "reversed":Z
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isSomcTransition(II)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversible(II)Z

    move-result v5

    .line 227
    .restart local v5    # "reversible":Z
    :goto_4
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V

    .line 229
    .restart local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_3

    .end local v5    # "reversible":Z
    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    move v5, v10

    .line 225
    goto :goto_4

    .line 229
    .end local v4    # "reversed":Z
    :cond_9
    instance-of v12, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v12, :cond_a

    .line 230
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    .restart local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_3

    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_a
    move v10, v11

    .line 233
    goto/16 :goto_0
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 120
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p4, "reversible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-nez p3, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transition drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;ZZ)I

    .line 137
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 14
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    sget-object v2, Lcom/android/internal/R$styleable;->AnimatedStateListDrawable:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 384
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-super {p0, p1, v0, v8, v2}, Landroid/graphics/drawable/StateListDrawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 386
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v12

    .line 387
    .local v12, "stateListState":Landroid/graphics/drawable/StateListDrawable$StateListState;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    .line 389
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    .line 391
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setEnterFadeDuration(I)V

    .line 393
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setExitFadeDuration(I)V

    .line 396
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setDither(Z)V

    .line 397
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAutoMirrored(Z)V

    .line 399
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    sget-object v2, Landroid/graphics/drawable/AnimatedStateListDrawable;->SOMC_ATTRS:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 402
    .local v11, "somc":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 403
    .local v7, "somcTransition":Z
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 407
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v10, v2, 0x1

    .line 410
    .local v10, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .local v9, "depth":I
    if-ge v9, v10, :cond_1

    const/4 v2, 0x3

    if-eq v13, v2, :cond_3

    .line 412
    :cond_1
    const/4 v2, 0x2

    if-ne v13, v2, :cond_0

    .line 416
    if-gt v9, v10, :cond_0

    .line 420
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    invoke-direct/range {p0 .. p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 422
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 423
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Z)I

    goto :goto_0

    .line 427
    .end local v9    # "depth":I
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 428
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 365
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 371
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    .line 372
    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 373
    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 375
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 529
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 530
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 531
    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;)V

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    .line 535
    .end local v0    # "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v1

    .line 147
    .local v1, "keyframeIndex":I
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 166
    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v2

    .line 153
    .restart local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 157
    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectTransition(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v2

    goto :goto_0
.end method

.method setConstantState(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 632
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 633
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 94
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 95
    :cond_0
    if-eqz p1, :cond_2

    .line 96
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method
