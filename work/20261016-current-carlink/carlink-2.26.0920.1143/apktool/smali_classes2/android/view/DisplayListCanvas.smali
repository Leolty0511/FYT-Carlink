.class public final Landroid/view/DisplayListCanvas;
.super Landroid/view/RecordingCanvas;
.source "SourceFile"


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Landroid/view/RenderNode;II)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p3}, Landroid/view/DisplayListCanvas;->nCreateDisplayListCanvas(JII)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/RecordingCanvas;-><init>(J)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 12
    .line 13
    return-void
.end method

.method private static native nCallDrawGLFunction(JJLjava/lang/Runnable;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateDisplayListCanvas(JII)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawCircle(JJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawLayer(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawRenderNode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nFinishRecording(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMaximumTextureHeight()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMaximumTextureWidth()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInsertReorderBarrier(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nResetDisplayListCanvas(JJII)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static obtain(Landroid/view/RenderNode;II)Landroid/view/DisplayListCanvas;
    .locals 7

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/view/DisplayListCanvas;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Landroid/view/DisplayListCanvas;-><init>(Landroid/view/RenderNode;II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 20
    .line 21
    iget-wide v3, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 22
    .line 23
    move v5, p1

    .line 24
    move v6, p2

    .line 25
    invoke-static/range {v1 .. v6}, Landroid/view/DisplayListCanvas;->nResetDisplayListCanvas(JJII)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iput-object p0, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    .line 29
    .line 30
    iput p1, v0, Landroid/view/DisplayListCanvas;->mWidth:I

    .line 31
    .line 32
    iput p2, v0, Landroid/view/DisplayListCanvas;->mHeight:I

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "node cannot be null"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    invoke-static/range {v0 .. v9}, Landroid/view/DisplayListCanvas;->nDrawCircle(JJJJJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public drawGLFunctor2(JLjava/lang/Runnable;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    return-void
.end method

.method public drawHardwareLayer(Landroid/view/HardwareLayer;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawLayer(JJ)V

    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawRenderNode(JJ)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 14
    .line 15
    .line 16
    move-result-wide v7

    .line 17
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 22
    .line 23
    .line 24
    move-result-wide v11

    .line 25
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 26
    .line 27
    .line 28
    move-result-wide v13

    .line 29
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    .line 30
    .line 31
    .line 32
    move-result-wide v15

    .line 33
    invoke-static/range {v1 .. v16}, Landroid/view/DisplayListCanvas;->nDrawRoundRect(JJJJJJJJ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public finishRecording()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public recycle()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    .line 3
    .line 4
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDensity(I)V
    .locals 0

    return-void
.end method

.method public throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/high16 v0, 0x6400000

    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v1, "Canvas: trying to draw too large("

    .line 16
    .line 17
    const-string v2, "bytes) bitmap."

    .line 18
    .line 19
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method
