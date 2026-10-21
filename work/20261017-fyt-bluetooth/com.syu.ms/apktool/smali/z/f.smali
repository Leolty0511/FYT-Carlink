.class public Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lo1/k0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lz/f;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz/f;->b:I

    .line 4
    iput v0, p0, Lz/f;->c:I

    .line 5
    iput v0, p0, Lz/f;->d:I

    .line 6
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    iput-object v0, p0, Lz/f;->g:Lo1/k0;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lz/f;->c(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lz/f;->c(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Lz/f;->c(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Lz/f;->c(I)I

    move-result v3

    shl-int/lit8 v0, v0, 0xc

    const v4, 0xf000

    and-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xf00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    or-int/2addr v0, v1

    and-int/lit8 v1, v3, 0xf

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    const/16 v1, 0x2800

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 p3, p3, -0x6

    sget-object v3, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :goto_0
    sget-object p1, Lo0/e;->U:[Ljava/lang/String;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 8
    sget p1, Lo0/e;->t:I

    if-le v0, p1, :cond_1

    .line 9
    invoke-static {v0}, Lo0/g;->b(I)V

    .line 10
    :cond_1
    sget p1, Lo0/e;->z:I

    :cond_2
    :goto_1
    return-void
.end method

.method public b([B)V
    .locals 6

    if-eqz p1, :cond_c

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lz/f;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lz/f;->b:I

    .line 4
    iput v2, p0, Lz/f;->c:I

    .line 5
    iput v2, p0, Lz/f;->d:I

    .line 6
    :cond_1
    iget-object v0, p0, Lz/f;->a:[B

    iget v1, p0, Lz/f;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lz/f;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lz/f;->b:I

    .line 8
    iget p1, p0, Lz/f;->d:I

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x2

    move v0, p1

    move v3, v2

    .line 9
    :goto_0
    iget v4, p0, Lz/f;->d:I

    if-ge v0, v4, :cond_3

    .line 10
    iget-object v4, p0, Lz/f;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    not-int v0, v3

    int-to-byte v0, v0

    .line 11
    iget-object v3, p0, Lz/f;->a:[B

    aget-byte v5, v3, v4

    if-ne v0, v5, :cond_4

    sub-int/2addr v4, v1

    .line 12
    invoke-virtual {p0, v3, v1, v4}, Lz/f;->i([BII)V

    .line 13
    iget p1, p0, Lz/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz/f;->c:I

    goto :goto_1

    .line 14
    :cond_4
    iput p1, p0, Lz/f;->c:I

    .line 15
    :goto_1
    iput v2, p0, Lz/f;->d:I

    .line 16
    :cond_5
    iget p1, p0, Lz/f;->b:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lz/f;->c:I

    if-ge v0, p1, :cond_a

    .line 17
    iget-object v3, p0, Lz/f;->a:[B

    aget-byte v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_9

    add-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v0, 0x2

    .line 18
    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    iput v4, p0, Lz/f;->d:I

    .line 19
    iget v3, p0, Lz/f;->b:I

    if-lt v4, v3, :cond_6

    sub-int/2addr v4, v0

    .line 20
    iput v4, p0, Lz/f;->d:I

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x2

    move v3, v2

    .line 21
    :goto_3
    iget v4, p0, Lz/f;->d:I

    if-ge v0, v4, :cond_7

    .line 22
    iget-object v4, p0, Lz/f;->a:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    not-int v0, v3

    int-to-byte v0, v0

    .line 23
    iget-object v3, p0, Lz/f;->a:[B

    aget-byte v5, v3, v4

    if-ne v0, v5, :cond_8

    .line 24
    iget v0, p0, Lz/f;->c:I

    add-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v5, v4}, Lz/f;->i([BII)V

    .line 25
    iget v0, p0, Lz/f;->d:I

    iput v0, p0, Lz/f;->c:I

    goto :goto_4

    .line 26
    :cond_8
    iget v0, p0, Lz/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/f;->c:I

    .line 27
    :goto_4
    iput v2, p0, Lz/f;->d:I

    .line 28
    :cond_9
    iget v0, p0, Lz/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/f;->c:I

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v0, :cond_c

    .line 29
    iget p1, p0, Lz/f;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lz/f;->b:I

    if-eqz p1, :cond_b

    .line 30
    iget-object v1, p0, Lz/f;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    :cond_b
    iput v2, p0, Lz/f;->c:I

    :cond_c
    :goto_6
    return-void
.end method

.method public final c(I)I
    .locals 1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x30

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x46

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x37

    :cond_2
    :goto_0
    return p1
.end method

.method public final d([BII)V
    .locals 10

    .line 1
    sget p3, Lu0/b;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    sget p3, Lu0/b;->h:I

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lz/f;->f:Z

    if-eq v2, p3, :cond_1

    .line 3
    iput-boolean p3, p0, Lz/f;->f:Z

    if-eqz p3, :cond_1

    .line 4
    sput v1, Lo0/e;->k:I

    .line 5
    sput v1, Lo0/e;->h:I

    .line 6
    sput v1, Lo0/e;->i:I

    .line 7
    sput v1, Lo0/e;->j:I

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 8
    :cond_2
    sget p3, Lo0/e;->h:I

    .line 9
    sget v2, Lo0/e;->i:I

    .line 10
    sget v3, Lo0/e;->j:I

    .line 11
    sget v4, Lo0/e;->k:I

    .line 12
    aget-byte v5, p1, p2

    and-int/2addr v5, v1

    invoke-static {v5}, Lo0/g;->n(I)V

    add-int/lit8 v5, p2, 0x1

    .line 13
    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    invoke-static {v5}, Lo0/g;->o(I)V

    add-int/lit8 v5, p2, 0x2

    .line 14
    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    invoke-static {v5}, Lo0/g;->p(I)V

    .line 15
    sget v5, Lo0/e;->k:I

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 16
    sget-object v4, Lu0/b;->N2:Lo1/w;

    invoke-virtual {v4, v7}, Lo1/w;->b(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 17
    invoke-virtual {v4, v7}, Lo1/w;->c(I)I

    const/16 v5, 0x1b

    .line 18
    invoke-virtual {v4, v5}, Lo1/w;->b(I)I

    move-result v4

    .line 19
    invoke-static {v4}, Lu0/d;->Z1(I)V

    new-array v5, v8, [I

    aput v1, v5, v0

    aput v0, v5, v1

    aput v4, v5, v9

    .line 20
    invoke-static {v5}, Lz/k;->s([I)V

    .line 21
    :cond_3
    sget v4, Lo0/e;->h:I

    if-eq v4, p3, :cond_5

    if-eqz v4, :cond_4

    .line 22
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    and-int/2addr p1, v1

    if-nez p1, :cond_5

    move p2, v0

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v0

    move p2, v1

    goto :goto_1

    :cond_5
    move p1, v0

    move p2, p1

    .line 23
    :goto_1
    sget p3, Lo0/e;->i:I

    if-eq p3, v2, :cond_7

    if-eqz p3, :cond_6

    move p1, v9

    goto :goto_2

    :cond_6
    move p2, v9

    .line 24
    :cond_7
    :goto_2
    sget p3, Lo0/e;->j:I

    if-eq p3, v3, :cond_9

    if-eqz p3, :cond_8

    move p1, v8

    goto :goto_3

    :cond_8
    move p2, v8

    :cond_9
    :goto_3
    if-eqz p1, :cond_e

    .line 25
    sget p2, Lh0/c;->G:I

    if-nez p2, :cond_d

    if-eq p1, v1, :cond_c

    if-eq p1, v9, :cond_b

    if-eq p1, v8, :cond_a

    goto :goto_4

    :cond_a
    const-string p2, "com.syu.dvd.usb"

    .line 26
    invoke-static {p2}, Lo1/u;->G(Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const-string p2, "com.syu.dvd.sd"

    .line 27
    invoke-static {p2}, Lo1/u;->G(Ljava/lang/String;)I

    goto :goto_4

    .line 28
    :cond_c
    invoke-static {}, Lo1/u;->E()I

    .line 29
    :cond_d
    :goto_4
    sget-object p2, Lo0/e;->b:Lo0/h;

    invoke-virtual {p2, p1}, Lo0/h;->z(I)V

    .line 30
    invoke-static {v1}, Lo0/g;->z(I)V

    goto/16 :goto_8

    :cond_e
    if-eqz p2, :cond_1b

    .line 31
    sget-object p1, Lu0/b;->N2:Lo1/w;

    invoke-virtual {p1, v7}, Lo1/w;->b(I)I

    move-result p1

    if-eq p1, v6, :cond_f

    return-void

    .line 32
    :cond_f
    sget p1, Lo0/e;->H:I

    if-eq p1, p2, :cond_10

    if-nez p1, :cond_1b

    .line 33
    :cond_10
    invoke-static {}, Lo0/g;->l()V

    move p1, v0

    .line 34
    :cond_11
    sget-object p3, Lo0/e;->T:Lo1/w;

    const v2, -0x7e5447d

    invoke-virtual {p3, v2}, Lo1/w;->c(I)I

    move-result p3

    if-eq p3, v2, :cond_16

    if-eq p3, v1, :cond_14

    if-eq p3, v9, :cond_13

    if-eq p3, v8, :cond_12

    goto :goto_6

    .line 35
    :cond_12
    sget v2, Lo0/e;->j:I

    if-eqz v2, :cond_15

    goto :goto_5

    .line 36
    :cond_13
    sget v2, Lo0/e;->i:I

    if-eqz v2, :cond_15

    goto :goto_5

    .line 37
    :cond_14
    sget v2, Lo0/e;->h:I

    if-eqz v2, :cond_15

    :goto_5
    move p1, v1

    :cond_15
    :goto_6
    if-eqz p1, :cond_11

    .line 38
    sget-object v2, Lo0/e;->b:Lo0/h;

    invoke-virtual {v2, p3}, Lo0/h;->z(I)V

    .line 39
    invoke-static {v1}, Lo0/g;->z(I)V

    :cond_16
    if-nez p1, :cond_1b

    .line 40
    sget p1, Lo0/e;->h:I

    if-eqz p1, :cond_17

    move v0, v1

    goto :goto_7

    .line 41
    :cond_17
    sget p1, Lo0/e;->i:I

    if-eqz p1, :cond_18

    move v0, v9

    goto :goto_7

    .line 42
    :cond_18
    sget p1, Lo0/e;->j:I

    if-eqz p1, :cond_19

    move v0, v8

    :cond_19
    :goto_7
    if-nez v0, :cond_1a

    .line 43
    invoke-static {p2}, Lo0/g;->k(I)V

    .line 44
    invoke-static {v9}, Lo0/g;->z(I)V

    goto :goto_8

    .line 45
    :cond_1a
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1, v0}, Lo0/h;->z(I)V

    .line 46
    invoke-static {v1}, Lo0/g;->z(I)V

    :cond_1b
    :goto_8
    return-void
.end method

.method public final e([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    add-int/lit8 v0, p2, 0x6

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lz/f;->c(I)I

    move-result v0

    add-int/lit8 v4, p2, 0x7

    .line 3
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0, v4}, Lz/f;->c(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x8

    .line 4
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lz/f;->c(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x9

    .line 5
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p0, v6}, Lz/f;->c(I)I

    move-result v6

    shl-int/lit8 v0, v0, 0xc

    const v7, 0xf000

    and-int/2addr v0, v7

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xf00

    or-int/2addr v0, v4

    shl-int/lit8 v4, v5, 0x4

    and-int/lit16 v4, v4, 0xf0

    or-int/2addr v0, v4

    and-int/lit8 v4, v6, 0xf

    or-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    const/16 v4, 0x800

    if-lt v0, v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0xb

    add-int/lit8 p3, p3, -0xb

    sget-object v6, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v4, p1, v5, p3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception p3

    .line 7
    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    add-int/lit8 p3, p2, 0x5

    .line 8
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v4, 0xff00

    and-int/2addr p3, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    add-int/2addr p2, v3

    .line 9
    aget-byte p1, p1, p2

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_5

    .line 10
    :cond_1
    sget-object p1, Lo0/e;->Z:[Ljava/lang/String;

    aput-object v1, p1, v0

    .line 11
    sget-object p1, Lo0/e;->c0:[I

    aput p3, p1, v0

    add-int/2addr v0, v3

    .line 12
    sget p1, Lo0/e;->y:I

    if-le v0, p1, :cond_f

    .line 13
    invoke-static {v0}, Lo0/g;->Z(I)V

    goto/16 :goto_5

    .line 14
    :cond_2
    sget-object p1, Lo0/e;->Y:[Ljava/lang/String;

    aput-object v1, p1, v0

    .line 15
    sget-object p1, Lo0/e;->b0:[I

    aput p3, p1, v0

    add-int/2addr v0, v3

    .line 16
    sget p1, Lo0/e;->x:I

    if-le v0, p1, :cond_f

    .line 17
    invoke-static {v0}, Lo0/g;->B(I)V

    goto/16 :goto_5

    .line 18
    :cond_3
    sget-object p1, Lo0/e;->X:[Ljava/lang/String;

    aput-object v1, p1, v0

    .line 19
    sget-object p1, Lo0/e;->a0:[I

    aput p3, p1, v0

    add-int/2addr v0, v3

    .line 20
    sget p1, Lo0/e;->w:I

    if-le v0, p1, :cond_f

    .line 21
    invoke-static {v0}, Lo0/g;->c(I)V

    goto/16 :goto_5

    :cond_4
    :goto_1
    return-void

    .line 22
    :cond_5
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 23
    aget-byte v4, p1, p2

    and-int/lit8 v4, v4, 0xf

    if-ltz v0, :cond_f

    const/4 v5, 0x3

    if-gt v0, v5, :cond_f

    const/4 v6, 0x5

    if-lt v4, v6, :cond_f

    const/4 v7, 0x7

    if-le v4, v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    if-eq v0, v5, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v0, p2, 0x1

    add-int/2addr p2, p3

    sub-int/2addr p2, v3

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_8

    .line 24
    aget-byte v2, p1, v1

    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v8, p1, v5

    aput-byte v8, p1, v1

    .line 26
    aput-byte v2, p1, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 27
    :cond_8
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p3, v3

    invoke-direct {v1, p1, v0, p3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4

    .line 28
    :cond_9
    new-instance v1, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4

    .line 29
    :cond_a
    :try_start_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 31
    :cond_b
    :try_start_2
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    sget-object v2, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_4
    if-eq v4, v6, :cond_e

    const/4 p1, 0x6

    if-eq v4, p1, :cond_d

    if-eq v4, v7, :cond_c

    goto :goto_5

    .line 33
    :cond_c
    invoke-static {v1}, Lo0/g;->t(Ljava/lang/String;)V

    goto :goto_5

    .line 34
    :cond_d
    invoke-static {v1}, Lo0/g;->u(Ljava/lang/String;)V

    goto :goto_5

    .line 35
    :cond_e
    invoke-static {v1}, Lo0/g;->v(Ljava/lang/String;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public final f([BII)V
    .locals 3

    .line 1
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    mul-int/lit16 p3, p3, 0xe10

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x4

    .line 2
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, 0x7f000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    if-le p3, v0, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    invoke-static {p3}, Lo0/g;->G(I)V

    .line 4
    invoke-static {v0}, Lo0/g;->O(I)V

    add-int/lit8 p2, p2, 0x3

    .line 5
    aget-byte p1, p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lo0/g;->v(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lo0/g;->u(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lo0/g;->t(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final g([BII)V
    .locals 9

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    add-int/lit8 v1, p2, 0x5

    .line 2
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v0

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x9

    .line 3
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    add-int/lit8 p2, p3, -0x1

    .line 4
    invoke-static {p2}, Lo0/g;->I(I)V

    .line 5
    invoke-static {v1}, Lo0/g;->P(I)V

    add-int/lit8 v0, p1, -0x1

    .line 6
    invoke-static {v0}, Lo0/g;->C(I)V

    .line 7
    sget v0, Lo0/e;->e0:I

    const-string v2, "%d/%d %s"

    const/16 v3, 0x800

    const/16 v4, 0x2800

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-le v1, v4, :cond_0

    move v1, v4

    .line 8
    :cond_0
    sget p1, Lo0/e;->w:I

    if-eq p1, v8, :cond_1

    .line 9
    sget-object p1, Lo0/e;->X:[Ljava/lang/String;

    const-string p2, "1.\\"

    aput-object p2, p1, v7

    .line 10
    sget-object p1, Lo0/e;->a0:[I

    aput v1, p1, v7

    .line 11
    invoke-static {v8}, Lo0/g;->c(I)V

    .line 12
    :cond_1
    sget p1, Lo0/e;->t:I

    if-eq p1, v1, :cond_3

    .line 13
    invoke-static {v7}, Lo0/g;->b(I)V

    move p1, v7

    :goto_0
    if-ge p1, v1, :cond_2

    .line 14
    sget-object p2, Lo0/e;->U:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const-string v3, "CD Track %d "

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    move p1, v2

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v1}, Lo0/g;->b(I)V

    :cond_3
    new-array p1, v5, [Ljava/lang/Object;

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "%d/%d CD Track %d "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    if-lt p1, v8, :cond_a

    if-le p1, v3, :cond_4

    goto/16 :goto_1

    :cond_4
    if-lt p3, v8, :cond_a

    if-le p3, v4, :cond_5

    goto/16 :goto_1

    :cond_5
    new-array p1, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v7

    sget p3, Lo0/e;->v:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v8

    sget-object p3, Lo0/e;->W:[Ljava/lang/String;

    aget-object p2, p3, p2

    aput-object p2, p1, v6

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    if-lt p1, v8, :cond_a

    if-le p1, v3, :cond_6

    goto/16 :goto_1

    :cond_6
    if-lt p3, v8, :cond_a

    if-le p3, v4, :cond_7

    goto/16 :goto_1

    :cond_7
    new-array p1, v5, [Ljava/lang/Object;

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v7

    sget p3, Lo0/e;->u:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v8

    sget-object p3, Lo0/e;->V:[Ljava/lang/String;

    aget-object p2, p3, p2

    aput-object p2, p1, v6

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-array p1, v6, [Ljava/lang/Object;

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "%d/%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    if-lt p1, v8, :cond_a

    if-le p1, v3, :cond_8

    goto :goto_1

    :cond_8
    if-lt p3, v8, :cond_a

    if-le p3, v4, :cond_9

    goto :goto_1

    :cond_9
    new-array p1, v5, [Ljava/lang/Object;

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v7

    sget p3, Lo0/e;->t:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v8

    sget-object p3, Lo0/e;->U:[Ljava/lang/String;

    aget-object p2, p3, p2

    aput-object p2, p1, v6

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "/^_^ChApTeR^_^/"

    aput-object v0, p2, v7

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v6

    const-string p3, "/^-^LiSt^_^/"

    aput-object p3, p2, v5

    const/4 p3, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "%s %d/%d %s %d"

    .line 22
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/g;->R(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h([BII)V
    .locals 6

    .line 1
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    add-int/2addr p2, v1

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x0

    .line 4
    sput p2, Lo0/e;->j0:I

    .line 5
    sget v2, Lo0/e;->e0:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, p3, :cond_0

    .line 6
    sput p3, Lo0/e;->e0:I

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-static {v4}, Lo0/g;->D(I)V

    .line 8
    invoke-static {v4}, Lo0/g;->w(I)V

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-static {v1}, Lo0/g;->D(I)V

    .line 10
    invoke-static {v1}, Lo0/g;->w(I)V

    goto :goto_0

    .line 11
    :pswitch_2
    invoke-static {v5}, Lo0/g;->D(I)V

    .line 12
    invoke-static {v5}, Lo0/g;->w(I)V

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-static {v4}, Lo0/g;->D(I)V

    .line 14
    invoke-static {p2}, Lo0/g;->w(I)V

    goto :goto_0

    .line 15
    :pswitch_4
    invoke-static {p2}, Lo0/g;->D(I)V

    .line 16
    invoke-static {p2}, Lo0/g;->w(I)V

    :goto_0
    packed-switch p3, :pswitch_data_1

    goto :goto_1

    .line 17
    :pswitch_5
    invoke-static {v5}, Lo0/g;->f(I)V

    goto :goto_1

    .line 18
    :pswitch_6
    invoke-static {v1}, Lo0/g;->f(I)V

    goto :goto_1

    .line 19
    :pswitch_7
    invoke-static {v3}, Lo0/g;->f(I)V

    goto :goto_1

    .line 20
    :pswitch_8
    invoke-static {v4}, Lo0/g;->f(I)V

    goto :goto_1

    .line 21
    :pswitch_9
    invoke-static {p2}, Lo0/g;->f(I)V

    :cond_0
    :goto_1
    if-eq v0, v5, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    .line 22
    invoke-static {p2}, Lo0/g;->e(I)V

    goto :goto_2

    :cond_1
    const/4 p3, 0x5

    .line 23
    invoke-static {p3}, Lo0/g;->e(I)V

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v1}, Lo0/g;->e(I)V

    goto :goto_2

    .line 25
    :cond_3
    invoke-static {v4}, Lo0/g;->e(I)V

    goto :goto_2

    .line 26
    :cond_4
    invoke-static {v5}, Lo0/g;->e(I)V

    .line 27
    :goto_2
    sget p3, Lo0/e;->I:I

    if-ne p3, v5, :cond_5

    sget p3, Lo0/e;->E:I

    if-eqz p3, :cond_5

    .line 28
    invoke-static {p2}, Lo0/g;->z(I)V

    .line 29
    :cond_5
    invoke-static {p1}, Lo0/g;->Q(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final i([BII)V
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Lo0/e;->k0:I

    if-nez v0, :cond_0

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->d([BII)V

    :cond_0
    return-void

    .line 4
    :cond_1
    aget-byte v0, p1, p2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->j([BII)V

    return-void

    .line 6
    :cond_2
    aget-byte v0, p1, p2

    const/16 v3, -0x29

    if-eq v0, v3, :cond_c

    const/16 v3, -0x25

    const/4 v4, 0x5

    if-eq v0, v3, :cond_6

    const/16 v2, 0x14

    if-eq v0, v2, :cond_5

    const/16 v2, 0x11

    if-eq v0, v2, :cond_4

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->e([BII)V

    goto/16 :goto_0

    :pswitch_1
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->a([BII)V

    goto/16 :goto_0

    :pswitch_2
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->k([BII)V

    goto/16 :goto_0

    :pswitch_3
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->o([BII)V

    goto/16 :goto_0

    :pswitch_4
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->g([BII)V

    goto/16 :goto_0

    :pswitch_5
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->f([BII)V

    goto/16 :goto_0

    :pswitch_6
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->h([BII)V

    goto/16 :goto_0

    :pswitch_7
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->l([BII)V

    goto/16 :goto_0

    .line 15
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    sget-object v1, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lz/f;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lo0/g;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_4
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->n([BII)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {v4}, Lo0/g;->z(I)V

    goto :goto_0

    :cond_6
    add-int/2addr p2, v2

    .line 21
    aget-byte p1, p1, p2

    if-eq p1, v1, :cond_b

    if-eq p1, v2, :cond_a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_9

    const/4 p2, 0x4

    if-eq p1, p2, :cond_8

    if-eq p1, v4, :cond_7

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xa

    .line 22
    invoke-static {p1}, Lo0/g;->N(I)V

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x9

    .line 23
    invoke-static {p1}, Lo0/g;->N(I)V

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x8

    .line 24
    invoke-static {p1}, Lo0/g;->N(I)V

    goto :goto_0

    :pswitch_b
    const/4 p1, 0x7

    .line 25
    invoke-static {p1}, Lo0/g;->N(I)V

    goto :goto_0

    :pswitch_c
    const/4 p1, 0x6

    .line 26
    invoke-static {p1}, Lo0/g;->N(I)V

    goto :goto_0

    .line 27
    :cond_7
    invoke-static {v4}, Lo0/g;->N(I)V

    goto :goto_0

    .line 28
    :cond_8
    invoke-static {p2}, Lo0/g;->N(I)V

    goto :goto_0

    .line 29
    :cond_9
    invoke-static {p2}, Lo0/g;->N(I)V

    goto :goto_0

    .line 30
    :cond_a
    invoke-static {v2}, Lo0/g;->N(I)V

    goto :goto_0

    .line 31
    :cond_b
    invoke-static {v1}, Lo0/g;->N(I)V

    goto :goto_0

    :cond_c
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->m([BII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final j([BII)V
    .locals 0

    return-void
.end method

.method public final k([BII)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lz/f;->c(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lz/f;->c(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Lz/f;->c(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Lz/f;->c(I)I

    move-result v3

    shl-int/lit8 v0, v0, 0xc

    const v4, 0xf000

    and-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xf00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    or-int/2addr v0, v1

    and-int/lit8 v1, v3, 0xf

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    const/16 v1, 0x2800

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 p3, p3, -0x6

    sget-object v3, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :goto_0
    sget-object p1, Lo0/e;->V:[Ljava/lang/String;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 8
    sget p1, Lo0/e;->u:I

    if-le v0, p1, :cond_1

    .line 9
    invoke-static {v0}, Lo0/g;->A(I)V

    .line 10
    :cond_1
    sget p1, Lo0/e;->z:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final l([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p3, :cond_4

    if-eq p3, v4, :cond_3

    const/4 v5, 0x5

    if-eq p3, v5, :cond_2

    const/16 v6, 0xc

    if-eq p3, v6, :cond_1

    const/16 v6, 0xd

    if-eq p3, v6, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {v4}, Lo0/g;->z(I)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {v1}, Lo0/g;->z(I)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-static {v4}, Lo0/g;->E(I)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-static {v5}, Lo0/g;->E(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v2}, Lo0/g;->z(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v3}, Lo0/g;->E(I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v2}, Lo0/g;->E(I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v1}, Lo0/g;->E(I)V

    .line 10
    sget p3, Lu0/b;->h:I

    if-nez p3, :cond_5

    .line 11
    invoke-static {v0}, Lo0/g;->z(I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {v0}, Lo0/g;->E(I)V

    :cond_5
    :goto_0
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-eqz p3, :cond_9

    const/16 v5, 0x8

    if-eq p3, v5, :cond_8

    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_6

    .line 14
    invoke-static {v0}, Lo0/g;->M(I)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {v3}, Lo0/g;->M(I)V

    goto :goto_1

    .line 16
    :cond_7
    invoke-static {v4}, Lo0/g;->M(I)V

    goto :goto_1

    .line 17
    :cond_8
    invoke-static {v2}, Lo0/g;->M(I)V

    goto :goto_1

    .line 18
    :cond_9
    invoke-static {v1}, Lo0/g;->M(I)V

    :goto_1
    add-int/2addr p2, v3

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Lo0/g;->K(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m([BII)V
    .locals 3

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    const/16 v2, 0x10

    if-eq p3, v0, :cond_0

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte p1, p1, p2

    if-ne p1, v2, :cond_1

    .line 3
    sget p1, Lo0/e;->K:I

    if-gtz p1, :cond_1

    const/4 p1, 0x5

    .line 4
    sput p1, Lo0/e;->K:I

    .line 5
    invoke-static {v1}, Lo0/g;->S(I)V

    .line 6
    sget-object p1, Lo0/g;->a:Ljava/lang/Runnable;

    invoke-static {p1}, Lo0/g;->a(Ljava/lang/Runnable;)V

    .line 7
    :cond_1
    sget p1, Lo0/e;->E:I

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x4

    if-eq p1, p2, :cond_2

    .line 8
    sget p1, Lo0/e;->v:I

    if-lez p1, :cond_4

    .line 9
    invoke-static {p3}, Lo0/g;->z(I)V

    goto :goto_0

    .line 10
    :cond_2
    sget p1, Lo0/e;->u:I

    if-lez p1, :cond_4

    .line 11
    invoke-static {p3}, Lo0/g;->z(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lz/f;->g:Lo1/k0;

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Lo1/k0;->c(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lo0/g;->l()V

    .line 14
    invoke-static {v1}, Lo0/g;->z(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final n([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x5

    .line 3
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit16 v3, p3, 0xf0

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    const-string v3, "9025_"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v4, 0x60

    if-ne v3, v4, :cond_1

    const-string v3, "9026_"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    const-string v3, "9000_"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    const-string v3, "9002_"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    const-string v3, "9023_"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v4, 0x20

    const-string v5, "9024_"

    if-ne v3, v4, :cond_5

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    and-int/lit8 p3, p3, 0xf

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne p3, v5, :cond_6

    const-string p3, "Sanyo_"

    .line 12
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-ne p3, v3, :cond_7

    const-string p3, "1200XH_"

    .line 13
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    if-ne p3, v4, :cond_8

    const-string p3, "1200W_"

    .line 14
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_1
    and-int/lit8 p3, v0, 0x1

    if-eqz p3, :cond_9

    const-string p3, "S_"

    .line 15
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string p3, "NS_"

    .line 16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    packed-switch v1, :pswitch_data_0

    const-string p3, "Windows-1252"

    .line 17
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    goto :goto_3

    :pswitch_0
    const-string p3, "Windows-1251"

    .line 18
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Russia_"

    .line 19
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string p3, "Windows-1255"

    .line 20
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Hebrew_"

    .line 21
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    const-string p3, "Windows-1256"

    .line 22
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Arabia_"

    .line 23
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_3
    const-string p3, "Windows-932"

    .line 24
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Japan_"

    .line 25
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_4
    const-string p3, "Windows-949"

    .line 26
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Korea_"

    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_5
    const-string p3, "Windows-874"

    .line 28
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Thai_"

    .line 29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_6
    const-string p3, "Windows-950"

    .line 30
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Cht_"

    .line 31
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_7
    const-string p3, "Windows-936"

    .line 32
    sput-object p3, Lo0/e;->l:Ljava/lang/String;

    const-string p3, "Chs_"

    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p3, p2, 0x2

    .line 34
    aget-byte v0, p1, p3

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    if-nez v0, :cond_a

    const-string p1, " "

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz/f;->e:Ljava/lang/String;

    goto :goto_4

    :cond_a
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    .line 37
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v6, 0x0

    aput-object p3, v1, v6

    add-int/lit8 p3, p2, 0x3

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v5

    add-int/2addr p2, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "%02d%02d_V%d.%02d "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz/f;->e:Ljava/lang/String;

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final o([BII)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lz/f;->c(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lz/f;->c(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Lz/f;->c(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Lz/f;->c(I)I

    move-result v3

    shl-int/lit8 v0, v0, 0xc

    const v4, 0xf000

    and-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xf00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    or-int/2addr v0, v1

    and-int/lit8 v1, v3, 0xf

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    const/16 v1, 0x2800

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 p3, p3, -0x6

    sget-object v3, Lo0/e;->l:Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :goto_0
    sget-object p1, Lo0/e;->W:[Ljava/lang/String;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 8
    sget p1, Lo0/e;->v:I

    if-le v0, p1, :cond_1

    .line 9
    invoke-static {v0}, Lo0/g;->Y(I)V

    .line 10
    :cond_1
    sget p1, Lo0/e;->z:I

    :cond_2
    :goto_1
    return-void
.end method
