.class public Landroid/util/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Landroid/util/Base64$Coder;

.field private final flags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Landroid/util/Base64OutputStream;->EMPTY:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 5
    iput p2, p0, Landroid/util/Base64OutputStream;->flags:I

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Landroid/util/Base64$Encoder;

    invoke-direct {p3, p2, p1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object p3, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p3, Landroid/util/Base64$Decoder;

    invoke-direct {p3, p2, p1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object p3, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    :goto_0
    return-void
.end method

.method private embiggen([BI)[B
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-ge v0, p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return-object p1

    .line 8
    :cond_1
    :goto_0
    new-array p1, p2, [B

    .line 9
    .line 10
    return-object p1
.end method

.method private flushBuffer()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v1, v2, v0, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 9
    .line 10
    .line 11
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private internalWrite([BIIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    .line 4
    .line 5
    invoke-virtual {v0, p3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v1, v2}, Landroid/util/Base64OutputStream;->embiggen([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    .line 14
    .line 15
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 24
    .line 25
    iget-object p2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    .line 26
    .line 27
    iget-object p3, p2, Landroid/util/Base64$Coder;->output:[B

    .line 28
    .line 29
    const/4 p4, 0x0

    .line 30
    iget p2, p2, Landroid/util/Base64$Coder;->op:I

    .line 31
    .line 32
    invoke-virtual {p1, p3, p4, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Landroid/util/Base64DataException;

    .line 37
    .line 38
    const-string p2, "bad base-64"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/util/Base64OutputStream;->EMPTY:[B

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v0, v2, v2, v1}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    :goto_0
    :try_start_1
    iget v1, p0, Landroid/util/Base64OutputStream;->flags:I

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0x10

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_1
    move-exception v1

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    throw v0
.end method

.method public write(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 3
    :cond_0
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    array-length v2, v1

    if-lt v0, v2, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, v2, v0, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 5
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([BII)V
    .locals 1

    if-gtz p3, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    return-void
.end method
