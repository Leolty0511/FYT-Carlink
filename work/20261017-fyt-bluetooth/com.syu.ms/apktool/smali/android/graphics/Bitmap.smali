.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I = -0x1

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field public mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private final mIsMutable:Z

.field private mIsPremultiplied:Z

.field private mLayoutBounds:[I

.field public final mNativeBitmap:I

.field private mNinePatchChunk:[B

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BIIIZZ[B[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    if-eqz p1, :cond_1

    .line 3
    iput p3, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 4
    iput p4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 5
    iput-boolean p6, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 6
    iput-boolean p7, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 7
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 8
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 9
    new-instance p2, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {p2, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object p2, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 10
    iput-object p8, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 11
    iput-object p9, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    if-ltz p5, :cond_0

    .line 12
    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "internal error: native bitmap is 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "y must be < bitmap.height()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "x must be < bitmap.width()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    if-ltz p3, :cond_5

    if-ltz p4, :cond_4

    add-int/2addr p1, p3

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_3

    add-int/2addr p2, p4

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_2

    .line 4
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, p3, :cond_1

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, p6

    add-int/2addr p4, p5

    .line 5
    array-length p1, p7

    if-ltz p5, :cond_0

    add-int/2addr p5, p3

    if-gt p5, p1, :cond_0

    if-ltz p4, :cond_0

    add-int/2addr p4, p3

    if-gt p4, p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "abs(stride) must be >= width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "y + height must be <= bitmap.height()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "x + width must be <= bitmap.width()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkWidthHeight(II)V
    .locals 0

    if-lez p0, :cond_1

    if-lez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkXYSign(II)V
    .locals 0

    if-ltz p0, :cond_1

    if-ltz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "y must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "x must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 3
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 4
    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    add-int v0, p1, p3

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_c

    add-int v1, p2, p4

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_b

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne p3, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne p4, v2, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object p0

    .line 8
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p3

    int-to-float v0, p4

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 11
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 13
    sget-object v4, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 15
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, p2

    :goto_1
    const/4 v4, 0x0

    if-eqz p5, :cond_9

    .line 16
    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    .line 17
    :cond_5
    invoke-virtual {p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result p3

    xor-int/2addr p3, v1

    .line 18
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    .line 19
    invoke-virtual {p5, p4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 20
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 21
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    move-object p2, v0

    :goto_2
    if-nez p3, :cond_8

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v1

    :goto_4
    invoke-static {v5, v6, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 23
    iget v0, p4, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget p4, p4, Landroid/graphics/RectF;->top:F

    neg-float p4, p4

    invoke-virtual {v2, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    invoke-virtual {v2, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 25
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 26
    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p3, :cond_a

    .line 27
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_6

    .line 28
    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p2

    invoke-static {p3, p4, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object p4, v4

    .line 29
    :cond_a
    :goto_6
    iget p3, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput p3, p2, Landroid/graphics/Bitmap;->mDensity:I

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p3

    iget-boolean p5, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-direct {p2, p3, p5}, Landroid/graphics/Bitmap;->setAlphaAndPremultiplied(ZZ)V

    .line 31
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    invoke-virtual {v2, p0, v3, p1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 33
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2

    .line 34
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "y + height must be <= bitmap.height()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "x + width must be <= bitmap.width()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 7

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 40
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 41
    :cond_0
    invoke-virtual {p1, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 42
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, p0, :cond_1

    if-nez p4, :cond_1

    .line 43
    iget p0, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 p2, -0x1000000

    invoke-static {p0, p2}, Landroid/graphics/Bitmap;->nativeErase(II)V

    :cond_1
    return-object p1

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9

    .line 46
    invoke-static {p4, p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 47
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p4, :cond_3

    add-int/lit8 v0, p5, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    .line 48
    array-length v1, p1

    if-ltz p2, :cond_2

    add-int v2, p2, p4

    if-gt v2, v1, :cond_2

    if-ltz v0, :cond_2

    add-int/2addr v0, p4

    if-gt v0, v1, :cond_2

    if-lez p4, :cond_1

    if-lez p5, :cond_1

    .line 49
    iget v7, p6, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 50
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object p1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "abs(stride) must be >= width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 55
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 45
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 54
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    .line 3
    sput-object v2, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float p1, p1

    int-to-float v2, v5

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v2, v6

    div-float/2addr p2, v2

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v7, v1

    move v8, p3

    .line 9
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_1

    .line 12
    sput-object v1, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 13
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static getDefaultDensity()I
    .locals 1

    .line 1
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 2
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    .line 3
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 4
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(IIIZ)I
.end method

.method private static native nativeGetPixels(I[IIIIIIIZ)V
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHasMipMap(I)Z
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeReconfigure(IIIII)V
.end method

.method private static native nativeRecycle(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetAlphaAndPremultiplied(IZZ)V
.end method

.method private static native nativeSetHasMipMap(IZ)V
.end method

.method private static native nativeSetPixel(IIIIZ)V
.end method

.method private static native nativeSetPixels(I[IIIIIIIZ)V
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p0, p2

    shr-int/lit8 p2, p1, 0x1

    add-int/2addr p0, p2

    .line 1
    div-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method private final setAlphaAndPremultiplied(ZZ)V
    .locals 1

    .line 1
    iput-boolean p2, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeSetAlphaAndPremultiplied(IZZ)V

    return-void
.end method

.method public static setDefaultDensity(I)V
    .locals 0

    .line 1
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 2

    const-string v0, "Can\'t compress a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 3
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget p1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "quality must be 0..100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "Can\'t copy a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget p1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-direct {p1, p2, v0}, Landroid/graphics/Bitmap;->setAlphaAndPremultiplied(ZZ)V

    .line 4
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object p1
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 6

    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 3
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_0
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 7
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v2, v0

    shr-long v0, v4, v1

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Buffer not large enough for pixels"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unsupported Buffer subclass"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 2
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_0
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 6
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v2, v0

    shr-long v0, v4, v1

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Buffer not large enough for pixels"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unsupported Buffer subclass"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 1

    const-string v0, "Can\'t erase a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot erase immutable bitmaps"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    .line 2
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to extractAlpha on Bitmap"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAllocationByteCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    .line 3
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public final getByteCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public getLayoutBounds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    return-object v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 2

    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 3
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->nativeGetPixel(IIIZ)I

    move-result p1

    return p1
.end method

.method public getPixels([IIIIIII)V
    .locals 18

    move-object/from16 v8, p0

    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    .line 1
    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 3
    iget v9, v8, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v0, v8, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, v0

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getRowBytes()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public getScaledWidth(I)I
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    return p1
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasMipMap(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public final ni()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 2

    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget p3, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    array-length v0, v0

    invoke-static {v1, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->nativeReconfigure(IIIII)V

    .line 5
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 6
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "native-backed bitmaps may not be reconfigured"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only mutable bitmaps may be reconfigured"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 4
    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    :cond_1
    return-void
.end method

.method public reinit(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 2
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 3
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget p1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->nativeSetAlphaAndPremultiplied(IZZ)V

    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(IZ)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setLayoutBounds([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-void
.end method

.method public setPixel(III)V
    .locals 2

    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 4
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Bitmap;->nativeSetPixel(IIIIZ)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setPixels([IIIIIII)V
    .locals 18

    move-object/from16 v8, p0

    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    .line 1
    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    .line 3
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 4
    iget v9, v8, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v0, v8, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, v0

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIIIZ)V

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setPremultiplied(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetAlphaAndPremultiplied(IZZ)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "Can\'t parcel a recycled bitmap"

    .line 1
    invoke-direct {p0, p2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "native writeToParcel failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
