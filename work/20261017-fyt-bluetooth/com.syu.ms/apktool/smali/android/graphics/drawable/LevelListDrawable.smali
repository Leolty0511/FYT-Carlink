.class public Landroid/graphics/drawable/LevelListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    }
.end annotation


# instance fields
.field private final mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V

    .line 5
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    .line 6
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addLevel(IILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    :cond_0
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_8

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-gt v3, v0, :cond_0

    .line 4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v2, Li/a;->LevelListDrawableItem:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 7
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 8
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz v6, :cond_7

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_6

    .line 12
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 13
    :goto_2
    iget-object v3, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v3, v5, v6, v2}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 14
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "child tag defining a drawable"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <item> tag requires a \'maxLevel\' attribute"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onLevelChange(I)Z

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-static {v0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->access$000(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v0, v1}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->access$002(Landroid/graphics/drawable/LevelListDrawable$LevelListState;[I)[I

    .line 3
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-static {v0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->access$100(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v0, v1}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->access$102(Landroid/graphics/drawable/LevelListDrawable$LevelListState;[I)[I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable;->mLevelListState:Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->indexOfLevel(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onLevelChange(I)Z

    move-result p1

    return p1
.end method
