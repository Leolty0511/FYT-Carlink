.class Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter$WriterSurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfacePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$0:Landroid/media/ImageWriter$WriterSurfaceImage;


# direct methods
.method private constructor <init>(Landroid/media/ImageWriter$WriterSurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    .line 7
    .line 8
    iput p3, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    .line 9
    .line 10
    iput-object p4, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

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

.method public static synthetic access$400(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private clearBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

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
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    .line 7
    .line 8
    return v0
.end method

.method public getRowStride()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    .line 7
    .line 8
    return v0
.end method
