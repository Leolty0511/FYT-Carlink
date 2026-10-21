.class Landroid/media/videoeditor/MediaArtistNativeHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field public final synthetic val$callback:Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;

.field public final synthetic val$decArray:[I

.field public final synthetic val$decBuffer:Ljava/nio/IntBuffer;

.field public final synthetic val$decHeight:I

.field public final synthetic val$decWidth:I

.field public final synthetic val$needToMassage:Z

.field public final synthetic val$outHeight:I

.field public final synthetic val$outWidth:I

.field public final synthetic val$thumbnailSize:I

.field public final synthetic val$tmpBitmap:Landroid/graphics/Bitmap;

.field public final synthetic val$videoRotation:I


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;IILjava/nio/IntBuffer;[IIZLandroid/graphics/Bitmap;IIILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outWidth:I

    iput p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outHeight:I

    iput-object p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decArray:[I

    iput p6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$thumbnailSize:I

    iput-boolean p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$needToMassage:Z

    iput-object p8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$tmpBitmap:Landroid/graphics/Bitmap;

    iput p9, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decWidth:I

    iput p10, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decHeight:I

    iput p11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$videoRotation:I

    iput-object p12, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$callback:Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outWidth:I

    iget v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decArray:[I

    iget v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$thumbnailSize:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 4
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$needToMassage:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$tmpBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 8
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    iget v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 11
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 13
    iget v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$videoRotation:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 14
    iget v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$tmpBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid/media/videoeditor/MediaArtistNativeHelper;->access$000()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 16
    :goto_0
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$callback:Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;

    invoke-interface {v1, v0, p1}, Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;->onThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method
