.class public Lk0/if;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/if;->c:I

    const/16 v1, 0x18

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

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v2, 0x17

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/if;->d:[[I

    .line 4
    new-instance v0, Lk0/if$a;

    invoke-direct {v0, p0}, Lk0/if$a;-><init>(Lk0/if;)V

    iput-object v0, p0, Lk0/if;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/if$b;

    invoke-direct {v0, p0}, Lk0/if$b;-><init>(Lk0/if;)V

    iput-object v0, p0, Lk0/if;->f:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x10
        0x4a
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x4b
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x40
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x18
        0x27
    .end array-data

    :array_11
    .array-data 4
        0x19
        0x37
    .end array-data

    :array_12
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x22
        0x26
    .end array-data

    :array_15
    .array-data 4
        0x23
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x25
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
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v0, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/if;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/if;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x29

    if-eq v0, v1, :cond_8

    const/16 v1, 0x30

    const/4 v7, 0x2

    if-eq v0, v1, :cond_7

    const/16 p3, 0x40

    if-eq v0, p3, :cond_4

    const/16 p3, 0x68

    if-eq v0, p3, :cond_3

    const/16 p3, 0x23

    const/4 v1, 0x4

    if-eq v0, p3, :cond_2

    const/16 p3, 0x24

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/2addr p2, v7

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 4
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 5
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 6
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 7
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 8
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 9
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v5

    const/4 p3, 0x5

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 11
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 13
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    invoke-static {v0}, Ll0/c0;->s1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 14
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 15
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :cond_3
    const/16 p3, 0x408

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 16
    aget-byte v1, p1, v1

    shl-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    or-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    if-eq p3, v6, :cond_6

    if-eq p3, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    const/16 p3, 0x9

    new-array v0, v6, [I

    add-int/2addr p2, v3

    .line 18
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_6
    new-array p3, v6, [I

    add-int/2addr p2, v3

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, p3, v5

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 21
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    const p2, 0x8000

    const/16 v0, 0x20b6

    invoke-static {p3, p1, p2, v5, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_5

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 23
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 24
    iput p2, p0, Lk0/if;->c:I

    move p2, v5

    .line 25
    :goto_1
    iget-object p3, p0, Lk0/if;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_b

    .line 26
    iget v0, p0, Lk0/if;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v5

    if-ne v0, v3, :cond_a

    if-eqz v0, :cond_b

    .line 27
    iput p2, p0, Lk0/if;->b:I

    goto :goto_2

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 28
    :cond_b
    :goto_2
    iget v0, p0, Lk0/if;->c:I

    if-eq v0, v1, :cond_10

    const/16 v1, 0x21

    if-eq v0, v1, :cond_e

    and-int/2addr p1, v4

    if-ne p1, v6, :cond_c

    .line 29
    array-length p1, p3

    if-ge p2, p1, :cond_12

    .line 30
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_c
    if-nez p1, :cond_12

    .line 31
    iget p1, p0, Lk0/if;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_d

    if-eq p1, v4, :cond_d

    .line 32
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 33
    :cond_d
    iput v4, p0, Lk0/if;->b:I

    goto :goto_5

    :cond_e
    move p2, v5

    :goto_3
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_f

    .line 34
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 35
    :cond_f
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_10
    move p2, v5

    :goto_4
    and-int/lit16 p3, p1, 0xff

    const/4 v0, 0x7

    if-ge p2, p3, :cond_11

    .line 36
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 37
    :cond_11
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    :cond_12
    :goto_5
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

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/if;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/if;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/if;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xc6

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
