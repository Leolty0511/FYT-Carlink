.class public final Landroid/graphics/LargeBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeLargeBitmap:I

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeClean(I)V
.end method

.method private static native nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(I)I
.end method

.method private static native nativeGetWidth(I)I
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "decodeRegion called on recycled large bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 3
    iget v2, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p1, v4

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroid/graphics/LargeBitmap;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rectangle is not inside the image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->recycle()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "getHeight called on recycled large bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    invoke-static {v0}, Landroid/graphics/LargeBitmap;->nativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "getWidth called on recycled large bitmap"

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    invoke-static {v0}, Landroid/graphics/LargeBitmap;->nativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    invoke-static {v0}, Landroid/graphics/LargeBitmap;->nativeClean(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    :cond_0
    return-void
.end method
