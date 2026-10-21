.class public Lcom/lsec/core/frame/camera3/MyCamera3;
.super Ljava/lang/Object;
.source "MyCamera3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;,
        Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImplExtra;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static mCameraInst:Lcom/lsec/core/frame/camera3/MyCamera3;

.field public static mFormat:I

.field public static mMaxImages:I


# instance fields
.field public bShareMemory2Other:Z

.field public bShutDown:Z

.field public extraPreviewSize:Landroid/graphics/Point;

.field i:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field public mCamera3Interface:Lcom/lsec/core/frame/camera3/MyCamera3Interface;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

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

.field runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

.field runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

.field public specificPreviewSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/lsec/core/frame/camera3/MyCamera3;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lsec/core/frame/camera3/MyCamera3;->$assertionsDisabled:Z

    .line 76
    const/16 v0, 0x23

    sput v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mFormat:I

    .line 77
    const/4 v0, 0x2

    sput v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mMaxImages:I

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraInst:Lcom/lsec/core/frame/camera3/MyCamera3;

    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 71
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShareMemory2Other:Z

    .line 73
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mHeader:[B

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/lsec/core/frame/camera3/MyCamera3$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera3/MyCamera3$1;-><init>(Lcom/lsec/core/frame/camera3/MyCamera3;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 130
    new-instance v0, Lcom/lsec/core/frame/camera3/MyCamera3$2;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera3/MyCamera3$2;-><init>(Lcom/lsec/core/frame/camera3/MyCamera3;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 406
    iput v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->i:I

    .line 448
    iput-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

    .line 467
    iput-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/camera3/MyCamera3;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/camera3/MyCamera3;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/camera3/MyCamera3;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/camera3/MyCamera3;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/camera3/MyCamera3;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static synthetic access$5(Lcom/lsec/core/frame/camera3/MyCamera3;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lsec/core/frame/camera3/MyCamera3;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera3  closeCamera  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 288
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 312
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 310
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 311
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/lsec/core/frame/camera3/MyCamera3;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/lsec/core/frame/camera3/MyCamera3;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraInst:Lcom/lsec/core/frame/camera3/MyCamera3;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/lsec/core/frame/camera3/MyCamera3;

    invoke-direct {v0}, Lcom/lsec/core/frame/camera3/MyCamera3;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraInst:Lcom/lsec/core/frame/camera3/MyCamera3;

    .line 89
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraInst:Lcom/lsec/core/frame/camera3/MyCamera3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera3Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 316
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 317
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    .line 318
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 325
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public configure()V
    .locals 7

    .prologue
    .line 334
    :try_start_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize2()[I

    move-result-object v0

    .line 335
    .local v0, "size":[I
    const/4 v3, 0x0

    aget v3, v0, v3

    const/16 v4, 0x3de

    if-ne v3, v4, :cond_0

    .line 336
    const/4 v3, 0x0

    const/16 v4, 0x3c0

    aput v4, v0, v3

    .line 339
    :cond_0
    new-instance v3, Landroid/util/Size;

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    .line 340
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_6

    .line 344
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 345
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 359
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 360
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    sget-boolean v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->bAddImageReader:Z

    if-eqz v3, :cond_4

    .line 364
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget v5, Lcom/lsec/core/frame/camera3/MyCamera3;->mFormat:I

    sget v6, Lcom/lsec/core/frame/camera3/MyCamera3;->mMaxImages:I

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    .line 365
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    new-instance v4, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;-><init>(Lcom/lsec/core/frame/camera3/MyCamera3;Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImpl;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 367
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_3
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->extraPreviewSize:Landroid/graphics/Point;

    if-eqz v3, :cond_4

    .line 373
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->extraPreviewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->extraPreviewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v5, Lcom/lsec/core/frame/camera3/MyCamera3;->mFormat:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;

    .line 374
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;

    new-instance v4, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImplExtra;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImplExtra;-><init>(Lcom/lsec/core/frame/camera3/MyCamera3;Lcom/lsec/core/frame/camera3/MyCamera3$OnImageAvailableListenerImplExtra;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 375
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 376
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_4
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 383
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    iget-object v5, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v6, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 391
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_5
    :goto_1
    return-void

    .line 346
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_6
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTexture:Landroid/view/TextureView;

    if-eqz v3, :cond_8

    .line 347
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 348
    .local v2, "texture":Landroid/graphics/SurfaceTexture;
    sget-boolean v3, Lcom/lsec/core/frame/camera3/MyCamera3;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 388
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 349
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    .restart local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_7
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 351
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 352
    .restart local v1    # "surface":Landroid/view/Surface;
    goto/16 :goto_0

    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_8
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_9

    .line 353
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 354
    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 355
    const-string v3, "HJT"

    const-string v4, "--------------add mSurface"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 384
    :cond_a
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_5

    .line 385
    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 386
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "template"    # I

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 398
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCameraOpen()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 436
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

    .line 229
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 230
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 232
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 233
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTexture:Landroid/view/TextureView;

    .line 234
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurface:Landroid/view/Surface;

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: "

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

    .line 265
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 266
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    .line 267
    iput-object p2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurface:Landroid/view/Surface;

    .line 268
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 269
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 270
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTexture:Landroid/view/TextureView;

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: "

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

    .line 248
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 249
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    .line 250
    iput-object p2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 251
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 252
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTexture:Landroid/view/TextureView;

    .line 253
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurface:Landroid/view/Surface;

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceHolder)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceHolder)  Camera ID: "

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

    .line 211
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 212
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mTexture:Landroid/view/TextureView;

    .line 214
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 215
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 216
    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSurface:Landroid/view/Surface;

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: "

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

.method public setCamera3Interface(Lcom/lsec/core/frame/camera3/MyCamera3Interface;)V
    .locals 0
    .param p1, "camera3Interface"    # Lcom/lsec/core/frame/camera3/MyCamera3Interface;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCamera3Interface:Lcom/lsec/core/frame/camera3/MyCamera3Interface;

    .line 94
    return-void
.end method

.method public setMaxImages(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 445
    sput p1, Lcom/lsec/core/frame/camera3/MyCamera3;->mMaxImages:I

    .line 446
    return-void
.end method

.method public setMaxPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->maxPreviewSize:Landroid/graphics/Point;

    .line 531
    return-void
.end method

.method public setMinPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->minPreviewSize:Landroid/graphics/Point;

    .line 535
    return-void
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 470
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 471
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 473
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->stopRun()V

    .line 479
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    .line 480
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
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
    .line 505
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 506
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 508
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->stopRun()V

    .line 514
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    .line 515
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
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
    .line 451
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 452
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 454
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 455
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;->stopRun()V

    .line 460
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

    .line 461
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfHolder3;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
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
    .line 487
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 488
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 490
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 491
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->stopRun()V

    .line 496
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    .line 497
    iget-object v1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera3/Runnable_setPreviewSurfTexture3;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->specificPreviewSize:Landroid/graphics/Point;

    .line 523
    return-void
.end method

.method public setPreviewSizeExtra(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->extraPreviewSize:Landroid/graphics/Point;

    .line 527
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->bShutDown:Z

    .line 441
    invoke-virtual {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->stop()V

    .line 442
    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera3  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->startBackgroundThread()V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera3/MyCamera3;->open(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
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
    .line 192
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera3  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->startBackgroundThread()V

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera3/MyCamera3;->open(Ljava/lang/String;Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
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
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->startBackgroundThread()V

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera3/MyCamera3;->open(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
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
    .line 174
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera3  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->startBackgroundThread()V

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera3/MyCamera3;->open(Ljava/lang/String;Landroid/view/TextureView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCamera3Interface:Lcom/lsec/core/frame/camera3/MyCamera3Interface;

    .line 203
    iget-object v0, p0, Lcom/lsec/core/frame/camera3/MyCamera3;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->closeCamera()V

    .line 207
    invoke-direct {p0}, Lcom/lsec/core/frame/camera3/MyCamera3;->stopBackgroundThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
