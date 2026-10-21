.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mGae:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x140

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 4
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 6
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 7
    invoke-static {}, Landroid/media/AmrInputStream;->GsmAmrEncoderNew()I

    move-result p1

    iput p1, p0, Landroid/media/AmrInputStream;->mGae:I

    .line 8
    invoke-static {p1}, Landroid/media/AmrInputStream;->GsmAmrEncoderInitialize(I)V

    return-void
.end method

.method private static native GsmAmrEncoderCleanup(I)V
.end method

.method private static native GsmAmrEncoderDelete(I)V
.end method

.method private static native GsmAmrEncoderEncode(I[BI[BI)I
.end method

.method private static native GsmAmrEncoderInitialize(I)V
.end method

.method private static native GsmAmrEncoderNew()I
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :cond_0
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 3
    :try_start_1
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :cond_1
    :try_start_2
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_2
    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    return-void

    :catchall_0
    move-exception v0

    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_3
    iget v2, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :cond_3
    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_2
    move-exception v0

    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_3
    move-exception v2

    .line 8
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 9
    :try_start_4
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 10
    :cond_4
    :try_start_5
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 11
    :cond_5
    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v2

    :catchall_4
    move-exception v0

    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_5
    move-exception v0

    .line 12
    :try_start_6
    iget v2, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 13
    :cond_6
    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_6
    move-exception v0

    iput v1, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/media/AmrInputStream;->close()V

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close AmrInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/AmrInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 5

    .line 4
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_4

    .line 5
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 7
    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    move v1, v0

    :goto_0
    const/16 v2, 0x140

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v4, v1, 0x140

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 9
    :cond_1
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-static {v1, v2, v0, v2, v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderEncode(I[BI[BI)I

    move-result v0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 10
    :cond_2
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_3

    sub-int p3, v0, v1

    .line 11
    :cond_3
    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    return p3

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
