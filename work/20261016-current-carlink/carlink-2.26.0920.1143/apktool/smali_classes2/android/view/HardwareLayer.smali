.class final Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method private constructor <init>(Landroid/view/ThreadedRenderer;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 13
    .line 14
    new-instance p1, Lcom/android/internal/util/VirtualRefBasePtr;

    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Either hardware renderer: "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " or deferredUpdater: "

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " is invalid"

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public static adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/HardwareLayer;
    .locals 1

    new-instance v0, Landroid/view/HardwareLayer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/HardwareLayer;-><init>(Landroid/view/ThreadedRenderer;J)V

    return-object v0
.end method

.method private static native nPrepare(JIIZ)Z
.end method

.method private static native nSetLayerPaint(JJ)V
.end method

.method private static native nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V
.end method

.method private static native nSetTransform(JJ)V
.end method

.method private static native nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0, p1}, Landroid/view/ThreadedRenderer;->copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/HardwareLayer;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->onLayerDestroyed(Landroid/view/HardwareLayer;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 22
    .line 23
    return-void
.end method

.method public detachSurfaceTexture()V
    .locals 3

    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->detachSurfaceTexture(J)V

    return-void
.end method

.method public getDeferredLayerUpdater()J
    .locals 2

    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerHandle()J
    .locals 2

    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(IIZ)Z
    .locals 2

    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/HardwareLayer;->nPrepare(JIIZ)Z

    move-result p1

    return p1
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->nSetLayerPaint(JJ)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1, p1}, Landroid/view/HardwareLayer;->nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->nSetTransform(JJ)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public updateSurfaceTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Landroid/view/HardwareLayer;->nUpdateSurfaceTexture(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
