.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I

.field private static final BUFFER_USAGE_UNKNOWN:J


# instance fields
.field private mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/lang/Object;

.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHeight:I

.field private mIsReaderValid:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "media_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(IIIIJ)V
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move v9, p1

    .line 3
    move v10, p2

    .line 4
    move/from16 v11, p3

    .line 5
    .line 6
    move/from16 v5, p4

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, v8, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, v8, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, v8, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, v8, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 34
    .line 35
    iput v9, v8, Landroid/media/ImageReader;->mWidth:I

    .line 36
    .line 37
    iput v10, v8, Landroid/media/ImageReader;->mHeight:I

    .line 38
    .line 39
    iput v11, v8, Landroid/media/ImageReader;->mFormat:I

    .line 40
    .line 41
    iput v5, v8, Landroid/media/ImageReader;->mMaxImages:I

    .line 42
    .line 43
    const/4 v12, 0x1

    .line 44
    if-lt v9, v12, :cond_2

    .line 45
    .line 46
    if-lt v10, v12, :cond_2

    .line 47
    .line 48
    if-lt v5, v12, :cond_1

    .line 49
    .line 50
    const/16 v0, 0x11

    .line 51
    .line 52
    if-eq v11, v0, :cond_0

    .line 53
    .line 54
    invoke-static/range {p3 .. p3}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, v8, Landroid/media/ImageReader;->mNumPlanes:I

    .line 59
    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v0, p0

    .line 66
    move v2, p1

    .line 67
    move v3, p2

    .line 68
    move/from16 v4, p3

    .line 69
    .line 70
    move/from16 v5, p4

    .line 71
    .line 72
    move-wide/from16 v6, p5

    .line 73
    .line 74
    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIIJ)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, v8, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 82
    .line 83
    iput-boolean v12, v8, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 84
    .line 85
    invoke-static {p1, p2, v11, v12}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, v8, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 90
    .line 91
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget v1, v8, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string v1, "NV21 format is not supported"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string v1, "Maximum outstanding image count must be at least 1"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string v1, "The image dimensions must be positive"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public static synthetic access$300(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/media/ImageReader;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    return p0
.end method

.method public static synthetic access$700(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return p0
.end method

.method public static synthetic access$900(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mFormat:I

    return p0
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 4

    .line 1
    const-string v0, "Unknown nativeImageSetup return code "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v3

    .line 17
    :goto_0
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-eq v2, v3, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    iput-boolean v3, p1, Landroid/media/Image;->mIsImageValid:Z

    .line 44
    .line 45
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_4
    monitor-exit v1

    .line 53
    return v2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1
.end method

.method private static isFormatUsageCombinationAllowed(IJ)Z
    .locals 5

    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x22

    const/4 v2, 0x1

    if-ne p0, v0, :cond_7

    const-wide/16 v3, 0x100

    cmp-long p0, p1, v3

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    if-nez p0, :cond_4

    const-wide/32 v3, 0x10000

    cmp-long p0, p1, v3

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p0, v2

    :goto_2
    if-nez p0, :cond_5

    const-wide/32 v3, 0x10100

    cmp-long p0, p1, v3

    if-nez p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :cond_7
    const-wide/16 v3, 0x2

    cmp-long p0, p1, v3

    if-eqz p0, :cond_8

    const-wide/16 v3, 0x3

    cmp-long p0, p1, v3

    if-nez p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/media/ImageReader$SurfaceImage;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-ne p1, p0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose()V
.end method

.method private synchronized native nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native nativeDiscardFreeBuffers()V
.end method

.method private synchronized native nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native nativeInit(Ljava/lang/Object;IIIIJ)V
.end method

.method private synchronized native nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 8

    .line 1
    new-instance v7, Landroid/media/ImageReader;

    const-wide/16 v5, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageReader;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static newInstance(IIIIJ)Landroid/media/ImageReader;
    .locals 8

    .line 2
    invoke-static {p2, p4, p5}, Landroid/media/ImageReader;->isFormatUsageCombinationAllowed(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/ImageReader;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJ)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Format usage combination is not supported: format = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", usage = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/media/ImageReader;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 7
    .line 8
    iget-boolean v1, v0, Landroid/media/Image;->mIsImageValid:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-ne v1, p0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$000(Landroid/media/ImageReader$SurfaceImage;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Landroid/media/Image;->mIsImageValid:Z

    .line 35
    .line 36
    iget-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v0, "This image was not produced by this ImageReader"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "This image was not produced by an ImageReader"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    const-string v2, "Unknown nativeImageSetup return code "

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    iget v2, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    const-string/jumbo v2, "maxImages (%d) has already been acquired, call #close before acquiring more."

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :cond_2
    return-object v0
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 17
    .line 18
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/media/Image;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 46
    .line 47
    .line 48
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 49
    .line 50
    if-lez v2, :cond_2

    .line 51
    .line 52
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 59
    .line 60
    .line 61
    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 62
    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v1
.end method

.method public detachImage(Landroid/media/Image;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$000(Landroid/media/ImageReader$SurfaceImage;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {v0, p1}, Landroid/media/ImageReader$SurfaceImage;->access$102(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {v0, p1}, Landroid/media/ImageReader$SurfaceImage;->access$200(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "Image was already detached from this ImageReader"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Trying to detach an image that is not owned by this ImageReader"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string/jumbo v0, "input image must not be null"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public discardFreeBuffers()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    if-eqz p2, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eq v1, p2, :cond_2

    .line 28
    .line 29
    :cond_1
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    .line 30
    .line 31
    invoke-direct {v1, p0, p2}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 35
    .line 36
    :cond_2
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string/jumbo p2, "handler is null but the current thread is not a looper"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_4
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 50
    .line 51
    iput-object p1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 52
    .line 53
    :goto_1
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method
