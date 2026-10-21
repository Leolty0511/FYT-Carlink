.class public final Landroid/media/videoeditor/VideoEditor$OverlayData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayData"
.end annotation


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mClear:Z

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mRenderingMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    return-void
.end method


# virtual methods
.method public needsRendering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public renderOverlay(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 4
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    iget v2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    .line 6
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    add-int/2addr v2, v3

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    add-int v4, v3, v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    move v5, v4

    move v4, v1

    .line 14
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_2

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rendering mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 19
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    .line 20
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    .line 21
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v2, v3

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 22
    :cond_4
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 23
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    add-int v4, v3, v2

    .line 24
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move v5, v4

    move v4, v1

    .line 25
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 26
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    move-object v6, v2

    move-object v2, v7

    goto :goto_2

    .line 27
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-direct {v6, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 30
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 31
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    :goto_3
    return-void
.end method

.method public set(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 2
    iput p2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    return-void
.end method

.method public setClear()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    return-void
.end method
