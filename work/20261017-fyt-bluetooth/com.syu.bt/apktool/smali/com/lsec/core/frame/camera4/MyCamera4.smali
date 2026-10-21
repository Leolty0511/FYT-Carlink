.class public Lcom/lsec/core/frame/camera4/MyCamera4;
.super Ljava/lang/Object;
.source "MyCamera4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImpl;,
        Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static mCameraInst:Lcom/lsec/core/frame/camera4/MyCamera4;

.field public static mFormat:I

.field public static mMaxImages:I


# instance fields
.field public bShareMemory2Other:Z

.field public bShutDown:Z

.field public extraPreviewSize:Landroid/graphics/Point;

.field i:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field public mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

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

.field runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

.field runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

.field public specificPreviewSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lsec/core/frame/camera4/MyCamera4;->$assertionsDisabled:Z

    .line 63
    const/16 v0, 0x23

    sput v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mFormat:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mMaxImages:I

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraInst:Lcom/lsec/core/frame/camera4/MyCamera4;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShutDown:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 58
    iput-boolean v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShareMemory2Other:Z

    .line 60
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mHeader:[B

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/lsec/core/frame/camera4/MyCamera4$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera4/MyCamera4$1;-><init>(Lcom/lsec/core/frame/camera4/MyCamera4;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 117
    new-instance v0, Lcom/lsec/core/frame/camera4/MyCamera4$2;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/camera4/MyCamera4$2;-><init>(Lcom/lsec/core/frame/camera4/MyCamera4;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 353
    iput v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->i:I

    .line 395
    iput-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

    .line 414
    iput-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/camera4/MyCamera4;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/camera4/MyCamera4;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/camera4/MyCamera4;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static synthetic access$5(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lsec/core/frame/camera4/MyCamera4;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera4  closeCamera  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 237
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 261
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 259
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 260
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/lsec/core/frame/camera4/MyCamera4;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/lsec/core/frame/camera4/MyCamera4;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraInst:Lcom/lsec/core/frame/camera4/MyCamera4;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/lsec/core/frame/camera4/MyCamera4;

    invoke-direct {v0}, Lcom/lsec/core/frame/camera4/MyCamera4;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraInst:Lcom/lsec/core/frame/camera4/MyCamera4;

    .line 76
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraInst:Lcom/lsec/core/frame/camera4/MyCamera4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera4Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 269
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 270
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    .line 271
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public configure()V
    .locals 7

    .prologue
    .line 287
    :try_start_0
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCameraUtil;->getSystemPropSize2()[I

    move-result-object v0

    .line 289
    .local v0, "size":[I
    new-instance v3, Landroid/util/Size;

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    .line 290
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 295
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 305
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 306
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    sget-boolean v3, Lcom/lsec/core/frame/camera/MyCameraUtil;->bAddImageReader:Z

    if-eqz v3, :cond_3

    .line 310
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget v5, Lcom/lsec/core/frame/camera4/MyCamera4;->mFormat:I

    sget v6, Lcom/lsec/core/frame/camera4/MyCamera4;->mMaxImages:I

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    .line 311
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    new-instance v4, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImpl;-><init>(Lcom/lsec/core/frame/camera4/MyCamera4;Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImpl;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 313
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 315
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->extraPreviewSize:Landroid/graphics/Point;

    if-eqz v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->extraPreviewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->extraPreviewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v5, Lcom/lsec/core/frame/camera4/MyCamera4;->mFormat:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;

    .line 320
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;

    new-instance v4, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;-><init>(Lcom/lsec/core/frame/camera4/MyCamera4;Lcom/lsec/core/frame/camera4/MyCamera4$OnImageAvailableListenerImplExtra;)V

    iget-object v5, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 321
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 322
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mImageReaderExtra:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_3
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 329
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTargetSurfaces:Ljava/util/List;

    iget-object v5, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v6, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 337
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    :cond_4
    :goto_1
    return-void

    .line 296
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_5
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTexture:Landroid/view/TextureView;

    if-eqz v3, :cond_7

    .line 297
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 298
    .local v2, "texture":Landroid/graphics/SurfaceTexture;
    sget-boolean v3, Lcom/lsec/core/frame/camera4/MyCamera4;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 334
    .end local v0    # "size":[I
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 299
    .restart local v0    # "size":[I
    .restart local v1    # "surface":Landroid/view/Surface;
    .restart local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_6
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 300
    new-instance v1, Landroid/view/Surface;

    .end local v1    # "surface":Landroid/view/Surface;
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 301
    .restart local v1    # "surface":Landroid/view/Surface;
    goto/16 :goto_0

    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_7
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    goto/16 :goto_0

    .line 330
    :cond_8
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_4

    .line 331
    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 332
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "template"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 344
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 345
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCameraOpen()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 383
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

    .line 186
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 187
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 189
    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 190
    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTexture:Landroid/view/TextureView;

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera4  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera4  open(cameraid, SurfaceTexture)  Camera ID: "

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

    .line 218
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 219
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 221
    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 222
    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTexture:Landroid/view/TextureView;

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera4  open(cameraid, SurfaceHolder)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera4  open(cameraid, SurfaceHolder)  Camera ID: "

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

    .line 202
    invoke-static {}, Lcom/lsec/core/frame/camera/MyCamera;->setSystemProp2()V

    .line 203
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mTexture:Landroid/view/TextureView;

    .line 205
    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 206
    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera4  open(cameraid, SurfaceTexture)  Camera ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mSpecificCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyCamera4  open(cameraid, SurfaceTexture)  Camera ID: "

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

.method public setCamera4Interface(Lcom/lsec/core/frame/camera4/MyCamera4Interface;)V
    .locals 0
    .param p1, "camera4Interface"    # Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    .line 81
    return-void
.end method

.method public setMaxImages(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 392
    sput p1, Lcom/lsec/core/frame/camera4/MyCamera4;->mMaxImages:I

    .line 393
    return-void
.end method

.method public setMaxPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->maxPreviewSize:Landroid/graphics/Point;

    .line 460
    return-void
.end method

.method public setMinPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->minPreviewSize:Landroid/graphics/Point;

    .line 464
    return-void
.end method

.method public setPreview(Landroid/hardware/camera2/CameraManager;Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p3, "idVideo"    # I
    .param p4, "iDegree"    # I

    .prologue
    .line 417
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 418
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 420
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShutDown:Z

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;->stopRun()V

    .line 426
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    .line 427
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
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
    .line 398
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 399
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 401
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShutDown:Z

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;->stopRun()V

    .line 407
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

    .line 408
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfHolder:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfHolder4;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
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
    .line 434
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 435
    const-string v1, "HJT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreview4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sput p3, Lcom/lsec/core/frame/camera/MyCameraUtil;->idVideo:I

    .line 437
    sput p4, Lcom/lsec/core/frame/camera/MyCameraUtil;->iDegree:I

    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShutDown:Z

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;->stopRun()V

    .line 443
    :cond_0
    new-instance v1, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    invoke-direct {v1, p2}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    .line 444
    iget-object v1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->runnable_setPreviewSurfTexture:Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;

    invoke-virtual {v1}, Lcom/lsec/core/frame/camera4/Runnable_setPreviewSurfTexture4;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->specificPreviewSize:Landroid/graphics/Point;

    .line 452
    return-void
.end method

.method public setPreviewSizeExtra(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "val"    # Landroid/graphics/Point;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->extraPreviewSize:Landroid/graphics/Point;

    .line 456
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->bShutDown:Z

    .line 388
    invoke-virtual {p0}, Lcom/lsec/core/frame/camera4/MyCamera4;->stop()V

    .line 389
    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "specificCameraId"    # Ljava/lang/String;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera4  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera4/MyCamera4;->startBackgroundThread()V

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera4/MyCamera4;->open(Ljava/lang/String;Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
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
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera4/MyCamera4;->startBackgroundThread()V

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera4/MyCamera4;->open(Ljava/lang/String;Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
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
    .line 160
    monitor-enter p0

    :try_start_0
    const-string v0, "HJT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCamera4  Camera ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCameraDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera4/MyCamera4;->startBackgroundThread()V

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera4/MyCamera4;->open(Ljava/lang/String;Landroid/view/TextureView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCamera4Interface:Lcom/lsec/core/frame/camera4/MyCamera4Interface;

    .line 178
    iget-object v0, p0, Lcom/lsec/core/frame/camera4/MyCamera4;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lsec/core/frame/camera4/MyCamera4;->closeCamera()V

    .line 182
    invoke-direct {p0}, Lcom/lsec/core/frame/camera4/MyCamera4;->stopBackgroundThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
