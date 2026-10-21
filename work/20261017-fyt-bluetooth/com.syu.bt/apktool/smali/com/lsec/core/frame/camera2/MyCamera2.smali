.class public Lcom/lsec/core/frame/camera2/MyCamera2;
.super Ljava/lang/Object;
.source "MyCamera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;,
        Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImplExtra;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static b_offset:I

.field public static l_offset:I

.field public static mCameraInst:Lcom/lsec/core/frame/camera2/MyCamera2;

.field public static mFormat:I

.field public static mMaxImages:I

.field public static r_offset:I

.field public static t_offset:I


# instance fields
.field public bShareMemory2Other:Z

.field public bShutDown:Z

.field public extraPreviewSize:Landroid/graphics/Point;

.field i:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field public mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public mGDCameraStateCallBack:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;

.field public mHeader:[B

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageReaderExtra:Landroid/media/ImageReader;

.field public mMemoryFile:Landroid/os/MemoryFile;

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mPreviewSize:Landroid/util/Size;

.field private mSpecificCameraId:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mTargetSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mTexture:Landroid/view/TextureView;

.field public maxPreviewSize:Landroid/graphics/Point;

.field public minPreviewSize:Landroid/graphics/Point;

.field public previewViewSize:Landroid/graphics/Point;

.field runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

.field runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

.field public specificPreviewSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lsec/core/frame/camera2/MyCamera2;->$assertionsDisabled:Z

    .line 71
    sput v1, Lcom/lsec/core/frame/camera2/MyCamera2;->l_offset:I

    .line 72
    sput v1, Lcom/lsec/core/frame/camera2/MyCamera2;->t_offset:I

    .line 73
    sput v1, Lcom/lsec/core/frame/camera2/MyCamera2;->r_offset:I

    .line 74
    sput v1, Lcom/lsec/core/frame/camera2/MyCamera2;->b_offset:I

    .line 75
    const/16 v0, 0x23

    sput v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mFormat:I

    .line 76
    const/4 v0, 0x2

    sput v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMaxImages:I

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraInst:Lcom/lsec/core/frame/camera2/MyCamera2;

    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShutDown:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 66
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShareMemory2Other:Z

    .line 69
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    .line 120
    new-instance v0, Lcom/lsec/core/frame/camera2/MyCamera2$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera2/MyCamera2$1;-><init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 204
    new-instance v0, Lcom/lsec/core/frame/camera2/MyCamera2$2;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera2/MyCamera2$2;-><init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 551
    iput v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->i:I

    .line 595
    iput-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

    .line 614
    iput-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/camera2/MyCamera2;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/camera2/MyCamera2;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/camera2/MyCamera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/camera2/MyCamera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static synthetic access$5(Lcom/lsec/core/frame/camera2/MyCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lsec/core/frame/camera2/MyCamera2;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    .line 419
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  closeCamera  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 423
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 447
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 445
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    .line 445
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 446
    throw v0
.end method

.method private getBestSupportedSize(Ljava/util/List;)Landroid/util/Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 238
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 239
    .local v1, "defaultSize":Landroid/util/Size;
    new-array v6, v8, [Landroid/util/Size;

    invoke-interface {p1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/Size;

    .line 240
    .local v5, "tempSizes":[Landroid/util/Size;
    new-instance v6, Lcom/lsec/core/frame/camera2/MyCamera2$3;

    invoke-direct {v6, p0}, Lcom/lsec/core/frame/camera2/MyCamera2$3;-><init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    .restart local p1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 291
    .end local v1    # "defaultSize":Landroid/util/Size;
    :goto_1
    return-object v1

    .line 255
    .restart local v1    # "defaultSize":Landroid/util/Size;
    :cond_0
    iget-object v6, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->maxPreviewSize:Landroid/graphics/Point;

    if-eqz v6, :cond_3

    .line 256
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->maxPreviewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-gt v6, v7, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->maxPreviewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_3

    .line 257
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 254
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 262
    :cond_3
    iget-object v6, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->minPreviewSize:Landroid/graphics/Point;

    if-eqz v6, :cond_2

    .line 263
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->minPreviewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-lt v6, v7, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->minPreviewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ge v6, v7, :cond_2

    .line 264
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 271
    :cond_5
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 273
    .local v0, "bestSize":Landroid/util/Size;
    iget-object v6, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->previewViewSize:Landroid/graphics/Point;

    if-eqz v6, :cond_8

    .line 274
    iget-object v6, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->previewViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->previewViewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 278
    .local v3, "previewViewRatio":F
    :goto_3
    cmpl-float v6, v3, v9

    if-lez v6, :cond_6

    .line 279
    div-float v3, v9, v3

    .line 281
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_9

    move-object v1, v0

    .line 291
    goto :goto_1

    .line 276
    .end local v3    # "previewViewRatio":F
    :cond_8
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .restart local v3    # "previewViewRatio":F
    goto :goto_3

    .line 281
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 282
    .local v4, "s":Landroid/util/Size;
    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->specificPreviewSize:Landroid/graphics/Point;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->specificPreviewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 283
    iget-object v7, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->specificPreviewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-ne v7, v8, :cond_a

    move-object v1, v4

    .line 284
    goto/16 :goto_1

    .line 286
    :cond_a
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 287
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 288
    move-object v0, v4

    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Lcom/lsec/core/frame/camera2/MyCamera2;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/lsec/core/frame/camera2/MyCamera2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraInst:Lcom/lsec/core/frame/camera2/MyCamera2;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/lsec/core/frame/camera2/MyCamera2;

    invoke-direct {v0}, Lcom/lsec/core/frame/camera2/MyCamera2;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraInst:Lcom/lsec/core/frame/camera2/MyCamera2;

    .line 88
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraInst:Lcom/lsec/core/frame/camera2/MyCamera2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startBackgroundThread()V
    .locals 3

    .prologue
    .line 450
    const-string v1, "sys.fyt.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "plat":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "ro.fyt.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraBackground"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 455
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 456
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    .line 457
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 463
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 464
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public configure()V
    .locals 7

    .prologue
    .line 473
    :try_start_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize()[I

    move-result-object v0

    .line 474
    .local v0, "size":[I
    const/4 v3, 0x0

    aget v3, v0, v3

    const/16 v4, 0x3de

    if-ne v3, v4, :cond_0

    .line 475
    const/4 v3, 0x0

    const/16 v4, 0x3c0

    aput v4, v0, v3

    .line 477
    :cond_0
    const-string v3, "HJT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPreviewSize-X:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mPreviewSize-Y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v3, Landroid/util/Size;

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    .line 479
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_6

    .line 483
    const-string v3, "HJT"

    const-string v4, "---------------add mSurfaceTexture"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 485
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 501
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 502
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_2
    sget-boolean v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->bAddImageReader:Z

    if-eqz v3, :cond_4

    .line 506
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget v5, Lcom/lsec/core/frame/camera2/MyCamera2;->mFormat:I

    sget v6, Lcom/lsec/core/frame/camera2/MyCamera2;->mMaxImages:I

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 507
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    new-instance v4, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;-><init>(Lcom/lsec/core/frame/camera2/MyCamera2;Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImpl;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 509
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 511
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_3
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->extraPreviewSize:Landroid/graphics/Point;

    if-eqz v3, :cond_4

    .line 515
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->extraPreviewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->extraPreviewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v5, Lcom/lsec/core/frame/camera2/MyCamera2;->mFormat:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;

    .line 516
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;

    new-instance v4, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImplExtra;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImplExtra;-><init>(Lcom/lsec/core/frame/camera2/MyCamera2;Lcom/lsec/core/frame/camera2/MyCamera2$OnImageAvailableListenerImplExtra;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 517
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 518
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_4
    const-string v3, "HJT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mTargetSurfaces Size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 527
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    iget-object v5, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v6, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 536
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_5
    :goto_1
    return-void

    .line 486
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_6
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTexture:Landroid/view/TextureView;

    if-eqz v3, :cond_8

    .line 487
    const-string v3, "HJT"

    const-string v4, "------------------add texture"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 489
    .local v2, "texture":Landroid/graphics/SurfaceTexture;
    sget-boolean v3, Lcom/lsec/core/frame/camera2/MyCamera2;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 533
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 490
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    .restart local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_7
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 491
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 493
    .restart local v1    # "surface":Landroid/view/Surface;
    goto/16 :goto_0

    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_8
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_9

    .line 494
    const-string v3, "HJT"

    const-string v4, "--------------add mSurfaceHolder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 496
    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 497
    const-string v3, "HJT"

    const-string v4, "--------------add mSurface"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 529
    :cond_a
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_5

    .line 530
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 531
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "template"    # I

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 543
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_0
    return-object v0

    .line 544
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCameraOpen()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp()V

    .line 363
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    .line 364
    iput-object p2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 365
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 366
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTexture:Landroid/view/TextureView;

    .line 367
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurface:Landroid/view/Surface;

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 5
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp()V

    .line 401
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurface:Landroid/view/Surface;

    .line 403
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 404
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 405
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTexture:Landroid/view/TextureView;

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp()V

    .line 382
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    .line 383
    iput-object p2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 384
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 385
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTexture:Landroid/view/TextureView;

    .line 386
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurface:Landroid/view/Surface;

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceHolder)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceHolder)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Landroid/view/TextureView;)V
    .locals 5
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "texture"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp()V

    .line 344
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    .line 345
    iput-object p2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mTexture:Landroid/view/TextureView;

    .line 346
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 347
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 348
    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSurface:Landroid/view/Surface;

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera2  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCamera2Interface(Lcom/lsec/core/frame/camera2/MyCamera2Interface;)V
    .locals 0
    .param p1, "camera2Interface"    # Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    .line 93
    return-void
.end method

.method public setGd_0ffset(IIII)V
    .locals 0
    .param p1, "left_offset"    # I
    .param p2, "top_offset"    # I
    .param p3, "right_offset"    # I
    .param p4, "bottom_offset"    # I

    .prologue
    .line 686
    sput p1, Lcom/lsec/core/frame/camera2/MyCamera2;->l_offset:I

    .line 687
    sput p2, Lcom/lsec/core/frame/camera2/MyCamera2;->t_offset:I

    .line 688
    sput p3, Lcom/lsec/core/frame/camera2/MyCamera2;->r_offset:I

    .line 689
    sput p4, Lcom/lsec/core/frame/camera2/MyCamera2;->b_offset:I

    .line 690
    return-void
.end method

.method public setMaxImages(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 592
    sput p1, Lcom/lsec/core/frame/camera2/MyCamera2;->mMaxImages:I

    .line 593
    return-void
.end method

.method public setMaxPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->maxPreviewSize:Landroid/graphics/Point;

    .line 678
    return-void
.end method

.method public setMinPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->minPreviewSize:Landroid/graphics/Point;

    .line 682
    return-void
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 617
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 618
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 620
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 621
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShutDown:Z

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;->stopRun()V

    .line 626
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    .line 627
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/view/Surface;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 652
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 653
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 655
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 656
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShutDown:Z

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;->stopRun()V

    .line 661
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    .line 662
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/view/SurfaceHolder;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 598
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 599
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 601
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 602
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShutDown:Z

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;->stopRun()V

    .line 607
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

    .line 608
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfHolder2;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/view/TextureView;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "texture"    # Landroid/view/TextureView;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 635
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 636
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 638
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 639
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShutDown:Z

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;->stopRun()V

    .line 644
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    .line 645
    iget-object v1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera2/Runnable_setPreviewSurfTexture2;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->specificPreviewSize:Landroid/graphics/Point;

    .line 670
    return-void
.end method

.method public setPreviewSizeExtra(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->extraPreviewSize:Landroid/graphics/Point;

    .line 674
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->bShutDown:Z

    .line 588
    invoke-virtual {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->stop()V

    .line 589
    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->startBackgroundThread()V

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera2/MyCamera2;->open(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 3
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->startBackgroundThread()V

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera2/MyCamera2;->open(Ljava/lang/String;Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->startBackgroundThread()V

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera2/MyCamera2;->open(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/view/TextureView;)V
    .locals 3
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "texture"    # Landroid/view/TextureView;

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera2  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    :try_start_1
    const-string v0, "HJT"

    const-string v1, "--------------------texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->startBackgroundThread()V

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera2/MyCamera2;->open(Ljava/lang/String;Landroid/view/TextureView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 334
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCamera2Interface:Lcom/lsec/core/frame/camera2/MyCamera2Interface;

    .line 335
    iget-object v0, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->closeCamera()V

    .line 339
    invoke-direct {p0}, Lcom/lsec/core/frame/camera2/MyCamera2;->stopBackgroundThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeBytes_GDAR([B)V
    .locals 8
    .param p1, "nv21"    # [B

    .prologue
    .line 96
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 100
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    sget-object v4, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v4}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v4

    if-ne v3, v4, :cond_0

    .line 101
    array-length v0, p1

    .line 102
    .local v0, "contentSize":I
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    invoke-static {v3, v0}, Lcom/autonavi/amapauto/gdarcameraservice/utils/SharedMemUtils;->setContentSize([BI)Z

    .line 103
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/autonavi/amapauto/gdarcameraservice/utils/SharedMemUtils;->setOffset([BI)Z

    .line 104
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    add-int/lit8 v4, v0, 0x14

    invoke-static {v3, v4}, Lcom/autonavi/amapauto/gdarcameraservice/utils/SharedMemUtils;->setLength([BI)Z

    .line 106
    const/16 v1, 0x14

    .line 107
    .local v1, "destOffset":I
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v3, p1, v4, v1, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 109
    const/4 v1, 0x0

    .line 110
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    const/4 v4, 0x0

    sget-object v5, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_READ:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-virtual {v5}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->getFlag()B

    move-result v5

    aput-byte v5, v3, v4

    .line 111
    iget-object v3, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/lsec/core/frame/camera2/MyCamera2;->mHeader:[B

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "contentSize":I
    .end local v1    # "destOffset":I
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
