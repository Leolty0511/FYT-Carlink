.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:I

.field private mOneByte:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "srec_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    .line 4
    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)I

    move-result p1

    iput p1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 7
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord start failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "AudioRecord constructor failed - busy?"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native AudioRecordDelete(I)V
.end method

.method private static native AudioRecordNew(II)I
.end method

.method private static native AudioRecordRead(I[BII)I
.end method

.method private static native AudioRecordStart(I)I
.end method

.method private static native AudioRecordStop(I)V
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :catchall_1
    move-exception v0

    .line 5
    :try_start_2
    iget v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :catchall_2
    move-exception v0

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 3

    .line 5
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not open"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 1

    .line 8
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result p1

    return p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
