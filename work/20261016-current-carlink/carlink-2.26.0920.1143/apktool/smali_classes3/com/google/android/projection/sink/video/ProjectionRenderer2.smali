.class public final Lcom/google/android/projection/sink/video/ProjectionRenderer2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;,
        Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;,
        Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;
    }
.end annotation


# static fields
.field private static final DBG_TRACE:Z = false

.field private static final DEBUG_TOUCH:Z = false

.field private static final DEBUG_VIDEO:Z = false

.field private static final DEQUEUE_BUFFER_FAIL_MAX_RETRY:I = 0xa

.field private static final DEQUEUE_BUFFER_WAIT_TIME_US:I = 0x186a0

.field private static final RENDERER_STATE_NOT_STARTED:I = 0x1

.field private static final RENDERER_STATE_RUNNING:I = 0x2

.field private static final RENDERER_STATE_STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AHU.VIDEO"


# instance fields
.field H:Landroid/os/Handler;

.field private layoutRunnable:Ljava/lang/Runnable;

.field private final mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

.field private mCodec:Landroid/media/MediaCodec;

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private mDefaultViewport:Landroid/graphics/Rect;

.field private final mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

.field private final mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;

.field private mLayoutChangeOngoing:Z

.field private final mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

.field private mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;

.field private final mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/projection/protocol/VideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/projection/protocol/VideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mState:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mTouchXScale:F

.field private mTouchYScale:F

.field private final mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

.field private mVideoSize:Landroid/graphics/Rect;

.field private mViewport:Landroid/graphics/Rect;

.field private mWindowSize:Landroid/util/Size;

