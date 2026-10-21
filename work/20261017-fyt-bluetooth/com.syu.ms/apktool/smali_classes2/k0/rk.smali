.class public Lk0/rk;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x0

.field public static w:I = 0x0

.field public static x:I = 0x0

.field public static y:I = 0x1

.field public static z:I = 0x1


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Lo1/g0;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/rk;->c:I

    const/16 v0, 0x1d

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

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v9, 0x8

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v9, 0x9

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v9, 0xa

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v9, 0xb

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v9, 0xc

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v9, 0xd

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v9, 0xe

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v9, 0xf

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v10, 0x10

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v10, 0x11

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v10, 0x12

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v10, 0x13

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v10, 0x14

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v10, 0x15

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v10, 0x16

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v10, 0x17

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v10, 0x18

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v10, 0x19

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v10, 0x1a

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v10, 0x1b

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v10, 0x1c

    aput-object v2, v0, v10

    iput-object v0, p0, Lk0/rk;->d:[[I

    .line 4
    iput v3, p0, Lk0/rk;->e:I

    .line 5
    iput-boolean v3, p0, Lk0/rk;->f:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk0/rk;->g:I

    .line 7
    iput v3, p0, Lk0/rk;->h:I

    .line 8
    new-instance v0, Lk0/rk$a;

    invoke-direct {v0, p0}, Lk0/rk$a;-><init>(Lk0/rk;)V

    iput-object v0, p0, Lk0/rk;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/rk$b;

    invoke-direct {v0, p0}, Lk0/rk$b;-><init>(Lk0/rk;)V

    iput-object v0, p0, Lk0/rk;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x20

    invoke-direct {v0, v2, v10}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/rk;->k:Lo1/g0;

    .line 11
    iput v4, p0, Lk0/rk;->l:I

    .line 12
    iput v1, p0, Lk0/rk;->m:I

    .line 13
    iput v5, p0, Lk0/rk;->n:I

    .line 14
    iput v6, p0, Lk0/rk;->o:I

    .line 15
    iput v7, p0, Lk0/rk;->p:I

    .line 16
    iput v9, p0, Lk0/rk;->q:I

    .line 17
    iput v8, p0, Lk0/rk;->r:I

    .line 18
    iput v3, p0, Lk0/rk;->s:I

    .line 19
    new-instance v0, Lk0/rk$c;

    invoke-direct {v0, p0}, Lk0/rk$c;-><init>(Lk0/rk;)V

    iput-object v0, p0, Lk0/rk;->t:Ljava/lang/Runnable;

    .line 20
    iput v3, p0, Lk0/rk;->u:I

    .line 21
    new-instance v0, Lk0/rk$d;

    invoke-direct {v0, p0}, Lk0/rk$d;-><init>(Lk0/rk;)V

    iput-object v0, p0, Lk0/rk;->v:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x11
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x18
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x15
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x16
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x17
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x3a
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x1a
    .end array-data

    :array_11
    .array-data 4
        0x20
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x21
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x22
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x24
        0x21
    .end array-data

    :array_16
    .array-data 4
        0x25
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0x26
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x27
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x81
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x82
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x91
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x92
        -0x1
    .end array-data
.end method

.method public static synthetic f3(Lk0/rk;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/rk;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->b3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->d3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->e3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->c3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->a3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->o3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/rk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rk;->n3(I)V

    return-void
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
    iget-object v0, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->q:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    sget v2, Lk0/nt;->a:I

    const v3, 0x5d01bc

    if-eq v2, v3, :cond_0

    const v3, 0x6301bc

    if-eq v2, v3, :cond_0

    const v3, 0x2001be

    if-eq v2, v3, :cond_0

    const v3, 0x2101be

    if-ne v2, v3, :cond_1

    .line 11
    :cond_0
    iput v1, v0, Lk0/mt;->i:I

    .line 12
    :cond_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/rk;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/rk;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/rk;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_34

    const/16 v7, 0x12

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0xff

    if-eq v2, v7, :cond_30

    const/16 v7, 0x16

    if-eq v2, v7, :cond_2f

    const/16 v7, 0x22

    if-eq v2, v7, :cond_20

    const/16 v7, 0x30

    if-eq v2, v7, :cond_1f

    const/16 v7, 0x4e

    if-eq v2, v7, :cond_1e

    const/16 v7, 0x52

    const/16 v15, 0xd

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0xf

    if-eq v2, v7, :cond_15

    const/16 v7, 0x67

    if-eq v2, v7, :cond_14

    const/16 v7, 0x24

    const/16 v16, -0x2

    const/16 v8, 0xc

    if-eq v2, v7, :cond_e

    const/16 v7, 0x25

    if-eq v2, v7, :cond_6

    const/16 v4, 0x61

    if-eq v2, v4, :cond_2

    const/16 v4, 0x62

    if-eq v2, v4, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    iget v2, v0, Lk0/rk;->h:I

    if-ne v2, v12, :cond_35

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    iput v1, v0, Lk0/rk;->g:I

    if-ne v1, v6, :cond_1

    .line 4
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 5
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_d

    .line 6
    :cond_1
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_d

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v2, v1, v2

    .line 9
    sget v3, Lu0/b;->r0:I

    if-nez v3, :cond_5

    .line 10
    iget v3, v0, Lk0/rk;->e:I

    if-eq v3, v2, :cond_5

    .line 11
    iput v2, v0, Lk0/rk;->e:I

    if-ne v2, v6, :cond_3

    .line 12
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0xad

    new-array v3, v6, [I

    aput v6, v3, v5

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 14
    iput-boolean v6, v0, Lk0/rk;->f:Z

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 15
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 16
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 17
    invoke-static {}, Lo1/u;->z()I

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    .line 18
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lk0/rk;->f:Z

    if-eqz v2, :cond_4

    const/16 v2, 0xad

    new-array v3, v6, [I

    aput v5, v3, v5

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-wide/16 v2, 0x15e

    .line 20
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "false"

    .line 21
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lo1/u;->k()V

    .line 23
    :cond_4
    iput-boolean v5, v0, Lk0/rk;->f:Z

    :cond_5
    :goto_0
    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xb

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0xd

    .line 32
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0xc

    aget-byte v3, v1, v3

    const/16 v4, 0x30c

    invoke-static {v2, v3, v6, v4}, Lk0/qt;->l(IIZI)V

    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    invoke-static {v3, v1, v5}, Ll0/c0;->N1(III)V

    goto/16 :goto_d

    :cond_6
    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 34
    aget-byte v17, v1, v7

    shr-int/lit8 v17, v17, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v2, v5

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 35
    aget-byte v17, v1, v7

    shr-int/lit8 v17, v17, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 36
    aget-byte v12, v1, v7

    shr-int/lit8 v9, v12, 0x4

    and-int/2addr v9, v10

    aput v9, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 37
    aget-byte v8, v1, v7

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v5

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    .line 38
    aget-byte v8, v1, v7

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v6, [I

    .line 39
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 40
    aget-byte v7, v1, v3

    shr-int/2addr v7, v4

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v7, v6, [I

    .line 41
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 42
    aget-byte v8, v1, v7

    shr-int/2addr v8, v4

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    .line 43
    aget-byte v8, v1, v7

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    .line 44
    aget-byte v8, v1, v7

    const/4 v9, 0x5

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    .line 45
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v14

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 46
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v7, p2, 0x6

    .line 47
    aget-byte v8, v1, v7

    and-int/2addr v8, v11

    const-string v9, "persist.fyt.reversetemp"

    .line 48
    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 49
    aget-byte v3, v1, v7

    and-int/2addr v3, v11

    .line 50
    aget-byte v2, v1, v2

    and-int/lit16 v8, v2, 0xff

    :cond_7
    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_8

    new-array v2, v6, [I

    aput v16, v2, v5

    const/16 v3, 0x1b

    .line 51
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    const/16 v3, 0x1b

    const/16 v7, 0x80

    if-ne v2, v7, :cond_9

    new-array v2, v6, [I

    const/4 v7, -0x3

    aput v7, v2, v5

    .line 52
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    const/16 v7, 0x20

    if-lt v2, v7, :cond_a

    const/16 v7, 0x40

    if-gt v2, v7, :cond_a

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 53
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v2, v6, [I

    const/4 v7, -0x1

    aput v7, v2, v5

    .line 54
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 v2, v8, 0xff

    if-nez v2, :cond_b

    new-array v2, v6, [I

    aput v16, v2, v5

    const/16 v3, 0x1c

    .line 55
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    const/16 v3, 0x1c

    const/16 v7, 0x80

    if-ne v2, v7, :cond_c

    new-array v2, v6, [I

    const/4 v7, -0x3

    aput v7, v2, v5

    .line 56
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    const/16 v7, 0x20

    if-lt v2, v7, :cond_d

    const/16 v7, 0x40

    if-gt v2, v7, :cond_d

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 57
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v2, v6, [I

    const/4 v7, -0x1

    aput v7, v2, v5

    .line 58
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x31

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 59
    aget-byte v8, v1, v7

    shr-int/2addr v8, v4

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v6, [I

    .line 60
    aget-byte v7, v1, v7

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    const/16 v3, 0x78

    if-ne v2, v3, :cond_35

    const/16 v2, 0x16

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 62
    aget-byte v8, v1, v7

    shr-int/lit8 v4, v8, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    .line 63
    aget-byte v4, v1, v7

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    .line 64
    aget-byte v4, v1, v7

    const/4 v8, 0x5

    shr-int/2addr v4, v8

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v6, [I

    .line 65
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v14

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_e
    const/16 v2, 0x25

    new-array v7, v6, [I

    add-int/lit8 v15, p2, 0x2

    .line 66
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 67
    aget-byte v7, v1, v15

    shr-int/lit8 v3, v7, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 68
    aget-byte v3, v1, v15

    shr-int/2addr v3, v5

    and-int/2addr v3, v10

    aput v3, v2, v5

    const/16 v3, 0xe

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 69
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v7, p2, 0x4

    .line 70
    aget-byte v13, v1, v7

    and-int/2addr v13, v11

    const-string v15, "persist.fyt.reversetemp"

    .line 71
    invoke-static {v15, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 72
    aget-byte v3, v1, v7

    and-int/2addr v3, v11

    .line 73
    aget-byte v2, v1, v2

    and-int/lit16 v13, v2, 0xff

    :cond_f
    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_10

    new-array v2, v6, [I

    aput v16, v2, v5

    const/16 v3, 0x1b

    .line 74
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    const/16 v3, 0x1b

    if-ne v2, v11, :cond_11

    new-array v2, v6, [I

    const/4 v7, -0x3

    aput v7, v2, v5

    .line 75
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_11
    new-array v7, v6, [I

    aput v2, v7, v5

    .line 76
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v13, 0xff

    if-nez v2, :cond_12

    new-array v2, v6, [I

    aput v16, v2, v5

    const/16 v3, 0x1c

    .line 77
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    const/16 v3, 0x1c

    if-ne v2, v11, :cond_13

    new-array v2, v6, [I

    const/4 v7, -0x3

    aput v7, v2, v5

    .line 78
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    new-array v7, v6, [I

    aput v2, v7, v5

    .line 79
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x31

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 80
    aget-byte v11, v1, v7

    shr-int/2addr v11, v4

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    .line 81
    aget-byte v11, v1, v7

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    .line 82
    aget-byte v11, v1, v7

    const/4 v13, 0x5

    shr-int/2addr v11, v13

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    .line 83
    aget-byte v7, v1, v7

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 84
    aget-byte v11, v1, v7

    shr-int/2addr v11, v9

    and-int/2addr v11, v14

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    .line 85
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v14

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 86
    aget-byte v7, v1, v3

    shr-int/2addr v7, v4

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 87
    aget-byte v3, v1, v3

    const/4 v7, 0x5

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 88
    aget-byte v8, v1, v7

    shr-int/2addr v8, v9

    and-int/2addr v8, v10

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    .line 89
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x9

    .line 90
    aget-byte v7, v1, v3

    shr-int/2addr v7, v9

    and-int/2addr v7, v10

    aput v7, v2, v5

    const/16 v7, 0x1f

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v7, v6, [I

    .line 91
    aget-byte v3, v1, v3

    shr-int/2addr v3, v5

    and-int/2addr v3, v10

    aput v3, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 92
    aget-byte v8, v1, v7

    shr-int/lit8 v4, v8, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v6, [I

    .line 93
    aget-byte v4, v1, v7

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    .line 94
    aget-byte v4, v1, v7

    const/4 v8, 0x5

    shr-int/2addr v4, v8

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    .line 95
    aget-byte v4, v1, v7

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x57

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 96
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v14

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v6, [I

    .line 97
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v14

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_14
    const/16 v2, 0xab

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 98
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 99
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_15
    const/16 v2, 0x78

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 100
    aget-byte v18, v1, v8

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v7, v6, [I

    .line 101
    aget-byte v18, v1, v8

    shr-int/lit8 v18, v18, 0x0

    and-int/lit8 v18, v18, 0xf

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v7, v6, [I

    add-int/lit8 v18, p2, 0x3

    .line 102
    aget-byte v18, v1, v18

    shr-int/lit8 v15, v18, 0x0

    and-int/2addr v15, v11

    aput v15, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v7, v6, [I

    add-int/lit8 v15, p2, 0x4

    .line 103
    aget-byte v15, v1, v15

    shr-int/2addr v15, v5

    and-int/2addr v15, v11

    aput v15, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v7, v6, [I

    add-int/lit8 v15, p2, 0x5

    .line 104
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v7, v6, [I

    .line 105
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v7, v6, [I

    .line 106
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v7, v6, [I

    .line 107
    aget-byte v15, v1, v15

    shr-int/2addr v15, v5

    and-int/2addr v15, v10

    aput v15, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v7, v6, [I

    add-int/lit8 v15, p2, 0x6

    .line 108
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v7, v6, [I

    .line 109
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v7, v6, [I

    .line 110
    aget-byte v15, v1, v15

    shr-int/2addr v15, v3

    and-int/2addr v15, v10

    aput v15, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v7, v6, [I

    add-int/lit8 v15, p2, 0x7

    .line 111
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v7, v6, [I

    .line 112
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v7, v6, [I

    .line 113
    aget-byte v15, v1, v15

    shr-int/2addr v15, v5

    and-int/2addr v15, v14

    aput v15, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v7, v6, [I

    add-int/lit8 v15, p2, 0x8

    .line 114
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v7, v6, [I

    .line 115
    aget-byte v18, v1, v15

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x3

    aput v18, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v7, v6, [I

    .line 116
    aget-byte v15, v1, v15

    shr-int/2addr v15, v3

    and-int/2addr v15, v10

    aput v15, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    .line 117
    aget-byte v2, v1, v8

    shr-int/2addr v2, v5

    and-int/2addr v2, v14

    if-eqz v2, :cond_19

    if-eq v2, v6, :cond_18

    if-eq v2, v10, :cond_17

    if-eq v2, v14, :cond_16

    goto/16 :goto_d

    :cond_16
    const/16 v2, 0x92

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 118
    aget-byte v8, v1, v7

    shr-int/lit8 v4, v8, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v6, [I

    .line 119
    aget-byte v4, v1, v7

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 120
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0xb

    aget-byte v4, v1, v7

    const/16 v5, 0x1f

    and-int/2addr v4, v5

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x94

    .line 121
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_d

    :cond_17
    const/16 v2, 0x8b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 122
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 123
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 124
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xd

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xe

    .line 126
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 127
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x10

    .line 128
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_18
    const/16 v2, 0x89

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 129
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 130
    :cond_19
    aget-byte v2, v1, v8

    shr-int/2addr v2, v9

    and-int/2addr v2, v14

    if-eq v2, v6, :cond_1d

    if-eq v2, v3, :cond_1c

    if-eq v2, v9, :cond_1b

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1a

    goto/16 :goto_d

    :cond_1a
    const/16 v2, 0x9f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 131
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xd

    .line 132
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xe

    .line 133
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 134
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1b
    const/16 v2, 0x9c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 135
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xe

    .line 136
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 137
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1c
    const/16 v2, 0x98

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 138
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 139
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xe

    .line 140
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 141
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1d
    const/16 v2, 0x95

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 142
    aget-byte v7, v1, v7

    and-int/2addr v7, v11

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xb

    .line 143
    aget-byte v7, v1, v7

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    const v8, 0xff00

    and-int/2addr v7, v8

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v1, v8

    and-int/2addr v8, v11

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v6, [I

    const/16 v7, 0xd

    add-int/lit8 v7, p2, 0xd

    .line 144
    aget-byte v1, v1, v7

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1e
    const/16 v2, 0xa7

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 145
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 146
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 147
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 148
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 149
    :cond_1f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 150
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    iput v2, v0, Lk0/rk;->c:I

    add-int/lit8 v2, p2, 0x3

    .line 151
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    move v2, v5

    .line 152
    :goto_5
    iget-object v3, v0, Lk0/rk;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_22

    .line 153
    iget v7, v0, Lk0/rk;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_21

    if-eqz v7, :cond_22

    .line 154
    iput v2, v0, Lk0/rk;->b:I

    goto :goto_6

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 155
    :cond_22
    :goto_6
    iget v7, v0, Lk0/rk;->c:I

    if-eq v7, v9, :cond_2e

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2d

    const/16 v8, 0x81

    if-eq v7, v8, :cond_2b

    const/16 v8, 0x82

    if-eq v7, v8, :cond_29

    const/16 v8, 0x91

    if-eq v7, v8, :cond_27

    const/16 v4, 0x92

    if-eq v7, v4, :cond_25

    and-int/2addr v1, v11

    if-ne v1, v6, :cond_23

    .line 156
    array-length v1, v3

    if-ge v2, v1, :cond_35

    .line 157
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_23
    if-nez v1, :cond_35

    .line 158
    iget v1, v0, Lk0/rk;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_24

    if-eq v1, v11, :cond_24

    .line 159
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 160
    :cond_24
    iput v11, v0, Lk0/rk;->b:I

    goto/16 :goto_d

    .line 161
    :cond_25
    sget v2, Lk0/rk;->w:I

    if-ne v2, v6, :cond_35

    move v2, v5

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_26

    const/16 v3, 0x8

    .line 162
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_26
    const/16 v3, 0x8

    .line 163
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 164
    :cond_27
    sget v2, Lk0/rk;->w:I

    if-ne v2, v6, :cond_35

    move v2, v5

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_28

    .line 165
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 166
    :cond_28
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_29
    move v2, v5

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2a

    const/16 v3, 0x1e

    .line 167
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2a
    const/16 v1, 0x1e

    .line 168
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_2b
    move v2, v5

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2c

    const/16 v3, 0x1f

    .line 169
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    const/16 v3, 0x1f

    .line 170
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 171
    :cond_2d
    sget v2, Lk0/rk;->w:I

    if-ne v2, v6, :cond_35

    and-int/2addr v1, v11

    if-ne v1, v6, :cond_35

    .line 172
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    .line 173
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 174
    :cond_2e
    sget v2, Lk0/rk;->w:I

    if-ne v2, v6, :cond_35

    and-int/2addr v1, v11

    if-ne v1, v6, :cond_35

    const/16 v2, 0x8

    .line 175
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 176
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_2f
    const/16 v2, 0x8

    const/16 v4, 0x69

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 177
    aget-byte v9, v1, v8

    shl-int/2addr v9, v2

    const v2, 0xff00

    and-int/2addr v9, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v7, v5

    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x407

    new-array v7, v6, [I

    .line 178
    aget-byte v9, v1, v8

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    const v12, 0xff00

    and-int/2addr v9, v12

    aget-byte v13, v1, v2

    and-int/2addr v13, v11

    or-int/2addr v9, v13

    aput v9, v7, v5

    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    .line 179
    aget-byte v4, v1, v8

    shl-int/2addr v4, v10

    and-int/2addr v4, v12

    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    or-int/2addr v2, v4

    .line 180
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x419

    new-array v3, v3, [I

    aput v6, v3, v5

    aput v2, v3, v6

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v3, v2, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 181
    aget-byte v4, v1, v4

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    const v6, 0xff00

    and-int/2addr v4, v6

    const/4 v6, 0x5

    add-int/lit8 v6, p2, 0x5

    aget-byte v1, v1, v6

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_30
    const-string v2, "persist.syu.reversefrontdoor"

    .line 182
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_31

    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 183
    aget-byte v8, v1, v7

    shr-int/2addr v8, v4

    and-int/2addr v8, v6

    aput v8, v2, v5

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 184
    aget-byte v7, v1, v7

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_31
    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 185
    aget-byte v8, v1, v7

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v2, v5

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 186
    aget-byte v7, v1, v7

    shr-int/2addr v7, v4

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 187
    aget-byte v7, v1, v3

    const/4 v8, 0x5

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 188
    aget-byte v7, v1, v3

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 189
    aget-byte v3, v1, v3

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 190
    aget-byte v7, v1, v7

    and-int/2addr v7, v11

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 191
    aget-byte v8, v1, v7

    and-int/2addr v8, v11

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x8

    .line 192
    aget-byte v12, v1, v8

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v10

    aput v12, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v6, [I

    add-int/lit8 v12, p2, 0xa

    .line 193
    aget-byte v13, v1, v12

    and-int/2addr v13, v11

    aput v13, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v13, p2, 0x4

    .line 194
    aget-byte v13, v1, v13

    and-int/2addr v13, v11

    aput v13, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    .line 195
    aget-byte v7, v1, v7

    and-int/2addr v7, v11

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    .line 196
    aget-byte v7, v1, v8

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v6, [I

    .line 197
    aget-byte v7, v1, v8

    shr-int/2addr v7, v9

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 198
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_32

    .line 199
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    rsub-int v2, v2, 0x3e8

    goto :goto_c

    :cond_32
    const/4 v3, 0x5

    .line 200
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x7f

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x3e8

    .line 201
    :goto_c
    invoke-static {v2}, Lu0/d;->B3(I)V

    .line 202
    sget v2, Lu0/b;->P:I

    if-nez v2, :cond_35

    .line 203
    aget-byte v1, v1, v12

    if-eqz v1, :cond_33

    .line 204
    invoke-static {v6}, Lk0/qt;->b(I)V

    goto :goto_d

    .line 205
    :cond_33
    invoke-static {v5}, Lk0/qt;->b(I)V

    goto :goto_d

    :cond_34
    const/16 v2, 0x76

    new-array v7, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 206
    aget-byte v8, v1, v3

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v7, v6, [I

    .line 207
    aget-byte v1, v1, v3

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    :cond_35
    :goto_d
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rk;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/rk;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/rk;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xae

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
    .locals 7

    const/4 p3, 0x6

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x72

    aput p3, p1, v3

    .line 1
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x4f

    aput p3, p1, v3

    .line 2
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    aget p1, p2, v5

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xfb

    if-ne p1, p3, :cond_5

    .line 4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rk;->n3(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p1, 0xa3

    new-array p3, v4, [I

    aput v5, p3, v5

    .line 5
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xa5

    new-array p3, v4, [I

    .line 6
    aget p2, p2, v5

    aput p2, p3, v5

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x4e

    aput p3, p1, v3

    .line 7
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x3e

    aput p3, p1, v3

    .line 8
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, p3, [I

    aput p4, p1, v5

    aput v2, p1, v4

    const/16 p3, -0x3f

    aput p3, p1, v3

    .line 9
    aget p3, p2, v5

    aput p3, p1, v2

    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :pswitch_7
    aget p1, p2, v5

    iput p1, p0, Lk0/rk;->s:I

    goto/16 :goto_0

    :pswitch_8
    const/16 p1, 0x10

    new-array p1, p1, [I

    aput p4, p1, v5

    const/16 p4, 0xd

    aput p4, p1, v4

    const/16 v6, -0x50

    aput v6, p1, v3

    .line 11
    aget v6, p2, v5

    aput v6, p1, v2

    aget v4, p2, v4

    aput v4, p1, v1

    aget v3, p2, v3

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p3

    aget v1, p2, v1

    const/4 v2, 0x7

    aput v1, p1, v2

    aget v0, p2, v0

    const/16 v1, 0x8

    aput v0, p1, v1

    const/16 v0, 0x9

    aget p3, p2, p3

    aput p3, p1, v0

    const/16 p3, 0xa

    aget v0, p2, v2

    aput v0, p1, p3

    const/16 p3, 0xb

    aget p2, p2, v1

    aput p2, p1, p3

    const/16 p2, 0xc

    aput v5, p1, p2

    aput v5, p1, p4

    const/16 p2, 0xe

    aput v5, p1, p2

    const/16 p2, 0xf

    aput v5, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 12
    :pswitch_9
    aget p1, p2, v5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rk;->o3(I)V

    goto :goto_0

    .line 14
    :cond_1
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rk;->a3(I)V

    goto :goto_0

    .line 15
    :cond_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rk;->e3(I)V

    goto :goto_0

    .line 16
    :cond_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rk;->d3(I)V

    goto :goto_0

    .line 17
    :cond_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rk;->b3(I)V

    goto :goto_0

    :pswitch_a
    new-array p1, v1, [I

    aput p4, p1, v5

    aput v4, p1, v4

    const/16 p3, -0x77

    aput p3, p1, v3

    .line 18
    aget p2, p2, v5

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_b
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x6d

    aput p3, p1, v3

    .line 19
    aget p2, p2, v5

    aput p2, p1, v2

    aput v5, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x6e

    aput p3, p1, v3

    .line 20
    aget p2, p2, v5

    aput p2, p1, v2

    aput v5, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :pswitch_d
    aget p1, p2, v5

    invoke-virtual {p0, p1}, Lk0/rk;->c3(I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/rk;->A:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x75

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rk;->A:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final b3(I)V
    .locals 0

    return-void
.end method

.method public final c3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/rk;->z:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x70

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x4

    new-array v3, v1, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    aput v0, v3, v0

    const/4 v0, 0x2

    const/16 v4, -0x79

    aput v4, v3, v0

    const/4 v0, 0x3

    aput p1, v3, v0

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/rk;->z:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/rk;->x:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x72

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/rk;->x:I

    if-eq p1, v3, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->g(II)V

    .line 5
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lk0/rk;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.splitscreenon"

    .line 6
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/rk;->y:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x73

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    new-array p1, v0, [I

    .line 3
    sget v1, Lk0/rk;->y:I

    aput v1, p1, v2

    const/16 v1, 0x40e

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/rk;->y:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa6

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/rk;->B:I

    .line 3
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/rk;->B:I

    if-eq p1, v3, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->g(II)V

    .line 5
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lk0/rk;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.penneltype"

    .line 6
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0xa4

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/rk;->w:I

    .line 3
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rk;->w:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rk;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
