.class public final Landroid/graphics/LargeBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeLargeBitmap:J

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 8
    .line 9
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

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

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "decodeRegion called on recycled large bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gt v0, v1, :cond_0

    .line 21
    .line 22
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-gt v0, v1, :cond_0

    .line 29
    .line 30
    iget-wide v2, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 31
    .line 32
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    sub-int v6, v0, v4

    .line 39
    .line 40
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    sub-int v7, p1, v5

    .line 43
    .line 44
    move-object v8, p2

    .line 45
    invoke-static/range {v2 .. v8}, Landroid/graphics/LargeBitmap;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string/jumbo p2, "rectangle is not inside the image"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->recycle()V

    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 1
    const-string v0, "getHeight called on recycled large bitmap"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetHeight(J)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    const-string/jumbo v0, "getWidth called on recycled large bitmap"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetWidth(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeClean(J)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
