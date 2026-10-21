.class public Lcom/lsec/core/frame/camera5/MyCamera5;
.super Ljava/lang/Object;
.source "MyCamera5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImpl;,
        Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;
    }
.end annotation


# static fields
.field public static mCameraInst:Lcom/lsec/core/frame/camera5/MyCamera5;

.field public static mFormat:I

.field public static mMaxImages:I


# instance fields
.field public bShutDown:Z

.field public extraPreviewSize:Landroid/graphics/Point;

.field i:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field public mCamera5Interface:Lcom/lsec/core/frame/camera5/MyCamera5Interface;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public mHeader:[B

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageReaderExtra:Landroid/media/ImageReader;

.field private mPreviewSize:Landroid/util/Size;

.field private mSpecificCameraId:Ljava/lang/String;

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

.field runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

.field runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

.field public specificPreviewSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x23

    sput v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mFormat:I

    .line 73
    const/4 v0, 0x2

    sput v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mMaxImages:I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraInst:Lcom/lsec/core/frame/camera5/MyCamera5;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->bShutDown:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 70
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mHeader:[B

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/lsec/core/frame/camera5/MyCamera5$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera5/MyCamera5$1;-><init>(Lcom/lsec/core/frame/camera5/MyCamera5;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 127
    new-instance v0, Lcom/lsec/core/frame/camera5/MyCamera5$2;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera5/MyCamera5$2;-><init>(Lcom/lsec/core/frame/camera5/MyCamera5;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 355
    iput v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->i:I

    .line 399
    iput-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

    .line 418
    iput-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/camera5/MyCamera5;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/camera5/MyCamera5;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/camera5/MyCamera5;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/camera5/MyCamera5;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/camera5/MyCamera5;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static synthetic access$5(Lcom/lsec/core/frame/camera5/MyCamera5;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lsec/core/frame/camera5/MyCamera5;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    .line 248
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera5  closeCamera  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 252
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 276
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 274
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 275
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/lsec/core/frame/camera5/MyCamera5;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/lsec/core/frame/camera5/MyCamera5;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraInst:Lcom/lsec/core/frame/camera5/MyCamera5;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/lsec/core/frame/camera5/MyCamera5;

    invoke-direct {v0}, Lcom/lsec/core/frame/camera5/MyCamera5;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraInst:Lcom/lsec/core/frame/camera5/MyCamera5;

    .line 85
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraInst:Lcom/lsec/core/frame/camera5/MyCamera5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera5Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 280
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 281
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

    .line 282
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public configure()V
    .locals 6

    .prologue
    .line 298
    :try_start_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize2()[I

    move-result-object v0

    .line 299
    .local v0, "size":[I
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mPreviewSize:Landroid/util/Size;

    .line 300
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "surface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 305
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 308
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_0
    if-eqz v1, :cond_1

    .line 309
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    sget-boolean v2, Lcom/lsec/core/frame/camera/MyCameraUtil;->bAddImageReader:Z

    if-eqz v2, :cond_3

    .line 313
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sget v4, Lcom/lsec/core/frame/camera5/MyCamera5;->mFormat:I

    sget v5, Lcom/lsec/core/frame/camera5/MyCamera5;->mMaxImages:I

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    .line 314
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    new-instance v3, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImpl;-><init>(Lcom/lsec/core/frame/camera5/MyCamera5;Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImpl;)V

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 316
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->extraPreviewSize:Landroid/graphics/Point;

    if-eqz v2, :cond_3

    .line 321
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->extraPreviewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->extraPreviewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lcom/lsec/core/frame/camera5/MyCamera5;->mFormat:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;

    .line 322
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;

    new-instance v3, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;-><init>(Lcom/lsec/core/frame/camera5/MyCamera5;Lcom/lsec/core/frame/camera5/MyCamera5$OnImageAvailableListenerImplExtra;)V

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 323
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 324
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_3
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 331
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v5, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 339
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_4
    :goto_0
    return-void

    .line 332
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_5
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_4

    .line 333
    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 334
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "template"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 346
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 347
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCameraOpen()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 387
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

    .line 198
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 199
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 201
    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 202
    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTexture:Landroid/view/TextureView;

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: "

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

    .line 230
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 231
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 233
    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 234
    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTexture:Landroid/view/TextureView;

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera5  open(cameraid, SurfaceHolder)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

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

    const-string v3, "MyCamera5  open(cameraid, SurfaceHolder)  Camera ID: "

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

    .line 214
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 215
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mTexture:Landroid/view/TextureView;

    .line 217
    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 218
    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mBackgroundHandler:Landroid/os/Handler;

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

    const-string v3, "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: "

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

.method public setCamera5Interface(Lcom/lsec/core/frame/camera5/MyCamera5Interface;)V
    .locals 0
    .param p1, "camera5Interface"    # Lcom/lsec/core/frame/camera5/MyCamera5Interface;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCamera5Interface:Lcom/lsec/core/frame/camera5/MyCamera5Interface;

    .line 90
    return-void
.end method

.method public setMaxImages(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 396
    sput p1, Lcom/lsec/core/frame/camera5/MyCamera5;->mMaxImages:I

    .line 397
    return-void
.end method

.method public setMaxPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->maxPreviewSize:Landroid/graphics/Point;

    .line 464
    return-void
.end method

.method public setMinPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->minPreviewSize:Landroid/graphics/Point;

    .line 468
    return-void
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 422
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview5:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 424
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 425
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->bShutDown:Z

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->stopRun()V

    .line 430
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    .line 431
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
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
    .line 402
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 403
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview5:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 405
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 406
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->bShutDown:Z

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;->stopRun()V

    .line 411
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

    .line 412
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfHolder5;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
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
    .line 438
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 439
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview5:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 441
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 442
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->bShutDown:Z

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->stopRun()V

    .line 447
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    .line 448
    iget-object v1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera5/Runnable_setPreviewSurfTexture5;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->specificPreviewSize:Landroid/graphics/Point;

    .line 456
    return-void
.end method

.method public setPreviewSizeExtra(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->extraPreviewSize:Landroid/graphics/Point;

    .line 460
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->bShutDown:Z

    .line 392
    invoke-virtual {p0}, Lcom/lsec/core/frame/camera5/MyCamera5;->stop()V

    .line 393
    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera5  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera5/MyCamera5;->startBackgroundThread()V

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera5/MyCamera5;->open(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
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
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera5/MyCamera5;->startBackgroundThread()V

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera5/MyCamera5;->open(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
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
    .line 171
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera5  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera5/MyCamera5;->startBackgroundThread()V

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera5/MyCamera5;->open(Ljava/lang/String;Landroid/view/TextureView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCamera5Interface:Lcom/lsec/core/frame/camera5/MyCamera5Interface;

    .line 190
    iget-object v0, p0, Lcom/lsec/core/frame/camera5/MyCamera5;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera5/MyCamera5;->closeCamera()V

    .line 194
    invoke-direct {p0}, Lcom/lsec/core/frame/camera5/MyCamera5;->stopBackgroundThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
