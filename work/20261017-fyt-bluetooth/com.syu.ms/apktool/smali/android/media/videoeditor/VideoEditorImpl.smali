.class public Landroid/media/videoeditor/VideoEditorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor;


# static fields
.field private static final ATTR_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "after_media_item"

.field private static final ATTR_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio"

.field private static final ATTR_AUDIO_WAVEFORM_FILENAME:Ljava/lang/String; = "waveform"

.field private static final ATTR_BEFORE_MEDIA_ITEM_ID:Ljava/lang/String; = "before_media_item"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "begin_time"

.field private static final ATTR_BEHAVIOR:Ljava/lang/String; = "behavior"

.field private static final ATTR_BLENDING:Ljava/lang/String; = "blending"

.field private static final ATTR_COLOR_EFFECT_TYPE:Ljava/lang/String; = "color_type"

.field private static final ATTR_COLOR_EFFECT_VALUE:Ljava/lang/String; = "color_value"

.field private static final ATTR_DIRECTION:Ljava/lang/String; = "direction"

.field private static final ATTR_DUCKED_TRACK_VOLUME:Ljava/lang/String; = "ducking_volume"

.field private static final ATTR_DUCK_ENABLED:Ljava/lang/String; = "ducking_enabled"

.field private static final ATTR_DUCK_THRESHOLD:Ljava/lang/String; = "ducking_threshold"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_END_RECT_BOTTOM:Ljava/lang/String; = "end_b"

.field private static final ATTR_END_RECT_LEFT:Ljava/lang/String; = "end_l"

.field private static final ATTR_END_RECT_RIGHT:Ljava/lang/String; = "end_r"

.field private static final ATTR_END_RECT_TOP:Ljava/lang/String; = "end_t"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end_time"

.field private static final ATTR_FILENAME:Ljava/lang/String; = "filename"

.field private static final ATTR_GENERATED_IMAGE_CLIP:Ljava/lang/String; = "generated_image_clip"

.field private static final ATTR_GENERATED_TRANSITION_CLIP:Ljava/lang/String; = "generated_transition_clip"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INVERT:Ljava/lang/String; = "invert"

.field private static final ATTR_IS_IMAGE_CLIP_GENERATED:Ljava/lang/String; = "is_image_clip_generated"

.field private static final ATTR_IS_TRANSITION_GENERATED:Ljava/lang/String; = "is_transition_generated"

.field private static final ATTR_LOOP:Ljava/lang/String; = "loop"

.field private static final ATTR_MASK:Ljava/lang/String; = "mask"

.field private static final ATTR_MUTED:Ljava/lang/String; = "muted"

.field private static final ATTR_OVERLAY_FRAME_HEIGHT:Ljava/lang/String; = "overlay_frame_height"

.field private static final ATTR_OVERLAY_FRAME_WIDTH:Ljava/lang/String; = "overlay_frame_width"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT:Ljava/lang/String; = "resized_RGBframe_height"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH:Ljava/lang/String; = "resized_RGBframe_width"

.field private static final ATTR_OVERLAY_RGB_FILENAME:Ljava/lang/String; = "overlay_rgb_filename"

.field private static final ATTR_REGENERATE_PCM:Ljava/lang/String; = "regeneratePCMFlag"

.field private static final ATTR_RENDERING_MODE:Ljava/lang/String; = "rendering_mode"

.field private static final ATTR_START_RECT_BOTTOM:Ljava/lang/String; = "start_b"

.field private static final ATTR_START_RECT_LEFT:Ljava/lang/String; = "start_l"

.field private static final ATTR_START_RECT_RIGHT:Ljava/lang/String; = "start_r"

.field private static final ATTR_START_RECT_TOP:Ljava/lang/String; = "start_t"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "start_time"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field private static final ENGINE_ACCESS_MAX_TIMEOUT_MS:I = 0x1f4

.field private static final PROJECT_FILENAME:Ljava/lang/String; = "videoeditor.xml"

.field private static final TAG:Ljava/lang/String; = "VideoEditorImpl"

.field private static final TAG_AUDIO_TRACK:Ljava/lang/String; = "audio_track"

.field private static final TAG_AUDIO_TRACKS:Ljava/lang/String; = "audio_tracks"

.field private static final TAG_EFFECT:Ljava/lang/String; = "effect"

.field private static final TAG_EFFECTS:Ljava/lang/String; = "effects"

