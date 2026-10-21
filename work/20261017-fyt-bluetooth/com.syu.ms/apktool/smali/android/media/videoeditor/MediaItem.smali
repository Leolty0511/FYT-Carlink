.class public abstract Landroid/media/videoeditor/MediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;
    }
.end annotation


# static fields
.field public static final END_OF_FILE:I = -0x1

.field public static final RENDERING_MODE_BLACK_BORDER:I = 0x0

.field public static final RENDERING_MODE_CROPPING:I = 0x2

.field public static final RENDERING_MODE_STRETCH:I = 0x1


# instance fields
.field public mBeginTransition:Landroid/media/videoeditor/Transition;

.field private mBlankFrameFilename:Ljava/lang/String;

.field private mBlankFrameGenerated:Z

.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public mEndTransition:Landroid/media/videoeditor/Transition;

.field public final mFilename:Ljava/lang/String;

.field public mGeneratedImageClip:Ljava/lang/String;

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectPath:Ljava/lang/String;

.field public mRegenerateClip:Z

.field private mRenderingMode:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, 0x80000000L

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    .line 7
    iput-object p2, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    .line 9
    iput p4, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    .line 12
    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    .line 13
    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    .line 14
    move-object p2, p1

    check-cast p2, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {p2}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object p2

    iput-object p2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 15
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 17
    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File size is more than 2GB"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not found ! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaItem : filename is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addEffect(Landroid/media/videoeditor/Effect;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 5
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 7
    instance-of p1, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz p1, :cond_0

    .line 8
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Effect start time + effect duration > media clip duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Media item mismatch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NULL effect cannot be applied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOverlay(Landroid/media/videoeditor/Overlay;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 4
    instance-of v0, p1, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    .line 6
    invoke-virtual {v0}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    instance-of v2, p0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v3

    goto :goto_0

    .line 10
    :cond_0
    move-object v2, p0

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    .line 11
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    .line 12
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 13
    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 14
    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap dimensions must match media item dimensions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Overlay bitmap not specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Overlay not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Overlay start time + overlay duration > media clip duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlay already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Media item mismatch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NULL Overlay cannot be applied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public adjustTransitions()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2, v0, v1}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 8
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2, v0, v1}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/videoeditor/MediaItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/MediaItem;

    iget-object p1, p1, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ghost.rgb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 4
    :catch_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v4, v1, [I

    const/16 v5, 0x100

    .line 5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    move v7, v2

    :goto_0
    if-ge v7, v1, :cond_0

    .line 7
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    .line 8
    invoke-virtual {v8, v4, v2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 9
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    .line 12
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    const/4 v0, 0x5

    .line 13
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 14
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 15
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 16
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 17
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 18
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    return-void
.end method

.method public getAllEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public getAllOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method public abstract getAspectRatio()I
.end method

.method public getBeginTransition()Landroid/media/videoeditor/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    return-object v0
.end method

.method public getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 3
    instance-of v1, p0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p0

    check-cast v1, Landroid/media/videoeditor/MediaVideoItem;

    .line 5
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getFileType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 7
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 8
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 9
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, p0, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_1

    .line 11
    move-object v0, p0

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    .line 12
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract getDuration()J
.end method

.method public getEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Effect;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEndTransition()Landroid/media/videoeditor/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    return-object v0
.end method

.method public abstract getFileType()I
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedImageClip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHeight()I
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRegenerateClip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    return v0
.end method

.method public getRenderingMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    return v0
.end method

.method public abstract getThumbnail(IIJ)Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
.end method

.method public getThumbnailList(IIJJI)[Landroid/graphics/Bitmap;
    .locals 12

    move/from16 v7, p7

    .line 1
    new-array v10, v7, [Landroid/graphics/Bitmap;

    .line 2
    new-array v8, v7, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    .line 3
    aput v0, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v9, Landroid/media/videoeditor/MediaItem$1;

    move-object v11, p0

    invoke-direct {v9, p0, v10}, Landroid/media/videoeditor/MediaItem$1;-><init>(Landroid/media/videoeditor/MediaItem;[Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/videoeditor/MediaItem;->getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    return-object v10
.end method

.method public abstract getTimelineDuration()J
.end method

.method public abstract getWidth()I
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 3
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 5
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 6
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 7
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 8
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 9
    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 10
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 11
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 12
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 13
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 14
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 15
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 16
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 17
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 18
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    return-void
.end method

.method public invalidateBlankFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public abstract invalidateTransitions(JJ)V
.end method

.method public abstract invalidateTransitions(JJJJ)V
.end method

.method public isOverlapping(JJJJ)Z
    .locals 0

    add-long/2addr p3, p1

    cmp-long p3, p3, p5

    const/4 p4, 0x0

    if-gtz p3, :cond_0

    return p4

    :cond_0
    add-long/2addr p5, p7

    cmp-long p1, p1, p5

    if-ltz p1, :cond_1

    return p4

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Effect;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 4
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 6
    instance-of p1, v1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 9
    iput-object v2, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    :cond_2
    return-object v1

    :cond_3
    return-object v2
.end method

.method public removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 4
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    instance-of p1, v1, Landroid/media/videoeditor/OverlayFrame;

    if-eqz p1, :cond_1

    .line 6
    move-object p1, v1

    check-cast p1, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {p1}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setBeginTransition(Landroid/media/videoeditor/Transition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    return-void
.end method

.method public setEndTransition(Landroid/media/videoeditor/Transition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    return-void
.end method

.method public setGeneratedImageClip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-void
.end method

.method public setRegenerateClip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    return-void
.end method

.method public setRenderingMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Rendering Mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iput p1, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    .line 4
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 6
    :cond_2
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 8
    :cond_3
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Overlay;

    .line 9
    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v0}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_1

    :cond_4
    return-void
.end method
