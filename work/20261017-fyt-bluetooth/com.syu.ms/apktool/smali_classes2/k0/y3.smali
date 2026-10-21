.class public Lk0/y3;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public final g:[B

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/y3;->c:I

    const/16 v1, 0x18

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/y3;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/y3;->e:B

    .line 5
    new-instance v1, Lk0/y3$a;

    invoke-direct {v1, p0}, Lk0/y3$a;-><init>(Lk0/y3;)V

    iput-object v1, p0, Lk0/y3;->f:Ljava/lang/Runnable;

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 6
    iput-object v1, p0, Lk0/y3;->g:[B

    .line 7
    iput v0, p0, Lk0/y3;->h:I

    .line 8
    iput v0, p0, Lk0/y3;->i:I

    .line 9
    iput v0, p0, Lk0/y3;->j:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x9
    .end array-data

    :array_7
    .array-data 4
        0x11
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x12
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x13
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x1b
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x1a
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x1b
        0x37
    .end array-data

    :array_12
    .array-data 4
        0x1c
        0x26
    .end array-data

    :array_13
    .array-data 4
        0x1d
        0x35
    .end array-data

    :array_14
    .array-data 4
        0x1e
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x1f
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x22
        0x1b
    .end array-data

    :array_17
    .array-data 4
        0x23
        0x1c
    .end array-data
.end method

.method public static synthetic a3(Lk0/y3;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/y3;->f:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 5
    iput p3, p0, Lk0/y3;->c:I

    const/4 p3, 0x0

    move v0, p3

    .line 6
    :goto_0
    iget-object v1, p0, Lk0/y3;->d:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 7
    iget v2, p0, Lk0/y3;->c:I

    aget-object v3, v1, v0

    aget v3, v3, p3

    if-ne v2, v3, :cond_2

    if-eqz v2, :cond_3

    .line 8
    iput v0, p0, Lk0/y3;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    iget v2, p0, Lk0/y3;->c:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-eq v2, v3, :cond_c

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_a

    const/16 v3, 0x22

    if-eq v2, v3, :cond_8

    const/16 v3, 0x23

    if-eq v2, v3, :cond_6

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    .line 10
    array-length p1, v1

    if-ge v0, p1, :cond_e

    .line 11
    iget-byte p1, p0, Lk0/y3;->e:B

    if-nez p1, :cond_e

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 12
    iput-byte p1, p0, Lk0/y3;->e:B

    .line 13
    aget-object p1, v1, v0

    aget p1, p1, v4

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    .line 14
    iget-object p1, p0, Lk0/y3;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 15
    :cond_4
    iget p1, p0, Lk0/y3;->b:I

    array-length v0, v1

    if-ge p1, v0, :cond_5

    if-eq p1, p2, :cond_5

    .line 16
    aget-object p1, v1, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 17
    iget-object p1, p0, Lk0/y3;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 18
    iput-byte p3, p0, Lk0/y3;->e:B

    .line 19
    :cond_5
    iput p2, p0, Lk0/y3;->b:I

    goto :goto_6

    :cond_6
    move v0, p3

    :goto_2
    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0x1c

    if-ge v0, v1, :cond_7

    .line 20
    invoke-static {v2, p3}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_8
    move v0, p3

    :goto_3
    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0x1b

    if-ge v0, v1, :cond_9

    .line 22
    invoke-static {v2, p3}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 23
    :cond_9
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_a
    move v0, p3

    :goto_4
    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0x8

    if-ge v0, v1, :cond_b

    .line 24
    invoke-static {v2, p3}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 25
    :cond_b
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_c
    move v0, p3

    :goto_5
    and-int/lit16 v1, p1, 0xff

    const/4 v2, 0x7

    if-ge v0, v1, :cond_d

    .line 26
    invoke-static {v2, p3}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 27
    :cond_d
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    :cond_e
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lk0/y3;->h:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/y3;->h:I

    .line 5
    iput v0, p0, Lk0/y3;->i:I

    .line 6
    iput v0, p0, Lk0/y3;->j:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/y3;->g:[B

    iget v2, p0, Lk0/y3;->h:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/y3;->h:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/y3;->h:I

    .line 9
    iget p1, p0, Lk0/y3;->j:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/y3;->g:[B

    aget-byte p1, p1, v2

    move v1, v3

    .line 11
    :goto_0
    iget v4, p0, Lk0/y3;->j:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lk0/y3;->g:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/y3;->g:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_5

    .line 14
    aget-byte p1, v1, v3

    add-int/2addr p1, v3

    invoke-virtual {p0, v1, v2, p1}, Lk0/y3;->U2([BII)V

    .line 15
    iget p1, p0, Lk0/y3;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lk0/y3;->i:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lk0/y3;->i:I

    .line 17
    :goto_1
    iput v0, p0, Lk0/y3;->j:I

    .line 18
    :cond_6
    iget p1, p0, Lk0/y3;->h:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/y3;->i:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v4, p0, Lk0/y3;->g:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_b

    .line 20
    iget v5, p0, Lk0/y3;->j:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_7

    .line 21
    iput v0, p0, Lk0/y3;->j:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x2

    .line 22
    aget-byte v5, v4, v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lk0/y3;->j:I

    .line 23
    iget v6, p0, Lk0/y3;->h:I

    if-lt v5, v6, :cond_8

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/y3;->j:I

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/y3;->j:I

    if-ge v1, v5, :cond_9

    .line 27
    iget-object v5, p0, Lk0/y3;->g:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    xor-int/lit16 v1, v4, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v4, p0, Lk0/y3;->g:[B

    aget-byte v5, v4, v5

    if-ne v1, v5, :cond_a

    .line 29
    iget v1, p0, Lk0/y3;->i:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, v3

    aget-byte v1, v4, v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v5, v1}, Lk0/y3;->U2([BII)V

    .line 30
    iget v1, p0, Lk0/y3;->j:I

    iput v1, p0, Lk0/y3;->i:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lk0/y3;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lk0/y3;->i:I

    .line 32
    :goto_4
    iput v0, p0, Lk0/y3;->j:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lk0/y3;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lk0/y3;->i:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lk0/y3;->h:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/y3;->h:I

    if-eqz p1, :cond_d

    .line 35
    iget-object v2, p0, Lk0/y3;->g:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lk0/y3;->i:I

    :cond_e
    :goto_7
    return-void
.end method
