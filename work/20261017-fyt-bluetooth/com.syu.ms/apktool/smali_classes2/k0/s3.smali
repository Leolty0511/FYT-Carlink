.class public Lk0/s3;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/s3;->c:I

    const/16 v0, 0xe

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/s3;->d:[[I

    .line 4
    new-instance v0, Lk0/s3$a;

    invoke-direct {v0, p0}, Lk0/s3$a;-><init>(Lk0/s3;)V

    iput-object v0, p0, Lk0/s3;->e:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x36
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x20
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x21
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x37
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x4
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1b
    .end array-data

    :array_d
    .array-data 4
        0xe
        0xc
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ll0/g;->i()V

    .line 3
    iget-object v0, p0, Lk0/s3;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte p3, p1, p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/2addr p2, v0

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0x23

    invoke-static {p1, v1, p2}, Lk0/qt;->o(IZI)V

    goto/16 :goto_8

    :cond_1
    add-int/2addr p2, v0

    .line 4
    aget-byte p3, p1, p2

    const/16 v0, 0xff

    and-int/2addr p3, v0

    const/16 v2, 0x81

    const/4 v3, 0x0

    if-lt p3, v2, :cond_2

    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0x85

    if-le p3, v2, :cond_3

    :cond_2
    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0xb1

    if-lt p3, v2, :cond_6

    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0xb5

    if-gt p3, v2, :cond_6

    .line 5
    :cond_3
    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    and-int/lit8 p3, p3, 0x30

    const/16 v2, 0xb0

    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_0

    :cond_4
    const/16 p3, 0x80

    .line 6
    :goto_0
    aget-byte v4, p1, p2

    and-int/2addr v4, v0

    rem-int/2addr v4, p3

    if-ne p3, v2, :cond_5

    move p3, v3

    :goto_1
    if-ge p3, v4, :cond_b

    .line 7
    invoke-static {v3}, Ll0/b0;->t(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    move p3, v3

    :goto_2
    if-ge p3, v4, :cond_b

    .line 8
    invoke-static {}, Lu0/d;->O1()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 9
    :cond_6
    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0x91

    if-lt p3, v2, :cond_7

    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0x95

    if-le p3, v2, :cond_8

    :cond_7
    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0xa1

    if-lt p3, v2, :cond_b

    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    const/16 v2, 0xa5

    if-gt p3, v2, :cond_b

    .line 10
    :cond_8
    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    and-int/lit8 p3, p3, 0x10

    const/16 v2, 0xa0

    if-eqz p3, :cond_9

    const/16 p3, 0x90

    goto :goto_3

    :cond_9
    move p3, v2

    .line 11
    :goto_3
    aget-byte v4, p1, p2

    and-int/2addr v4, v0

    rem-int/2addr v4, p3

    if-ne p3, v2, :cond_a

    move p3, v3

    :goto_4
    if-ge p3, v4, :cond_b

    .line 12
    invoke-static {v3}, Ll0/b0;->s(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_a
    move p3, v3

    :goto_5
    if-ge p3, v4, :cond_b

    .line 13
    invoke-static {}, Lu0/d;->M1()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 14
    :cond_b
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    iput p1, p0, Lk0/s3;->c:I

    move p1, v3

    .line 15
    :goto_6
    iget-object p2, p0, Lk0/s3;->d:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_d

    .line 16
    iget p3, p0, Lk0/s3;->c:I

    aget-object v2, p2, p1

    aget v2, v2, v3

    if-ne p3, v2, :cond_c

    if-eqz p3, :cond_d

    .line 17
    iput p1, p0, Lk0/s3;->b:I

    goto :goto_7

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 18
    :cond_d
    :goto_7
    iget p3, p0, Lk0/s3;->c:I

    if-eqz p3, :cond_e

    .line 19
    array-length p3, p2

    if-ge p1, p3, :cond_10

    .line 20
    aget-object p1, p2, p1

    aget p1, p1, v1

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_e
    if-nez p3, :cond_10

    .line 21
    iget p1, p0, Lk0/s3;->b:I

    array-length p3, p2

    if-ge p1, p3, :cond_f

    if-eq p1, v0, :cond_f

    .line 22
    aget-object p1, p2, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 23
    :cond_f
    iput v0, p0, Lk0/s3;->b:I

    :cond_10
    :goto_8
    return-void
.end method

.method public V2()V
    .locals 7

    .line 1
    invoke-static {}, Ll0/g;->g()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xaa

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 3
    invoke-static {v4}, Ll0/g;->h(I)B

    move-result v2

    int-to-char v2, v2

    const/4 v3, 0x2

    .line 4
    invoke-static {v3}, Ll0/g;->h(I)B

    move-result v3

    add-int/lit8 v5, v3, 0x1

    if-gt v5, v0, :cond_3

    add-int/2addr v2, v3

    .line 5
    sput v2, Ll0/g;->h:I

    move v0, v1

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_0

    .line 6
    sget-object v5, Ll0/g;->g:[B

    add-int/lit8 v6, v0, 0x3

    invoke-static {v6}, Ll0/g;->h(I)B

    move-result v6

    aput-byte v6, v5, v0

    .line 7
    sget-object v5, Ll0/g;->g:[B

    aget-byte v5, v5, v0

    add-int/2addr v2, v5

    not-int v2, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x3

    .line 8
    invoke-static {v0}, Ll0/g;->h(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v2, v0, :cond_1

    .line 9
    sget-object v0, Ll0/g;->g:[B

    invoke-virtual {p0, v0, v1, v3}, Lk0/s3;->U2([BII)V

    .line 10
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    goto :goto_1

    .line 11
    :cond_1
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v4

    sput v0, Ll0/g;->c:I

    .line 12
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    goto :goto_1

    .line 13
    :cond_2
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v4

    sput v0, Ll0/g;->c:I

    .line 14
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    :cond_3
    :goto_1
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/s3;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_0
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
