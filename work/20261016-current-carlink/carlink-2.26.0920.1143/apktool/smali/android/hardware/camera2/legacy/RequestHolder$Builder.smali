.class public final Landroid/hardware/camera2/legacy/RequestHolder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mJpegSurfaceIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumJpegTargets:I

.field private final mNumPreviewTargets:I

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequenceId:I


# direct methods
.method public constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "request must not be null"

    .line 5
    .line 6
    .line 7
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    .line 11
    .line 12
    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    .line 13
    .line 14
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 15
    .line 16
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    .line 17
    .line 18
    iput-object p5, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    .line 19
    .line 20
    invoke-direct {p0, p3}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    .line 25
    .line 26
    invoke-direct {p0, p3}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    .line 31
    .line 32
    return-void
.end method

.method private jpegType(Landroid/view/Surface;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method private numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/Surface;

    .line 21
    .line 22
    :try_start_0
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    const-string v2, "RequestHolder"

    .line 33
    .line 34
    const-string v3, "Surface abandoned, skipping..."

    .line 35
    .line 36
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v0
.end method

.method private numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/Surface;

    .line 21
    .line 22
    :try_start_0
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->previewType(Landroid/view/Surface;)Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    const-string v2, "RequestHolder"

    .line 33
    .line 34
    const-string v3, "Surface abandoned, skipping..."

    .line 35
    .line 36
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v0
.end method

.method private previewType(Landroid/view/Surface;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public build(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 12

    new-instance v11, Landroid/hardware/camera2/legacy/RequestHolder;

    iget v1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    iget v2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-boolean v4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    iget v7, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    iget v8, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    const/4 v10, 0x0

    move-object v0, v11

    move-wide v5, p1

    invoke-direct/range {v0 .. v10}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;Landroid/hardware/camera2/legacy/RequestHolder$1;)V

    return-object v11
.end method
