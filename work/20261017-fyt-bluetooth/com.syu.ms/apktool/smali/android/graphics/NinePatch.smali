.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field public final mNativeChunk:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result p1

    invoke-static {p1, p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk(I[B)I

    move-result p1

    iput p1, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 11
    :cond_0
    iget p1, p1, Landroid/graphics/NinePatch;->mNativeChunk:I

    iput p1, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeDraw(ILandroid/graphics/Rect;IIIII)V
.end method

.method private static native nativeDraw(ILandroid/graphics/RectF;IIIII)V
.end method

.method private static native nativeFinalize(I)V
.end method

.method private static native nativeGetTransparentRegion(IILandroid/graphics/Rect;)I
.end method

.method private static native validateNinePatchChunk(I[B)I
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    .line 2
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget v3, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v4, p3

    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/Rect;IIIII)V

    return-void
.end method

.method public drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget v3, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v4, p3

    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/RectF;IIIII)V

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    invoke-static {v0}, Landroid/graphics/NinePatch;->nativeFinalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    iget v1, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    invoke-static {v0, v1, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(IILandroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-void
.end method
