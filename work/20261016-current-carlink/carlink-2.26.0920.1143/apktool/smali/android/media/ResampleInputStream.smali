.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "media_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    mul-int/2addr p3, v1

    .line 11
    if-ne p2, p3, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    iput v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 16
    .line 17
    iput v0, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string/jumbo p2, "only support 2:1 at the moment"

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    throw v1
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

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

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    .line 4
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 5
    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x2

    .line 6
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 7
    new-array v1, v1, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_0

    .line 8
    :cond_0
    array-length v4, v2

    if-le v1, v4, :cond_1

    .line 9
    new-array v1, v1, [B

    .line 10
    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 11
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 12
    :cond_1
    :goto_0
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, -0x1d

    iget v4, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v2, v4

    iget v4, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_4

    if-ge v2, p3, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v2, v0, 0x2

    .line 13
    :goto_1
    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v0, v2, 0x2

    invoke-static {p3, v3, p1, p2, v0}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 14
    iget p1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr p1, v2

    iget p2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr p1, p2

    .line 15
    iget p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez p2, :cond_3

    .line 16
    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    invoke-static {p3, p1, p3, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_3
    return v2

    .line 17
    :cond_4
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    return v2

    .line 18
    :cond_5
    iget v2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    goto :goto_0

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
