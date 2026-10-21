.class public Lcom/google/android/projection/protocol/VideoResampler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final height:I

.field private mNativeVideoResampler:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoResampler;->assetManager:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/VideoResampler;->width:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/projection/protocol/VideoResampler;->height:I

    .line 9
    .line 10
    return-void
.end method

.method private native nativeEnqueueFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)V
.end method

.method private native nativeInit(Landroid/content/res/AssetManager;II)V
.end method

.method private native nativeRequestFrame(JLandroid/graphics/Bitmap;II)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoResampler;->assetManager:Landroid/content/res/AssetManager;

    iget v1, p0, Lcom/google/android/projection/protocol/VideoResampler;->width:I

    iget v2, p0, Lcom/google/android/projection/protocol/VideoResampler;->height:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/projection/protocol/VideoResampler;->nativeInit(Landroid/content/res/AssetManager;II)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/VideoResampler;->nativeShutdown()V

    return-void
.end method

.method public enqueueFrame(Landroid/media/Image;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v4, v0, v1

    .line 11
    .line 12
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    aget-object v1, v0, v1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v1, 0x1

    .line 23
    aget-object v6, v0, v1

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v7, 0x2

    .line 30
    aget-object v7, v0, v7

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    aget-object v8, v0, v1

    .line 37
    .line 38
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    aget-object v0, v0, v1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    move-object v1, p0

    .line 57
    invoke-direct/range {v1 .. v11}, Lcom/google/android/projection/protocol/VideoResampler;->nativeEnqueueFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public requestFrame(Landroid/graphics/Bitmap;I)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long v5, v0, v2

    iget v8, p0, Lcom/google/android/projection/protocol/VideoResampler;->width:I

    iget v9, p0, Lcom/google/android/projection/protocol/VideoResampler;->height:I

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/projection/protocol/VideoResampler;->nativeRequestFrame(JLandroid/graphics/Bitmap;II)V

    return-void
.end method
