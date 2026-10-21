.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private final mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 5
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 6
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public getStateCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getStateDrawableIndex([I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result p1

    return p1
.end method

.method public getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    sget-object v3, Li/a;->StateListDrawable:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v5, p2

    .line 2
    invoke-super {v0, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 3
    iget-object v6, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setVariablePadding(Z)V

    .line 4
    iget-object v6, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/4 v9, 0x3

    invoke-virtual {v3, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setConstantSize(Z)V

    .line 5
    iget-object v6, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/4 v10, 0x4

    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setEnterFadeDuration(I)V

    .line 6
    iget-object v6, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/4 v11, 0x5

    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setExitFadeDuration(I)V

    .line 7
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/DrawableContainer;->setDither(Z)V

    const/4 v6, 0x6

    .line 8
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/DrawableContainer;->setAutoMirrored(Z)V

    .line 9
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    add-int/2addr v3, v4

    .line 11
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ge v11, v3, :cond_1

    if-eq v6, v9, :cond_b

    :cond_1
    if-eq v6, v7, :cond_2

    goto :goto_0

    :cond_2
    if-gt v11, v3, :cond_0

    .line 12
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "item"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    .line 14
    new-array v11, v6, [I

    move v12, v8

    move v13, v12

    move v14, v13

    :goto_1
    if-ge v12, v6, :cond_7

    .line 15
    invoke-interface {v2, v12}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    if-nez v15, :cond_4

    goto :goto_4

    :cond_4
    const v4, 0x1010199

    if-ne v15, v4, :cond_5

    .line 16
    invoke-interface {v2, v12, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v13

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v14, 0x1

    .line 17
    invoke-interface {v2, v12, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_2

    :cond_6
    neg-int v15, v15

    :goto_2
    aput v15, v11, v14

    move v14, v4

    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .line 18
    :cond_7
    :goto_4
    invoke-static {v11, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v4

    if-eqz v13, :cond_8

    .line 19
    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_6

    .line 20
    :cond_8
    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v10, :cond_9

    goto :goto_5

    :cond_9
    if-ne v6, v7, :cond_a

    .line 21
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 22
    :goto_6
    iget-object v11, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v11, v4, v6}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    const/4 v4, 0x1

    goto :goto_0

    .line 23
    :cond_a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "child tag defining a drawable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 3
    array-length v2, v1

    .line 4
    new-array v3, v2, [[I

    iput-object v3, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 5
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v4, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aput-object v3, v4, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    :cond_2
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-static {v0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(I)V

    return-void
.end method
