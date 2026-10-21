.class public final Landroid/speech/srec/UlawEncoderInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final MAX_ULAW:I = 0x2000

.field private static final SCALE_BITS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UlawEncoderInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufCount:I

.field private mIn:Ljava/io/InputStream;

.field private mMax:I

.field private final mOneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    .line 4
    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    .line 6
    iput-object p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 7
    iput p2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    return-void
.end method

.method public static encode([BI[BIII)V
    .locals 5

    if-gtz p5, :cond_0

    const/16 p5, 0x2000

    :cond_0
    const/high16 v0, 0x20000000

    .line 1
    div-int/2addr v0, p5

    const/4 p5, 0x0

    move v1, p5

    :goto_0
    if-ge v1, p4, :cond_14

    add-int/lit8 v2, p1, 0x1

    .line 2
    aget-byte p1, p0, p1

    const/16 v3, 0xff

    and-int/2addr p1, v3

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr p1, v2

    mul-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x10

    if-ltz p1, :cond_a

    if-gtz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x1e

    if-gt p1, v2, :cond_2

    rsub-int/lit8 p1, p1, 0x1e

    shr-int/lit8 p1, p1, 0x1

    add-int/lit16 v3, p1, 0xf0

    goto/16 :goto_2

    :cond_2
    const/16 v2, 0x5e

    if-gt p1, v2, :cond_3

    rsub-int/lit8 p1, p1, 0x5e

    shr-int/lit8 p1, p1, 0x2

    add-int/lit16 v3, p1, 0xe0

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0xde

    if-gt p1, v2, :cond_4

    rsub-int p1, p1, 0xde

    shr-int/lit8 p1, p1, 0x3

    add-int/lit16 v3, p1, 0xd0

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0x1de

    if-gt p1, v2, :cond_5

    rsub-int p1, p1, 0x1de

    shr-int/lit8 p1, p1, 0x4

    add-int/lit16 v3, p1, 0xc0

    goto/16 :goto_2

    :cond_5
    const/16 v2, 0x3de

    if-gt p1, v2, :cond_6

    rsub-int p1, p1, 0x3de

    shr-int/lit8 p1, p1, 0x5

    add-int/lit16 v3, p1, 0xb0

    goto/16 :goto_2

    :cond_6
    const/16 v2, 0x7de

    if-gt p1, v2, :cond_7

    rsub-int p1, p1, 0x7de

    shr-int/lit8 p1, p1, 0x6

    add-int/lit16 v3, p1, 0xa0

    goto/16 :goto_2

    :cond_7
    const/16 v2, 0xfde

    if-gt p1, v2, :cond_8

    rsub-int p1, p1, 0xfde

    shr-int/lit8 p1, p1, 0x7

    add-int/lit16 v3, p1, 0x90

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x1fde

    if-gt p1, v2, :cond_9

    rsub-int p1, p1, 0x1fde

    shr-int/lit8 p1, p1, 0x8

    add-int/lit16 v3, p1, 0x80

    goto/16 :goto_2

    :cond_9
    const/16 v3, 0x80

    goto/16 :goto_2

    :cond_a
    const/4 v2, -0x1

    if-gt v2, p1, :cond_b

    const/16 p1, 0x7f

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_b
    const/16 v2, -0x1f

    if-gt v2, p1, :cond_c

    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x70

    goto :goto_1

    :cond_c
    const/16 v2, -0x5f

    if-gt v2, p1, :cond_d

    add-int/lit8 p1, p1, 0x5f

    shr-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x60

    goto :goto_1

    :cond_d
    const/16 v2, -0xdf

    if-gt v2, p1, :cond_e

    add-int/lit16 p1, p1, 0xdf

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x50

    goto :goto_1

    :cond_e
    const/16 v2, -0x1df

    if-gt v2, p1, :cond_f

    add-int/lit16 p1, p1, 0x1df

    shr-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x40

    goto :goto_1

    :cond_f
    const/16 v2, -0x3df

    if-gt v2, p1, :cond_10

    add-int/lit16 p1, p1, 0x3df

    shr-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x30

    goto :goto_1

    :cond_10
    const/16 v2, -0x7df

    if-gt v2, p1, :cond_11

    add-int/lit16 p1, p1, 0x7df

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x20

    goto :goto_1

    :cond_11
    const/16 v2, -0xfdf

    if-gt v2, p1, :cond_12

    add-int/lit16 p1, p1, 0xfdf

    shr-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_12
    const/16 v2, -0x1fdf

    if-gt v2, p1, :cond_13

    add-int/lit16 p1, p1, 0x1fdf

    shr-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p5

    goto :goto_1

    :cond_13
    move v3, p5

    :goto_2
    add-int/lit8 p1, p3, 0x1

    int-to-byte v2, v3

    .line 3
    aput-byte v2, p2, p3

    add-int/lit8 v1, v1, 0x1

    move p3, p1

    move p1, v4

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public static maxAbsPcm([BII)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr p1, v2

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    if-le p1, v1, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move p1, v3

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .line 11
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 2
    :goto_0
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    mul-int/lit8 v3, p3, 0x2

    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 4
    :cond_0
    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    goto :goto_0

    .line 5
    :cond_1
    div-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    const/4 v2, 0x0

    iget v6, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Landroid/speech/srec/UlawEncoderInputStream;->encode([BI[BIII)V

    .line 7
    iget p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 p2, p3, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 p1, 0x0

    .line 8
    :goto_1
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    add-int v1, p1, p2

    aget-byte v1, v0, v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return p3

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
