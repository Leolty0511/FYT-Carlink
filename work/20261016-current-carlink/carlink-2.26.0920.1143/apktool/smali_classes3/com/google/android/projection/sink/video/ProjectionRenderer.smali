.class public final Lcom/google/android/projection/sink/video/ProjectionRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;,
        Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;,
        Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;,
        Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;
    }
.end annotation


# static fields
.field private static final DBG_TRACE:Z = true

.field private static final DEQUEUE_BUFFER_FAIL_MAX_RETRY:I = 0xa

.field private static final DEQUEUE_BUFFER_WAIT_TIME_US:I = 0x186a0

.field private static final ENABLE_DEBUG_LOG:Z = false

.field private static final RENDERER_STATE_NOT_STARTED:I = 0x1

.field private static final RENDERER_STATE_RUNNING:I = 0x2

.field private static final RENDERER_STATE_STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AHU.VIDEO"


# instance fields
.field H:Landroid/os/Handler;

.field landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

.field private final mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

.field private mCodec:Landroid/media/MediaCodec;

.field private final mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

.field private final mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;

.field private mLayoutChangeOngoing:Z

.field private final mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

.field private mOffset:Landroid/graphics/Rect;

.field private mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;

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

.field private mTouchXScale:F

.field private mTouchYScale:F

.field private final mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

.field private mVideoSize:Landroid/graphics/Rect;

.field private mViewport:Landroid/graphics/Rect;

.field port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/widget/TextView;Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;Lcom/google/android/projection/sink/video/VideoLatencyChecker;Lcom/google/android/projection/sink/audio/AudioLatencyChecker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchXScale:F

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchYScale:F

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 43
    .line 44
    new-instance v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 50
    .line 51
    new-instance v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->H:Landroid/os/Handler;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 64
    .line 65
    iput-object p4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 66
    .line 67
    new-instance p3, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    iput-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->H:Landroid/os/Handler;

    .line 77
    .line 78
    if-eqz p2, :cond_0

    .line 79
    .line 80
    new-instance p3, Lcom/google/android/projection/sink/video/FrameCounter;

    .line 81
    .line 82
    invoke-direct {p3, p2}, Lcom/google/android/projection/sink/video/FrameCounter;-><init>(Landroid/widget/TextView;)V

    .line 83
    .line 84
    .line 85
    iput-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

    .line 89
    .line 90
    :goto_0
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateSurface(Landroid/view/Surface;II)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iput-object p5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 121
    .line 122
    iput-object p6, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 123
    .line 124
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/google/android/projection/sink/video/ProjectionRenderer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateCodec()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->ackFrame()V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/video/ProjectionRenderer;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mInputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/FrameCounter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mFrameCounter:Lcom/google/android/projection/sink/video/FrameCounter;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/video/ProjectionRenderer;Landroid/view/Surface;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateSurface(Landroid/view/Surface;II)V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    return-object p0
.end method

