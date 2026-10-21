.class Landroid/media/MediaCodec$MediaImage$MediaPlane;
.super Landroid/media/Image$Plane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$MediaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaPlane"
.end annotation


# instance fields
.field private final mColInc:I

.field private final mData:Ljava/nio/ByteBuffer;

.field private final mRowInc:I

.field final synthetic this$0:Landroid/media/MediaCodec$MediaImage;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    iput p3, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    .line 9
    .line 10
    iput p4, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    .line 7
    .line 8
    return v0
.end method

.method public getRowStride()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    .line 7
    .line 8
    return v0
.end method
