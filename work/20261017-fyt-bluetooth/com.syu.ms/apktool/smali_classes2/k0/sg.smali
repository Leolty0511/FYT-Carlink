.class public Lk0/sg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/sg;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/sg;->d:[[I

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
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x1b
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_8
    .array-data 4
        0xe
        0x0
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    const/16 v4, 0x21

    if-eq v0, v4, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    add-int/lit8 v4, p2, 0x4

    .line 5
    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    add-int/lit8 v5, p2, 0x5

    .line 6
    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    add-int/lit8 p2, p2, 0x6

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0xa

    new-array v1, v3, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v3

    aput v6, v1, v2

    .line 8
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xe

    new-array v1, v3, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v3

    aput v6, v1, v2

    .line 9
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v1, v3, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v6, v3

    aput v6, v1, v2

    .line 10
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v1, v3, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v3

    aput v6, v1, v2

    .line 11
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v1, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v1, v2

    .line 12
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v3, [I

    and-int/lit8 v0, v0, 0x1f

    aput v0, p3, v2

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v3, [I

    shr-int/lit8 v0, v4, 0x6

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v3, [I

    shr-int/lit8 v0, v4, 0x4

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v3, [I

    shr-int/lit8 v0, v4, 0x5

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x31

    new-array p3, v3, [I

    shr-int/lit8 v0, v4, 0x7

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, v5, 0xff

    const/4 p3, -0x3

    const/4 v0, -0x2

    const/16 v1, 0x3f

    const/16 v4, 0x1b

    if-nez v5, :cond_2

    new-array p2, v3, [I

    aput v0, p2, v2

    .line 18
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v5, v1, :cond_3

    new-array p2, v3, [I

    aput p3, p2, v2

    .line 19
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v5, v3, [I

    aput p2, v5, v2

    .line 20
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 p2, p1, 0xff

    const/16 v4, 0x1c

    if-nez p1, :cond_4

    new-array p1, v3, [I

    aput v0, p1, v2

    .line 21
    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_4
    if-ne p1, v1, :cond_5

    new-array p1, v3, [I

    aput p3, p1, v2

    .line 22
    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_5
    new-array p1, v3, [I

    aput p2, p1, v2

    .line 23
    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_6
    const/16 p3, 0x63

    new-array v0, v3, [I

    add-int/lit8 v4, p2, 0x2

    .line 24
    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    aput v4, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v3, [I

    add-int/lit8 v4, p2, 0x3

    .line 25
    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    aput v4, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v3, [I

    add-int/lit8 v4, p2, 0x4

    .line 26
    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    aput v4, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v3, [I

    add-int/lit8 v4, p2, 0x5

    .line 27
    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    aput v4, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v3, [I

    add-int/lit8 v4, p2, 0x6

    .line 28
    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    aput v4, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v3, [I

    add-int/lit8 p2, p2, 0x7

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 31
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 32
    iput p2, p0, Lk0/sg;->c:I

    move p2, v2

    .line 33
    :goto_1
    iget-object p3, p0, Lk0/sg;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 34
    iget v0, p0, Lk0/sg;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v0, v4, :cond_8

    if-eqz v0, :cond_9

    .line 35
    iput p2, p0, Lk0/sg;->b:I

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    and-int/2addr p1, v1

    if-ne p1, v3, :cond_a

    .line 36
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 37
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_a
    if-nez p1, :cond_c

    .line 38
    iget p1, p0, Lk0/sg;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v1, :cond_b

    .line 39
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 40
    :cond_b
    iput v1, p0, Lk0/sg;->b:I

    :cond_c
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x69

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x85

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    const/4 v1, 0x5

    aput v1, p1, p3

    .line 1
    aget p4, p2, p4

    const/4 v2, 0x3

    aput p4, p1, v2

    aget p4, p2, v0

    const/4 v0, 0x4

    aput p4, p1, v0

    aget p3, p2, p3

    aput p3, p1, v1

    const/4 p3, 0x6

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
