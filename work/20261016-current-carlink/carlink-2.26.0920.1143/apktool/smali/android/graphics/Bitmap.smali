.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I = -0x1

.field public static volatile sPreloadTracingNumInstantiatedBitmaps:I

.field public static volatile sPreloadTracingTotalBitmapsSize:J


# instance fields
.field private mColorSpace:Landroid/graphics/ColorSpace;

.field public mDensity:I

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iput p3, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 17
    .line 18
    iput p4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 19
    .line 20
    iput-boolean p6, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 21
    .line 22
    iput-boolean p7, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 23
    .line 24
    iput-object p8, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 25
    .line 26
    iput-object p9, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 27
    .line 28
    if-ltz p5, :cond_0

    .line 29
    .line 30
    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 31
    .line 32
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    int-to-long p3, p3

    .line 39
    const-wide/16 p5, 0x20

    .line 40
    .line 41
    add-long/2addr p3, p5

    .line 42
    new-instance p5, Llibcore/util/NativeAllocationRegistry;

    .line 43
    .line 44
    const-class p6, Landroid/graphics/Bitmap;

    .line 45
    .line 46
    invoke-virtual {p6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    move-object v0, p5

    .line 55
    move-wide v4, p3

    .line 56
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 60
    .line 61
    .line 62
    sget-boolean p1, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    sget p1, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    sput p1, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 71
    .line 72
    sget-wide p1, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 73
    .line 74
    add-long/2addr p1, p3

    .line 75
    sput-wide p1, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string/jumbo p2, "internal error: native bitmap is 0"

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private checkHardware(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private checkPixelAccess(II)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ge p2, p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string/jumbo p2, "y must be < bitmap.height()"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string/jumbo p2, "x must be < bitmap.width()"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2
    .line 3
    .line 4
    if-ltz p3, :cond_5

    .line 5
    .line 6
    if-ltz p4, :cond_4

    .line 7
    .line 8
    add-int/2addr p1, p3

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt p1, v0, :cond_3

    .line 14
    .line 15
    add-int/2addr p2, p4

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-gt p2, p1, :cond_2

    .line 21
    .line 22
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lt p1, p3, :cond_1

    .line 27
    .line 28
    add-int/lit8 p4, p4, -0x1

    .line 29
    .line 30
    mul-int/2addr p4, p6

    .line 31
    add-int/2addr p4, p5

    .line 32
    array-length p1, p7

    .line 33
    if-ltz p5, :cond_0

    .line 34
    .line 35
    add-int/2addr p5, p3

    .line 36
    if-gt p5, p1, :cond_0

    .line 37
    .line 38
    if-ltz p4, :cond_0

    .line 39
    .line 40
    add-int/2addr p4, p3

    .line 41
    if-gt p4, p1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "abs(stride) must be >= width"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string/jumbo p2, "y + height must be <= bitmap.height()"

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string/jumbo p2, "x + width must be <= bitmap.width()"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string/jumbo p2, "height must be >= 0"

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string/jumbo p2, "width must be >= 0"

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method private static checkWidthHeight(II)V
    .locals 0

    .line 1
    if-lez p0, :cond_1

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string/jumbo p1, "height must be > 0"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string/jumbo p1, "width must be > 0"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method private static checkXYSign(II)V
    .locals 0

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string/jumbo p1, "y must be >= 0"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string/jumbo p1, "x must be >= 0"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 47
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

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
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 3
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 4
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    add-int v6, v1, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_10

    add-int v7, v2, v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_f

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v4, v8, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-object v0

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    if-ne v8, v9, :cond_2

    move v8, v11

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_3

    .line 10
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 11
    iget-wide v12, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    :cond_3
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v3

    int-to-float v6, v4

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 15
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 17
    sget-object v13, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v13, v7

    if-eq v7, v11, :cond_6

    const/4 v13, 0x2

    if-eq v7, v13, :cond_5

    const/4 v13, 0x3

    if-eq v7, v13, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 19
    :cond_5
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 20
    :cond_6
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_7
    :goto_1
    move-object v7, v6

    :goto_2
    const/4 v13, 0x0

    if-eqz v5, :cond_c

    .line 21
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_6

    .line 22
    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v3

    xor-int/2addr v3, v11

    .line 23
    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 24
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 25
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    if-eqz v3, :cond_9

    if-eq v7, v6, :cond_9

    .line 26
    sget-object v15, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v7, v15, :cond_9

    goto :goto_3

    :cond_9
    move-object v6, v7

    :goto_3
    if-nez v3, :cond_b

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    move v7, v11

    :goto_5
    invoke-static {v4, v14, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 28
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    move/from16 v7, p6

    .line 29
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v3, :cond_d

    .line 30
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_7

    .line 31
    :cond_c
    :goto_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    invoke-static {v3, v4, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v6, v13

    .line 32
    :cond_d
    :goto_7
    iget-wide v14, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v10, v4, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v14, v15, v10, v11}, Landroid/graphics/Bitmap;->nativeCopyColorSpace(JJ)V

    .line 33
    iget v7, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v7, v4, Landroid/graphics/Bitmap;->mDensity:I

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 35
    iget-boolean v7, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 36
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    iget v10, v2, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 39
    invoke-virtual {v7, v0, v12, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 40
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v8, :cond_e

    const/4 v0, 0x0

    .line 41
    invoke-virtual {v4, v9, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v4

    .line 42
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y + height must be <= bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x + width must be <= bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 48
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 49
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 50
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 10

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_8

    if-eqz p5, :cond_7

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    if-ne p5, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    instance-of v1, p5, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v1, :cond_2

    .line 54
    check-cast p5, Landroid/graphics/ColorSpace$Rgb;

    .line 55
    invoke-virtual {p5}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 56
    sget-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {p5, v1}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object p5

    check-cast p5, Landroid/graphics/ColorSpace$Rgb;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    iget v6, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x1

    .line 58
    invoke-virtual {p5}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v8

    move v3, p1

    move v4, p1

    move v5, p2

    .line 59
    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "colorSpace must use an ICC parametric transfer function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "colorSpace must be an RGB color space"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    iget v6, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v4, p1

    move v5, p2

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    if-eqz p0, :cond_4

    .line 63
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 64
    :cond_4
    invoke-virtual {p1, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    if-eq p3, v0, :cond_5

    .line 65
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne p3, p0, :cond_6

    :cond_5
    if-nez p4, :cond_6

    .line 66
    iget-wide p2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 p0, -0x1000000

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    :cond_6
    return-object p1

    .line 67
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t create bitmap without a color space"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10

    move-object v0, p0

    move v4, p4

    .line 71
    invoke-static {p4, p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 72
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v4, :cond_3

    add-int/lit8 v1, p5, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    move-object v2, p1

    .line 73
    array-length v3, v2

    if-ltz p2, :cond_2

    add-int v5, p2, v4

    if-gt v5, v3, :cond_2

    if-ltz v1, :cond_2

    add-int/2addr v1, v4

    if-gt v1, v3, :cond_2

    if-lez v4, :cond_1

    if-lez p5, :cond_1

    move-object/from16 v1, p6

    .line 74
    iget v6, v1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 75
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v1

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 80
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

    .line 70
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

    .line 79
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-ne v3, p1, :cond_0

    .line 15
    .line 16
    if-eq v4, p2, :cond_1

    .line 17
    .line 18
    :cond_0
    int-to-float p1, p1

    .line 19
    int-to-float v0, v3

    .line 20
    div-float/2addr p1, v0

    .line 21
    int-to-float p2, p2

    .line 22
    int-to-float v0, v4

    .line 23
    div-float/2addr p2, v0

    .line 24
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    move-object v0, p0

    .line 30
    move v6, p3

    .line 31
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static getDefaultDensity()I
    .locals 1

    .line 1
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 9
    .line 10
    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 11
    .line 12
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 13
    .line 14
    return v0
.end method

.method private static native nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(J)I
.end method

.method private static native nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyColorSpace(JJ)V
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateGraphicBufferHandle(J)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeCreateHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetAllocationByteCount(J)I
.end method

.method private static native nativeGetColorSpace(J[F[F)Z
.end method

.method private static native nativeGetNativeFinalizer()J
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetPixels(J[IIIIIII)V
.end method

.method private static native nativeHasAlpha(J)Z
.end method

.method private static native nativeHasMipMap(J)Z
.end method

.method private static native nativeIsPremultiplied(J)Z
.end method

.method private static native nativeIsSRGB(J)Z
.end method

.method private static native nativePrepareToDraw(J)V
.end method

.method private static native nativeReconfigure(JIIIZ)V
.end method

.method private static native nativeRecycle(J)Z
.end method

.method private static native nativeRowBytes(J)I
.end method

.method private static native nativeSameAs(JJ)Z
.end method

.method private static native nativeSetHasAlpha(JZZ)V
.end method

.method private static native nativeSetHasMipMap(JZ)V
.end method

.method private static native nativeSetPixel(JIII)V
.end method

.method private static native nativeSetPixels(J[IIIIIII)V
.end method

.method private static native nativeSetPremultiplied(JZ)V
.end method

.method private static native nativeWriteToParcel(JZILandroid/os/Parcel;)Z
.end method

.method private noteHardwareBitmapSlowCall()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
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

    div-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static setDefaultDensity(I)V
    .locals 0

    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 9

    .line 1
    const-string v0, "Can\'t compress a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    if-gt p2, v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Compression of a bitmap is slow"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "Bitmap.compress"

    .line 21
    .line 22
    const-wide/16 v1, 0x2000

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 28
    .line 29
    iget v5, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    .line 30
    .line 31
    const/16 p1, 0x1000

    .line 32
    .line 33
    new-array v8, p1, [B

    .line 34
    .line 35
    move v6, p2

    .line 36
    move-object v7, p3

    .line 37
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 42
    .line 43
    .line 44
    return p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string/jumbo p2, "quality must be 0..100"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    const-string v0, "Can\'t copy a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "Hardware bitmaps are always immutable"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 25
    .line 26
    iget p1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 27
    .line 28
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-boolean p2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 40
    .line 41
    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 42
    .line 43
    :cond_2
    return-object p1
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 6

    .line 1
    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    :goto_0
    int-to-long v2, v0

    .line 34
    shl-long/2addr v2, v1

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-long v4, v0

    .line 40
    cmp-long v0, v2, v4

    .line 41
    .line 42
    if-ltz v0, :cond_2

    .line 43
    .line 44
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 45
    .line 46
    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-long v2, v0

    .line 54
    shr-long v0, v4, v1

    .line 55
    .line 56
    add-long/2addr v2, v0

    .line 57
    long-to-int v0, v2

    .line 58
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string v0, "Buffer not large enough for pixels"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    const-string/jumbo v0, "unsupported Buffer subclass"

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    :goto_0
    int-to-long v2, v0

    .line 29
    shl-long/2addr v2, v1

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-long v4, v0

    .line 35
    cmp-long v0, v2, v4

    .line 36
    .line 37
    if-ltz v0, :cond_2

    .line 38
    .line 39
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 40
    .line 41
    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-long v2, v0

    .line 49
    shr-long v0, v4, v1

    .line 50
    .line 51
    add-long/2addr v2, v0

    .line 52
    long-to-int v0, v2

    .line 53
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    const-string v0, "Buffer not large enough for pixels"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string/jumbo v0, "unsupported Buffer subclass"

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "Can\'t copy a recycled bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 3
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 5
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "Can\'t copy a recycled bitmap"

    .line 6
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 8
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget p1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 10
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object p1
.end method

.method public createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCreateGraphicBufferHandle(J)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2

    .line 1
    const-string v0, "Can\'t erase a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "cannot erase immutable bitmaps"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
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
    .locals 4

    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    .line 2
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 5
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to extractAlpha on Bitmap"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAllocationByteCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final getByteCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/2addr v1, v0

    .line 23
    return v1
.end method

.method public final getColorSpace()Landroid/graphics/ColorSpace;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    return-object v1

    .line 21
    :cond_0
    iget-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    iget-wide v1, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->nativeIsSRGB(J)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v1, 0x9

    .line 43
    .line 44
    new-array v1, v1, [F

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    new-array v2, v2, [F

    .line 48
    .line 49
    iget-wide v3, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 50
    .line 51
    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Bitmap;->nativeGetColorSpace(J[F[F)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    aget v4, v2, v4

    .line 61
    .line 62
    float-to-double v5, v4

    .line 63
    const/4 v4, 0x1

    .line 64
    aget v4, v2, v4

    .line 65
    .line 66
    float-to-double v7, v4

    .line 67
    const/4 v4, 0x2

    .line 68
    aget v4, v2, v4

    .line 69
    .line 70
    float-to-double v9, v4

    .line 71
    const/4 v4, 0x3

    .line 72
    aget v4, v2, v4

    .line 73
    .line 74
    float-to-double v11, v4

    .line 75
    const/4 v4, 0x4

    .line 76
    aget v4, v2, v4

    .line 77
    .line 78
    float-to-double v13, v4

    .line 79
    const/4 v4, 0x5

    .line 80
    aget v4, v2, v4

    .line 81
    .line 82
    move-object/from16 v19, v1

    .line 83
    .line 84
    float-to-double v0, v4

    .line 85
    const/4 v4, 0x6

    .line 86
    aget v2, v2, v4

    .line 87
    .line 88
    move-wide v15, v0

    .line 89
    float-to-double v0, v2

    .line 90
    move-object v4, v3

    .line 91
    move-wide/from16 v17, v0

    .line 92
    .line 93
    invoke-direct/range {v4 .. v18}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    .line 94
    .line 95
    .line 96
    move-object/from16 v0, v19

    .line 97
    .line 98
    invoke-static {v0, v3}, Landroid/graphics/ColorSpace;->match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    move-object/from16 v2, p0

    .line 105
    .line 106
    iput-object v1, v2, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move-object/from16 v2, p0

    .line 110
    .line 111
    new-instance v1, Landroid/graphics/ColorSpace$Rgb;

    .line 112
    .line 113
    const-string v4, "Unknown"

    .line 114
    .line 115
    invoke-direct {v1, v4, v0, v3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v2, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    move-object v2, v0

    .line 122
    :goto_1
    iget-object v0, v2, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 123
    .line 124
    return-object v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public getDensity()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 13
    .line 14
    return v0
.end method

.method public getGenerationId()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 13
    .line 14
    return v0
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public getPixel(II)I
    .locals 2

    .line 1
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getPixels([IIIIIII)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    .line 4
    .line 5
    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    .line 9
    .line 10
    .line 11
    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p6, :cond_1

    .line 15
    .line 16
    if-nez p7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object/from16 v0, p0

    .line 20
    .line 21
    move/from16 v1, p4

    .line 22
    .line 23
    move/from16 v2, p5

    .line 24
    .line 25
    move/from16 v3, p6

    .line 26
    .line 27
    move/from16 v4, p7

    .line 28
    .line 29
    move/from16 v5, p2

    .line 30
    .line 31
    move/from16 v6, p3

    .line 32
    .line 33
    move-object/from16 v7, p1

    .line 34
    .line 35
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 36
    .line 37
    .line 38
    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 39
    .line 40
    move-object/from16 v11, p1

    .line 41
    .line 42
    move/from16 v12, p2

    .line 43
    .line 44
    move/from16 v13, p3

    .line 45
    .line 46
    move/from16 v14, p4

    .line 47
    .line 48
    move/from16 v15, p5

    .line 49
    .line 50
    move/from16 v16, p6

    .line 51
    .line 52
    move/from16 v17, p7

    .line 53
    .line 54
    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final getRowBytes()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
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

    iget p1, p1, Landroid/graphics/BaseCanvas;->mDensity:I

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

    iget p1, p1, Landroid/graphics/BaseCanvas;->mDensity:I

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
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 13
    .line 14
    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final isMutable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Bitmap"

    .line 6
    .line 7
    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public prepareToDraw()V
    .locals 2

    .line 1
    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7

    .line 1
    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_1

    .line 7
    .line 8
    if-lez p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 17
    .line 18
    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 19
    .line 20
    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 21
    .line 22
    move v3, p1

    .line 23
    move v4, p2

    .line 24
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    .line 25
    .line 26
    .line 27
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 28
    .line 29
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string/jumbo p2, "only mutable bitmaps may be reconfigured"

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string/jumbo p2, "width and height must be > 0"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public recycle()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public reinit(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 4
    .line 5
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 9
    .line 10
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 1
    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 7
    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-direct {p1}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 27
    .line 28
    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v0, "Can\'t compare to a recycled bitmap!"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 10
    .line 11
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-void
.end method

.method public setPixel(III)V
    .locals 2

    .line 1
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public setPixels([IIIIIII)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    .line 4
    .line 5
    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p6, :cond_1

    .line 15
    .line 16
    if-nez p7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object/from16 v0, p0

    .line 20
    .line 21
    move/from16 v1, p4

    .line 22
    .line 23
    move/from16 v2, p5

    .line 24
    .line 25
    move/from16 v3, p6

    .line 26
    .line 27
    move/from16 v4, p7

    .line 28
    .line 29
    move/from16 v5, p2

    .line 30
    .line 31
    move/from16 v6, p3

    .line 32
    .line 33
    move-object/from16 v7, p1

    .line 34
    .line 35
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 36
    .line 37
    .line 38
    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 39
    .line 40
    move-object/from16 v11, p1

    .line 41
    .line 42
    move/from16 v12, p2

    .line 43
    .line 44
    move/from16 v13, p3

    .line 45
    .line 46
    move/from16 v14, p4

    .line 47
    .line 48
    move/from16 v15, p5

    .line 49
    .line 50
    move/from16 v16, p6

    .line 51
    .line 52
    move/from16 v17, p7

    .line 53
    .line 54
    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public final setPremultiplied(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const-string p2, "Can\'t parcel a recycled bitmap"

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 12
    .line 13
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 14
    .line 15
    invoke-static {v0, v1, p2, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string/jumbo p2, "native writeToParcel failed"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