.method private ackFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

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
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/projection/protocol/VideoFrame;->sessionId:I

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;->onFrameRendered(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private checkScale(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    div-float/2addr v1, p1

    .line 7
    iput v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchXScale:F

    .line 8
    .line 9
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    div-float/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchYScale:F

    .line 14
    .line 15
    return-void
.end method

.method private clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    .line 27
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-ge v2, v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v3

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 41
    .line 42
    :goto_1
    iget-object v1, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/4 v1, -0x1

    .line 47
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    .line 49
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    .line 51
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "layoutParams Margin top: "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " bottom:"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "AHU.VIDEO"

    .line 81
    .line 82
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "layoutParams Margin left: "

    .line 88
    .line 89
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, " right:"

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 103
    .line 104
    invoke-static {v1, v3, v2}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    iput-object v1, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 116
    .line 117
    iput-object v1, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 120
    .line 121
    iput-object v1, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 122
    .line 123
    iput-object v1, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 124
    .line 125
    return-void
.end method

.method private codecShouldBeRunning()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateCodec()V
    .locals 10

    .line 1
    const-string v0, "video/avc"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " updateCodec() 00  mCodec = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " codecShouldBeRunning() : "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->codecShouldBeRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "AHU.VIDEO"

    .line 32
    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez v1, :cond_7

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->codecShouldBeRunning()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_9

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    if-ge v1, v4, :cond_0

    .line 62
    .line 63
    move v1, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v1, v6

    .line 66
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v7, "Surface "

    .line 69
    .line 70
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v7, " becomes null for video "

    .line 79
    .line 80
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v7, " mLayoutChangeOngoing : "

    .line 89
    .line 90
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 94
    .line 95
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 108
    .line 109
    iget-object v4, v4, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 110
    .line 111
    if-nez v4, :cond_1

    .line 112
    .line 113
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 114
    .line 115
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 118
    .line 119
    iget-object v8, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 120
    .line 121
    iget-object v9, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 122
    .line 123
    invoke-static {v7, v4, v8, v9}, Lcom/google/android/projection/sink/video/DimensionUtils;->makeViewport(IILandroid/graphics/Rect;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Landroid/graphics/Rect;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 128
    .line 129
    new-instance v8, Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-direct {v8, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .line 133
    .line 134
    iput-object v8, v7, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 135
    .line 136
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 137
    .line 138
    new-instance v8, Landroid/graphics/Rect;

    .line 139
    .line 140
    iget-object v9, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 141
    .line 142
    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 143
    .line 144
    .line 145
    iput-object v8, v7, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    if-nez v1, :cond_2

    .line 149
    .line 150
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 151
    .line 152
    iget-object v4, v4, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 153
    .line 154
    if-nez v4, :cond_2

    .line 155
    .line 156
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 157
    .line 158
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 159
    .line 160
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 161
    .line 162
    iget-object v8, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 163
    .line 164
    iget-object v9, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 165
    .line 166
    invoke-static {v7, v4, v8, v9}, Lcom/google/android/projection/sink/video/DimensionUtils;->makeViewport(IILandroid/graphics/Rect;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Landroid/graphics/Rect;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 171
    .line 172
    new-instance v8, Landroid/graphics/Rect;

    .line 173
    .line 174
    invoke-direct {v8, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 175
    .line 176
    .line 177
    iput-object v8, v7, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 178
    .line 179
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 180
    .line 181
    new-instance v8, Landroid/graphics/Rect;

    .line 182
    .line 183
    iget-object v9, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 184
    .line 185
    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 186
    .line 187
    .line 188
    iput-object v8, v7, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_2
    move-object v4, v3

    .line 192
    :goto_1
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 193
    .line 194
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    .line 200
    if-eqz v1, :cond_3

    .line 201
    .line 202
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 206
    .line 207
    :goto_2
    iget-object v1, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 208
    .line 209
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 210
    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v4, "xxxx 00  mViewport = "

    .line 216
    .line 217
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 221
    .line 222
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v4, " width : "

    .line 226
    .line 227
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 231
    .line 232
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v4, " height: "

    .line 240
    .line 241
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 245
    .line 246
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 261
    .line 262
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 263
    .line 264
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 269
    .line 270
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 271
    .line 272
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    iget-object v8, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 277
    .line 278
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 279
    .line 280
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    iget-object v9, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 285
    .line 286
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 287
    .line 288
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    invoke-virtual {v7, v1, v4, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 293
    .line 294
    .line 295
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 302
    .line 303
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    .line 311
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 312
    .line 313
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 325
    .line 326
    .line 327
    move-result v8

    .line 328
    if-ne v1, v8, :cond_5

    .line 329
    .line 330
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eq v1, v8, :cond_6

    .line 341
    .line 342
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 343
    .line 344
    if-nez v1, :cond_6

    .line 345
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v1, " updateCodec() 01  mViewport : "

    .line 349
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v1, " layoutParams : "

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 378
    .line 379
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 384
    .line 385
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 386
    .line 387
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 388
    .line 389
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 394
    .line 395
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 396
    .line 397
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    iget-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 402
    .line 403
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 404
    .line 405
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 410
    .line 411
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 412
    .line 413
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 421
    .line 422
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    const-string v1, "layout change requested "

    .line 428
    .line 429
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    iput-boolean v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 443
    .line 444
    return-void

    .line 445
    :cond_6
    :goto_3
    iput-boolean v6, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 446
    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v4, "xxxx 01  mViewport = "

    .line 450
    .line 451
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 455
    .line 456
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    iput-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .line 472
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 473
    .line 474
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 479
    .line 480
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 489
    .line 490
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    int-to-float v1, v1

    .line 495
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 496
    .line 497
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    int-to-float v2, v2

    .line 502
    invoke-direct {p0, v1, v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->checkScale(FF)V

    .line 503
    .line 504
    .line 505
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 506
    .line 507
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    .line 508
    .line 509
    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 510
    .line 511
    .line 512
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 513
    .line 514
    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 515
    .line 516
    .line 517
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 518
    .line 519
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 520
    .line 521
    .line 522
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 523
    .line 524
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 529
    .line 530
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;

    .line 531
    .line 532
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 533
    .line 534
    .line 535
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 538
    .line 539
    .line 540
    new-instance v0, Landroid/graphics/Rect;

    .line 541
    .line 542
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 543
    .line 544
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 545
    .line 546
    .line 547
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mOffset:Landroid/graphics/Rect;

    .line 548
    .line 549
    new-instance v0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;

    .line 550
    .line 551
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;-><init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 552
    .line 553
    .line 554
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 557
    .line 558
    .line 559
    goto :goto_4

    .line 560
    :catch_0
    move-exception v0

    .line 561
    new-instance v1, Ljava/lang/RuntimeException;

    .line 562
    .line 563
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 564
    .line 565
    .line 566
    throw v1

    .line 567
    :cond_7
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->codecShouldBeRunning()Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-nez v0, :cond_8

    .line 572
    .line 573
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;

    .line 574
    .line 575
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->shutdown()V

    .line 576
    .line 577
    .line 578
    iput-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mInputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;

    .line 579
    .line 580
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;

    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->shutdown()V

    .line 583
    .line 584
    .line 585
    iput-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mOutputThread:Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;

    .line 586
    .line 587
    iput-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 588
    .line 589
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 590
    .line 591
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 592
    .line 593
    .line 594
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 595
    .line 596
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 597
    .line 598
    .line 599
    iput-object v3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mCodec:Landroid/media/MediaCodec;

    .line 600
    .line 601
    goto :goto_4

    .line 602
    :cond_8
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 603
    .line 604
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 605
    .line 606
    if-lez v1, :cond_9

    .line 607
    .line 608
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 609
    .line 610
    if-lez v0, :cond_9

    .line 611
    .line 612
    int-to-float v1, v1

    .line 613
    int-to-float v0, v0

    .line 614
    invoke-direct {p0, v1, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->checkScale(FF)V

    .line 615
    .line 616
    .line 617
    :cond_9
    :goto_4
    return-void
.end method

.method private updateSurface(Landroid/view/Surface;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;->onSurfaceDestroyed(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    if-lez p2, :cond_1

    .line 21
    .line 22
    if-lez p3, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateCodec()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mLayoutChangeOngoing:Z

    .line 30
    .line 31
    invoke-interface {p1, p2, p3, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;->onSurfaceCreated(IIZ)V

    .line 32
    .line 33
    .line 34
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
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const-string p1, "AHU.VIDEO"

    .line 15
    .line 16
    const-string v0, "Received frame when shutting down, ignoring."

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :goto_0
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public getRenderFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public declared-synchronized handleCodecConfig([B)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const-string p1, "AHU.VIDEO"

    .line 13
    .line 14
    const-string v0, "Received codec config while shutting down. Ignoring."

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    array-length v0, p1

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/google/android/projection/protocol/VideoFrame;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    invoke-direct {p1, v1, v2, v3, v0}, Lcom/google/android/projection/protocol/VideoFrame;-><init>(IJLjava/nio/ByteBuffer;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public isStarted()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I
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
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;->onSurfaceDestroyed(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->stop()V
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

.method public setOffset(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mOffset:Landroid/graphics/Rect;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurface:Landroid/view/Surface;

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
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateCodec()V

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
    iput v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mPendingInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mQueuedInputBuffers:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
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
    if-ge v2, v6, :cond_3

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
    iget v5, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchXScale:F

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
    iget v9, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchYScale:F

    .line 48
    .line 49
    mul-float/2addr v5, v9

    .line 50
    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 51
    .line 52
    iget-object v5, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mOffset:Landroid/graphics/Rect;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    move v10, v9

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget v10, v5, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    int-to-float v10, v10

    .line 62
    :goto_1
    if-nez v5, :cond_1

    .line 63
    .line 64
    move v5, v9

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 67
    .line 68
    int-to-float v5, v5

    .line 69
    :goto_2
    iget-object v11, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 70
    .line 71
    if-eqz v11, :cond_2

    .line 72
    .line 73
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    int-to-float v11, v11

    .line 76
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iget v11, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchXScale:F

    .line 85
    .line 86
    mul-float/2addr v10, v11

    .line 87
    add-float/2addr v10, v4

    .line 88
    iput v10, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 89
    .line 90
    aget-object v3, v8, v2

    .line 91
    .line 92
    iget-object v4, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 93
    .line 94
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 95
    .line 96
    int-to-float v4, v4

    .line 97
    iget v10, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 98
    .line 99
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    iget v9, v0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchYScale:F

    .line 108
    .line 109
    mul-float/2addr v5, v9

    .line 110
    add-float/2addr v5, v4

    .line 111
    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 112
    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 157
    .line 158
    .line 159
    move-result v17

    .line 160
    move-wide v1, v2

    .line 161
    move-wide v3, v4

    .line 162
    move v5, v9

    .line 163
    move v9, v10

    .line 164
    move v10, v11

    .line 165
    move v11, v12

    .line 166
    move v12, v13

    .line 167
    move v13, v14

    .line 168
    move v14, v15

    .line 169
    move/from16 v15, v16

    .line 170
    .line 171
    move/from16 v16, v17

    .line 172
    .line 173
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    return-object v1
.end method

.method public updatePreviewSize(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    .line 25
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-ge v2, v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v3

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 39
    .line 40
    :goto_1
    iget-object v2, v2, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 48
    .line 49
    :goto_2
    iget-object v4, v4, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 50
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v6, "updatePreviewSize old  mViewport = "

    .line 54
    .line 55
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v6, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "AHU.VIDEO"

    .line 68
    .line 69
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    new-instance v5, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    iput-object v5, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 92
    .line 93
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v7, "updatePreviewSize new  mViewport = "

    .line 96
    .line 97
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v7, " surfaceFrame : "

    .line 106
    .line 107
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    const-string v5, "xxxx  mViewport = "

    .line 121
    .line 122
    if-nez v2, :cond_b

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    int-to-float v2, v2

    .line 129
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    int-to-float v7, v7

    .line 134
    div-float/2addr v2, v7

    .line 135
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    int-to-float v8, p1

    .line 140
    div-float v9, v8, v2

    .line 141
    .line 142
    float-to-int v9, v9

    .line 143
    invoke-static {v9, p2}, Ljava/lang/Math;->min(II)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v11, "xxxx  surfaceFrame = "

    .line 150
    .line 151
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v11, "  mSurfaceView.getWidth() = "

    .line 158
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v11, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 163
    .line 164
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    int-to-float v10, v9

    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 182
    .line 183
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-le v2, p1, :cond_5

    .line 188
    .line 189
    int-to-float v2, v7

    .line 190
    div-float v2, v8, v2

    .line 191
    .line 192
    iget-object v10, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    int-to-float v10, v10

    .line 199
    mul-float/2addr v2, v10

    .line 200
    goto :goto_4

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    int-to-float v2, v2

    .line 208
    :goto_4
    iget-object v10, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 209
    .line 210
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-le v10, p1, :cond_6

    .line 215
    .line 216
    int-to-float v7, v7

    .line 217
    div-float/2addr v8, v7

    .line 218
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    int-to-float v7, v7

    .line 225
    mul-float/2addr v8, v7

    .line 226
    move v10, v8

    .line 227
    goto :goto_5

    .line 228
    :cond_6
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 229
    .line 230
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    int-to-float v7, v7

    .line 235
    move v10, v7

    .line 236
    :goto_5
    move v8, v2

    .line 237
    goto :goto_6

    .line 238
    :cond_7
    iget-object v7, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 239
    .line 240
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    int-to-float v7, v7

    .line 245
    iget-object v11, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 246
    .line 247
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    int-to-float v11, v11

    .line 252
    div-float/2addr v7, v11

    .line 253
    cmpl-float v2, v7, v2

    .line 254
    .line 255
    if-lez v2, :cond_8

    .line 256
    .line 257
    div-float v10, v8, v7

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_8
    mul-float v8, v10, v7

    .line 261
    .line 262
    :goto_6
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    div-int/lit8 v2, v2, 0x2

    .line 267
    .line 268
    mul-int/lit8 v2, v2, 0x2

    .line 269
    .line 270
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    div-int/lit8 v7, v7, 0x2

    .line 275
    .line 276
    mul-int/lit8 v7, v7, 0x2

    .line 277
    .line 278
    sub-int v8, p1, v2

    .line 279
    .line 280
    if-le p2, v7, :cond_9

    .line 281
    .line 282
    sub-int p2, v7, v9

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_9
    sub-int p2, v9, v7

    .line 286
    .line 287
    :goto_7
    const-string v10, "xxxx  fixWidth = "

    .line 288
    .line 289
    const-string v11, "  fixHeight = "

    .line 290
    .line 291
    const-string v12, " surfaceFrame: "

    .line 292
    .line 293
    invoke-static {v10, p1, v11, v9, v12}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v10, "xxxx  newWidth = "

    .line 310
    .line 311
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v10, "  newHeight = "

    .line 318
    .line 319
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v10, "  extraWidth = "

    .line 323
    .line 324
    const-string v11, " extraHeight = "

    .line 325
    .line 326
    invoke-static {v4, v7, v10, v8, v11}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    new-instance v4, Landroid/graphics/Rect;

    .line 340
    .line 341
    div-int/lit8 v8, v8, 0x2

    .line 342
    .line 343
    div-int/lit8 v10, p2, 0x2

    .line 344
    .line 345
    sub-int v11, p1, v8

    .line 346
    .line 347
    if-ltz p2, :cond_a

    .line 348
    .line 349
    add-int p2, v7, v10

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_a
    sub-int p2, v9, v10

    .line 353
    .line 354
    :goto_8
    invoke-direct {v4, v8, v10, v11, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 355
    .line 356
    .line 357
    iput-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 358
    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 365
    .line 366
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    .line 378
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    .line 380
    move p2, v9

    .line 381
    goto :goto_9

    .line 382
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 388
    .line 389
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 400
    .line 401
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 406
    .line 407
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 408
    .line 409
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    .line 415
    :goto_9
    if-eqz v1, :cond_c

    .line 416
    .line 417
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 418
    .line 419
    new-instance v2, Landroid/graphics/Rect;

    .line 420
    .line 421
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 422
    .line 423
    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 424
    .line 425
    .line 426
    iput-object v2, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 427
    .line 428
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->port:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 429
    .line 430
    new-instance v2, Landroid/graphics/Rect;

    .line 431
    .line 432
    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    .line 434
    .line 435
    iput-object v2, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 436
    .line 437
    goto :goto_a

    .line 438
    :cond_c
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 439
    .line 440
    new-instance v2, Landroid/graphics/Rect;

    .line 441
    .line 442
    iget-object v4, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 443
    .line 444
    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 445
    .line 446
    .line 447
    iput-object v2, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->viewport:Landroid/graphics/Rect;

    .line 448
    .line 449
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->landscape:Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;

    .line 450
    .line 451
    new-instance v2, Landroid/graphics/Rect;

    .line 452
    .line 453
    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 454
    .line 455
    .line 456
    iput-object v2, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$PreviewConfigure;->previewSize:Landroid/graphics/Rect;

    .line 457
    .line 458
    :goto_a
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 459
    .line 460
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 461
    .line 462
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 463
    .line 464
    invoke-virtual {v0, p2, p1, p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 468
    .line 469
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    .line 472
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 473
    .line 474
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mViewport:Landroid/graphics/Rect;

    .line 479
    .line 480
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 481
    .line 482
    .line 483
    move-result p2

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updateSurfaceSize(II)V

    .line 485
    .line 486
    .line 487
    return-void
.end method

.method public updateSurfaceSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    invoke-direct {p0, p2, p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->checkScale(FF)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p2, "updateSurfaceSize mSurfaceFrame: "

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " mVideoSize :"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mVideoSize:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, "  scale: "

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchXScale:F

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, ","

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer;->mTouchYScale:F

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "AHU.VIDEO"

    .line 65
    .line 66
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void
.end method
