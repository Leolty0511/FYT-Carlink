.class public Lk0/kj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/kj;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/kj;->d:I

    const/16 v1, 0x16

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/kj;->e:[[I

    .line 5
    iput v0, p0, Lk0/kj;->f:I

    .line 6
    iput v0, p0, Lk0/kj;->g:I

    .line 7
    new-instance v0, Lk0/kj$a;

    invoke-direct {v0, p0}, Lk0/kj$a;-><init>(Lk0/kj;)V

    iput-object v0, p0, Lk0/kj;->h:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_3
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x15
        0x22
    .end array-data

    :array_6
    .array-data 4
        0x16
        0x23
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_b
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_f
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_11
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_15
    .array-data 4
        0x5f
        0xd
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

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
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kj;->h:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 5

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_7

    const/16 v0, 0x22

    if-eq p3, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 3
    aget-byte p1, p1, p2

    if-eq p3, v2, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    iget p2, p0, Lk0/kj;->g:I

    if-eq p1, p2, :cond_c

    if-le p1, p2, :cond_2

    move p2, v1

    .line 5
    :goto_0
    iget p3, p0, Lk0/kj;->g:I

    sub-int p3, p1, p3

    if-ge p2, p3, :cond_3

    const/16 p3, 0x1f

    .line 6
    invoke-static {p3, v1}, Ll0/b0;->l0(II)V

    .line 7
    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    move p2, v1

    .line 8
    :goto_1
    iget p3, p0, Lk0/kj;->g:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_3

    const/16 p3, 0x1e

    .line 9
    invoke-static {p3, v1}, Ll0/b0;->l0(II)V

    .line 10
    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iput p1, p0, Lk0/kj;->g:I

    goto/16 :goto_6

    .line 12
    :cond_4
    iget p2, p0, Lk0/kj;->f:I

    if-eq p1, p2, :cond_c

    if-le p1, p2, :cond_5

    move p2, v1

    .line 13
    :goto_2
    iget p3, p0, Lk0/kj;->f:I

    sub-int p3, p1, p3

    if-ge p2, p3, :cond_6

    const/4 p3, 0x7

    .line 14
    invoke-static {p3, v1}, Ll0/b0;->l0(II)V

    .line 15
    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    if-ge p1, p2, :cond_6

    move p2, v1

    .line 16
    :goto_3
    iget p3, p0, Lk0/kj;->f:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_6

    const/16 p3, 0x8

    .line 17
    invoke-static {p3, v1}, Ll0/b0;->l0(II)V

    .line 18
    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 19
    :cond_6
    iput p1, p0, Lk0/kj;->f:I

    goto :goto_6

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    const/16 v0, 0xff

    and-int/2addr p3, v0

    iput p3, p0, Lk0/kj;->c:I

    add-int/lit8 p2, p2, 0x3

    .line 21
    aget-byte p1, p1, p2

    move p2, v1

    .line 22
    :goto_4
    iget-object p3, p0, Lk0/kj;->e:[[I

    array-length v3, p3

    if-ge p2, v3, :cond_9

    .line 23
    iget v3, p0, Lk0/kj;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v1

    if-ne v3, v4, :cond_8

    if-eqz v3, :cond_9

    .line 24
    iput p2, p0, Lk0/kj;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 25
    iget p1, p0, Lk0/kj;->d:I

    if-nez p1, :cond_a

    .line 26
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 27
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 28
    iput v2, p0, Lk0/kj;->d:I

    goto :goto_6

    .line 29
    :cond_a
    iget p1, p0, Lk0/kj;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v0, :cond_b

    .line 30
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 31
    :cond_b
    iput v0, p0, Lk0/kj;->b:I

    .line 32
    iput v1, p0, Lk0/kj;->d:I

    :cond_c
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
