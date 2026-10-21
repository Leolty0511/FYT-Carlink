.class public Lk0/a6;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/a6;->c:I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_f

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/a6;->d:[[I

    .line 4
    iput v3, p0, Lk0/a6;->e:I

    .line 5
    new-instance v0, Lk0/a6$a;

    invoke-direct {v0, p0}, Lk0/a6$a;-><init>(Lk0/a6;)V

    iput-object v0, p0, Lk0/a6;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/a6$b;

    invoke-direct {v0, p0}, Lk0/a6$b;-><init>(Lk0/a6;)V

    iput-object v0, p0, Lk0/a6;->g:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x43
    .end array-data

    :array_3
    .array-data 4
        0x1a
        0x44
    .end array-data

    :array_4
    .array-data 4
        0x1b
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1c
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x37
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x38
        0x21
    .end array-data

    :array_8
    .array-data 4
        0x39
        0x20
    .end array-data

    :array_9
    .array-data 4
        0x3a
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x3b
        0x1a
    .end array-data

    :array_b
    .array-data 4
        0x42
        0x1b
    .end array-data

    :array_c
    .array-data 4
        0x43
        0x1c
    .end array-data

    :array_d
    .array-data 4
        0x44
        0x19
    .end array-data

    :array_e
    .array-data 4
        0x45
        0x35
    .end array-data

    :array_f
    .array-data 4
        0x46
        0x15
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
    iget-object v0, p0, Lk0/a6;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Ll0/g;->i()V

    .line 4
    iget-object v0, p0, Lk0/a6;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 3

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0x60

    if-eq p3, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3
    iget p3, p0, Lk0/a6;->c:I

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    iget p3, p0, Lk0/a6;->e:I

    if-eqz p3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    iput p1, p0, Lk0/a6;->c:I

    const/4 p1, 0x0

    move p2, p1

    .line 5
    :goto_0
    iget-object p3, p0, Lk0/a6;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_3

    .line 6
    iget v0, p0, Lk0/a6;->c:I

    aget-object v2, p3, p2

    aget v2, v2, p1

    if-ne v0, v2, :cond_2

    if-eqz v0, :cond_3

    .line 7
    iput p2, p0, Lk0/a6;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget v0, p0, Lk0/a6;->c:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 9
    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 10
    iput v2, p0, Lk0/a6;->e:I

    .line 11
    aget-object p2, p3, p2

    aget p2, p2, v2

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    .line 12
    iget-object p1, p0, Lk0/a6;->d:[[I

    iget p2, p0, Lk0/a6;->b:I

    aget-object p1, p1, p2

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 13
    :cond_4
    iget p1, p0, Lk0/a6;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_5

    if-eq p1, v1, :cond_5

    .line 14
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 15
    :cond_5
    iput v1, p0, Lk0/a6;->b:I

    :cond_6
    :goto_2
    return-void
.end method

.method public V2()V
    .locals 4

    .line 1
    invoke-static {}, Ll0/g;->g()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ll0/g;->h(I)B

    move-result v1

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_4

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v2

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v1

    if-ne v2, v1, :cond_3

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 6
    sget-object v2, Ll0/g;->g:[B

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ll0/g;->h(I)B

    move-result v3

    aput-byte v3, v2, v1

    goto :goto_2

    .line 7
    :cond_2
    sget-object v2, Ll0/g;->g:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v0

    .line 8
    sget v2, Ll0/g;->c:I

    add-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    sget v3, Ll0/g;->e:I

    rem-int/2addr v2, v3

    sput v2, Ll0/g;->c:I

    .line 9
    sget-object v2, Ll0/g;->g:[B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lk0/a6;->U2([BII)V

    goto :goto_3

    .line 10
    :cond_3
    sget v0, Ll0/g;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ll0/g;->c:I

    .line 11
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    goto :goto_3

    .line 12
    :cond_4
    sget v0, Ll0/g;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ll0/g;->c:I

    .line 13
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    :cond_5
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/a6;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/a6;->g:Ljava/lang/Runnable;

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
