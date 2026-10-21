.class public Lz/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:Lo1/l0;

.field public f:Lo1/l0;

.field public g:I

.field public h:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lz/g;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz/g;->b:I

    .line 4
    iput v0, p0, Lz/g;->c:I

    .line 5
    iput v0, p0, Lz/g;->d:I

    .line 6
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lz/g;->e:Lo1/l0;

    .line 7
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lz/g;->f:Lo1/l0;

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lz/g;->h:[I

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 8

    add-int/lit8 v0, p2, 0x2

    .line 1
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffffff

    and-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    .line 2
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 p3, p3, -0x8

    sget-object v4, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v2, p1, v3, p3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 4
    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    aget-byte p3, p1, p2

    const/16 v3, 0x800

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p3, :cond_8

    if-eq p3, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_16

    if-lt v0, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/2addr p2, v7

    .line 6
    aget-byte p1, p1, p2

    if-eq p1, v7, :cond_6

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_2

    goto/16 :goto_7

    .line 7
    :cond_2
    sget-object p1, Lo0/e;->Z:[Ljava/lang/String;

    aput-object v2, p1, v0

    .line 8
    sget-object p1, Lo0/e;->c0:[I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p2, v0, -0x1

    aget v6, p1, p2

    :goto_1
    add-int/2addr v1, v6

    aput v1, p1, v0

    add-int/2addr v0, v7

    .line 9
    sget p1, Lo0/e;->y:I

    if-le v0, p1, :cond_16

    .line 10
    invoke-static {v0}, Lo0/g;->Z(I)V

    goto/16 :goto_7

    .line 11
    :cond_4
    sget-object p1, Lo0/e;->Y:[Ljava/lang/String;

    aput-object v2, p1, v0

    .line 12
    sget-object p1, Lo0/e;->b0:[I

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p2, v0, -0x1

    aget v6, p1, p2

    :goto_2
    add-int/2addr v1, v6

    aput v1, p1, v0

    add-int/2addr v0, v7

    .line 13
    sget p1, Lo0/e;->x:I

    if-le v0, p1, :cond_16

    .line 14
    invoke-static {v0}, Lo0/g;->B(I)V

    goto/16 :goto_7

    .line 15
    :cond_6
    sget-object p1, Lo0/e;->X:[Ljava/lang/String;

    aput-object v2, p1, v0

    .line 16
    sget-object p1, Lo0/e;->a0:[I

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 p2, v0, -0x1

    aget v6, p1, p2

    :goto_3
    add-int/2addr v1, v6

    aput v1, p1, v0

    add-int/2addr v0, v7

    .line 17
    sget p1, Lo0/e;->w:I

    if-le v0, p1, :cond_16

    .line 18
    invoke-static {v0}, Lo0/g;->c(I)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    if-ltz v0, :cond_16

    if-ltz v1, :cond_16

    if-lt v1, v3, :cond_9

    goto :goto_7

    :cond_9
    add-int/2addr p2, v7

    .line 19
    aget-byte p1, p1, p2

    const/16 p2, 0x2800

    if-eq p1, v7, :cond_12

    if-eq p1, v5, :cond_e

    if-eq p1, v4, :cond_a

    goto :goto_7

    :cond_a
    if-nez v1, :cond_b

    goto :goto_4

    .line 20
    :cond_b
    sget-object p1, Lo0/e;->c0:[I

    sub-int/2addr v1, v7

    aget v6, p1, v1

    :goto_4
    add-int/2addr v0, v6

    if-lt v0, p2, :cond_c

    goto :goto_7

    .line 21
    :cond_c
    sget-object p1, Lo0/e;->W:[Ljava/lang/String;

    aput-object v2, p1, v0

    add-int/2addr v0, v7

    .line 22
    sget p1, Lo0/e;->v:I

    if-le v0, p1, :cond_d

    .line 23
    invoke-static {v0}, Lo0/g;->Y(I)V

    .line 24
    :cond_d
    sget p1, Lo0/e;->z:I

    goto :goto_7

    :cond_e
    if-nez v1, :cond_f

    goto :goto_5

    .line 25
    :cond_f
    sget-object p1, Lo0/e;->b0:[I

    sub-int/2addr v1, v7

    aget v6, p1, v1

    :goto_5
    add-int/2addr v0, v6

    if-lt v0, p2, :cond_10

    goto :goto_7

    .line 26
    :cond_10
    sget-object p1, Lo0/e;->V:[Ljava/lang/String;

    aput-object v2, p1, v0

    add-int/2addr v0, v7

    .line 27
    sget p1, Lo0/e;->u:I

    if-le v0, p1, :cond_11

    .line 28
    invoke-static {v0}, Lo0/g;->A(I)V

    .line 29
    :cond_11
    sget p1, Lo0/e;->z:I

    goto :goto_7

    :cond_12
    if-nez v1, :cond_13

    goto :goto_6

    .line 30
    :cond_13
    sget-object p1, Lo0/e;->a0:[I

    sub-int/2addr v1, v7

    aget v6, p1, v1

    :goto_6
    add-int/2addr v0, v6

    if-lt v0, p2, :cond_14

    goto :goto_7

    .line 31
    :cond_14
    sget-object p1, Lo0/e;->U:[Ljava/lang/String;

    aput-object v2, p1, v0

    add-int/2addr v0, v7

    .line 32
    sget p1, Lo0/e;->t:I

    if-le v0, p1, :cond_15

    .line 33
    invoke-static {v0}, Lo0/g;->b(I)V

    .line 34
    :cond_15
    sget p1, Lo0/e;->z:I

    :cond_16
    :goto_7
    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget v0, p0, Lz/g;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lz/g;->b:I

    .line 4
    iput v2, p0, Lz/g;->c:I

    .line 5
    iput v2, p0, Lz/g;->d:I

    .line 6
    :cond_1
    iget-object v0, p0, Lz/g;->a:[B

    iget v1, p0, Lz/g;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lz/g;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lz/g;->b:I

    .line 8
    iget p1, p0, Lz/g;->d:I

    const/4 v1, 0x4

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    move p1, v1

    move v0, v2

    .line 9
    :goto_0
    iget v3, p0, Lz/g;->d:I

    if-ge p1, v3, :cond_3

    .line 10
    iget-object v3, p0, Lz/g;->a:[B

    aget-byte v3, v3, p1

    add-int/2addr v0, v3

    int-to-byte v0, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    not-int p1, v0

    int-to-byte p1, p1

    .line 11
    iget-object v0, p0, Lz/g;->a:[B

    aget-byte v4, v0, v3

    if-ne p1, v4, :cond_4

    sub-int/2addr v3, v1

    .line 12
    invoke-virtual {p0, v0, v1, v3}, Lz/g;->e([BII)V

    .line 13
    iget p1, p0, Lz/g;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz/g;->c:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lz/g;->c:I

    .line 15
    :goto_1
    iput v2, p0, Lz/g;->d:I

    .line 16
    :cond_5
    iget p1, p0, Lz/g;->b:I

    add-int/lit8 p1, p1, -0x3

    :goto_2
    iget v0, p0, Lz/g;->c:I

    if-ge v0, p1, :cond_b

    .line 17
    iget-object v3, p0, Lz/g;->a:[B

    aget-byte v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v0, 0x2

    .line 18
    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lz/g;->d:I

    const/16 v4, 0x200

    if-le v3, v4, :cond_6

    .line 19
    iput v2, p0, Lz/g;->d:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    .line 20
    iput v3, p0, Lz/g;->d:I

    .line 21
    iget v4, p0, Lz/g;->b:I

    if-lt v3, v4, :cond_7

    sub-int/2addr v3, v0

    .line 22
    iput v3, p0, Lz/g;->d:I

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x4

    move v3, v2

    .line 23
    :goto_3
    iget v4, p0, Lz/g;->d:I

    if-ge v0, v4, :cond_8

    .line 24
    iget-object v4, p0, Lz/g;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    not-int v0, v3

    int-to-byte v0, v0

    .line 25
    iget-object v3, p0, Lz/g;->a:[B

    aget-byte v5, v3, v4

    if-ne v0, v5, :cond_9

    .line 26
    iget v0, p0, Lz/g;->c:I

    add-int/lit8 v5, v0, 0x4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v5, v4}, Lz/g;->e([BII)V

    .line 27
    iget v0, p0, Lz/g;->d:I

    iput v0, p0, Lz/g;->c:I

    goto :goto_4

    .line 28
    :cond_9
    iget v0, p0, Lz/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/g;->c:I

    .line 29
    :goto_4
    iput v2, p0, Lz/g;->d:I

    .line 30
    :cond_a
    :goto_5
    iget v0, p0, Lz/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/g;->c:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    .line 31
    iget p1, p0, Lz/g;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lz/g;->b:I

    if-eqz p1, :cond_c

    .line 32
    iget-object v1, p0, Lz/g;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    :cond_c
    iput v2, p0, Lz/g;->c:I

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-wide/16 v0, 0x64

    .line 34
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public final c([BII)V
    .locals 10

    add-int/lit8 p3, p2, 0x2

    .line 1
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x4

    .line 2
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    .line 3
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x8

    .line 4
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    .line 5
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v1

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    .line 6
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v1

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xe

    .line 7
    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v1, v6

    add-int/lit8 p2, p2, 0xf

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    .line 8
    invoke-static {p3}, Lo0/g;->Q(I)V

    if-gt v0, v2, :cond_0

    .line 9
    invoke-static {v0}, Lo0/g;->G(I)V

    .line 10
    invoke-static {v2}, Lo0/g;->O(I)V

    :cond_0
    add-int/lit8 p2, v3, -0x1

    .line 11
    invoke-static {p2}, Lo0/g;->I(I)V

    .line 12
    invoke-static {v4}, Lo0/g;->P(I)V

    add-int/lit8 p2, v5, -0x1

    .line 13
    invoke-static {p2}, Lo0/g;->C(I)V

    .line 14
    sget p2, Lo0/e;->d0:I

    const/16 p3, 0x2800

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_f

    if-eq p2, v0, :cond_e

    const/4 v7, 0x4

    if-eq p2, v7, :cond_e

    const/4 v8, 0x5

    if-eq p2, v8, :cond_e

    const/4 v9, 0x6

    if-eq p2, v9, :cond_d

    .line 15
    sget p1, Lo0/e;->E:I

    const-string p2, "%d/%d %s"

    const/16 v4, 0x800

    if-eq p1, v6, :cond_9

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-lt v5, v6, :cond_14

    if-le v5, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    if-ne v5, v6, :cond_3

    move p1, v2

    goto :goto_0

    .line 16
    :cond_3
    sget-object p1, Lo0/e;->c0:[I

    sub-int/2addr v5, v1

    aget p1, p1, v5

    :goto_0
    add-int/2addr v3, p1

    if-lt v3, v6, :cond_14

    if-le v3, p3, :cond_4

    goto/16 :goto_4

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    sget p3, Lo0/e;->v:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v6

    sget-object p3, Lo0/e;->W:[Ljava/lang/String;

    sub-int/2addr v3, v6

    aget-object p3, p3, v3

    aput-object p3, p1, v1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    if-lt v5, v6, :cond_14

    if-le v5, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    if-ne v5, v6, :cond_7

    move p1, v2

    goto :goto_1

    .line 18
    :cond_7
    sget-object p1, Lo0/e;->b0:[I

    sub-int/2addr v5, v1

    aget p1, p1, v5

    :goto_1
    add-int/2addr v3, p1

    if-lt v3, v6, :cond_14

    if-le v3, p3, :cond_8

    goto/16 :goto_4

    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    sget p3, Lo0/e;->u:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v6

    sget-object p3, Lo0/e;->V:[Ljava/lang/String;

    sub-int/2addr v3, v6

    aget-object p3, p3, v3

    aput-object p3, p1, v1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    if-lt v5, v6, :cond_14

    if-le v5, v4, :cond_a

    goto/16 :goto_4

    :cond_a
    if-ne v5, v6, :cond_b

    move p1, v2

    goto :goto_2

    .line 20
    :cond_b
    sget-object p1, Lo0/e;->a0:[I

    sub-int/2addr v5, v1

    aget p1, p1, v5

    :goto_2
    add-int/2addr v3, p1

    if-lt v3, v6, :cond_14

    if-le v3, p3, :cond_c

    goto/16 :goto_4

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    sget p3, Lo0/e;->t:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v6

    sget-object p3, Lo0/e;->U:[Ljava/lang/String;

    sub-int/2addr v3, v6

    aget-object p3, p3, v3

    aput-object p3, p1, v1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    new-array p2, v9, [Ljava/lang/Object;

    const-string p3, "/^_^ChApTeR^_^/"

    aput-object p3, p2, v2

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "/^-^LiSt^_^/"

    aput-object p3, p2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v8

    const-string p1, "%s %d/%d %s %d/%d"

    .line 23
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    new-array p1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "%d/%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    if-le v4, p3, :cond_10

    move v4, p3

    .line 25
    :cond_10
    sget p1, Lo0/e;->w:I

    if-eq p1, v6, :cond_11

    if-eqz v4, :cond_11

    .line 26
    sget-object p1, Lo0/e;->X:[Ljava/lang/String;

    const-string p2, "1.\\"

    aput-object p2, p1, v2

    .line 27
    sget-object p1, Lo0/e;->a0:[I

    aput v4, p1, v2

    .line 28
    invoke-static {v6}, Lo0/g;->c(I)V

    .line 29
    :cond_11
    sget p1, Lo0/e;->t:I

    if-eq p1, v4, :cond_13

    move p1, v2

    :goto_3
    if-ge p1, v4, :cond_12

    .line 30
    sget-object p2, Lo0/e;->U:[Ljava/lang/String;

    new-array p3, v6, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, p3, v2

    const-string v7, "CD Track %d "

    invoke-static {v7, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    move p1, v5

    goto :goto_3

    .line 31
    :cond_12
    invoke-static {v4}, Lo0/g;->b(I)V

    :cond_13
    new-array p1, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "%d/%d CD Track %d "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    :cond_14
    :goto_4
    return-void
.end method

.method public final d([BII)V
    .locals 2

    .line 1
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 p2, p2, 0x6

    .line 2
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v1}, Lo0/g;->D(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Lo0/g;->D(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v1}, Lo0/g;->D(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v0}, Lo0/g;->D(I)V

    :goto_0
    if-eqz p3, :cond_6

    if-eq p3, v1, :cond_5

    if-eq p3, v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p2}, Lo0/g;->w(I)V

    goto :goto_1

    .line 8
    :cond_5
    invoke-static {v1}, Lo0/g;->w(I)V

    goto :goto_1

    .line 9
    :cond_6
    invoke-static {v0}, Lo0/g;->w(I)V

    :goto_1
    return-void
.end method

.method public final e([BII)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput v0, Lo0/e;->f0:I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 3
    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lz/g;->f([BII)V

    :goto_0
    return-void
.end method

.method public final f([BII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    .line 1
    aget-byte v3, v2, p2

    const-wide/16 v4, 0x1388

    const/4 v6, -0x2

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x25

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_6

    .line 2
    :sswitch_0
    iget-object v3, v1, Lz/g;->e:Lo1/l0;

    invoke-virtual {v3}, Lo1/l0;->a()V

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v0, v15

    .line 3
    invoke-virtual {v1, v2, v3, v0}, Lz/g;->g([BII)V

    goto/16 :goto_6

    :sswitch_1
    add-int/lit8 v0, p2, 0x7

    .line 4
    aget-byte v0, v2, v0

    if-eqz v0, :cond_4

    if-eq v0, v15, :cond_3

    if-eq v0, v14, :cond_2

    if-eq v0, v13, :cond_1

    if-eq v0, v12, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v14}, Lo0/g;->M(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v9}, Lo0/g;->M(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v12}, Lo0/g;->M(I)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v13}, Lo0/g;->M(I)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v15}, Lo0/g;->M(I)V

    :goto_0
    add-int/lit8 v0, p2, 0x9

    .line 10
    aget-byte v0, v2, v0

    and-int/2addr v0, v15

    invoke-static {v0}, Lo0/g;->K(I)V

    goto/16 :goto_6

    :sswitch_2
    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v0, v15

    .line 11
    invoke-virtual {v1, v2, v3, v0}, Lz/g;->d([BII)V

    goto/16 :goto_6

    :sswitch_3
    if-le v0, v14, :cond_9

    add-int/lit8 v3, p2, 0x1

    .line 12
    aget-byte v3, v2, v3

    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_6

    if-eq v3, v13, :cond_5

    .line 13
    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v0, v14

    sget-object v5, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 15
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v0, v14

    const-string v5, "UTF-8"

    invoke-direct {v3, v2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v8, v3

    goto :goto_2

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 17
    :cond_6
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    sub-int/2addr v0, v14

    invoke-direct {v8, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2

    :cond_7
    if-le v0, v12, :cond_8

    add-int/lit8 v3, p2, 0x2

    .line 18
    aget-byte v3, v2, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v2, v3

    if-ne v3, v6, :cond_8

    .line 19
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    sub-int/2addr v0, v12

    invoke-direct {v8, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2

    .line 20
    :cond_8
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    sub-int/2addr v0, v14

    invoke-direct {v8, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 21
    :cond_9
    :goto_2
    aget-byte v0, v2, p2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 22
    :pswitch_0
    invoke-static {v8}, Lo0/g;->t(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 23
    :pswitch_1
    invoke-static {v8}, Lo0/g;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 24
    :pswitch_2
    invoke-static {v8}, Lo0/g;->v(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 25
    :sswitch_4
    iget-object v3, v1, Lz/g;->e:Lo1/l0;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lo1/l0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 26
    iget-object v3, v1, Lz/g;->e:Lo1/l0;

    invoke-virtual {v3}, Lo1/l0;->a()V

    new-array v3, v13, [I

    .line 27
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->o([I)V

    :cond_a
    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v0, v15

    .line 28
    invoke-virtual {v1, v2, v3, v0}, Lz/g;->h([BII)V

    goto/16 :goto_6

    :sswitch_5
    add-int/lit8 v0, p2, 0x1

    .line 29
    aget-byte v0, v2, v0

    if-ne v0, v6, :cond_17

    .line 30
    sget v0, Lo0/e;->g0:I

    if-ne v0, v9, :cond_b

    new-array v0, v15, [I

    const/4 v2, 0x6

    .line 31
    sput v2, Lo0/e;->g0:I

    aput v2, v0, v11

    invoke-static {v10, v0}, Lo0/g;->T(I[I)V

    .line 32
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v2, Lz/g$b;

    invoke-direct {v2, v1}, Lz/g$b;-><init>(Lz/g;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_b
    if-eq v0, v7, :cond_c

    if-eqz v0, :cond_c

    new-array v0, v15, [I

    .line 33
    sput v11, Lo0/e;->g0:I

    aput v11, v0, v11

    invoke-static {v10, v0}, Lo0/g;->T(I[I)V

    .line 34
    :cond_c
    :goto_3
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->m()V

    new-array v0, v13, [I

    .line 35
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->o([I)V

    .line 36
    invoke-static {}, Ly0/h;->P()V

    goto/16 :goto_6

    .line 37
    :sswitch_6
    sget-object v0, Lo0/e;->h0:[B

    if-nez v0, :cond_d

    const/16 v0, 0xb8

    new-array v0, v0, [B

    .line 38
    sput-object v0, Lo0/e;->h0:[B

    :cond_d
    add-int/lit8 v0, p2, 0x1

    .line 39
    aget-byte v0, v2, v0

    const/16 v3, 0x24

    if-eqz v0, :cond_12

    if-eq v0, v15, :cond_11

    if-eq v0, v14, :cond_10

    if-eq v0, v13, :cond_f

    if-eq v0, v12, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v0, p2, 0x2

    .line 40
    sget-object v3, Lo0/e;->h0:[B

    const/16 v4, 0xa8

    const/16 v5, 0x10

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_f
    add-int/lit8 v0, p2, 0x2

    .line 41
    sget-object v3, Lo0/e;->h0:[B

    const/16 v4, 0x6c

    const/16 v5, 0x3c

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_10
    add-int/lit8 v0, p2, 0x2

    .line 42
    sget-object v4, Lo0/e;->h0:[B

    const/16 v5, 0x48

    invoke-static {v2, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_11
    add-int/lit8 v0, p2, 0x2

    .line 43
    sget-object v4, Lo0/e;->h0:[B

    invoke-static {v2, v0, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_12
    add-int/lit8 v0, p2, 0x2

    .line 44
    sget-object v4, Lo0/e;->h0:[B

    invoke-static {v2, v0, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    :goto_4
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_17

    .line 46
    sget-object v0, Lo0/f;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    goto/16 :goto_6

    :sswitch_7
    if-le v0, v15, :cond_17

    .line 47
    :try_start_2
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v0, v15

    sget-object v5, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 48
    invoke-static {v3}, Lo0/g;->j(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 50
    :sswitch_8
    sget-object v0, Lo0/e;->i0:[B

    if-eqz v0, :cond_17

    add-int/lit8 v3, p2, 0x1

    .line 51
    aget-byte v6, v2, v3

    add-int/lit8 v16, p2, 0x2

    aget-byte v4, v2, v16

    invoke-static {v6, v4}, Lo1/p0;->c(BB)I

    move-result v4

    .line 52
    array-length v5, v0

    add-int/lit16 v5, v5, 0x3ff

    shr-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v4, -0x1

    shl-int/lit8 v6, v6, 0xa

    .line 53
    array-length v7, v0

    sub-int/2addr v7, v6

    if-lez v7, :cond_15

    const/16 v8, 0x400

    if-le v7, v8, :cond_13

    move v7, v8

    :cond_13
    add-int/lit8 v8, v7, 0x4

    .line 54
    new-array v8, v8, [I

    .line 55
    aput v11, v8, v11

    const/16 v9, 0xd6

    aput v9, v8, v15

    .line 56
    aget-byte v3, v2, v3

    aput v3, v8, v14

    aget-byte v2, v2, v16

    aput v2, v8, v13

    move v2, v11

    :goto_5
    if-ge v2, v7, :cond_14

    add-int/lit8 v3, v2, 0x4

    add-int v9, v6, v2

    .line 57
    aget-byte v9, v0, v9

    aput v9, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    new-array v0, v13, [I

    .line 58
    sput v12, Lo0/e;->g0:I

    aput v12, v0, v11

    aput v4, v0, v15

    aput v5, v0, v14

    invoke-static {v10, v0}, Lo0/g;->T(I[I)V

    .line 59
    invoke-static {v8}, Lz/k;->o([I)V

    goto/16 :goto_6

    .line 60
    :cond_15
    sput-object v8, Lo0/e;->i0:[B

    const v0, 0xffff

    if-ne v4, v0, :cond_16

    new-array v0, v15, [I

    .line 61
    sput v9, Lo0/e;->g0:I

    aput v9, v0, v11

    invoke-static {v10, v0}, Lo0/g;->T(I[I)V

    goto/16 :goto_6

    :cond_16
    const v0, 0xffee

    if-ne v4, v0, :cond_17

    new-array v0, v15, [I

    const/4 v2, 0x7

    .line 62
    sput v2, Lo0/e;->g0:I

    aput v2, v0, v11

    invoke-static {v10, v0}, Lo0/g;->T(I[I)V

    .line 63
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v2, Lz/g$a;

    invoke-direct {v2, v1}, Lz/g$a;-><init>(Lz/g;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 64
    :sswitch_9
    sget-object v3, Lz/a;->B:Lo1/r;

    if-eqz v3, :cond_17

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v0, v15

    .line 65
    invoke-interface {v3, v2, v4, v0}, Lo1/r;->z1([BII)V

    goto :goto_6

    :sswitch_a
    add-int/lit8 v0, p2, 0x1

    .line 66
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, v2, v3

    invoke-static {v0, v3}, Lo1/p0;->c(BB)I

    add-int/lit8 v0, p2, 0x3

    .line 67
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x4

    aget-byte v2, v2, v3

    invoke-static {v0, v2}, Lo1/p0;->c(BB)I

    goto :goto_6

    :sswitch_b
    add-int/lit8 v0, p2, 0x1

    .line 68
    aget-byte v0, v2, v0

    sput v0, Ly0/f;->S0:I

    goto :goto_6

    :sswitch_c
    add-int/lit8 v0, p2, 0x1

    .line 69
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, p2, 0x2

    .line 70
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x3

    .line 71
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    .line 72
    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x21

    new-array v6, v12, [I

    aput v0, v6, v11

    aput v3, v6, v15

    aput v4, v6, v14

    aput v2, v6, v13

    .line 73
    invoke-static {v5, v6, v8, v8}, Lo0/g;->U(I[I[F[Ljava/lang/String;)V

    goto :goto_6

    .line 74
    :sswitch_d
    sget-object v3, Lo0/e;->d:Ljava/lang/Object;

    monitor-enter v3

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v0, v15

    .line 75
    :try_start_3
    invoke-virtual {v1, v2, v4, v0}, Lz/g;->a([BII)V

    .line 76
    monitor-exit v3

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :sswitch_e
    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v0, v15

    .line 77
    invoke-virtual {v1, v2, v3, v0}, Lz/g;->c([BII)V

    :cond_17
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80 -> :sswitch_e
        -0x66 -> :sswitch_d
        -0x60 -> :sswitch_c
        -0x53 -> :sswitch_b
        -0x4c -> :sswitch_a
        -0x3f -> :sswitch_9
        -0x2a -> :sswitch_8
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_6
        -0x1 -> :sswitch_5
        0x40 -> :sswitch_4
        0x50 -> :sswitch_3
        0x51 -> :sswitch_3
        0x52 -> :sswitch_3
        0x55 -> :sswitch_2
        0x60 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x70
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data
.end method

.method public final g([BII)V
    .locals 2

    const/4 p3, 0x0

    :goto_0
    const/16 v0, 0xe

    if-ge p3, v0, :cond_0

    .line 1
    iget-object v0, p0, Lz/g;->h:[I

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lz/g;->h:[I

    invoke-static {p1}, Ly0/h;->j0([I)V

    return-void
.end method

.method public final h([BII)V
    .locals 8

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    iput p3, p0, Lz/g;->g:I

    add-int/lit8 p3, p2, 0x3

    .line 2
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x4

    .line 3
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    add-int/2addr p2, v1

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 5
    sput p3, Lo0/e;->d0:I

    const/16 p2, 0xb0

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.syu.dvd.sd"

    .line 6
    invoke-static {p1}, Lo1/u;->G(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "com.syu.dvd.usb"

    .line 7
    invoke-static {p1}, Lo1/u;->G(Ljava/lang/String;)I

    .line 8
    :goto_0
    iget p1, p0, Lz/g;->g:I

    const/16 p2, 0x14

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq p1, v5, :cond_7

    if-eq p1, v2, :cond_6

    const/16 v7, 0x12

    if-eq p1, v7, :cond_5

    if-eq p1, p2, :cond_4

    const/16 v7, 0x9

    if-eq p1, v7, :cond_3

    const/16 v7, 0xa

    if-eq p1, v7, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v3}, Lo0/g;->z(I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v3}, Lo0/g;->z(I)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v5}, Lo0/g;->z(I)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {v1}, Lo0/g;->z(I)V

    goto :goto_1

    .line 13
    :cond_6
    invoke-static {v6}, Lo0/g;->z(I)V

    goto :goto_1

    .line 14
    :cond_7
    invoke-static {v4}, Lo0/g;->z(I)V

    :goto_1
    const/4 p1, 0x2

    if-eq v0, p1, :cond_d

    if-eq v0, v5, :cond_c

    if-eq v0, v6, :cond_b

    if-eq v0, v1, :cond_a

    const/16 v7, 0xb

    if-eq v0, v7, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v5}, Lo0/g;->E(I)V

    goto :goto_2

    .line 16
    :cond_9
    iget v0, p0, Lz/g;->g:I

    if-eq v0, p2, :cond_e

    .line 17
    invoke-static {p1}, Lo0/g;->z(I)V

    goto :goto_2

    .line 18
    :cond_a
    invoke-static {p1}, Lo0/g;->E(I)V

    goto :goto_2

    .line 19
    :cond_b
    invoke-static {v6}, Lo0/g;->E(I)V

    goto :goto_2

    .line 20
    :cond_c
    invoke-static {v1}, Lo0/g;->E(I)V

    goto :goto_2

    .line 21
    :cond_d
    invoke-static {v4}, Lo0/g;->E(I)V

    .line 22
    iget p2, p0, Lz/g;->g:I

    if-eq p2, v2, :cond_e

    .line 23
    invoke-static {v3}, Lo0/g;->z(I)V

    :cond_e
    :goto_2
    packed-switch p3, :pswitch_data_0

    goto :goto_3

    .line 24
    :pswitch_0
    invoke-static {v6}, Lo0/g;->f(I)V

    goto :goto_3

    .line 25
    :pswitch_1
    invoke-static {v6}, Lo0/g;->f(I)V

    goto :goto_3

    .line 26
    :pswitch_2
    invoke-static {v6}, Lo0/g;->f(I)V

    goto :goto_3

    .line 27
    :pswitch_3
    invoke-static {p1}, Lo0/g;->f(I)V

    goto :goto_3

    .line 28
    :pswitch_4
    invoke-static {p1}, Lo0/g;->f(I)V

    goto :goto_3

    .line 29
    :pswitch_5
    invoke-static {v5}, Lo0/g;->f(I)V

    goto :goto_3

    .line 30
    :pswitch_6
    invoke-static {p1}, Lo0/g;->f(I)V

    goto :goto_3

    .line 31
    :pswitch_7
    invoke-static {p1}, Lo0/g;->f(I)V

    goto :goto_3

    .line 32
    :pswitch_8
    invoke-static {p1}, Lo0/g;->f(I)V

    goto :goto_3

    .line 33
    :pswitch_9
    invoke-static {v6}, Lo0/g;->f(I)V

    goto :goto_3

    .line 34
    :pswitch_a
    invoke-static {v4}, Lo0/g;->f(I)V

    goto :goto_3

    .line 35
    :pswitch_b
    invoke-static {v3}, Lo0/g;->f(I)V

    :goto_3
    if-eqz p3, :cond_11

    if-eq p3, v4, :cond_10

    if-eq p3, v5, :cond_f

    if-eq p3, v6, :cond_f

    if-eq p3, v1, :cond_f

    const/4 p1, 0x6

    if-eq p3, p1, :cond_f

    goto :goto_4

    .line 36
    :cond_f
    invoke-static {v5}, Lo0/g;->D(I)V

    .line 37
    invoke-static {v3}, Lo0/g;->w(I)V

    goto :goto_4

    .line 38
    :cond_10
    invoke-static {v4}, Lo0/g;->D(I)V

    .line 39
    invoke-static {v4}, Lo0/g;->w(I)V

    goto :goto_4

    .line 40
    :cond_11
    invoke-static {v3}, Lo0/g;->D(I)V

    .line 41
    invoke-static {v3}, Lo0/g;->w(I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
