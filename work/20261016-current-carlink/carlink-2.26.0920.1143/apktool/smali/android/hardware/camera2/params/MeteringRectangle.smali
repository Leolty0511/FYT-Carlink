.class public final Landroid/hardware/camera2/params/MeteringRectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final METERING_WEIGHT_DONT_CARE:I = 0x0

.field public static final METERING_WEIGHT_MAX:I = 0x3e8

.field public static final METERING_WEIGHT_MIN:I


# instance fields
.field private final mHeight:I

.field private final mWeight:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "x must be nonnegative"

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    const-string/jumbo p1, "y must be nonnegative"

    .line 3
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    const-string/jumbo p1, "width must be nonnegative"

    .line 4
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    const-string/jumbo p1, "height must be nonnegative"

    .line 5
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const/16 p1, 0x3e8

    const-string/jumbo p2, "meteringWeight"

    const/4 p3, 0x0

    .line 6
    invoke-static {p5, p3, p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/util/Size;I)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "xy must not be null"

    .line 8
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dimensions must not be null"

    .line 9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v0, p1, Landroid/graphics/Point;->x:I

    const-string/jumbo v1, "x must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 11
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-string/jumbo v0, "y must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 12
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-string/jumbo v0, "width must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 13
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    const-string/jumbo p2, "height must be nonnegative"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string/jumbo p1, "meteringWeight must be nonnegative"

    .line 14
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rect must not be null"

    .line 16
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string/jumbo v1, "rect.left must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    const-string/jumbo v1, "rect.top must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string/jumbo v1, "rect.width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const-string/jumbo v0, "rect.height must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string/jumbo p1, "meteringWeight must be nonnegative"

    .line 21
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method


# virtual methods
.method public equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    iget p1, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    return v0
.end method

.method public getMeteringWeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getUpperLeftPoint()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 21
    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 26
    .line 27
    aput v2, v0, v1

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    const-string v1, "(x:%d, y:%d, w:%d, h:%d, wt:%d)"

    .line 50
    .line 51
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