.field private params:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/widget/TextView;Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;Lcom/google/android/projection/sink/video/VideoLatencyChecker;Lcom/google/android/projection/sink/audio/AudioLatencyChecker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchXScale:F

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchYScale:F

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetX:F

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetY:F

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mLayoutChangeOngoing:Z

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$1;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->layoutRunnable:Ljava/lang/Runnable;

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->H:Landroid/os/Handler;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 62
    .line 63
    iput-object p4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 64
    .line 65
    new-instance p3, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .line 73
    .line 74
    iput-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->H:Landroid/os/Handler;

    .line 75
    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    new-instance p3, Lcom/google/android/projection/sink/video/FrameCounter;

    .line 79
    .line 80
    invoke-direct {p3, p2}, Lcom/google/android/projection/sink/video/FrameCounter;-><init>(Landroid/widget/TextView;)V

    .line 81
    .line 82
    .line 83
    iput-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

    .line 87
    .line 88
    :goto_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    if-eqz p3, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/view/View;

    .line 103
    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result p4

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-direct {p0, p3, p4, p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->updateSurface(Landroid/view/Surface;II)V

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 121
    .line 122
    .line 123
    iput-object p5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 124
    .line 125
    iput-object p6, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 126
    .line 127
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->params:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/sink/video/ProjectionRenderer2;Landroid/view/Surface;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->updateSurface(Landroid/view/Surface;II)V

    return-void
.end method

.method public static synthetic access$1202(Lcom/google/android/projection/sink/video/ProjectionRenderer2;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->updateCodec()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->ackFrame()V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/FrameCounter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    return-object p0
.end method

.method private ackFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/projection/protocol/VideoFrame;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/projection/protocol/VideoFrame;->sessionId:I

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onFrameRendered(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private checkScale(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    div-float/2addr v1, p1

    .line 7
    iput v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchXScale:F

    .line 8
    .line 9
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    div-float/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchYScale:F

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 22
    .line 23
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    sub-int/2addr p1, p2

    .line 26
    int-to-float p1, p1

    .line 27
    const/high16 p2, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr p1, p2

    .line 30
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetX:F

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 39
    .line 40
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    sub-int/2addr p1, v0

    .line 43
    int-to-float p1, p1

    .line 44
    div-float/2addr p1, p2

    .line 45
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetY:F

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p2, "checkScale mTouchXScale: "

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchXScale:F

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, " mTouchYScale:"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchYScale:F

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "AHU.VIDEO"

    .line 74
    .line 75
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v0, "checkScale mTouchOffsetX: "

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetX:F

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, " mTouchOffsetY:"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetY:F

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private clearSurfaceViewLayoutParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    .line 14
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private codecShouldBeRunning()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDynamicRatio(Landroid/view/View;II)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mDefaultViewport:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mDefaultViewport:Landroid/graphics/Rect;

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 4
    iget-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mWindowSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 6
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    invoke-virtual {v2}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    invoke-virtual {v3}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 7
    iget-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mDefaultViewport:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mDefaultViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mVideoSize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AHU.VIDEO"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "mDefaultViewport: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mDefaultViewport:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "mSurfaceFrame: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "mWindowSize: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " x "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Parent Size: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "defaultRatio: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " parentRatio : "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " emulatedRatio: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p3, v3

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p3, v0

    int-to-float v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    invoke-virtual {v5}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    invoke-virtual {v5}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p2, v5

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 17
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 18
    iget-object v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    invoke-virtual {v5}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-int v5, v5

    mul-float/2addr p3, p2

    float-to-int p3, p3

    mul-float/2addr v2, p2

    float-to-int p2, v2

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "00 target targetWidth: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " targetHeight : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "00 target emulatedWidth: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " emulatedHeight : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "11 target targetWidth: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCurrentWidth:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCurrentHeight:I

    if-eq p2, v0, :cond_3

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "update SurfaceView targetWidth: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCurrentWidth:I

    .line 27
    iput p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCurrentHeight:I

    int-to-float v5, p3

    int-to-float v6, p2

    .line 28
    invoke-direct {p0, v5, v6}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->checkScale(FF)V

    if-ne v2, p2, :cond_2

    if-eq v0, p3, :cond_3

    .line 29
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->params:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 31
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->params:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->layoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->layoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private updateCodec()V
    .locals 6

    .line 1
    const-string v0, "video/avc"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->codecShouldBeRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-static {v3, v1, v4}, Lcom/google/android/projection/sink/video/DimensionUtils;->makeViewport(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mViewport:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mViewport:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-direct {p0, v3, v1, v4}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->setDynamicRatio(Landroid/view/View;II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mLayoutChangeOngoing:Z

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    iput-boolean v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mLayoutChangeOngoing:Z

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mLayoutChangeOngoing:Z

    .line 56
    .line 57
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-static {v0, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 80
    .line 81
    iget-object v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    .line 82
    .line 83
    invoke-virtual {v4, v0, v5, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "updateCodec failed for video "

    .line 129
    .line 130
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v3, "AHU.VIDEO"

    .line 143
    .line 144
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 148
    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    .line 154
    :catch_1
    iput-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->codecShouldBeRunning()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_2

    .line 162
    .line 163
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->shutdown()V

    .line 166
    .line 167
    .line 168
    iput-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;->shutdown()V

    .line 173
    .line 174
    .line 175
    iput-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeOutputThread;

    .line 176
    .line 177
    iput-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 187
    .line 188
    .line 189
    iput-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mViewport:Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mViewport:Landroid/graphics/Rect;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->setDynamicRatio(Landroid/view/View;II)Z

    .line 207
    .line 208
    .line 209
    :cond_3
    :goto_0
    return-void
.end method

.method private updateSurface(Landroid/view/Surface;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mLayoutChangeOngoing:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceDestroyed(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    if-lez p2, :cond_2

    .line 21
    .line 22
    if-lez p3, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mWindowSize:Landroid/util/Size;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Landroid/util/Size;

    .line 29
    .line 30
    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mWindowSize:Landroid/util/Size;

    .line 34
    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->updateCodec()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mLayoutChangeOngoing:Z

    .line 41
    .line 42
    invoke-interface {p1, p2, p3, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceCreated(IIZ)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized decodeBuffer(Lcom/google/android/projection/protocol/VideoFrame;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :goto_0
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public getRenderFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public declared-synchronized handleCodecConfig([B)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    array-length v0, p1

    .line 15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/android/projection/protocol/VideoFrame;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    invoke-direct {p1, v1, v2, v3, v0}, Lcom/google/android/projection/protocol/VideoFrame;-><init>(IJLjava/nio/ByteBuffer;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public isStarted()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayoutChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->codecShouldBeRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mViewport:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mViewport:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->setDynamicRatio(Landroid/view/View;II)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/view/View;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized prepareStart(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceDestroyed(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceView:Landroid/view/SurfaceView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public resetSurfaceViewSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCurrentWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mCurrentHeight:I

    .line 4
    .line 5
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurface:Landroid/view/Surface;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->updateCodec()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const-string v0, "AHU.VIDEO"

    .line 34
    .line 35
    const-string v1, "Cannot start - surface is null or invalid"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_2
    :goto_1
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x3

    .line 3
    :try_start_0
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->updateCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public transformMotion(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 10
    .line 11
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v6, :cond_1

    .line 15
    .line 16
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 19
    .line 20
    .line 21
    aput-object v3, v7, v2

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 29
    .line 30
    .line 31
    aput-object v3, v8, v2

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 34
    .line 35
    .line 36
    aget-object v3, v8, v2

    .line 37
    .line 38
    iget v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 39
    .line 40
    iget v5, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchXScale:F

    .line 41
    .line 42
    mul-float/2addr v4, v5

    .line 43
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 44
    .line 45
    iget v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 46
    .line 47
    iget v9, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchYScale:F

    .line 48
    .line 49
    mul-float/2addr v5, v9

    .line 50
    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 51
    .line 52
    iget-object v5, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    int-to-float v5, v5

    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget v5, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetX:F

    .line 69
    .line 70
    add-float/2addr v4, v5

    .line 71
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 72
    .line 73
    aget-object v3, v8, v2

    .line 74
    .line 75
    iget-object v4, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 76
    .line 77
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    int-to-float v4, v4

    .line 80
    iget v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 81
    .line 82
    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    iget v5, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchOffsetY:F

    .line 91
    .line 92
    add-float/2addr v4, v5

    .line 93
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 94
    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 135
    .line 136
    .line 137
    move-result v16

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 139
    .line 140
    .line 141
    move-result v17

    .line 142
    move-wide v1, v2

    .line 143
    move-wide v3, v4

    .line 144
    move v5, v9

    .line 145
    move v9, v10

    .line 146
    move v10, v11

    .line 147
    move v11, v12

    .line 148
    move v12, v13

    .line 149
    move v13, v14

    .line 150
    move v14, v15

    .line 151
    move/from16 v15, v16

    .line 152
    .line 153
    move/from16 v16, v17

    .line 154
    .line 155
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    return-object v1
.end method

.method public updateSurfaceSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p2, "updateSurfaceSize mSurfaceFrame: "

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " mVideoSize :"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mVideoSize:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "  scale: "

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchXScale:F

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, ","

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->mTouchYScale:F

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "AHU.VIDEO"

    .line 54
    .line 55
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void
.end method
