.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;,
        Landroid/content/res/GradientColor$GradientTileMode;
    }
.end annotation


# static fields
.field private static final DBG_GRADIENT:Z = false

.field private static final TAG:Ljava/lang/String; = "GradientColor"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private mCenterColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mChangingConfigurations:I

.field private mDefaultColor:I

.field private mEndColor:I

.field private mEndX:F

.field private mEndY:F

.field private mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private mGradientRadius:F

.field private mGradientType:I

.field private mHasCenterColor:Z

.field private mItemColors:[I

.field private mItemOffsets:[F

.field private mItemsThemeAttrs:[[I

.field private mShader:Landroid/graphics/Shader;

.field private mStartColor:I

.field private mStartX:F

.field private mStartY:F

.field private mThemeAttrs:[I

.field private mTileMode:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 5
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 6
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 7
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 8
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 9
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 10
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 11
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 12
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 13
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 14
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 15
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    return-void
.end method

.method private constructor <init>(Landroid/content/res/GradientColor;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 20
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 21
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 22
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 23
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 24
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 25
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 26
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 27
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 28
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 29
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 30
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    if-eqz p1, :cond_3

    .line 31
    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 32
    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 33
    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 34
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 35
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 36
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 37
    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 38
    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 39
    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 40
    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 41
    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 42
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 43
    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 44
    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 45
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 46
    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 47
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 49
    :cond_0
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 51
    :cond_1
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 53
    :cond_2
    iget-object p1, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1}, [[I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    :cond_3
    return-void
.end method

.method public static synthetic access$000(Landroid/content/res/GradientColor;)I
    .locals 0

    iget p0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    return p0
.end method

.method private applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_3

    .line 11
    .line 12
    aget-object v5, v0, v3

    .line 13
    .line 14
    if-eqz v5, :cond_2

    .line 15
    .line 16
    sget-object v6, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    .line 17
    .line 18
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    aget-object v6, v0, v3

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    aput-object v6, v0, v3

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    move v4, v7

    .line 34
    :cond_1
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 35
    .line 36
    aget v8, v6, v3

    .line 37
    .line 38
    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    aput v8, v6, v3

    .line 43
    .line 44
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 45
    .line 46
    aget v8, v6, v3

    .line 47
    .line 48
    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    aput v7, v6, v3

    .line 53
    .line 54
    iget v6, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    or-int/2addr v6, v7

    .line 61
    iput v6, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-nez v4, :cond_4

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 73
    .line 74
    :cond_4
    return-void
.end method

.method private applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 2
    .line 3
    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    or-int/2addr v0, v1

    .line 27
    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "gradient"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/res/GradientColor;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/res/GradientColor;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ": invalid gradient color tag "

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->GradientColor:[I

    .line 2
    .line 3
    invoke-static {p1, p4, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    or-int/2addr v1, v2

    .line 17
    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    const/16 v3, 0x14

    .line 10
    .line 11
    new-array v4, v3, [F

    .line 12
    .line 13
    new-array v5, v3, [I

    .line 14
    .line 15
    new-array v3, v3, [[I

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    move v7, v6

    .line 19
    move v8, v7

    .line 20
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    if-eq v9, v2, :cond_6

    .line 25
    .line 26
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    if-ge v10, v1, :cond_0

    .line 31
    .line 32
    const/4 v11, 0x3

    .line 33
    if-eq v9, v11, :cond_6

    .line 34
    .line 35
    :cond_0
    const/4 v11, 0x2

    .line 36
    if-eq v9, v11, :cond_1

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    if-gt v10, v1, :cond_5

    .line 41
    .line 42
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string/jumbo v10, "item"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object v9, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    .line 57
    .line 58
    move-object/from16 v10, p1

    .line 59
    .line 60
    move-object/from16 v11, p3

    .line 61
    .line 62
    move-object/from16 v12, p4

    .line 63
    .line 64
    invoke-static {v10, v12, v11, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    if-eqz v13, :cond_4

    .line 77
    .line 78
    if-eqz v14, :cond_4

    .line 79
    .line 80
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    invoke-virtual {v9, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    const/4 v15, 0x0

    .line 89
    invoke-virtual {v9, v2, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    iget v2, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    or-int v2, v2, v16

    .line 100
    .line 101
    iput v2, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 102
    .line 103
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .line 105
    .line 106
    if-eqz v13, :cond_3

    .line 107
    .line 108
    const/4 v8, 0x1

    .line 109
    :cond_3
    invoke-static {v5, v7, v14}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v4, v7, v15}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v3, v7, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object v3, v2

    .line 122
    check-cast v3, [[I

    .line 123
    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v3, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_5
    :goto_1
    move-object/from16 v10, p1

    .line 155
    .line 156
    move-object/from16 v11, p3

    .line 157
    .line 158
    move-object/from16 v12, p4

    .line 159
    .line 160
    :goto_2
    const/4 v2, 0x1

    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    if-lez v7, :cond_8

    .line 164
    .line 165
    if-eqz v8, :cond_7

    .line 166
    .line 167
    new-array v1, v7, [[I

    .line 168
    .line 169
    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 170
    .line 171
    invoke-static {v3, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const/4 v1, 0x0

    .line 176
    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 177
    .line 178
    :goto_3
    new-array v1, v7, [I

    .line 179
    .line 180
    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 181
    .line 182
    new-array v2, v7, [F

    .line 183
    .line 184
    iput-object v2, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 185
    .line 186
    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 190
    .line 191
    invoke-static {v4, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 192
    .line 193
    .line 194
    :cond_8
    return-void
.end method

.method private onColorsChange()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    new-array v4, v0, [I

    .line 10
    .line 11
    new-array v5, v0, [F

    .line 12
    .line 13
    move v6, v3

    .line 14
    :goto_0
    if-ge v6, v0, :cond_2

    .line 15
    .line 16
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 17
    .line 18
    aget v7, v7, v6

    .line 19
    .line 20
    aput v7, v4, v6

    .line 21
    .line 22
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 23
    .line 24
    aget v7, v7, v6

    .line 25
    .line 26
    aput v7, v5, v6

    .line 27
    .line 28
    add-int/lit8 v6, v6, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    new-array v4, v0, [I

    .line 37
    .line 38
    iget v5, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 39
    .line 40
    aput v5, v4, v3

    .line 41
    .line 42
    iget v5, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 43
    .line 44
    aput v5, v4, v2

    .line 45
    .line 46
    iget v5, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 47
    .line 48
    aput v5, v4, v1

    .line 49
    .line 50
    new-array v5, v0, [F

    .line 51
    .line 52
    fill-array-data v5, :array_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-array v4, v1, [I

    .line 57
    .line 58
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 59
    .line 60
    aput v0, v4, v3

    .line 61
    .line 62
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 63
    .line 64
    aput v0, v4, v2

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    :cond_2
    :goto_1
    array-length v0, v4

    .line 68
    if-ge v0, v1, :cond_3

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "<gradient> tag requires 2 color values specified!"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    array-length v1, v4

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "GradientColor"

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_3
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 103
    .line 104
    iget v7, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 105
    .line 106
    iget v8, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 107
    .line 108
    iget v9, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 109
    .line 110
    iget v10, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 111
    .line 112
    iget v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 113
    .line 114
    invoke-static {v1}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    move-object v6, v0

    .line 119
    move-object v11, v4

    .line 120
    move-object v12, v5

    .line 121
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    if-ne v0, v2, :cond_5

    .line 128
    .line 129
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 130
    .line 131
    iget v7, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 132
    .line 133
    iget v8, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 134
    .line 135
    iget v9, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 136
    .line 137
    iget v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 138
    .line 139
    invoke-static {v1}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    move-object v6, v0

    .line 144
    move-object v10, v4

    .line 145
    move-object v11, v5

    .line 146
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    new-instance v0, Landroid/graphics/SweepGradient;

    .line 153
    .line 154
    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 155
    .line 156
    iget v2, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 157
    .line 158
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 162
    .line 163
    :goto_2
    aget v0, v4, v3

    .line 164
    .line 165
    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    .line 20
    return-object p0
.end method

.method private updateRootElementState(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    iget v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    iget v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    iget v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 36
    .line 37
    const/16 v0, 0xb

    .line 38
    .line 39
    iget v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 55
    .line 56
    const/4 v0, 0x4

    .line 57
    iget v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    iget v1, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iget v1, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 82
    .line 83
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    or-int/2addr v0, v2

    .line 91
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 92
    .line 93
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    iget v1, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 109
    .line 110
    const/4 v0, 0x6

    .line 111
    iget v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 118
    .line 119
    const/4 v0, 0x5

    .line 120
    iget v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput p1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 127
    .line 128
    return-void
.end method

.method private validateXmlContent()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    if-gtz v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 15
    .line 16
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    iget v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p1

    return-object p1
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    .line 4
    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
