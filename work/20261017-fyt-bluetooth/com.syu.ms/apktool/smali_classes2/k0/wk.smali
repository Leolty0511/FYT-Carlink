.class public Lk0/wk;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static f:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/wk;->c:I

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

    iput-object v0, p0, Lk0/wk;->d:[[I

    .line 4
    new-instance v0, Lk0/wk$a;

    invoke-direct {v0, p0}, Lk0/wk$a;-><init>(Lk0/wk;)V

    iput-object v0, p0, Lk0/wk;->e:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
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
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    const/4 v1, 0x2

    .line 8
    iput v1, v0, Lk0/mt;->h:I

    .line 9
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/wk;->e:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xff

    if-eq v0, v1, :cond_b

    const/16 v1, -0x10

    if-eq v0, v1, :cond_a

    const/16 p3, 0x11

    if-eq v0, p3, :cond_4

    const/16 p3, 0x41

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 6
    aget-byte v0, p1, p3

    and-int/2addr v0, v6

    add-int/lit8 v1, p2, 0x7

    .line 7
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x8

    .line 8
    aget-byte v7, p1, v3

    and-int/2addr v7, v6

    add-int/lit8 p2, p2, 0x9

    .line 9
    aget-byte v8, p1, p2

    and-int/2addr v8, v6

    if-ne v0, v6, :cond_1

    if-ne v2, v6, :cond_1

    if-ne v7, v6, :cond_1

    if-ne v8, v6, :cond_1

    .line 10
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 11
    :cond_1
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_2

    sget v4, Ll0/c0;->h:I

    if-ne v4, v2, :cond_2

    sget v4, Ll0/c0;->i:I

    if-ne v4, v7, :cond_2

    sget v4, Ll0/c0;->j:I

    if-eq v4, v8, :cond_3

    .line 12
    :cond_2
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_3

    .line 13
    invoke-static {v5}, Lu0/d;->C2(I)V

    const/4 v4, 0x4

    .line 14
    sput v4, Ll0/c0;->k:I

    .line 15
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_3
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 17
    sput v2, Ll0/c0;->h:I

    .line 18
    sput v7, Ll0/c0;->i:I

    .line 19
    sput v8, Ll0/c0;->j:I

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 21
    aget-byte p3, p1, v1

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 22
    aget-byte p3, p1, v3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :cond_4
    add-int/lit8 p3, p2, 0x4

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    iput p3, p0, Lk0/wk;->c:I

    add-int/lit8 p3, p2, 0x5

    .line 25
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    move v0, v4

    .line 26
    :goto_1
    iget-object v1, p0, Lk0/wk;->d:[[I

    array-length v7, v1

    if-ge v0, v7, :cond_6

    .line 27
    iget v7, p0, Lk0/wk;->c:I

    aget-object v8, v1, v0

    aget v8, v8, v4

    if-ne v7, v8, :cond_5

    if-eqz v7, :cond_6

    .line 28
    iput v0, p0, Lk0/wk;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    and-int/2addr p3, v6

    if-ne p3, v5, :cond_7

    .line 29
    array-length p3, v1

    if-ge v0, p3, :cond_9

    .line 30
    aget-object p3, v1, v0

    aget p3, p3, v5

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_7
    if-nez p3, :cond_9

    .line 31
    iget p3, p0, Lk0/wk;->b:I

    array-length v0, v1

    if-ge p3, v0, :cond_8

    if-eq p3, v6, :cond_8

    .line 32
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 33
    :cond_8
    iput v6, p0, Lk0/wk;->b:I

    :cond_9
    :goto_3
    add-int/lit8 p3, p2, 0x9

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v6

    const/16 v1, 0x21c

    invoke-static {p3, v0, v5, v1}, Lk0/qt;->i(IIZI)V

    .line 35
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v3, [I

    aput v2, v1, v4

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_5

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    .line 37
    :cond_b
    sget p3, Lk0/wk;->f:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    if-eq p3, v1, :cond_f

    .line 38
    aget-byte p3, p1, v0

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    sput p3, Lk0/wk;->f:I

    .line 39
    invoke-static {}, Lk0/qt;->k0()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 40
    sget p3, Lk0/wk;->f:I

    const/high16 v1, 0x20000

    if-ne p3, v5, :cond_c

    .line 41
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p3

    invoke-virtual {p3, v1, v5}, Lu0/i;->g4(IZ)V

    goto :goto_4

    .line 42
    :cond_c
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p3

    invoke-virtual {p3, v1, v4}, Lu0/i;->g4(IZ)V

    goto :goto_4

    .line 43
    :cond_d
    sget p3, Lk0/wk;->f:I

    if-ne p3, v5, :cond_e

    .line 44
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_4

    .line 45
    :cond_e
    invoke-static {v4}, Lk0/qt;->a(I)V

    :cond_f
    :goto_4
    new-array p3, v5, [I

    .line 46
    aget-byte v1, p1, v0

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 47
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/2addr p2, v2

    .line 48
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    aput p1, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/wk;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x5

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
    .locals 2

    const/4 p3, 0x1

    const/4 p4, 0x5

    if-eqz p1, :cond_2

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lu0/b;->o:I

    if-ne p1, p3, :cond_1

    new-array p1, p4, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/4 p4, 0x2

    aput p4, p1, p3

    const/16 v1, 0xfd

    aput v1, p1, p4

    const/4 p4, 0x3

    .line 4
    aget v0, p2, v0

    aput v0, p1, p4

    const/4 p4, 0x4

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x1
    .end array-data
.end method
