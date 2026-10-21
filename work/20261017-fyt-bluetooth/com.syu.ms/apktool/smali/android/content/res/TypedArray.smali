.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mData:[I

.field public mIndices:[I

.field public mLength:I

.field private final mResources:Landroid/content/res/Resources;

.field public mRsrcs:[I

.field public mValue:Landroid/util/TypedValue;

.field public mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 3
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 4
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 5
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 6
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    add-int/lit8 v2, p1, 0x1

    .line 4
    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    add-int/lit8 v2, p1, 0x2

    .line 5
    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    add-int/lit8 v2, p1, 0x3

    .line 6
    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    add-int/lit8 v2, p1, 0x4

    .line 7
    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    add-int/lit8 v2, p1, 0x5

    .line 8
    aget v0, v0, v2

    iput v0, p2, Landroid/util/TypedValue;->density:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    return p1
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x2

    .line 2
    aget v1, v0, v1

    if-gez v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 4
    aget p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v2, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    invoke-virtual {v2, v1, p1}, Landroid/content/res/AssetManager;->getPooledString(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 3
    aget p1, v0, p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2

    .line 4
    :cond_2
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    const-string v2, "Resources"

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting to boolean: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Lu/n;->b(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBoolean of bad type: 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getColor(II)I
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 4
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1

    :cond_2
    return p2

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert to color: type=0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 p1, p1, 0x6

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDimension(IF)F
    .locals 2

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/4 p2, 0x5

    if-ne v1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object p2, p2, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert to dimension: type=0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDimensionPixelOffset(II)I
    .locals 2

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/4 p2, 0x5

    if-ne v1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object p2, p2, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert to dimension: type=0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDimensionPixelSize(II)I
    .locals 2

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/4 p2, 0x5

    if-ne v1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object p2, p2, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert to dimension: type=0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 p1, p1, 0x6

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloat(IF)F
    .locals 4

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    :cond_1
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 4
    aget p1, v0, p1

    int-to-float p1, p1

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    const-string v2, "Resources"

    if-eqz p1, :cond_3

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converting to float: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFloat of bad type: 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getFraction(IIIF)F
    .locals 3

    const/4 v0, 0x6

    mul-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x0

    .line 2
    aget v2, v1, v2

    if-nez v2, :cond_0

    return p4

    :cond_0
    if-ne v2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t convert to fraction: type=0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIndex(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public getIndexCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    const-string v2, "Resources"

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting to int: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Lu/n;->c(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInt of bad type: 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getInteger(II)I
    .locals 2

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    const/16 p2, 0x10

    if-lt v1, p2, :cond_1

    const/16 p2, 0x1f

    if-gt v1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert to integer: type=0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLayoutDimension(II)I
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 6
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 7
    aget v1, v0, v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 8
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 9
    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object p2, p2, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 4
    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object p2, p2, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": You must supply a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    add-int/lit8 v2, p1, 0x4

    .line 3
    aget v0, v0, v2

    not-int p2, p2

    and-int/2addr p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 p2, 0x3

    if-ne v1, p2, :cond_2

    .line 4
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    const-string v2, "Resources"

    if-eqz p1, :cond_4

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting to string: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getString of bad type: 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x2

    .line 3
    aget v1, v0, v1

    if-gez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<internal>"

    :goto_0
    return-object v0
.end method

.method public getResourceId(II)I
    .locals 2

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v1, v0, v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x3

    .line 3
    aget p1, v0, p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 5
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    const-string v3, "Resources"

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Converting to string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString of bad type: 0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 2
    aget v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 5
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    const-string v3, "Resources"

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Converting to string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString of bad type: 0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 p1, p1, 0x6

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 0

    mul-int/lit8 p1, p1, 0x6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    return p1
.end method

.method public hasValue(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    const/4 v1, 0x0

    add-int/2addr p1, v1

    .line 2
    aget p1, v0, p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 p1, p1, 0x6

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public recycle()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v1, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v2, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 5
    iput-object p0, v1, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
