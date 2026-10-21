.class Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader$SurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfacePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$1:Landroid/media/ImageReader$SurfaceImage;


# direct methods
.method private constructor <init>(Landroid/media/ImageReader$SurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    .line 7
    .line 8
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    .line 9
    .line 10
    iput-object p4, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$1000(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private clearBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    return-object v0
.end method

.method public getPixelStride()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    .line 7
    .line 8
    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/ImageReader;->access$900(Landroid/media/ImageReader;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x24

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v1, "getPixelStride is not supported for RAW_PRIVATE plane"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public getRowStride()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    .line 7
    .line 8
    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/ImageReader;->access$900(Landroid/media/ImageReader;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x24

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v1, "getRowStride is not supported for RAW_PRIVATE plane"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
