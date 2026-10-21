.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field public final createdFromStream:Z

.field private final mNativePicture:I

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/graphics/Picture;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput p1, p0, Landroid/graphics/Picture;->mNativePicture:I

    .line 5
    iput-boolean p2, p0, Landroid/graphics/Picture;->createdFromStream:Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Landroid/graphics/Picture;->mNativePicture:I

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/Picture;-><init>(IZ)V

    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)I

    move-result p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/graphics/Picture;-><init>(IZ)V

    return-object v0
.end method

.method private static native nativeBeginRecording(III)I
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeDraw(II)V
.end method

.method private static native nativeEndRecording(I)V
.end method

.method private static native nativeWriteToStream(ILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(III)I

    move-result p1

    .line 2
    new-instance p2, Landroid/graphics/Picture$RecordingCanvas;

    invoke-direct {p2, p0, p1}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;I)V

    iput-object p2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    return-object p2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 3
    :cond_0
    iget p1, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {p1, v0}, Landroid/graphics/Picture;->nativeDraw(II)V

    return-void
.end method

.method public endRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 3
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeEndRecording(I)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method public final ni()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {v0, p1, v1}, Landroid/graphics/Picture;->nativeWriteToStream(ILjava/io/OutputStream;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
