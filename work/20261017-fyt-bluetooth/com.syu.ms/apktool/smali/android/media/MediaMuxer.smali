.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$OutputFormat;
    }
.end annotation


# static fields
.field private static final MUXER_STATE_INITIALIZED:I = 0x0

.field private static final MUXER_STATE_STARTED:I = 0x1

.field private static final MUXER_STATE_STOPPED:I = 0x2

.field private static final MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mLastTrackIndex:I

.field private mNativeContext:I

.field private mNativeObject:I

.field private mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 4
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 8
    invoke-static {v0, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)I

    move-result p2

    iput p2, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Landroid/media/MediaMuxer;->mState:I

    const-string p2, "release"

    .line 10
    invoke-virtual {v1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw p2

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeAddTrack(I[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeSetLocation(III)V
.end method

.method private static native nativeSetOrientationHint(II)V
.end method

.method private static native nativeSetup(Ljava/io/FileDescriptor;I)I
.end method

.method private static native nativeStart(I)V
.end method

.method private static native nativeStop(I)V
.end method

.method private static native nativeWriteSampleData(IILjava/nio/ByteBuffer;IIJI)V
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 5

    if-eqz p1, :cond_5

    .line 1
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_4

    .line 2
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {p1, v1, v0}, Landroid/media/MediaMuxer;->nativeAddTrack(I[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    .line 11
    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-ge v0, p1, :cond_1

    .line 12
    iput p1, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid format."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "format must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Muxer has been released!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Muxer is not initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "format must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeRelease(I)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeRelease(I)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    .line 6
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    return-void
.end method

.method public setLocation(FF)V
    .locals 7

    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-float/2addr v0, p2

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    const v2, 0xdbba0

    if-gt v1, v2, :cond_2

    const v2, -0xdbba0

    if-lt v1, v2, :cond_2

    const p1, 0x1b7740

    if-gt v0, p1, :cond_1

    const p1, -0x1b7740

    if-lt v0, p1, :cond_1

    .line 1
    iget p1, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez p1, :cond_0

    iget p1, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, v1, v0}, Landroid/media/MediaMuxer;->nativeSetLocation(III)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t set location due to wrong state."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Longitude: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latitude: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " out of range."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setOrientationHint(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(II)V

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set rotation degrees due to wrong state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeStart(I)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t start due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeStop(I)V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t stop due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 10

    if-ltz p1, :cond_5

    .line 1
    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_2

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v1, :cond_2

    add-int/2addr v1, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt v1, v0, :cond_2

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_2

    .line 3
    iget v2, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v2, :cond_1

    .line 4
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v9, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v9}, Landroid/media/MediaMuxer;->nativeWriteSampleData(IILjava/nio/ByteBuffer;IIJI)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t write, muxer is not started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Muxer has been released!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferInfo must specify a valid buffer offset, size and presentation time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferInfo must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteBuffer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "trackIndex is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
