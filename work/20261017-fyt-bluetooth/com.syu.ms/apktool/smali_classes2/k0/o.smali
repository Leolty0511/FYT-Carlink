.class public Lk0/o;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:B

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/o;->c:I

    const/4 v1, 0x7

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

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/o;->d:[[I

    .line 4
    iput v0, p0, Lk0/o;->e:I

    .line 5
    new-instance v0, Lk0/o$a;

    invoke-direct {v0, p0}, Lk0/o$a;-><init>(Lk0/o;)V

    iput-object v0, p0, Lk0/o;->f:Ljava/lang/Runnable;

    .line 6
    iput-byte v4, p0, Lk0/o;->g:B

    .line 7
    new-instance v0, Lk0/o$b;

    invoke-direct {v0, p0}, Lk0/o$b;-><init>(Lk0/o;)V

    iput-object v0, p0, Lk0/o;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/o$c;

    invoke-direct {v0, p0}, Lk0/o$c;-><init>(Lk0/o;)V

    iput-object v0, p0, Lk0/o;->i:Ljava/lang/Runnable;

    return-void

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
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/o;->i:Ljava/lang/Runnable;

    return-object p0
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

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/o;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/o;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    const/16 v4, 0x21

    if-eq v0, v4, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    const/16 v0, 0xa

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 4
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 5
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 6
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 7
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 8
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v4, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v4, v2

    .line 9
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 10
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 11
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 12
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 13
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v4, v3, [I

    shr-int/2addr p3, v2

    and-int/lit8 p3, p3, 0xf

    aput p3, v4, v2

    .line 14
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 15
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x4

    .line 16
    aget-byte v0, p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, 0x5

    .line 17
    aget-byte v0, p1, v0

    :goto_0
    and-int/2addr v0, v1

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/16 v6, 0x1e

    const/16 v7, 0x1b

    if-nez v0, :cond_3

    new-array v0, v3, [I

    aput v5, v0, v2

    .line 18
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    if-ne v0, v6, :cond_4

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 19
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0xaa

    new-array v8, v3, [I

    aput v0, v8, v2

    .line 20
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    .line 21
    :goto_1
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_5

    add-int/lit8 p2, p2, 0x5

    .line 22
    aget-byte p1, p1, p2

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x4

    .line 23
    aget-byte p1, p1, p2

    :goto_2
    and-int/2addr p1, v1

    const/16 p2, 0x1c

    if-nez p1, :cond_6

    new-array p1, v3, [I

    aput v5, p1, v2

    .line 24
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_6
    if-ne p1, v6, :cond_7

    new-array p1, v3, [I

    aput v4, p1, v2

    .line 25
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_7
    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0xaa

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 26
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 27
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x4

    .line 28
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 29
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 30
    iput p2, p0, Lk0/o;->c:I

    move p2, v2

    .line 31
    :goto_3
    iget-object p3, p0, Lk0/o;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 32
    iget v0, p0, Lk0/o;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v0, v4, :cond_9

    if-eqz v0, :cond_a

    .line 33
    iput p2, p0, Lk0/o;->b:I

    goto :goto_4

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    and-int/2addr p1, v1

    if-ne p1, v3, :cond_b

    .line 34
    array-length p1, p3

    if-ge p2, p1, :cond_d

    .line 35
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_b
    if-nez p1, :cond_d

    .line 36
    iget p1, p0, Lk0/o;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v1, :cond_c

    .line 37
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 38
    :cond_c
    iput v1, p0, Lk0/o;->b:I

    :cond_d
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/o;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/o;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/o;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 0

    return-void
.end method
