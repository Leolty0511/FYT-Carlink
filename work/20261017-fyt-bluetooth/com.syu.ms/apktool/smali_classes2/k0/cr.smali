.class public Lk0/cr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/cr;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    iput-object v2, p0, Lk0/cr;->d:[[I

    .line 4
    iput v0, p0, Lk0/cr;->f:I

    const/16 v2, 0x12

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_a

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v3, 0x11

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/cr;->g:[[I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lk0/cr;->h:I

    .line 7
    iput-boolean v0, p0, Lk0/cr;->i:Z

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lk0/cr;->j:Ljava/lang/String;

    .line 9
    new-instance v3, Lk0/cr$a;

    invoke-direct {v3, p0}, Lk0/cr$a;-><init>(Lk0/cr;)V

    iput-object v3, p0, Lk0/cr;->k:Ljava/lang/Runnable;

    .line 10
    iput v1, p0, Lk0/cr;->l:I

    .line 11
    iput v1, p0, Lk0/cr;->m:I

    .line 12
    iput v1, p0, Lk0/cr;->n:I

    .line 13
    new-instance v1, Lk0/cr$b;

    invoke-direct {v1, p0}, Lk0/cr$b;-><init>(Lk0/cr;)V

    iput-object v1, p0, Lk0/cr;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/cr$c;

    invoke-direct {v1, p0}, Lk0/cr$c;-><init>(Lk0/cr;)V

    iput-object v1, p0, Lk0/cr;->p:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lk0/cr;->q:I

    .line 16
    iput-object v2, p0, Lk0/cr;->r:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lk0/cr;->s:Ljava/lang/String;

    .line 18
    new-instance v1, Lk0/cr$d;

    invoke-direct {v1, p0}, Lk0/cr$d;-><init>(Lk0/cr;)V

    iput-object v1, p0, Lk0/cr;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/cr$e;

    invoke-direct {v1, p0}, Lk0/cr$e;-><init>(Lk0/cr;)V

    iput-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lk0/cr$f;

    invoke-direct {v1, p0}, Lk0/cr$f;-><init>(Lk0/cr;)V

    iput-object v1, p0, Lk0/cr;->v:Ljava/lang/Runnable;

    .line 21
    iput v0, p0, Lk0/cr;->w:I

    .line 22
    new-instance v0, Lk0/cr$g;

    invoke-direct {v0, p0}, Lk0/cr$g;-><init>(Lk0/cr;)V

    iput-object v0, p0, Lk0/cr;->x:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lk0/cr$h;

    invoke-direct {v0, p0}, Lk0/cr$h;-><init>(Lk0/cr;)V

    iput-object v0, p0, Lk0/cr;->y:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x7
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x8
        0x37
    .end array-data

    :array_11
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_12
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xb
        0x26
    .end array-data

    :array_14
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_15
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_16
    .array-data 4
        0xe
        0xd
    .end array-data

    :array_17
    .array-data 4
        0x10
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x11
        0x8
    .end array-data

    :array_19
    .array-data 4
        0x12
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x13
        0x1e
    .end array-data

    :array_1b
    .array-data 4
        0x2c
        0x10
    .end array-data
.end method

.method public static synthetic d3(Lk0/cr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cr;->h:I

    return p0
.end method

.method public static synthetic e3(Lk0/cr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cr;->h:I

    return p1
.end method

.method public static synthetic f3(Lk0/cr;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cr;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g3(Lk0/cr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cr;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h3(Lk0/cr;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/cr;->u3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic i3(Lk0/cr;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/cr;->i:Z

    return p0
.end method

.method public static synthetic j3(Lk0/cr;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/cr;->i:Z

    return p1
.end method

.method public static synthetic k3(Lk0/cr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cr;->l:I

    return p0
.end method

.method public static synthetic l3(Lk0/cr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cr;->l:I

    return p1
.end method

.method public static synthetic m3(Lk0/cr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cr;->m:I

    return p0
.end method

.method public static synthetic n3(Lk0/cr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cr;->m:I

    return p1
.end method

.method public static synthetic o3(Lk0/cr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/cr;->n:I

    return p0
.end method

.method public static synthetic p3(Lk0/cr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/cr;->n:I

    return p1
.end method

.method public static synthetic q3(Lk0/cr;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/cr;->t3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic r3(Lk0/cr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/cr;->a3()V

    return-void
.end method

.method public static synthetic s3(Lk0/cr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/cr;->c3()V

    return-void
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cr;->x:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/cr;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/cr;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/cr;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/cr;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/cr;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/cr;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/cr;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lk0/mt;->g:I

    .line 17
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x17

    const/16 v2, 0xb

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x20

    const/4 v6, 0x3

    if-eq v0, v1, :cond_b

    const/16 v1, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_9

    const/16 v1, 0x50

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 p3, 0x31

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0x1e00

    const/16 v0, 0x1300

    .line 4
    invoke-static {p1, p3, p2, v5, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_5

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_3

    goto/16 :goto_5

    :cond_3
    add-int/2addr p2, v6

    .line 7
    aget-byte p3, p1, p2

    shr-int/2addr p3, v6

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 8
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v8, [I

    aput v2, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 11
    iput p2, p0, Lk0/cr;->f:I

    move p2, v4

    .line 12
    :goto_0
    iget-object p3, p0, Lk0/cr;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 13
    iget v0, p0, Lk0/cr;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 14
    iput p2, p0, Lk0/cr;->e:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_7

    .line 15
    array-length p1, p3

    if-ge p2, p1, :cond_11

    .line 16
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_7
    if-nez p1, :cond_11

    .line 17
    iget p1, p0, Lk0/cr;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v3, :cond_8

    .line 18
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 19
    :cond_8
    iput v3, p0, Lk0/cr;->e:I

    goto/16 :goto_5

    :cond_9
    add-int/2addr p2, v8

    .line 20
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 21
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 22
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 23
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 24
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 25
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 26
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 27
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 28
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 29
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 31
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 32
    iput p2, p0, Lk0/cr;->c:I

    move p2, v4

    .line 33
    :goto_3
    iget-object p3, p0, Lk0/cr;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_d

    .line 34
    iget v0, p0, Lk0/cr;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 35
    iput p2, p0, Lk0/cr;->b:I

    goto :goto_4

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_e

    .line 36
    array-length p1, p3

    if-ge p2, p1, :cond_11

    .line 37
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_e
    if-nez p1, :cond_11

    .line 38
    iget p1, p0, Lk0/cr;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_f

    if-eq p1, v3, :cond_f

    .line 39
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 40
    :cond_f
    iput v3, p0, Lk0/cr;->b:I

    goto/16 :goto_5

    :cond_10
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 41
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/4 v0, 0x7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x3

    .line 42
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0x8

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 43
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0x9

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x5

    .line 44
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0xa

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x6

    .line 45
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x7

    .line 46
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0xc

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x8

    .line 47
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0xd

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x9

    .line 48
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0xe

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0xa

    .line 49
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v4

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xb

    .line 50
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x11

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xc

    .line 51
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xd

    .line 52
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xe

    .line 53
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v5, [I

    add-int/2addr p2, v0

    .line 54
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cr;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/cr;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/cr;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/cr;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/cr;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/cr;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/cr;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/cr;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/cr;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/cr;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x15

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x84

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/cr;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    const/4 v11, 0x3

    if-eq v5, v11, :cond_2

    if-eq v5, v10, :cond_0

    if-eq v5, v4, :cond_2

    if-eq v5, v8, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_1

    aput v3, v1, v10

    .line 4
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 6
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 7
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 8
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_2

    .line 9
    :cond_1
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 10
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 11
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 13
    :cond_2
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 14
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 15
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    if-nez v12, :cond_7

    const/16 v2, 0x11

    aput v2, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    const/16 v2, 0x12

    aput v2, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v6

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 20
    rem-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    aput v9, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 22
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 9

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_3

    .line 4
    aput v5, p1, v8

    .line 5
    aput v5, p1, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    .line 6
    aput v0, p1, v8

    const/16 v0, 0xff

    .line 7
    aput v0, p1, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 8
    aput v0, p1, v8

    const/16 v0, 0x12

    .line 9
    aput v0, p1, v1

    goto :goto_0

    .line 10
    :pswitch_2
    aput v1, p1, v8

    .line 11
    aput v4, p1, v1

    goto :goto_0

    .line 12
    :pswitch_3
    aput v2, p1, v8

    .line 13
    aput v4, p1, v1

    goto :goto_0

    .line 14
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v7, :cond_1

    .line 15
    aput v8, p1, v8

    .line 16
    aput v6, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-ne v0, v8, :cond_2

    .line 17
    aput v2, p1, v8

    .line 18
    aput v6, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_4

    .line 19
    aput v2, p1, v8

    .line 20
    aput v6, p1, v1

    goto :goto_0

    .line 21
    :pswitch_5
    aput v3, p1, v8

    .line 22
    aput v6, p1, v1

    goto :goto_0

    .line 23
    :pswitch_6
    aput v3, p1, v8

    .line 24
    aput v5, p1, v1

    goto :goto_0

    .line 25
    :pswitch_7
    aput v7, p1, v8

    .line 26
    aput v7, p1, v1

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    .line 27
    aput v2, p1, v8

    .line 28
    aput v4, p1, v1

    :cond_4
    :goto_0
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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final t3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    shl-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p2, v1, 0xff

    const/4 v0, 0x4

    add-int/2addr p2, v0

    .line 6
    new-array p2, p2, [I

    const/16 v4, -0x1d

    .line 7
    aput v4, p2, v3

    const/4 v4, 0x1

    .line 8
    aput p1, p2, v4

    const/4 p1, 0x2

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    .line 9
    aput v4, p2, p1

    const/4 p1, 0x3

    const/16 v4, 0x11

    .line 10
    aput v4, p2, p1

    :goto_1
    if-ge v3, v1, :cond_2

    add-int p1, v0, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final u3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    int-to-byte v6, p1

    .line 6
    aput v6, v1, v3

    const/4 v3, 0x4

    .line 7
    aput v5, v1, v3

    if-ne p1, v5, :cond_1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
