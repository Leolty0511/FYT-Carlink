.class public Landroid/hardware/camera2/utils/ParamsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RATIONAL_DENOMINATOR:I = 0xf4240


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public static convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "source must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string v0, "destination must not be null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 21
    .line 22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 26
    .line 27
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    int-to-float p0, p0

    .line 30
    iput p0, p1, Landroid/graphics/RectF;->top:F

    .line 31
    .line 32
    return-void
.end method

.method public static createRational(F)Landroid/util/Rational;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 11
    .line 12
    cmpl-float v0, p0, v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object p0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 20
    .line 21
    cmpl-float v0, p0, v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object p0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    cmpl-float v0, p0, v0

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    sget-object p0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    const v0, 0xf4240

    .line 37
    .line 38
    .line 39
    :goto_0
    int-to-float v1, v0

    .line 40
    mul-float/2addr v1, p0

    .line 41
    const/high16 v2, -0x31000000

    .line 42
    .line 43
    cmpl-float v2, v1, v2

    .line 44
    .line 45
    if-lez v2, :cond_4

    .line 46
    .line 47
    const/high16 v2, 0x4f000000

    .line 48
    .line 49
    cmpg-float v2, v1, v2

    .line 50
    .line 51
    if-ltz v2, :cond_5

    .line 52
    .line 53
    :cond_4
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_6

    .line 55
    .line 56
    :cond_5
    float-to-int p0, v1

    .line 57
    new-instance v1, Landroid/util/Rational;

    .line 58
    .line 59
    invoke-direct {v1, p0, v0}, Landroid/util/Rational;-><init>(II)V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_6
    div-int/lit8 v0, v0, 0xa

    .line 64
    .line 65
    goto :goto_0
.end method

.method public static createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1

    const-string/jumbo v0, "rect must not be null"

    .line 3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static createRect(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 3

    const-string/jumbo v0, "size must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static createSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 2

    .line 1
    const-string/jumbo v0, "rect must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/util/Size;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "r must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "key must not be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v0, "defaultValue must not be null"

    .line 14
    .line 15
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_0
    return-object p0
.end method

.method public static mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    const-string/jumbo v0, "transform must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "rect must not be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
