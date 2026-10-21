.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final COMPLEX_RADIX_0p23:I = 0x3

.field public static final COMPLEX_RADIX_16p7:I = 0x1

.field public static final COMPLEX_RADIX_23p0:I = 0x0

.field public static final COMPLEX_RADIX_8p15:I = 0x2

.field public static final COMPLEX_RADIX_MASK:I = 0x3

.field public static final COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final COMPLEX_UNIT_DIP:I = 0x1

.field public static final COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final COMPLEX_UNIT_IN:I = 0x4

.field public static final COMPLEX_UNIT_MASK:I = 0xf

.field public static final COMPLEX_UNIT_MM:I = 0x5

.field public static final COMPLEX_UNIT_PT:I = 0x3

.field public static final COMPLEX_UNIT_PX:I = 0x0

.field public static final COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final COMPLEX_UNIT_SP:I = 0x2

.field public static final DATA_NULL_EMPTY:I = 0x1

.field public static final DATA_NULL_UNDEFINED:I = 0x0

.field public static final DENSITY_DEFAULT:I = 0x0

.field public static final DENSITY_NONE:I = 0xffff

.field private static final DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final MANTISSA_MULT:F = 0.00390625f

.field private static final RADIX_MULTS:[F

.field public static final TYPE_ATTRIBUTE:I = 0x2

.field public static final TYPE_DIMENSION:I = 0x5

.field public static final TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final TYPE_FIRST_INT:I = 0x10

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_FRACTION:I = 0x6

.field public static final TYPE_INT_BOOLEAN:I = 0x12

.field public static final TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final TYPE_INT_DEC:I = 0x10

.field public static final TYPE_INT_HEX:I = 0x11

.field public static final TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final TYPE_LAST_INT:I = 0x1f

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_REFERENCE:I = 0x1

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field public assetCookie:I

.field public changingConfigurations:I

.field public data:I

.field public density:I

.field public resourceId:I

.field public string:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    .line 8
    .line 9
    const-string v1, "px"

    .line 10
    .line 11
    const-string v2, "dip"

    .line 12
    .line 13
    const-string/jumbo v3, "sp"

    .line 14
    .line 15
    .line 16
    const-string v4, "pt"

    .line 17
    .line 18
    const-string v5, "in"

    .line 19
    .line 20
    const-string v6, "mm"

    .line 21
    .line 22
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "%"

    .line 29
    .line 30
    const-string v1, "%p"

    .line 31
    .line 32
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 6
    .line 7
    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 21
    .line 22
    mul-float/2addr p1, p0

    .line 23
    const p0, 0x3d214285

    .line 24
    .line 25
    .line 26
    :goto_0
    mul-float/2addr p1, p0

    .line 27
    return p1

    .line 28
    :cond_1
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 32
    .line 33
    mul-float/2addr p1, p0

    .line 34
    const p0, 0x3c638e39

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_5
    return p1
.end method

.method public static final coerceToString(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/4 v1, 0x6

    if-eq p0, v1, :cond_5

    const/16 v1, 0x11

    if-eq p0, v1, :cond_4

    const/16 v1, 0x12

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1c

    const/16 v2, 0x1f

    if-lt p0, v1, :cond_0

    if-gt p0, v2, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1, p0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x10

    if-lt p0, v1, :cond_1

    if-gt p0, v2, :cond_1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_3
    const-string p0, "false"

    :goto_0
    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0xf

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0xf

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "?"

    .line 12
    invoke-static {p0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "@"

    .line 13
    invoke-static {p0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0
.end method

.method public static complexToDimension(ILandroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x0

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x0

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    float-to-int p0, p0

    .line 14
    return p0
.end method

.method public static complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    shr-int/2addr p0, v1

    .line 7
    and-int/lit8 p0, p0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, 0x0

    .line 14
    cmpl-float v2, p0, p1

    .line 15
    .line 16
    const/high16 v3, 0x3f000000    # 0.5f

    .line 17
    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    add-float/2addr p0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sub-float/2addr p0, v3

    .line 23
    :goto_0
    float-to-int p0, p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    cmpl-float p0, v0, p1

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    if-lez p0, :cond_3

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_3
    const/4 p0, -0x1

    .line 37
    return p0
.end method

.method public static complexToFloat(I)F
    .locals 2

    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3

    aget p0, v1, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static complexToFraction(IFF)F
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x0

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    mul-float/2addr p0, p2

    .line 17
    return p0

    .line 18
    :cond_1
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    mul-float/2addr p0, p1

    .line 23
    return p0
.end method


# virtual methods
.method public final coerceToString()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    return-object v0

    .line 3
    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComplexUnit()I
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getDimension(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public final getFloat()F
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFraction(FF)F
    .locals 1

    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p1

    return p1
.end method

.method public setTo(Landroid/util/TypedValue;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 2
    .line 3
    iput v0, p0, Landroid/util/TypedValue;->type:I

    .line 4
    .line 5
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iget v0, p1, Landroid/util/TypedValue;->data:I

    .line 10
    .line 11
    iput v0, p0, Landroid/util/TypedValue;->data:I

    .line 12
    .line 13
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    .line 14
    .line 15
    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 16
    .line 17
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 18
    .line 19
    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 20
    .line 21
    iget p1, p1, Landroid/util/TypedValue;->density:I

    .line 22
    .line 23
    iput p1, p0, Landroid/util/TypedValue;->density:I

    .line 24
    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TypedValue{t=0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/util/TypedValue;->type:I

    .line 9
    .line 10
    const-string v2, "/d=0x"

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroid/util/TypedValue;->data:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Landroid/util/TypedValue;->type:I

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    const-string v1, " \""

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "<null>"

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "\""

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v1, " a="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    const-string v1, " r=0x"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_3
    const-string/jumbo v1, "}"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method
