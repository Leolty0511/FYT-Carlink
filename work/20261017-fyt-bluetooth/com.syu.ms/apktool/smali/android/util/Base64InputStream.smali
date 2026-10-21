.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static EMPTY:[B


# instance fields
.field private final coder:Landroid/util/Base64$Coder;

.field private eof:Z

.field private inputBuffer:[B

.field private outputEnd:I

.field private outputStart:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/util/Base64InputStream;->eof:Z

    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 4
    iput-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Landroid/util/Base64$Encoder;

    invoke-direct {p3, p2, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object p3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Landroid/util/Base64$Decoder;

    invoke-direct {p3, p2, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object p3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    .line 7
    :goto_0
    iget-object p2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {p2, v0}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result p3

    new-array p3, p3, [B

    iput-object p3, p2, Landroid/util/Base64$Coder;->output:[B

    .line 8
    iput p1, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 9
    iput p1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    return-void
.end method

.method private refill()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 4
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    sget-object v3, Landroid/util/Base64InputStream;->EMPTY:[B

    invoke-virtual {v1, v3, v2, v2, v0}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget v0, v0, Landroid/util/Base64$Coder;->op:I

    iput v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 7
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    return-void

    .line 8
    :cond_2
    new-instance v0, Landroid/util/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    return-void
.end method

.method public mark(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 5
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 7
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    sub-int/2addr v1, v0

    .line 8
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 9
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/util/Base64InputStream;->outputStart:I

    return p3
.end method

.method public reset()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_1
    sub-int/2addr v1, v0

    int-to-long v0, v1

    .line 4
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 5
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    return-wide p1
.end method
