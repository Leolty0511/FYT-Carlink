.class public Lk0/ok;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static u:I


# instance fields
.field public final b:[I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:B

.field public r:Ljava/lang/Runnable;

.field public s:Lo1/g0;

.field public final t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lk0/ok;->b:[I

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lk0/ok;->d:I

    const/16 v2, 0x9

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 4
    fill-array-data v5, :array_1

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x3

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x4

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x5

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x6

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/4 v12, 0x7

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x8

    aput-object v5, v3, v13

    iput-object v3, p0, Lk0/ok;->e:[[I

    .line 5
    iput v1, p0, Lk0/ok;->g:I

    const/16 v3, 0x19

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 6
    fill-array-data v5, :array_a

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    const/16 v5, 0xa

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    const/16 v5, 0xb

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    aput-object v2, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_17

    const/16 v2, 0xd

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_18

    const/16 v2, 0xe

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_19

    const/16 v2, 0xf

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_1a

    const/16 v2, 0x10

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_1b

    const/16 v2, 0x11

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_1c

    const/16 v2, 0x12

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_1d

    const/16 v2, 0x13

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_1e

    const/16 v2, 0x14

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_1f

    const/16 v2, 0x15

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_20

    const/16 v2, 0x16

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_21

    const/16 v2, 0x17

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_22

    const/16 v2, 0x18

    aput-object v0, v3, v2

    iput-object v3, p0, Lk0/ok;->h:[[I

    .line 7
    iput v6, p0, Lk0/ok;->i:I

    .line 8
    iput v6, p0, Lk0/ok;->j:I

    .line 9
    new-instance v0, Lk0/ok$a;

    invoke-direct {v0, p0}, Lk0/ok$a;-><init>(Lk0/ok;)V

    iput-object v0, p0, Lk0/ok;->k:Ljava/lang/Runnable;

    .line 10
    iput v1, p0, Lk0/ok;->l:I

    .line 11
    new-instance v0, Lk0/ok$b;

    invoke-direct {v0, p0}, Lk0/ok$b;-><init>(Lk0/ok;)V

    iput-object v0, p0, Lk0/ok;->m:Ljava/lang/Runnable;

    .line 12
    iput v6, p0, Lk0/ok;->n:I

    .line 13
    new-instance v0, Lk0/ok$c;

    invoke-direct {v0, p0}, Lk0/ok$c;-><init>(Lk0/ok;)V

    iput-object v0, p0, Lk0/ok;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/ok$d;

    invoke-direct {v0, p0}, Lk0/ok$d;-><init>(Lk0/ok;)V

    iput-object v0, p0, Lk0/ok;->p:Ljava/lang/Runnable;

    .line 15
    iput-byte v6, p0, Lk0/ok;->q:B

    .line 16
    new-instance v0, Lk0/ok$e;

    invoke-direct {v0, p0}, Lk0/ok$e;-><init>(Lk0/ok;)V

    iput-object v0, p0, Lk0/ok;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ok;->s:Lo1/g0;

    .line 18
    iput v7, p0, Lk0/ok;->t:I

    return-void

    nop

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_f
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_10
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_11
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_13
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_14
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_16
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0x17
        0x1e
    .end array-data

    :array_18
    .array-data 4
        0x18
        0x1f
    .end array-data

    :array_19
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_1b
    .array-data 4
        0x31
        0xe
    .end array-data

    :array_1c
    .array-data 4
        0x37
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x3d
        0x36
    .end array-data

    :array_1e
    .array-data 4
        0x47
        0x4a
    .end array-data

    :array_1f
    .array-data 4
        0x48
        0x4b
    .end array-data

    :array_20
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_21
    .array-data 4
        0x4c
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x61
        0x3f
    .end array-data
.end method

.method public static synthetic a3(Lk0/ok;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ok;->r:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

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
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/ok;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/ok;->s:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 9
    iget-object v0, p0, Lk0/ok;->s:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ok;->d3(I)V

    .line 10
    sget v0, Lk0/nt;->c:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_0

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ok;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x5a

    const/4 v2, 0x2

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_25

    const/16 v1, -0x30

    const/16 v6, 0x17

    const/16 v7, 0x10

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x7

    const/4 v11, 0x3

    if-eq v0, v1, :cond_1f

    const/16 v1, -0x18

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x10

    if-eq v0, v1, :cond_1d

    const/16 p3, 0x41

    if-eq v0, p3, :cond_1c

    const/16 p3, 0x11

    if-eq v0, p3, :cond_17

    const/16 p3, 0x12

    if-eq v0, p3, :cond_15

    const/16 p3, 0x16

    const/16 v1, 0x8

    if-eq v0, p3, :cond_12

    if-eq v0, v6, :cond_11

    const/16 p3, 0x21

    if-eq v0, p3, :cond_b

    const/16 p3, 0x22

    if-eq v0, p3, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v11

    .line 3
    aget-byte p1, p1, p2

    if-eq p3, v5, :cond_6

    if-eq p3, v2, :cond_1

    goto/16 :goto_e

    .line 4
    :cond_1
    iget p2, p0, Lk0/ok;->j:I

    if-eq p1, p2, :cond_26

    if-le p1, p2, :cond_3

    move p2, v4

    .line 5
    :goto_0
    iget p3, p0, Lk0/ok;->j:I

    sub-int p3, p1, p3

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_2

    .line 6
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge p1, p2, :cond_5

    move p2, v4

    .line 8
    :goto_1
    iget p3, p0, Lk0/ok;->j:I

    sub-int/2addr p3, p1

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_4

    .line 9
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    .line 11
    :cond_5
    :goto_2
    iput p1, p0, Lk0/ok;->j:I

    goto/16 :goto_e

    .line 12
    :cond_6
    iget p2, p0, Lk0/ok;->i:I

    if-eq p1, p2, :cond_26

    if-le p1, p2, :cond_8

    move p2, v4

    .line 13
    :goto_3
    iget p3, p0, Lk0/ok;->i:I

    sub-int p3, p1, p3

    if-ge p2, p3, :cond_7

    .line 14
    invoke-static {v10, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {v10, v5}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge p1, p2, :cond_a

    move p2, v4

    .line 16
    :goto_4
    iget p3, p0, Lk0/ok;->i:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_9

    .line 17
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 18
    :cond_9
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 19
    :cond_a
    :goto_5
    iput p1, p0, Lk0/ok;->i:I

    goto/16 :goto_e

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v11

    .line 21
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    and-int/lit16 p2, p3, 0xff

    .line 22
    iput p2, p0, Lk0/ok;->g:I

    move p2, v4

    .line 23
    :goto_6
    iget-object p3, p0, Lk0/ok;->h:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_d

    .line 24
    iget v0, p0, Lk0/ok;->g:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 25
    iput p2, p0, Lk0/ok;->f:I

    goto :goto_7

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 26
    :cond_d
    :goto_7
    iget v0, p0, Lk0/ok;->g:I

    const/16 v1, 0x61

    if-eq v0, v1, :cond_10

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_e

    .line 27
    array-length p1, p3

    if-ge p2, p1, :cond_26

    .line 28
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_e
    if-nez p1, :cond_26

    .line 29
    iget p1, p0, Lk0/ok;->f:I

    array-length p2, p3

    if-ge p1, p2, :cond_f

    if-eq p1, v3, :cond_f

    .line 30
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 31
    :cond_f
    iput v3, p0, Lk0/ok;->f:I

    goto/16 :goto_e

    :cond_10
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_26

    .line 32
    invoke-virtual {p0}, Lk0/ok;->c3()V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v1

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x6e

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 34
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 35
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x6f

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 36
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 37
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v1

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x70

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 38
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xa

    .line 39
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/lit8 v0, p2, 0xb

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x71

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 40
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xc

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v1

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0xe

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x72

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 42
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xf

    .line 43
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    const/16 p2, 0x73

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 44
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x62

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 46
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 47
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x63

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 48
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x64

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 50
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 51
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x65

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 52
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x9

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v7

    add-int/lit8 v0, p2, 0xa

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v1

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0xb

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x66

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 54
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xc

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/2addr p3, v1

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    const/16 v0, 0x67

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 56
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xe

    .line 57
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x3

    and-int/2addr v0, v3

    const/16 v1, 0x68

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 58
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x2

    and-int/2addr v0, v11

    and-int/2addr v0, v3

    const/16 v1, 0x69

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 59
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x4

    and-int/2addr v0, v11

    and-int/2addr v0, v3

    const/16 v1, 0x6a

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 60
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x6

    and-int/2addr v0, v5

    and-int/2addr v0, v3

    const/16 v1, 0x6b

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 61
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/2addr p3, v10

    and-int/2addr p3, v5

    and-int/2addr p3, v3

    const/16 v0, 0x6c

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 62
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0xf

    .line 63
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0xa

    if-gez p1, :cond_13

    move p1, v4

    goto :goto_8

    :cond_13
    if-le p1, p2, :cond_14

    move p1, p2

    :cond_14
    :goto_8
    const/16 p2, 0x6d

    new-array p3, v5, [I

    .line 64
    iget-object v0, p0, Lk0/ok;->b:[I

    aget p1, v0, p1

    aput p1, p3, v4

    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_15
    add-int/2addr p2, v9

    .line 65
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 66
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_16

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 67
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 68
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 69
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 70
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 71
    invoke-static {v11, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 72
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 73
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 74
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_17
    add-int/lit8 p3, p2, 0x4

    .line 75
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    iput p3, p0, Lk0/ok;->d:I

    move p3, v4

    .line 76
    :goto_a
    iget-object v0, p0, Lk0/ok;->e:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_19

    .line 77
    iget v1, p0, Lk0/ok;->d:I

    aget-object v2, v0, p3

    aget v2, v2, v4

    if-ne v1, v2, :cond_18

    if-eqz v1, :cond_19

    .line 78
    iput p3, p0, Lk0/ok;->c:I

    goto :goto_b

    :cond_18
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 79
    :cond_19
    :goto_b
    iget v1, p0, Lk0/ok;->d:I

    if-eqz v1, :cond_1a

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1a

    .line 80
    array-length p1, v0

    if-ge p3, p1, :cond_26

    .line 81
    iget-byte p1, p0, Lk0/ok;->q:B

    if-nez p1, :cond_26

    add-int/2addr p1, v5

    int-to-byte p1, p1

    .line 82
    iput-byte p1, p0, Lk0/ok;->q:B

    .line 83
    aget-object p1, v0, p3

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 84
    iget-object p1, p0, Lk0/ok;->r:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    .line 85
    :cond_1a
    iget p3, p0, Lk0/ok;->c:I

    if-eq p3, v3, :cond_1b

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-nez p1, :cond_1b

    .line 86
    aget-object p1, v0, p3

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 87
    iget-object p1, p0, Lk0/ok;->r:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 88
    iput-byte v4, p0, Lk0/ok;->q:B

    .line 89
    :cond_1b
    iput v3, p0, Lk0/ok;->c:I

    goto/16 :goto_e

    :cond_1c
    add-int/lit8 p3, p2, 0x2

    .line 90
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->q(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 91
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->q(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 92
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/h0;->q(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v8

    .line 93
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/h0;->q(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    .line 94
    :cond_1d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1e
    const/16 p3, 0x3f5

    new-array v0, v5, [I

    add-int/2addr p2, v11

    .line 95
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    sub-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1f
    const/16 p3, 0x76

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 96
    aget-byte v3, p1, v1

    shr-int/2addr v3, v9

    and-int/lit8 v3, v3, 0xf

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v5, [I

    .line 97
    aget-byte v3, p1, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v10

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v5, [I

    .line 98
    aget-byte v3, p1, v1

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 99
    aget-byte p3, p1, v1

    shr-int/2addr p3, v5

    and-int/2addr p3, v10

    if-ne p3, v5, :cond_20

    .line 100
    :try_start_0
    new-instance p3, Ljava/lang/String;

    add-int/lit8 v0, p2, 0x4

    const-string v3, "UTF-16LE"

    invoke-direct {p3, p1, v0, v7, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception p3

    .line 101
    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p3, ""

    goto :goto_c

    .line 102
    :cond_20
    new-instance p3, Ljava/lang/String;

    add-int/lit8 v0, p2, 0x4

    const-string v3, "ascii"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p3, p1, v0, v7, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 103
    :goto_c
    aget-byte v0, p1, v1

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v5, :cond_24

    if-eq v0, v2, :cond_23

    if-eq v0, v11, :cond_22

    if-eq v0, v9, :cond_21

    goto :goto_d

    :cond_21
    const/16 v0, 0x7c

    .line 104
    invoke-static {v0, p3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto :goto_d

    :cond_22
    const/16 v0, 0x7b

    .line 105
    invoke-static {v0, p3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto :goto_d

    :cond_23
    const/16 v0, 0x7a

    .line 106
    invoke-static {v0, p3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto :goto_d

    :cond_24
    const/16 v0, 0x79

    .line 107
    invoke-static {v0, p3}, Lk0/qt;->x0(ILjava/lang/String;)V

    :goto_d
    const/16 p3, 0x7d

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x14

    .line 108
    aget-byte v2, p1, v1

    shr-int/2addr v2, v10

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v0, v5, [I

    .line 109
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v0, v5, [I

    .line 110
    aget-byte v1, p1, v1

    shr-int/2addr v1, v8

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x15

    .line 111
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x16

    .line 112
    aget-byte v2, p1, v1

    shr-int/2addr v2, v10

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v0, v5, [I

    .line 113
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x83

    new-array v0, v5, [I

    add-int/2addr p2, v6

    .line 114
    aget-byte v1, p1, p2

    shr-int/2addr v1, v10

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x84

    new-array v0, v5, [I

    .line 115
    aget-byte v1, p1, p2

    shr-int/2addr v1, v11

    and-int/2addr v1, v10

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x85

    new-array v0, v5, [I

    .line 116
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v10

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_25
    const/16 p3, 0x86

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 117
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_26
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ok;->s:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ok;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ok;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ok;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x87

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

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 2
    aget p3, p2, p1

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-gt p3, p4, :cond_1

    .line 3
    aget p3, p2, p1

    add-int/2addr p3, v0

    aput p3, p2, p1

    .line 4
    :cond_1
    aget p3, p2, p1

    if-ge p3, v0, :cond_2

    .line 5
    aput v0, p2, p1

    goto :goto_0

    .line 6
    :cond_2
    aget p3, p2, p1

    const/4 p4, 0x3

    if-le p3, p4, :cond_3

    .line 7
    aput p4, p2, p1

    .line 8
    :cond_3
    :goto_0
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/ok;->d3(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0/ok;->b3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.honda.Act_WC_CarCD_AoDeSai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/ok;->u:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    const/4 p1, 0x4

    const/4 v3, -0x1

    aput v3, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/ok;->s:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ok;->u:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ok;->s:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