.field private static final TAG_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final TAG_MEDIA_ITEMS:Ljava/lang/String; = "media_items"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"

.field private static final TAG_OVERLAY_USER_ATTRIBUTES:Ljava/lang/String; = "overlay_user_attributes"

.field private static final TAG_PROJECT:Ljava/lang/String; = "project"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "transition"

.field private static final TAG_TRANSITIONS:Ljava/lang/String; = "transitions"


# instance fields
.field private mAspectRatio:I

.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mMallocDebug:Z

.field private final mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewInProgress:Z

.field private final mProjectPath:Ljava/lang/String;

.field private final mTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    const-string v1, "libc.debug.malloc"

    .line 6
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 8
    iput-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    :try_start_0
    const-string v0, "HeapAtStart"

    .line 9
    invoke-static {v0}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "VideoEditorImpl"

    const-string v1, "dumpHeap returned error in constructor"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    .line 12
    :goto_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    .line 13
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {v1, p1, v0, p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V

    iput-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 14
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "videoeditor.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    :try_start_1
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->load()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x2

    .line 20
    iput p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    :goto_1
    return-void
.end method

.method private computeTimelineDuration()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 4
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 5
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 6
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dumpHeap(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dump"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    return-void
.end method

.method private generateProjectThumbnail()V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "thumbnail.jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaItem;

    const/16 v1, 0x1e0

    .line 5
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    .line 6
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v5

    .line 7
    instance-of v6, v0, Landroid/media/videoeditor/MediaVideoItem;

    const-string v7, " failed"

    if-eqz v6, :cond_2

    .line 8
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 9
    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    .line 12
    invoke-static {v6, v4, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbnail extraction from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-wide/16 v8, 0x1f4

    .line 15
    :try_start_0
    invoke-virtual {v0, v4, v1, v8, v9}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 21
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error creating project thumbnail"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v1

    .line 23
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IO Error creating project thumbnail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project thumbnail extraction from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method private load()V
    .locals 14

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    const-string/jumbo v2, "videoeditor.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 5
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move-object v7, v5

    move-object v8, v7

    :goto_0
    const/4 v9, 0x1

    if-eq v3, v9, :cond_d

    const/4 v10, 0x2

    const-string v11, "overlay"

    const-string v12, "media_item"

    if-eq v3, v10, :cond_2

    const/4 v9, 0x3

    if-eq v3, v9, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    move-object v7, v5

    goto/16 :goto_3

    .line 9
    :cond_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v8, v5

    goto/16 :goto_3

    .line 10
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v10, "project"

    .line 11
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, ""

    if-eqz v10, :cond_3

    :try_start_2
    const-string v3, "aspect_ratio"

    .line 12
    invoke-interface {v2, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    const-string v3, "regeneratePCMFlag"

    .line 13
    invoke-interface {v2, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 14
    iget-object v9, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v9, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "VideoEditorImpl"

    if-eqz v10, :cond_5

    :try_start_3
    const-string v3, "id"

    .line 16
    invoke-interface {v2, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :try_start_4
    invoke-direct {p0, v2}, Landroid/media/videoeditor/VideoEditorImpl;->parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;

    move-result-object v7

    .line 18
    iget-object v10, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v7

    .line 19
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot load media item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    move v6, v9

    .line 21
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string/jumbo v10, "transition"

    .line 22
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_6

    .line 23
    :try_start_6
    invoke-direct {p0, v2, v0}, Landroid/media/videoeditor/VideoEditorImpl;->parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 24
    iget-object v9, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v3

    :try_start_7
    const-string v9, "Cannot load transition"

    .line 25
    invoke-static {v12, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 26
    :cond_6
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v10, :cond_7

    if-eqz v7, :cond_c

    .line 27
    :try_start_8
    invoke-direct {p0, v2, v7}, Landroid/media/videoeditor/VideoEditorImpl;->parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;

    move-result-object v8

    .line 28
    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v3

    :try_start_9
    const-string v9, "Cannot load overlay"

    .line 29
    invoke-static {v12, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_7
    const-string v10, "overlay_user_attributes"

    .line 30
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v8, :cond_c

    .line 31
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move v9, v4

    :goto_2
    if-ge v9, v3, :cond_c

    .line 32
    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    const-string v10, "effect"

    .line 33
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_b

    if-eqz v7, :cond_c

    .line 34
    :try_start_a
    invoke-direct {p0, v2, v7}, Landroid/media/videoeditor/VideoEditorImpl;->parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;

    move-result-object v3

    .line 35
    invoke-virtual {v7, v3}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 36
    instance-of v3, v3, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v3, :cond_c

    const-string v3, "is_image_clip_generated"

    .line 37
    invoke-interface {v2, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "generated_image_clip"

    .line 38
    invoke-interface {v2, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-ne v10, v9, :cond_9

    .line 40
    move-object v9, v7

    check-cast v9, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v9, v3}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 41
    move-object v3, v7

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    goto :goto_3

    .line 42
    :cond_9
    move-object v3, v7

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3, v5}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 43
    move-object v3, v7

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3, v9}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    goto :goto_3

    .line 44
    :cond_a
    move-object v3, v7

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3, v5}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 45
    move-object v3, v7

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3, v9}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_b
    const-string v9, "Cannot load effect"

    .line 46
    invoke-static {v12, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_b
    const-string v9, "audio_track"

    .line 47
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_c

    .line 48
    :try_start_c
    invoke-direct {p0, v2}, Landroid/media/videoeditor/VideoEditorImpl;->parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v3

    .line 49
    invoke-virtual {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v3

    :try_start_d
    const-string v9, "Cannot load audio track"

    .line 50
    invoke-static {v12, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_c
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 52
    :cond_d
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    if-eqz v6, :cond_e

    .line 53
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 54
    :cond_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private lock()V
    .locals 4

    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "lock: grabbing semaphore"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lock: grabbed semaphore"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private lock(J)Z
    .locals 4

    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbing semaphore with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock: grabbed semaphore status "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v2, p0

    const-string v1, ""

    const-string v3, "id"

    .line 1
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filename"

    .line 2
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "start_time"

    .line 3
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "begin_time"

    .line 4
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "end_time"

    .line 5
    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string/jumbo v11, "volume"

    .line 6
    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v11, "muted"

    .line 7
    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v11, "loop"

    .line 8
    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v14, "ducking_enabled"

    .line 9
    invoke-interface {v0, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "ducking_threshold"

    .line 10
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v2

    const-string v2, "ducking_volume"

    .line 11
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v2, "waveform"

    .line 12
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 13
    new-instance v0, Landroid/media/videoeditor/AudioTrack;

    move-object v1, v0

    move-object/from16 v2, v18

    invoke-direct/range {v1 .. v17}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    return-object v0
.end method

.method private parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;
    .locals 12

    const-string v0, ""

    const-string v1, "id"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "type"

    .line 2
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    .line 3
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v2, "begin_time"

    .line 4
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 5
    const-class v2, Landroid/media/videoeditor/EffectColor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "color_type"

    .line 6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "color_value"

    .line 7
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 8
    :goto_1
    new-instance v0, Landroid/media/videoeditor/EffectColor;

    move-object v2, v0

    move-object v3, p2

    move-wide v5, v7

    move-wide v7, v9

    move v9, v1

    move v10, p1

    invoke-direct/range {v2 .. v10}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    goto :goto_2

    .line 9
    :cond_2
    const-class v2, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    new-instance v5, Landroid/graphics/Rect;

    const-string/jumbo v1, "start_l"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "start_t"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "start_r"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v6, "start_b"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v1, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    new-instance v6, Landroid/graphics/Rect;

    const-string v1, "end_l"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "end_t"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "end_r"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v11, "end_b"

    invoke-interface {p1, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v6, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    new-instance v0, Landroid/media/videoeditor/EffectKenBurns;

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v10}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    :goto_2
    return-object v0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid effect type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, ""

    const-string v2, "id"

    .line 1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "type"

    .line 2
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filename"

    .line 3
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "rendering_mode"

    .line 4
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 5
    const-class v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "duration"

    .line 6
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 7
    new-instance v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    goto/16 :goto_0

    .line 8
    :cond_0
    const-class v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "begin_time"

    .line 9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v15, "end_time"

    .line 10
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v14, "volume"

    .line 11
    invoke-interface {v0, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string v3, "muted"

    .line 12
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    const-string/jumbo v3, "waveform"

    .line 13
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 14
    new-instance v8, Landroid/media/videoeditor/MediaVideoItem;

    move-object v3, v8

    move-object/from16 v4, p0

    move v7, v9

    move-object/from16 v19, v8

    move-wide v8, v10

    move-wide v10, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 15
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 16
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v6, v19

    .line 17
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V

    move-object/from16 v2, v20

    .line 18
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 19
    invoke-virtual {v6, v0}, Landroid/media/videoeditor/MediaVideoItem;->setVolume(I)V

    move-object v0, v6

    :goto_0
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown media item type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;
    .locals 10

    const-string v0, ""

    const-string v1, "id"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "type"

    .line 2
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    .line 3
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, "begin_time"

    .line 4
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 5
    const-class v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "filename"

    .line 6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v1, Landroid/media/videoeditor/OverlayFrame;

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    const-string p2, "overlay_rgb_filename"

    .line 8
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {v1, p2}, Landroid/media/videoeditor/OverlayFrame;->setFilename(Ljava/lang/String;)V

    const-string p2, "overlay_frame_width"

    .line 10
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "overlay_frame_height"

    .line 11
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 12
    invoke-virtual {v1, p2}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameWidth(I)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameHeight(I)V

    const-string/jumbo p2, "resized_RGBframe_width"

    .line 14
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v2, "resized_RGBframe_height"

    .line 15
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 16
    invoke-virtual {v1, p2, p1}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    :cond_0
    return-object v1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid overlay type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/videoeditor/Transition;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, ""

    const-string v4, "id"

    .line 1
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "type"

    .line 2
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    .line 3
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v5, "behavior"

    .line 4
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v5, "before_media_item"

    .line 5
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    if-eqz v5, :cond_1

    .line 6
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v15

    .line 7
    :cond_0
    invoke-virtual {v0, v5}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    move-object v14, v5

    goto :goto_0

    :cond_1
    move-object v14, v15

    :goto_0
    const-string v5, "after_media_item"

    .line 8
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v15

    .line 10
    :cond_2
    invoke-virtual {v0, v5}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v15

    .line 11
    :goto_1
    const-class v5, Landroid/media/videoeditor/TransitionAlpha;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "blending"

    .line 12
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v4, "mask"

    .line 13
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "invert"

    .line 14
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 15
    new-instance v16, Landroid/media/videoeditor/TransitionAlpha;

    move-object/from16 v5, v16

    move-object v7, v2

    move-object v8, v14

    move-object/from16 p2, v14

    move v14, v4

    invoke-direct/range {v5 .. v14}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    :goto_2
    move-object/from16 v4, v16

    goto :goto_3

    :cond_4
    move-object/from16 p2, v14

    .line 16
    const-class v5, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    new-instance v16, Landroid/media/videoeditor/TransitionCrossfade;

    move-object/from16 v5, v16

    move-object v7, v2

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v11}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    goto :goto_2

    .line 18
    :cond_5
    const-class v5, Landroid/media/videoeditor/TransitionSliding;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "direction"

    .line 19
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 20
    new-instance v16, Landroid/media/videoeditor/TransitionSliding;

    move-object/from16 v5, v16

    move-object v7, v2

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v12}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    goto :goto_2

    .line 21
    :cond_6
    const-class v5, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 22
    new-instance v16, Landroid/media/videoeditor/TransitionFadeBlack;

    move-object/from16 v5, v16

    move-object v7, v2

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v11}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    goto :goto_2

    :goto_3
    const-string v5, "is_transition_generated"

    .line 23
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    const-string v5, "generated_transition_clip"

    .line 24
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {v4, v1}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {v4, v15}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    :cond_8
    :goto_4
    move-object/from16 v15, p2

    if-eqz v15, :cond_9

    .line 28
    invoke-virtual {v15, v4}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 29
    invoke-virtual {v2, v4}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    :cond_a
    return-object v4

    .line 30
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transition type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 10
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    return-void
.end method

.method private declared-synchronized removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;
    .locals 3

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 23
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 25
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 26
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private removeTransitionAfter(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaItem;

    .line 2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 5
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 6
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 10
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge p1, v0, :cond_1

    .line 11
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/2addr p1, v4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    :cond_1
    return-void
.end method

.method private removeTransitionBefore(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaItem;

    .line 2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 5
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 6
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    if-lez p1, :cond_1

    .line 10
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    sub-int/2addr p1, v4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    :cond_1
    return-void
.end method

.method private unlock()V
    .locals 2

    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unlock: releasing semaphore"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AudioPcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pcm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No more tracks can be added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio Track is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaItem(Landroid/media/videoeditor/MediaItem;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 4
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 7
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 8
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media item already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Media item is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTransition(Landroid/media/videoeditor/Transition;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 5
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MediaItems are not in sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either of the mediaItem is not found in the list"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 9
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 12
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-virtual {v1, p1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    :cond_4
    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 16
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 18
    :cond_6
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No media items are added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 21
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null Transition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public cancelExport(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->clearPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const-string p1, "VideoEditorImpl"

    const-string v0, "Native helper was not ready!"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Surface is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface could not be retrieved from surface holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid surface holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v2, p4

    move/from16 v3, p5

    if-eqz v0, :cond_c

    .line 1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v4, v1, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x90

    if-eq v5, v4, :cond_1

    const/16 v4, 0x120

    if-eq v5, v4, :cond_1

    const/16 v4, 0x168

    if-eq v5, v4, :cond_1

    const/16 v4, 0x1e0

    if-eq v5, v4, :cond_1

    const/16 v4, 0x2d0

    if-eq v5, v4, :cond_1

    const/16 v4, 0x438

    if-ne v5, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported height value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    sparse-switch v6, :sswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bitrate value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7
    :sswitch_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 8
    iget-wide v7, v1, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    int-to-long v9, v6

    const-wide/32 v11, 0x17700

    add-long/2addr v9, v11

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x1f40

    div-long/2addr v7, v9

    const-wide v9, 0x80000000L

    cmp-long v4, v9, v7

    if-lez v4, :cond_a

    const/4 v4, 0x2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_3

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported audio codec type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move v2, v11

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v11, :cond_5

    if-eq v3, v4, :cond_6

    if-ne v3, v7, :cond_4

    move v4, v7

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video codec type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move v4, v11

    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v3, v1, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {v3, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioCodec(I)V

    .line 16
    iget-object v2, v1, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setVideoCodec(I)V

    .line 17
    iget-object v2, v1, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v4, v1, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    iget-object v7, v1, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v8, v1, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v9, v1, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object v3, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    goto :goto_3

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move v11, v3

    goto :goto_4

    :catch_0
    move v11, v3

    :catch_1
    :try_start_2
    const-string v0, "VideoEditorImpl"

    const-string v2, "Sem acquire NOT successful in export"

    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_8

    .line 20
    :goto_3
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_8
    return-void

    :goto_4
    if-eqz v11, :cond_9

    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_9
    throw v0

    .line 21
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Export Size is more than 2GB"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No MediaItems added"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "export: filename is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6d60 -> :sswitch_0
        0x9c40 -> :sswitch_0
        0xfa00 -> :sswitch_0
        0x17700 -> :sswitch_0
        0x1f400 -> :sswitch_0
        0x2ee00 -> :sswitch_0
        0x3e800 -> :sswitch_0
        0x5dc00 -> :sswitch_0
        0x7d000 -> :sswitch_0
        0xc3500 -> :sswitch_0
        0x1e8480 -> :sswitch_0
        0x4c4b40 -> :sswitch_0
        0x7a1200 -> :sswitch_0
    .end sparse-switch
.end method

.method public export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 24
    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/VideoEditorImpl;->export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    return-void
.end method

.method public generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The video editor is not initialized"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "VideoEditorImpl"

    const-string v1, "Sem acquire NOT successful in previewStoryBoard"

    .line 6
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_3
    return-void

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_4
    throw p1
.end method

.method public getAllAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getAllMediaItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    return-object v0
.end method

.method public getAllTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    return v0
.end method

.method public getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/AudioTrack;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 2
    iget-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    return-wide v0
.end method

.method public declared-synchronized getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 2
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized insertAudioTrack(Landroid/media/videoeditor/AudioTrack;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 6
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/AudioTrack;

    .line 7
    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 9
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No more tracks can be added"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 5
    :cond_0
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 7
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    .line 10
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 11
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 13
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 14
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItem not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media item already exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p2, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 4
    invoke-direct {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 5
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 7
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot move media item (it is the only item)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_3

    .line 11
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 12
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p2, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 14
    invoke-direct {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 15
    iget-object p2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/2addr p1, v0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItem not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target MediaItem not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 4

    const-string v0, "VideoEditorImpl"

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/VideoEditorImpl;->stopPreview()J

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->releaseNativeHelper()V

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Sem acquire NOT successful in export"

    .line 10
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    if-eqz v1, :cond_2

    :try_start_2
    const-string v1, "HeapAtEnd"

    .line 12
    invoke-static {v1}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string v1, "dumpHeap returned error in release"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    .line 14
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_3
    throw v0
.end method

.method public declared-synchronized removeAllMediaItems()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 4
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "thumbnail.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "thumbnail.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->invalidate()V

    .line 5
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->invalidatePcmFile()V

    .line 6
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " No more audio tracks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 4
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    instance-of v2, v1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_0

    .line 6
    move-object v2, v1

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->invalidate()V

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .line 10
    instance-of v4, v3, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v4, :cond_1

    .line 11
    check-cast v3, Landroid/media/videoeditor/OverlayFrame;

    .line 12
    invoke-virtual {v3}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 14
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 15
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V

    .line 17
    :cond_4
    instance-of p1, v1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz p1, :cond_5

    .line 18
    move-object p1, v1

    check-cast p1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 9
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object v0

    .line 11
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 9

    const-string v0, "The thread was interrupted"

    if-eqz p1, :cond_9

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-ltz v1, :cond_6

    .line 3
    iget-wide v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v1, p2, v5

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    const-wide/16 v5, 0x1f4

    .line 4
    :try_start_0
    invoke-direct {p0, v5, v6}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_3

    .line 5
    :try_start_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 8
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-wide v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v8, :cond_1

    .line 9
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_1
    return-wide v3

    .line 10
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The video editor is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    move v1, v8

    goto :goto_1

    :catch_0
    move v1, v8

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Timeout waiting for semaphore"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_3
    const-string p1, "VideoEditorImpl"

    .line 12
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_4

    .line 14
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_4
    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "requested time more than duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "requested time not correct"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Surface is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface could not be retrieved from Surface holder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface Holder is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "UTF-8"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, ""

    const-string v4, "project"

    .line 5
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    iget v5, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "aspect_ratio"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    iget-object v5, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioflag()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "regeneratePCMFlag"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "media_items"

    .line 8
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    iget-object v6, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string/jumbo v8, "waveform"

    const-string v9, "muted"

    const-string/jumbo v10, "volume"

    const-string v11, "end_time"

    const-string v13, "filename"

    const-string v14, "duration"

    const-string v15, "begin_time"

    const-string/jumbo v12, "type"

    move-object/from16 v16, v2

    const-string v2, "id"

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v17, v6

    const-string v6, "media_item"

    .line 10
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v18, v4

    .line 11
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "rendering_mode"

    invoke-interface {v1, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    instance-of v0, v7, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v0, :cond_0

    .line 16
    move-object v0, v7

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    .line 17
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 23
    :cond_0
    instance-of v0, v7, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    const-string v4, "overlays"

    .line 27
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/videoeditor/Overlay;

    const-string v9, "overlay"

    .line 29
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    invoke-virtual {v8}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v3, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v3, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    invoke-virtual {v8}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v3, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    invoke-virtual {v8}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v3, v14, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    instance-of v10, v8, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v10, :cond_3

    .line 35
    move-object v10, v8

    check-cast v10, Landroid/media/videoeditor/OverlayFrame;

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 38
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    :cond_2
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 40
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v0

    const-string v0, "overlay_rgb_filename"

    invoke-interface {v1, v3, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "overlay_frame_width"

    invoke-interface {v1, v3, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "overlay_frame_height"

    invoke-interface {v1, v3, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "resized_RGBframe_width"

    invoke-interface {v1, v3, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    invoke-virtual {v10}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "resized_RGBframe_height"

    invoke-interface {v1, v3, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    :cond_3
    move-object/from16 v19, v0

    :goto_3
    const-string v0, "overlay_user_attributes"

    .line 45
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-virtual {v8}, Landroid/media/videoeditor/Overlay;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 48
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 49
    invoke-interface {v1, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_5
    const-string v0, "overlay_user_attributes"

    .line 50
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v19

    goto/16 :goto_2

    .line 52
    :cond_6
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    :cond_7
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    const-string v4, "effects"

    .line 55
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/Effect;

    const-string v8, "effect"

    .line 57
    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    invoke-virtual {v7}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    invoke-virtual {v7}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    invoke-virtual {v7}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v14, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    instance-of v9, v7, Landroid/media/videoeditor/EffectColor;

    if-eqz v9, :cond_9

    .line 63
    check-cast v7, Landroid/media/videoeditor/EffectColor;

    .line 64
    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "color_type"

    invoke-interface {v1, v3, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 66
    :cond_8
    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "color_value"

    invoke-interface {v1, v3, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_6

    .line 67
    :cond_9
    instance-of v9, v7, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v9, :cond_b

    .line 68
    move-object v9, v7

    check-cast v9, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v9}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 69
    iget v11, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "start_l"

    invoke-interface {v1, v3, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget v11, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "start_t"

    invoke-interface {v1, v3, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget v11, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "start_r"

    invoke-interface {v1, v3, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "start_b"

    invoke-interface {v1, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    invoke-virtual {v9}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 74
    iget v10, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "end_l"

    invoke-interface {v1, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget v10, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "end_t"

    invoke-interface {v1, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget v10, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "end_r"

    invoke-interface {v1, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "end_b"

    invoke-interface {v1, v3, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    invoke-virtual {v7}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v7

    .line 79
    check-cast v7, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    .line 80
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    const-string v9, "is_image_clip_generated"

    invoke-interface {v1, v3, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v7

    const-string v9, "generated_image_clip"

    invoke-interface {v1, v3, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 82
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    const-string v9, "is_image_clip_generated"

    invoke-interface {v1, v3, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    :cond_b
    :goto_6
    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 84
    :cond_c
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    :cond_d
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    goto/16 :goto_0

    :cond_e
    move-object/from16 v18, v4

    .line 86
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "transitions"

    .line 87
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, p0

    .line 88
    iget-object v5, v4, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/Transition;

    const-string/jumbo v7, "transition"

    .line 89
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v17, v5

    .line 90
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v12

    const-string v12, "behavior"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-string v12, "is_transition_generated"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_f

    .line 96
    iget-object v5, v6, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    const-string v12, "generated_transition_clip"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    :cond_f
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 98
    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v12, "after_media_item"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    :cond_10
    invoke-virtual {v6}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 100
    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v12, "before_media_item"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    :cond_11
    instance-of v5, v6, Landroid/media/videoeditor/TransitionSliding;

    if-eqz v5, :cond_12

    .line 102
    check-cast v6, Landroid/media/videoeditor/TransitionSliding;

    invoke-virtual {v6}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "direction"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 103
    :cond_12
    instance-of v5, v6, Landroid/media/videoeditor/TransitionAlpha;

    if-eqz v5, :cond_13

    .line 104
    check-cast v6, Landroid/media/videoeditor/TransitionAlpha;

    .line 105
    invoke-virtual {v6}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v12, "blending"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    invoke-virtual {v6}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-string v12, "invert"

    invoke-interface {v1, v3, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    invoke-virtual {v6}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 108
    invoke-virtual {v6}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mask"

    invoke-interface {v1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    :cond_13
    :goto_8
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v5, v17

    move-object/from16 v12, v19

    goto/16 :goto_7

    .line 110
    :cond_14
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "audio_tracks"

    .line 111
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    iget-object v5, v4, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/AudioTrack;

    const-string v7, "audio_track"

    .line 113
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "start_time"

    invoke-interface {v1, v3, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3, v15, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const-string v14, "ducking_enabled"

    invoke-interface {v1, v3, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "ducking_volume"

    invoke-interface {v1, v3, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "ducking_threshold"

    invoke-interface {v1, v3, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v3, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const-string v14, "loop"

    invoke-interface {v1, v3, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 126
    invoke-virtual {v6}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    :cond_15
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_9

    .line 128
    :cond_16
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v18

    .line 129
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 131
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "videoeditor.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    invoke-virtual/range {v16 .. v16}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 134
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 2
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Transition;

    .line 4
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaItem;

    .line 8
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 10
    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v1}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 10

    move-object v0, p0

    if-eqz p1, :cond_9

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p8, :cond_6

    .line 3
    iget-wide v3, v0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v1, p2, v3

    const-string v3, "Requested time not correct"

    if-gez v1, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_4

    .line 4
    iget-boolean v1, v0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-nez v1, :cond_3

    const-wide/16 v3, 0x1f4

    .line 5
    :try_start_0
    invoke-direct {p0, v3, v4}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 9
    iget-object v1, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v3, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v4, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v5, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 10
    iget-object v1, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V

    :cond_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Timeout waiting for semaphore"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "VideoEditorImpl"

    const-string v3, "The thread was interrupted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Preview already in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 19
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public stopPreview()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopPreview()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 4
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 6
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    throw v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public updateTimelineDuration()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    return-void
.end method
