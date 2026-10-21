.class public Lk0/x3;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/x3$p;
    }
.end annotation


# static fields
.field public static m0:I = 0x0

.field public static n0:I = 0x0

.field public static o0:I = 0x80

.field public static p0:I = 0x80

.field public static q0:I = 0x80

.field public static r0:I

.field public static s0:[I


# instance fields
.field public A:I

.field public B:I

.field public C:Lk0/x3$p;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:Ljava/lang/Runnable;

.field public Q:Ljava/lang/Runnable;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Lo1/o;

.field public X:Lo1/o;

.field public Y:Lo1/o;

.field public Z:Lo1/o;

.field public a0:J

.field public b:I

.field public b0:I

.field public c:I

.field public c0:Ljava/lang/Runnable;

.field public d:I

.field public d0:Ljava/lang/Runnable;

.field public e:[[I

.field public e0:I

.field public f:I

.field public f0:Ljava/lang/Runnable;

.field public g:I

.field public g0:Ljava/lang/Runnable;

.field public h:[[I

.field public h0:Ljava/lang/Runnable;

.field public final i:[B

.field public i0:Ljava/lang/Runnable;

.field public j:I

.field public j0:I

.field public k:I

.field public k0:Ljava/lang/Runnable;

.field public l:I

.field public l0:I

.field public m:I

.field public n:Z

.field public o:B

.field public p:Ljava/lang/Runnable;

.field public q:Lo1/g0;

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public x:Ljava/lang/Runnable;

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/x3;->s0:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x6
        0x2
        0x7
        0x1
        0x5
        0x3
        0x5
        0x0
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x3
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/x3;->c:I

    const/16 v2, 0xff

    .line 3
    iput v2, v0, Lk0/x3;->d:I

    const/16 v3, 0x12

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 4
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v14, 0xa

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v15, 0xb

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v18, 0xe

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v2, 0xf

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v19, 0x10

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v19, 0x11

    aput-object v5, v3, v19

    iput-object v3, v0, Lk0/x3;->e:[[I

    .line 5
    iput v1, v0, Lk0/x3;->g:I

    new-array v2, v2, [[I

    new-array v3, v4, [I

    .line 6
    fill-array-data v3, :array_12

    aput-object v3, v2, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v2, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v2, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v2, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v2, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v2, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v2, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v2, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v2, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v2, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v2, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v2, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v2, v18

    iput-object v2, v0, Lk0/x3;->h:[[I

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 7
    iput-object v2, v0, Lk0/x3;->i:[B

    .line 8
    iput v1, v0, Lk0/x3;->j:I

    .line 9
    iput v1, v0, Lk0/x3;->k:I

    .line 10
    iput v1, v0, Lk0/x3;->l:I

    .line 11
    iput v1, v0, Lk0/x3;->m:I

    .line 12
    iput-boolean v1, v0, Lk0/x3;->n:Z

    .line 13
    iput-byte v1, v0, Lk0/x3;->o:B

    .line 14
    new-instance v2, Lk0/x3$g;

    invoke-direct {v2, v0}, Lk0/x3$g;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-direct {v2, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/x3;->q:Lo1/g0;

    .line 16
    iput v6, v0, Lk0/x3;->r:I

    .line 17
    iput v4, v0, Lk0/x3;->s:I

    .line 18
    iput v7, v0, Lk0/x3;->t:I

    .line 19
    iput v8, v0, Lk0/x3;->u:I

    .line 20
    iput v9, v0, Lk0/x3;->v:I

    .line 21
    iput v10, v0, Lk0/x3;->w:I

    .line 22
    new-instance v2, Lk0/x3$h;

    invoke-direct {v2, v0}, Lk0/x3$h;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->x:Ljava/lang/Runnable;

    .line 23
    iput-boolean v1, v0, Lk0/x3;->y:Z

    .line 24
    iput v1, v0, Lk0/x3;->z:I

    .line 25
    iput v1, v0, Lk0/x3;->A:I

    .line 26
    iput v1, v0, Lk0/x3;->B:I

    const-string v2, ""

    .line 27
    iput-object v2, v0, Lk0/x3;->D:Ljava/lang/String;

    .line 28
    iput-object v2, v0, Lk0/x3;->E:Ljava/lang/String;

    .line 29
    iput v1, v0, Lk0/x3;->F:I

    .line 30
    iput v1, v0, Lk0/x3;->G:I

    .line 31
    iput v1, v0, Lk0/x3;->H:I

    .line 32
    iput v1, v0, Lk0/x3;->I:I

    .line 33
    iput v1, v0, Lk0/x3;->J:I

    .line 34
    iput v1, v0, Lk0/x3;->K:I

    .line 35
    iput v1, v0, Lk0/x3;->L:I

    .line 36
    iput v1, v0, Lk0/x3;->M:I

    const/16 v2, 0xff

    .line 37
    iput v2, v0, Lk0/x3;->N:I

    .line 38
    iput v15, v0, Lk0/x3;->O:I

    .line 39
    new-instance v2, Lk0/x3$i;

    invoke-direct {v2, v0}, Lk0/x3$i;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->P:Ljava/lang/Runnable;

    .line 40
    new-instance v2, Lk0/x3$j;

    invoke-direct {v2, v0}, Lk0/x3$j;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->Q:Ljava/lang/Runnable;

    .line 41
    iput v1, v0, Lk0/x3;->R:I

    .line 42
    iput v1, v0, Lk0/x3;->S:I

    .line 43
    iput v1, v0, Lk0/x3;->T:I

    .line 44
    iput v1, v0, Lk0/x3;->U:I

    .line 45
    iput-boolean v1, v0, Lk0/x3;->V:Z

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, v0, Lk0/x3;->a0:J

    .line 47
    iput v1, v0, Lk0/x3;->b0:I

    .line 48
    new-instance v2, Lk0/x3$o;

    invoke-direct {v2, v0}, Lk0/x3$o;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->c0:Ljava/lang/Runnable;

    .line 49
    new-instance v2, Lk0/x3$a;

    invoke-direct {v2, v0}, Lk0/x3$a;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->d0:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 50
    iput v2, v0, Lk0/x3;->e0:I

    .line 51
    new-instance v2, Lk0/x3$b;

    invoke-direct {v2, v0}, Lk0/x3$b;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->f0:Ljava/lang/Runnable;

    .line 52
    new-instance v2, Lk0/x3$c;

    invoke-direct {v2, v0}, Lk0/x3$c;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->g0:Ljava/lang/Runnable;

    .line 53
    new-instance v2, Lk0/x3$d;

    invoke-direct {v2, v0}, Lk0/x3$d;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->h0:Ljava/lang/Runnable;

    .line 54
    new-instance v2, Lk0/x3$e;

    invoke-direct {v2, v0}, Lk0/x3$e;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->i0:Ljava/lang/Runnable;

    .line 55
    iput v1, v0, Lk0/x3;->j0:I

    .line 56
    new-instance v2, Lk0/x3$f;

    invoke-direct {v2, v0}, Lk0/x3$f;-><init>(Lk0/x3;)V

    iput-object v2, v0, Lk0/x3;->k0:Ljava/lang/Runnable;

    .line 57
    iput v1, v0, Lk0/x3;->l0:I

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
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x23
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x5
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x10
    .end array-data

    :array_e
    .array-data 4
        0xf
        0xd
    .end array-data

    :array_f
    .array-data 4
        0x10
        0xd
    .end array-data

    :array_10
    .array-data 4
        0x40
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x36
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x18
    .end array-data

    :array_14
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_15
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x7
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x9
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_1b
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_1c
    .array-data 4
        0xc
        0x20
    .end array-data

    :array_1d
    .array-data 4
        0xd
        0x21
    .end array-data

    :array_1e
    .array-data 4
        0xe
        0x10
    .end array-data

    :array_1f
    .array-data 4
        0x10
        0x7
    .end array-data

    :array_20
    .array-data 4
        0x11
        0x8
    .end array-data
.end method

.method public static b3()V
    .locals 11

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xe3

    const/16 v2, 0xc0

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v8, :cond_5

    new-array v10, v6, [I

    aput v2, v10, v9

    aput v7, v10, v8

    const/16 v2, 0xc

    aput v2, v10, v7

    const/16 v2, 0x40

    if-eq v0, v7, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aput v3, v10, v7

    const/16 v0, 0x13

    aput v0, v10, v5

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    aput v0, v10, v7

    aput v2, v10, v5

    goto :goto_0

    :cond_2
    aput v4, v10, v7

    aput v2, v10, v5

    .line 2
    :goto_0
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_3

    aput v9, v10, v7

    :cond_3
    new-array v0, v4, [I

    aput v1, v0, v9

    :goto_1
    if-ge v9, v6, :cond_4

    add-int/lit8 v1, v9, 0x1

    .line 3
    aget v2, v10, v9

    aput v2, v0, v1

    move v9, v1

    goto :goto_1

    .line 4
    :cond_4
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x7

    new-array v10, v0, [I

    aput v2, v10, v9

    aput v4, v10, v8

    aput v8, v10, v7

    aput v8, v10, v5

    .line 5
    sget v2, Lw0/d;->h:I

    const/high16 v5, 0x10000

    if-ne v2, v5, :cond_6

    aput v9, v10, v6

    goto :goto_2

    :cond_6
    const v5, 0x10001

    if-ne v2, v5, :cond_7

    aput v9, v10, v6

    goto :goto_2

    :cond_7
    const v5, 0x10002

    if-ne v2, v5, :cond_8

    aput v9, v10, v6

    goto :goto_2

    :cond_8
    const/16 v5, 0x10

    if-nez v2, :cond_9

    aput v5, v10, v6

    goto :goto_2

    :cond_9
    if-ne v2, v8, :cond_a

    aput v5, v10, v6

    .line 6
    :cond_a
    :goto_2
    sget v2, Lw0/d;->i:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v10, v4

    const/4 v4, 0x6

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, v10, v4

    new-array v2, v3, [I

    aput v1, v2, v9

    :goto_3
    if-ge v9, v0, :cond_b

    add-int/lit8 v1, v9, 0x1

    .line 7
    aget v3, v10, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_3

    .line 8
    :cond_b
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_4
    return-void
.end method

.method public static synthetic d3(Lk0/x3;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/x3;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/x3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/x3;->p3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/x3;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/x3;->c3()V

    return-void
.end method

.method public static synthetic g3(Lk0/x3;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/x3;->q:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/x3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/x3;->r3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/x3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/x3;->u3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/x3;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/x3;->s3(III)V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lk0/x3;->r0:I

    return v0
.end method

.method public static synthetic l3(Lk0/x3;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/x3;->n3(BLjava/lang/String;)V

    return-void
.end method

.method public static v3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_23

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget v4, v1, v2

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Air codeCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "      value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v5, 0x29

    if-eq v4, v5, :cond_21

    const/16 v5, 0x2a

    const/4 v7, 0x4

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x37

    const/16 v9, 0x11

    const/16 v10, 0xff

    const/4 v11, 0x6

    const/16 v12, 0x20

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x38

    const/4 v13, 0x7

    if-eq v4, v5, :cond_19

    const/16 v5, 0x44

    const/16 v9, 0x8

    const/16 v14, 0xc

    const/4 v6, 0x5

    if-eq v4, v5, :cond_d

    const/16 v5, 0x80

    const/16 v15, 0x10

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v1, v1, v8

    if-eqz v1, :cond_23

    .line 5
    invoke-virtual {v0, v5, v8}, Lk0/x3;->a3(II)V

    .line 6
    invoke-virtual {v0, v10, v11}, Lk0/x3;->a3(II)V

    .line 7
    invoke-virtual {v0, v10, v13}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    aget v1, v1, v8

    const/16 v2, 0x4c

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_23

    .line 10
    invoke-virtual {v0, v12, v6}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 11
    :cond_1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_23

    .line 12
    invoke-virtual {v0, v12, v6}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_23

    const/16 v1, 0x40

    .line 14
    invoke-virtual {v0, v1, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 15
    :pswitch_3
    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    .line 16
    aget v3, v1, v8

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 17
    aget v1, v1, v8

    shl-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1, v8}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    :cond_2
    if-ge v2, v9, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    shl-int/lit8 v1, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    .line 18
    invoke-virtual {v0, v1, v8}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    :cond_4
    if-lez v2, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    shl-int/lit8 v1, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    .line 19
    invoke-virtual {v0, v1, v8}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 20
    :pswitch_4
    aget v1, v1, v8

    if-eqz v1, :cond_6

    .line 21
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_23

    .line 22
    invoke-virtual {v0, v8, v3}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 23
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v8, :cond_23

    .line 24
    invoke-virtual {v0, v8, v3}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 25
    :pswitch_5
    aget v1, v1, v8

    if-eqz v1, :cond_7

    .line 26
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_23

    .line 27
    invoke-virtual {v0, v7, v8}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 28
    :cond_7
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v8, :cond_23

    .line 29
    invoke-virtual {v0, v7, v8}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 30
    :pswitch_6
    aget v1, v1, v8

    const/16 v3, 0x41

    if-eqz v1, :cond_8

    .line 31
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_23

    .line 32
    invoke-virtual {v0, v15, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 33
    :cond_8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_23

    .line 34
    invoke-virtual {v0, v15, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 35
    :pswitch_7
    aget v1, v1, v8

    const/16 v3, 0xd

    if-eqz v1, :cond_9

    .line 36
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_23

    .line 37
    invoke-virtual {v0, v12, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 38
    :cond_9
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_23

    .line 39
    invoke-virtual {v0, v12, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 40
    :pswitch_8
    aget v1, v1, v8

    if-eqz v1, :cond_a

    .line 41
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0xb

    aget v1, v1, v4

    if-nez v1, :cond_23

    .line 42
    invoke-virtual {v0, v3, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xb

    .line 43
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v4

    if-ne v1, v8, :cond_23

    .line 44
    invoke-virtual {v0, v3, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 45
    :pswitch_9
    aget v1, v1, v8

    if-eqz v1, :cond_c

    .line 46
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0xa

    aget v1, v1, v4

    if-nez v1, :cond_23

    .line 47
    sget v1, Lk0/nt;->a:I

    const v4, 0x12008b

    if-eq v1, v4, :cond_b

    const v4, 0x13008b

    if-eq v1, v4, :cond_b

    const v4, 0x3f008b

    if-eq v1, v4, :cond_b

    .line 48
    invoke-virtual {v0, v3, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 49
    :cond_b
    invoke-virtual {v0, v12, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    .line 50
    :cond_c
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0xa

    aget v1, v1, v4

    if-ne v1, v8, :cond_23

    .line 51
    invoke-virtual {v0, v5, v2}, Lk0/x3;->a3(II)V

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0xa

    .line 52
    aget v2, v1, v8

    if-ne v2, v4, :cond_e

    new-array v1, v6, [I

    .line 53
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 54
    :cond_e
    aget v2, v1, v8

    const/16 v4, 0x9

    if-ne v2, v4, :cond_f

    new-array v1, v6, [I

    .line 55
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 56
    :cond_f
    aget v2, v1, v8

    if-ne v2, v8, :cond_10

    new-array v1, v6, [I

    .line 57
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 58
    :cond_10
    aget v2, v1, v8

    if-ne v2, v3, :cond_11

    new-array v1, v6, [I

    .line 59
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 60
    :cond_11
    aget v2, v1, v8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    new-array v1, v6, [I

    .line 61
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 62
    :cond_12
    aget v2, v1, v8

    if-ne v2, v7, :cond_13

    new-array v1, v6, [I

    .line 63
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 64
    :cond_13
    aget v2, v1, v8

    if-ne v2, v6, :cond_14

    new-array v1, v6, [I

    .line 65
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 66
    :cond_14
    aget v2, v1, v8

    if-ne v2, v11, :cond_15

    new-array v1, v6, [I

    .line 67
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 68
    :cond_15
    aget v2, v1, v8

    if-ne v2, v13, :cond_16

    new-array v1, v6, [I

    .line 69
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 70
    :cond_16
    aget v2, v1, v8

    if-ne v2, v9, :cond_17

    new-array v1, v6, [I

    .line 71
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 72
    :cond_17
    aget v2, v1, v8

    const/16 v3, 0xb

    if-ne v2, v3, :cond_18

    new-array v1, v6, [I

    .line 73
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 74
    :cond_18
    aget v1, v1, v8

    if-ne v1, v14, :cond_23

    new-array v1, v6, [I

    .line 75
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 76
    :cond_19
    aget v2, v1, v8

    if-gt v2, v9, :cond_1a

    .line 77
    invoke-virtual {v0, v8, v13}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 78
    :cond_1a
    aget v2, v1, v8

    if-lt v2, v12, :cond_1b

    .line 79
    invoke-virtual {v0, v10, v13}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 80
    :cond_1b
    aget v1, v1, v8

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1, v13}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 81
    :cond_1c
    aget v2, v1, v8

    if-gt v2, v9, :cond_1d

    .line 82
    invoke-virtual {v0, v8, v11}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 83
    :cond_1d
    aget v2, v1, v8

    if-lt v2, v12, :cond_1e

    .line 84
    invoke-virtual {v0, v10, v11}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 85
    :cond_1e
    aget v1, v1, v8

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1, v11}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 86
    :cond_1f
    aget v1, v1, v8

    if-eqz v1, :cond_20

    .line 87
    invoke-virtual {v0, v3, v7}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 88
    :cond_20
    invoke-virtual {v0, v8, v7}, Lk0/x3;->a3(II)V

    goto :goto_0

    .line 89
    :cond_21
    aget v1, v1, v8

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    .line 90
    invoke-virtual {v0, v3, v1}, Lk0/x3;->a3(II)V

    goto :goto_0

    :cond_22
    const/4 v1, 0x3

    .line 91
    invoke-virtual {v0, v8, v1}, Lk0/x3;->a3(II)V

    :cond_23
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x80
        0x2
        0xb
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x80
        0x2
        0xb
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x80
        0x2
        0xc
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x80
        0x2
        0xc
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x80
        0x2
        0xd
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x80
        0x2
        0xd
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x80
        0x2
        0xe
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x80
        0x2
        0xe
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x80
        0x2
        0xf
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x80
        0x2
        0xf
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x80
        0x2
        0x10
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x80
        0x2
        0x10
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    .line 6
    iput v3, v0, Lk0/mt;->o:I

    .line 7
    iput v3, v0, Lk0/mt;->h:I

    .line 8
    iput v3, v0, Lk0/mt;->l:I

    .line 9
    iget-object v0, p0, Lk0/x3;->Q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/x3;->g0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v4, p0, Lk0/x3;->c0:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget v0, Lk0/nt;->a:I

    const/4 v4, 0x2

    const-string v5, "AUTONAVI_STANDARD_BROADCAST_SEND"

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 13
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v3, v0, Lk0/mt;->f:I

    .line 15
    iput v2, v0, Lk0/mt;->e:I

    .line 16
    iput v3, v0, Lk0/mt;->n:I

    .line 17
    iput v2, v0, Lk0/mt;->i:I

    .line 18
    iput v2, v0, Lk0/mt;->g:I

    .line 19
    iput v2, v0, Lk0/mt;->l:I

    .line 20
    iput v4, v0, Lk0/mt;->h:I

    .line 21
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Lk0/x3;->c3()V

    .line 26
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 27
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 28
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 29
    iput v2, v0, Lk0/mt;->e:I

    .line 30
    iput v2, v0, Lk0/mt;->f:I

    .line 31
    iput v2, v0, Lk0/mt;->i:I

    .line 32
    iput v3, v0, Lk0/mt;->g:I

    .line 33
    iput v4, v0, Lk0/mt;->h:I

    .line 34
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v3, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 39
    invoke-virtual {p0}, Lk0/x3;->c3()V

    .line 40
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 41
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 42
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 43
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 44
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 45
    iput v2, v0, Lk0/mt;->e:I

    .line 46
    iput v2, v0, Lk0/mt;->f:I

    .line 47
    iput v2, v0, Lk0/mt;->i:I

    .line 48
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 49
    :sswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 50
    iput v2, v0, Lk0/mt;->e:I

    .line 51
    iput v2, v0, Lk0/mt;->f:I

    .line 52
    iput v2, v0, Lk0/mt;->i:I

    .line 53
    iput v3, v0, Lk0/mt;->g:I

    .line 54
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v4, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p0}, Lk0/x3;->c3()V

    .line 60
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 61
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 62
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 63
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {v0, v2, v3}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/x3;->t3(I)V

    goto/16 :goto_0

    .line 65
    :sswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 66
    iput v2, v0, Lk0/mt;->e:I

    .line 67
    iput v2, v0, Lk0/mt;->f:I

    .line 68
    iput v2, v0, Lk0/mt;->i:I

    .line 69
    iput v3, v0, Lk0/mt;->g:I

    .line 70
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {p0}, Lk0/x3;->c3()V

    goto/16 :goto_0

    .line 76
    :sswitch_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 77
    iput v2, v0, Lk0/mt;->f:I

    .line 78
    iput v2, v0, Lk0/mt;->e:I

    .line 79
    iput v3, v0, Lk0/mt;->n:I

    .line 80
    iput v3, v0, Lk0/mt;->i:I

    .line 81
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 82
    :sswitch_6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 83
    iput v2, v0, Lk0/mt;->e:I

    .line 84
    iput v2, v0, Lk0/mt;->f:I

    .line 85
    iput v2, v0, Lk0/mt;->i:I

    .line 86
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 87
    :sswitch_7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 88
    iput v2, v0, Lk0/mt;->e:I

    .line 89
    iput v2, v0, Lk0/mt;->f:I

    .line 90
    iput v2, v0, Lk0/mt;->i:I

    .line 91
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 92
    :sswitch_8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 93
    iput v2, v0, Lk0/mt;->e:I

    .line 94
    iput v2, v0, Lk0/mt;->f:I

    .line 95
    iput v2, v0, Lk0/mt;->i:I

    .line 96
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 97
    :sswitch_9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 98
    iput v2, v0, Lk0/mt;->e:I

    .line 99
    iput v2, v0, Lk0/mt;->f:I

    .line 100
    iput v2, v0, Lk0/mt;->i:I

    .line 101
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 102
    :sswitch_a
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 103
    iput v2, v0, Lk0/mt;->e:I

    .line 104
    iput v2, v0, Lk0/mt;->f:I

    .line 105
    iput v2, v0, Lk0/mt;->i:I

    .line 106
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 107
    :sswitch_b
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 108
    iput v2, v0, Lk0/mt;->e:I

    .line 109
    iput v2, v0, Lk0/mt;->f:I

    .line 110
    iput v3, v0, Lk0/mt;->i:I

    .line 111
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 112
    :sswitch_c
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 113
    iput v2, v0, Lk0/mt;->e:I

    .line 114
    iput v2, v0, Lk0/mt;->f:I

    .line 115
    iput v2, v0, Lk0/mt;->i:I

    .line 116
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 117
    :sswitch_d
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 118
    iput v3, v0, Lk0/mt;->f:I

    .line 119
    iput v2, v0, Lk0/mt;->e:I

    .line 120
    iput v3, v0, Lk0/mt;->n:I

    .line 121
    iput v2, v0, Lk0/mt;->i:I

    .line 122
    iput v2, v0, Lk0/mt;->g:I

    .line 123
    iput v2, v0, Lk0/mt;->l:I

    .line 124
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lk0/x3;->c3()V

    .line 129
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 130
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 131
    :sswitch_e
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 132
    iput v3, v0, Lk0/mt;->f:I

    .line 133
    iput v2, v0, Lk0/mt;->e:I

    .line 134
    iput v3, v0, Lk0/mt;->n:I

    .line 135
    iput v2, v0, Lk0/mt;->i:I

    .line 136
    iput v2, v0, Lk0/mt;->g:I

    .line 137
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lk0/x3;->c3()V

    .line 142
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 144
    :sswitch_f
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 145
    iput v2, v0, Lk0/mt;->e:I

    .line 146
    iput v2, v0, Lk0/mt;->f:I

    .line 147
    iput v2, v0, Lk0/mt;->i:I

    .line 148
    iput v3, v0, Lk0/mt;->g:I

    .line 149
    iget-object v0, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {v0, v4, v3}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/x3;->r3(I)V

    goto/16 :goto_0

    .line 150
    :sswitch_10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 151
    iput v2, v0, Lk0/mt;->e:I

    .line 152
    iput v2, v0, Lk0/mt;->f:I

    .line 153
    iput v3, v0, Lk0/mt;->i:I

    .line 154
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 155
    :sswitch_11
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 156
    iput v2, v0, Lk0/mt;->f:I

    .line 157
    iput v2, v0, Lk0/mt;->e:I

    .line 158
    iput v3, v0, Lk0/mt;->n:I

    .line 159
    iput v2, v0, Lk0/mt;->i:I

    .line 160
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 161
    :sswitch_12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 162
    iput v2, v0, Lk0/mt;->e:I

    .line 163
    iput v2, v0, Lk0/mt;->f:I

    .line 164
    iput v2, v0, Lk0/mt;->i:I

    .line 165
    iput v3, v0, Lk0/mt;->g:I

    .line 166
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {p0}, Lk0/x3;->c3()V

    goto/16 :goto_0

    .line 172
    :sswitch_13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 173
    iput v2, v0, Lk0/mt;->e:I

    .line 174
    iput v2, v0, Lk0/mt;->f:I

    .line 175
    iput v2, v0, Lk0/mt;->i:I

    .line 176
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 177
    :sswitch_14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 178
    iput v2, v0, Lk0/mt;->e:I

    .line 179
    iput v2, v0, Lk0/mt;->f:I

    .line 180
    iput v2, v0, Lk0/mt;->i:I

    .line 181
    iput v3, v0, Lk0/mt;->g:I

    .line 182
    new-instance v0, Lk0/x3$p;

    invoke-direct {v0, p0, v6}, Lk0/x3$p;-><init>(Lk0/x3;Lk0/x3$g;)V

    iput-object v0, p0, Lk0/x3;->C:Lk0/x3$p;

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v3, p0, Lk0/x3;->C:Lk0/x3$p;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lk0/x3;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {p0}, Lk0/x3;->c3()V

    .line 188
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 189
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 190
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 191
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 192
    :sswitch_15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 193
    iput v2, v0, Lk0/mt;->e:I

    .line 194
    iput v2, v0, Lk0/mt;->f:I

    .line 195
    iput v2, v0, Lk0/mt;->i:I

    .line 196
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 197
    :sswitch_16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 198
    iput v2, v0, Lk0/mt;->e:I

    .line 199
    iput v2, v0, Lk0/mt;->f:I

    .line 200
    iput v2, v0, Lk0/mt;->i:I

    .line 201
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 202
    :sswitch_17
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 203
    iput v2, v0, Lk0/mt;->e:I

    .line 204
    iput v2, v0, Lk0/mt;->f:I

    .line 205
    iput v3, v0, Lk0/mt;->i:I

    .line 206
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_0

    .line 207
    :sswitch_18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 208
    iput v2, v0, Lk0/mt;->e:I

    .line 209
    iput v2, v0, Lk0/mt;->f:I

    .line 210
    iput v3, v0, Lk0/mt;->g:I

    .line 211
    iput v3, v0, Lk0/mt;->h:I

    .line 212
    iput v3, v0, Lk0/mt;->n:I

    goto/16 :goto_0

    .line 213
    :sswitch_19
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 214
    iput v2, v0, Lk0/mt;->e:I

    .line 215
    iput v2, v0, Lk0/mt;->f:I

    .line 216
    iput v3, v0, Lk0/mt;->g:I

    .line 217
    iput v3, v0, Lk0/mt;->n:I

    goto/16 :goto_0

    .line 218
    :sswitch_1a
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 219
    iput v2, v0, Lk0/mt;->e:I

    .line 220
    iput v2, v0, Lk0/mt;->f:I

    .line 221
    iput v3, v0, Lk0/mt;->g:I

    .line 222
    iput v2, v0, Lk0/mt;->h:I

    .line 223
    iput v3, v0, Lk0/mt;->n:I

    goto/16 :goto_0

    .line 224
    :sswitch_1b
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 225
    iput v2, v0, Lk0/mt;->f:I

    .line 226
    iput v2, v0, Lk0/mt;->i:I

    .line 227
    iput v3, v0, Lk0/mt;->n:I

    .line 228
    iput v3, v0, Lk0/mt;->g:I

    .line 229
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/x3;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 230
    sget-object v0, Le/c;->w:Lo1/o;

    iput-object v0, p0, Lk0/x3;->W:Lo1/o;

    .line 231
    sget-object v0, Le/c;->x:Lo1/o;

    iput-object v0, p0, Lk0/x3;->X:Lo1/o;

    .line 232
    sget-object v0, Le/c;->y:Lo1/o;

    iput-object v0, p0, Lk0/x3;->Y:Lo1/o;

    .line 233
    sget-object v0, Le/c;->z:Lo1/o;

    iput-object v0, p0, Lk0/x3;->Z:Lo1/o;

    .line 234
    new-instance v0, Lk0/x3$k;

    invoke-direct {v0, p0}, Lk0/x3$k;-><init>(Lk0/x3;)V

    sput-object v0, Le/c;->w:Lo1/o;

    .line 235
    new-instance v0, Lk0/x3$l;

    invoke-direct {v0, p0}, Lk0/x3$l;-><init>(Lk0/x3;)V

    sput-object v0, Le/c;->x:Lo1/o;

    .line 236
    new-instance v0, Lk0/x3$m;

    invoke-direct {v0, p0}, Lk0/x3$m;-><init>(Lk0/x3;)V

    sput-object v0, Le/c;->z:Lo1/o;

    .line 237
    new-instance v0, Lk0/x3$n;

    invoke-direct {v0, p0}, Lk0/x3$n;-><init>(Lk0/x3;)V

    sput-object v0, Le/c;->y:Lo1/o;

    goto :goto_0

    .line 238
    :sswitch_1c
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v4, p0, Lk0/x3;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 239
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 240
    iput v2, v0, Lk0/mt;->f:I

    .line 241
    iput v2, v0, Lk0/mt;->e:I

    .line 242
    iput v3, v0, Lk0/mt;->n:I

    .line 243
    iput v2, v0, Lk0/mt;->i:I

    .line 244
    iput v3, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 245
    :sswitch_1d
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 246
    iput v2, v0, Lk0/mt;->f:I

    .line 247
    iput v2, v0, Lk0/mt;->e:I

    .line 248
    iput v2, v0, Lk0/mt;->n:I

    .line 249
    iput v3, v0, Lk0/mt;->i:I

    .line 250
    iput v3, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 251
    :sswitch_1e
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 252
    iput v3, v0, Lk0/mt;->n:I

    .line 253
    iput v3, v0, Lk0/mt;->g:I

    .line 254
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 255
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->g:I

    .line 256
    iget-object v0, p0, Lk0/x3;->k0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x8b -> :sswitch_1e
        0x1008b -> :sswitch_1d
        0x2008b -> :sswitch_1c
        0x3008b -> :sswitch_1b
        0x4008b -> :sswitch_1a
        0x5008b -> :sswitch_19
        0x6008b -> :sswitch_18
        0x8008b -> :sswitch_17
        0x9008b -> :sswitch_16
        0xa008b -> :sswitch_15
        0xb008b -> :sswitch_14
        0xc008b -> :sswitch_13
        0xd008b -> :sswitch_12
        0xe008b -> :sswitch_11
        0xf008b -> :sswitch_1c
        0x10008b -> :sswitch_10
        0x11008b -> :sswitch_f
        0x12008b -> :sswitch_e
        0x13008b -> :sswitch_d
        0x14008b -> :sswitch_c
        0x15008b -> :sswitch_b
        0x16008b -> :sswitch_a
        0x17008b -> :sswitch_9
        0x18008b -> :sswitch_15
        0x19008b -> :sswitch_16
        0x1a008b -> :sswitch_8
        0x1b008b -> :sswitch_7
        0x1c008b -> :sswitch_6
        0x1d008b -> :sswitch_5
        0x1e008b -> :sswitch_7
        0x1f008b -> :sswitch_14
        0x20008b -> :sswitch_14
        0x21008b -> :sswitch_4
        0x22008b -> :sswitch_3
        0x23008b -> :sswitch_14
        0x25008b -> :sswitch_3
        0x26008b -> :sswitch_3
        0x27008b -> :sswitch_3
        0x28008b -> :sswitch_15
        0x29008b -> :sswitch_3
        0x2a008b -> :sswitch_e
        0x2b008b -> :sswitch_2
        0x2c008b -> :sswitch_17
        0x2d008b -> :sswitch_3
        0x2e008b -> :sswitch_5
        0x2f008b -> :sswitch_2
        0x30008b -> :sswitch_2
        0x31008b -> :sswitch_a
        0x32008b -> :sswitch_3
        0x33008b -> :sswitch_15
        0x34008b -> :sswitch_3
        0x36008b -> :sswitch_14
        0x37008b -> :sswitch_6
        0x38008b -> :sswitch_15
        0x39008b -> :sswitch_3
        0x3a008b -> :sswitch_3
        0x3b008b -> :sswitch_3
        0x3c008b -> :sswitch_3
        0x3d008b -> :sswitch_1
        0x3e008b -> :sswitch_3
        0x3f008b -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x37
        0x38
        0x3b
        0x3c
        0x3d
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    if-eq v2, v3, :cond_6c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6b

    const/16 v8, 0x43

    const/16 v9, 0xf

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v2, v8, :cond_6a

    const/16 v8, 0x60

    if-eq v2, v8, :cond_69

    const/16 v8, 0x64

    const v12, 0xff00

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x7

    const/4 v3, 0x5

    if-eq v2, v8, :cond_68

    const/16 v8, 0x7d

    const/4 v4, 0x4

    if-eq v2, v8, :cond_61

    const/16 v8, 0x7f

    if-eq v2, v8, :cond_60

    const/16 v8, 0x3f

    if-eq v2, v8, :cond_5e

    const/16 v8, 0x40

    if-eq v2, v8, :cond_58

    const/16 v20, -0x2

    const/16 v8, 0x10

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_21

    :pswitch_0
    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0xba

    new-array v3, v11, [I

    aput v1, v3, v7

    .line 3
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1
    const/16 v2, 0xb4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v12

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2
    const/16 v2, 0x76

    new-array v10, v11, [I

    add-int/lit8 v12, p2, 0xc

    .line 5
    aget-byte v16, v1, v12

    shr-int/lit8 v15, v16, 0x7

    and-int/2addr v15, v8

    and-int/2addr v15, v8

    add-int/lit8 v16, p2, 0x2

    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    or-int v15, v15, v17

    aput v15, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v10, v11, [I

    .line 6
    aget-byte v15, v1, v12

    shr-int/lit8 v14, v15, 0x6

    and-int/2addr v14, v8

    and-int/2addr v14, v8

    aget-byte v15, v1, v16

    shr-int/2addr v15, v7

    and-int/2addr v15, v9

    or-int/2addr v14, v15

    aput v14, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v10, v11, [I

    .line 7
    aget-byte v14, v1, v12

    shr-int/lit8 v3, v14, 0x5

    and-int/2addr v3, v8

    and-int/2addr v3, v8

    add-int/lit8 v14, p2, 0x3

    aget-byte v15, v1, v14

    shr-int/2addr v15, v4

    and-int/2addr v15, v9

    or-int/2addr v3, v15

    aput v3, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v11, [I

    .line 8
    aget-byte v10, v1, v12

    shr-int/2addr v10, v4

    and-int/2addr v10, v8

    and-int/2addr v8, v10

    aget-byte v10, v1, v14

    shr-int/2addr v10, v7

    and-int/2addr v10, v9

    or-int/2addr v8, v10

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-boolean v2, v0, Lk0/x3;->V:Z

    if-nez v2, :cond_2

    .line 10
    iget v2, v0, Lk0/x3;->R:I

    aget-byte v3, v1, v16

    shr-int/2addr v3, v4

    and-int/2addr v3, v9

    if-ne v2, v3, :cond_0

    iget v2, v0, Lk0/x3;->S:I

    aget-byte v3, v1, v16

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    if-ne v2, v3, :cond_0

    iget v2, v0, Lk0/x3;->T:I

    aget-byte v3, v1, v14

    shr-int/2addr v3, v4

    and-int/2addr v3, v9

    if-ne v2, v3, :cond_0

    iget v2, v0, Lk0/x3;->U:I

    aget-byte v3, v1, v14

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    if-eq v2, v3, :cond_2

    .line 11
    :cond_0
    aget-byte v2, v1, v16

    shr-int/2addr v2, v4

    and-int/2addr v2, v9

    iput v2, v0, Lk0/x3;->R:I

    .line 12
    aget-byte v3, v1, v16

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    iput v3, v0, Lk0/x3;->S:I

    .line 13
    aget-byte v8, v1, v14

    shr-int/lit8 v4, v8, 0x4

    and-int/2addr v4, v9

    iput v4, v0, Lk0/x3;->T:I

    .line 14
    aget-byte v8, v1, v14

    shr-int/2addr v8, v7

    and-int/2addr v8, v9

    iput v8, v0, Lk0/x3;->U:I

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-eqz v8, :cond_2

    .line 15
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lk0/x3;->o3()V

    .line 16
    iput-boolean v11, v0, Lk0/x3;->V:Z

    :cond_2
    const/16 v2, 0x7a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 17
    aget-byte v8, v1, v4

    and-int/2addr v8, v6

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    add-int/lit8 v8, p2, 0x5

    .line 18
    aget-byte v9, v1, v8

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v11, [I

    add-int/lit8 v9, p2, 0x6

    .line 19
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    add-int/lit8 v10, p2, 0x7

    .line 20
    aget-byte v12, v1, v10

    and-int/2addr v12, v6

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 21
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    .line 22
    aget-byte v3, v1, v8

    and-int/2addr v3, v6

    .line 23
    aget-byte v4, v1, v9

    and-int/2addr v4, v6

    .line 24
    aget-byte v8, v1, v10

    and-int/2addr v8, v6

    .line 25
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    new-array v10, v5, [I

    aput v13, v10, v7

    const/16 v12, 0x2100

    mul-int/lit16 v2, v2, 0x55d

    div-int/lit16 v2, v2, 0xfa0

    or-int/2addr v2, v12

    aput v2, v10, v11

    const/16 v2, 0x419

    const/4 v12, 0x0

    invoke-static {v9, v2, v10, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v10, v5, [I

    aput v13, v10, v7

    const/16 v14, 0x2200

    mul-int/lit16 v3, v3, 0x55d

    .line 26
    div-int/lit16 v3, v3, 0xfa0

    or-int/2addr v3, v14

    aput v3, v10, v11

    invoke-static {v9, v2, v10, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v13, v3, v7

    const/16 v10, 0x2300

    mul-int/lit16 v4, v4, 0x55d

    .line 27
    div-int/lit16 v4, v4, 0xfa0

    or-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v9, v2, v3, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v13, v3, v7

    const/16 v4, 0x2400

    mul-int/lit16 v8, v8, 0x55d

    .line 28
    div-int/lit16 v8, v8, 0xfa0

    or-int/2addr v4, v8

    aput v4, v3, v11

    invoke-static {v9, v2, v3, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x7e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 32
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    .line 33
    :pswitch_3
    sget v2, Lk0/nt;->a:I

    const v6, 0x3008b

    if-ne v2, v6, :cond_3

    const/16 v2, 0x62

    new-array v6, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 34
    aget-byte v8, v1, v5

    shr-int/2addr v8, v15

    and-int/2addr v8, v11

    aput v8, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v6, v11, [I

    .line 35
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v11

    aput v8, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v6, v11, [I

    .line 36
    aget-byte v8, v1, v5

    shr-int/lit8 v3, v8, 0x5

    and-int/2addr v3, v11

    aput v3, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    .line 37
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v11, [I

    .line 38
    aget-byte v1, v1, v5

    shr-int/2addr v1, v10

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_3
    const v6, 0xb008b

    if-eq v2, v6, :cond_b

    const v6, 0xd008b

    if-eq v2, v6, :cond_b

    const v6, 0xe008b

    if-eq v2, v6, :cond_b

    const v6, 0xf008b

    if-eq v2, v6, :cond_b

    const v6, 0x1f008b

    if-eq v2, v6, :cond_b

    const v6, 0x3d008b

    if-ne v2, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    const v6, 0x12008b

    if-eq v2, v6, :cond_a

    const v6, 0x13008b

    if-eq v2, v6, :cond_a

    const v6, 0x3f008b

    if-ne v2, v6, :cond_5

    goto/16 :goto_1

    :cond_5
    const v6, 0x18008b

    if-eq v2, v6, :cond_9

    const v6, 0x19008b

    if-eq v2, v6, :cond_9

    const v6, 0x1b008b

    if-eq v2, v6, :cond_9

    const v6, 0x9008b

    if-eq v2, v6, :cond_9

    const v6, 0xa008b

    if-eq v2, v6, :cond_9

    const v6, 0x1e008b

    if-ne v2, v6, :cond_6

    goto/16 :goto_0

    :cond_6
    const v6, 0x11008b

    if-ne v2, v6, :cond_7

    const/16 v2, 0x83

    new-array v6, v11, [I

    add-int/lit8 v8, p2, 0x6

    .line 39
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v6, v11, [I

    .line 40
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v6, v11, [I

    .line 41
    aget-byte v9, v1, v8

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v11

    aput v3, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v11, [I

    .line 42
    aget-byte v6, v1, v8

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v11, [I

    .line 43
    aget-byte v4, v1, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    .line 44
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v11, [I

    .line 45
    aget-byte v1, v1, v8

    shr-int/2addr v1, v11

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_7
    const v6, 0x14008b

    if-eq v2, v6, :cond_8

    const v6, 0x17008b

    if-eq v2, v6, :cond_8

    const v6, 0x1a008b

    if-ne v2, v6, :cond_6f

    :cond_8
    const/16 v2, 0x97

    new-array v6, v11, [I

    add-int/lit8 v8, p2, 0x8

    .line 46
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v6, v11, [I

    .line 47
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v6, v11, [I

    .line 48
    aget-byte v9, v1, v8

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v11

    aput v3, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v11, [I

    .line 49
    aget-byte v6, v1, v8

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v11, [I

    .line 50
    aget-byte v4, v1, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v11, [I

    .line 51
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v11, [I

    .line 52
    aget-byte v4, v1, v8

    shr-int/2addr v4, v11

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    .line 53
    aget-byte v1, v1, v8

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_9
    :goto_0
    const/16 v2, 0x75

    new-array v6, v11, [I

    add-int/lit8 v8, p2, 0x5

    .line 54
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v6, v11, [I

    .line 55
    aget-byte v9, v1, v8

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v11

    aput v3, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v11, [I

    .line 56
    aget-byte v6, v1, v8

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v11, [I

    .line 57
    aget-byte v4, v1, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v11, [I

    .line 58
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v11, [I

    .line 59
    aget-byte v4, v1, v8

    shr-int/2addr v4, v11

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v11, [I

    .line 60
    aget-byte v1, v1, v8

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_a
    :goto_1
    const/16 v2, 0x70

    new-array v6, v11, [I

    add-int/lit8 v8, p2, 0x4

    .line 61
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v6, v11, [I

    .line 62
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v6, v11, [I

    .line 63
    aget-byte v9, v1, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v6, v11, [I

    .line 64
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v6, v11, [I

    .line 65
    aget-byte v9, v1, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v6, v11, [I

    .line 66
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v11

    aput v8, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v6, v11, [I

    add-int/lit8 v8, p2, 0x7

    .line 67
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v6, v11, [I

    .line 68
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v6, v11, [I

    .line 69
    aget-byte v9, v1, v8

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v11

    aput v3, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v11, [I

    .line 70
    aget-byte v6, v1, v8

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v11, [I

    .line 71
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v11, [I

    .line 72
    aget-byte v4, v1, v8

    shr-int/2addr v4, v11

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v11, [I

    .line 73
    aget-byte v1, v1, v8

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_b
    :goto_2
    const/16 v2, 0x6f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 74
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v11, [I

    .line 75
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_4
    const/16 v2, 0x9e

    new-array v8, v11, [I

    add-int/lit8 v9, p2, 0x2

    .line 76
    aget-byte v12, v1, v9

    shr-int/2addr v12, v14

    and-int/2addr v12, v10

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v8, v11, [I

    .line 77
    aget-byte v12, v1, v9

    shr-int/2addr v12, v4

    and-int/2addr v12, v10

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v8, v11, [I

    .line 78
    aget-byte v12, v1, v9

    shr-int/2addr v12, v5

    and-int/2addr v12, v10

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v8, v11, [I

    .line 79
    aget-byte v12, v1, v9

    shr-int/2addr v12, v11

    and-int/2addr v12, v11

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v8, v11, [I

    .line 80
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v11

    aput v9, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v8, v11, [I

    add-int/lit8 v9, p2, 0x3

    .line 81
    aget-byte v12, v1, v9

    shr-int/2addr v12, v15

    and-int/2addr v12, v11

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v8, v11, [I

    .line 82
    aget-byte v12, v1, v9

    shr-int/2addr v12, v14

    and-int/2addr v12, v11

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v8, v11, [I

    .line 83
    aget-byte v12, v1, v9

    shr-int/2addr v12, v3

    and-int/2addr v12, v11

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v8, v11, [I

    .line 84
    aget-byte v12, v1, v9

    shr-int/lit8 v4, v12, 0x4

    and-int/2addr v4, v11

    aput v4, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v4, v11, [I

    .line 85
    aget-byte v8, v1, v9

    shr-int/2addr v8, v10

    and-int/2addr v8, v11

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v4, v11, [I

    .line 86
    aget-byte v8, v1, v9

    shr-int/lit8 v5, v8, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v4, v11, [I

    .line 87
    aget-byte v5, v1, v9

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v4, v11, [I

    .line 88
    aget-byte v5, v1, v9

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 89
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x7f

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v4, v11, [I

    add-int/lit8 v3, p2, 0x5

    .line 90
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_16

    if-eq v2, v11, :cond_15

    if-eq v2, v5, :cond_14

    if-eq v2, v10, :cond_13

    if-eq v2, v4, :cond_12

    if-eq v2, v3, :cond_11

    const/16 v3, 0x17

    if-eq v2, v3, :cond_10

    const/16 v3, 0x27

    if-eq v2, v3, :cond_f

    const/16 v3, 0x80

    if-eq v2, v3, :cond_e

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_d

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_c

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    goto/16 :goto_21

    :pswitch_6
    const/16 v2, 0xf6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 92
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_7
    const/16 v2, 0xf5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 93
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_8
    const/16 v2, 0xf4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 94
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_9
    const/16 v2, 0xf3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 95
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_a
    const/16 v2, 0xf1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 96
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_b
    const/16 v2, 0xec

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 97
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_c
    const/16 v2, 0xeb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 98
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_d
    const/16 v2, 0xea

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 99
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_e
    const/16 v2, 0xe9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 100
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_f
    const/16 v2, 0xe8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 101
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_10
    const/16 v2, 0xe6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 102
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_11
    const/16 v2, 0xe5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 103
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_12
    const/16 v2, 0x11

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 104
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_13
    const/16 v2, 0x4c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 105
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_14
    const/16 v2, 0x42

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 106
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_15
    const/16 v2, 0xdc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 107
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_16
    const/16 v2, 0xdb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 108
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_17
    const/16 v2, 0xda

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 109
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_18
    const/16 v2, 0xd9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 110
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_19
    const/16 v2, 0xf0

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 111
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1a
    const/16 v2, 0xdd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 112
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1b
    const/16 v2, 0xd5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 113
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1c
    const/16 v2, 0xd4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 114
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1d
    const/16 v2, 0xd3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 115
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1e
    const/16 v2, 0xd2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 116
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_1f
    const/16 v2, 0xd1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 117
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_20
    const/16 v2, 0xd0

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 118
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_21
    const/16 v2, 0xcf

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_22
    const/16 v2, 0xce

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 120
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_23
    const/16 v2, 0xcd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 121
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_24
    const/16 v2, 0xcc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 122
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_25
    const/16 v2, 0xcb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 123
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_26
    const/16 v2, 0xca

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 124
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_27
    const/16 v2, 0xc9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 125
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_28
    const/16 v2, 0xc8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 126
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_29
    const/16 v2, 0xc7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 127
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2a
    const/16 v2, 0xc6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 128
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2b
    const/16 v2, 0xc5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 129
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2c
    const/16 v2, 0xc1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 130
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2d
    const/16 v2, 0xc0

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 131
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2e
    const/16 v2, 0xbf

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 132
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_2f
    const/16 v2, 0xbe

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 133
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_30
    const/16 v2, 0xbd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 134
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_31
    const/16 v2, 0xb8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 135
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_32
    const/16 v2, 0xb7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 136
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_33
    const/16 v2, 0xb6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 137
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_34
    const/16 v2, 0xae

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 138
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_35
    const/16 v2, 0xac

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 139
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_36
    const/16 v2, 0xad

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 140
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_37
    const/16 v2, 0xa6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 141
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_38
    const/16 v2, 0xb1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 142
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_39
    const/16 v2, 0xb0

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 143
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3a
    const/16 v2, 0xaf

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 144
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3b
    const/16 v2, 0x82

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 145
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3c
    const/16 v2, 0x88

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 146
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3d
    const/16 v2, 0xd6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 147
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3e
    const/16 v2, 0x75

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 148
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3f
    const/16 v2, 0xa7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 149
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_40
    const/16 v2, 0x73

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 150
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_41
    const/16 v2, 0x9c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 151
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v11, [I

    .line 152
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_c
    const/16 v2, 0x9e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 153
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_d
    const/16 v2, 0xbc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 154
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_e
    const/16 v2, 0xbb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 155
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_f
    const/16 v2, 0xb5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 156
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_10
    const/16 v2, 0x8c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 157
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_11
    const/16 v2, 0x6f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 158
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_12
    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 159
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_13
    const/16 v2, 0x65

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 160
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_14
    const/16 v2, 0x64

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 161
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_15
    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 162
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_16
    const/16 v2, 0x62

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 163
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    .line 164
    :pswitch_42
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_6f

    add-int/lit8 v2, p2, 0x2

    .line 165
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x3

    .line 166
    aget-byte v8, v1, v5

    and-int/2addr v8, v6

    add-int/lit8 v9, p2, 0x4

    .line 167
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v3, p2, 0x5

    .line 168
    aget-byte v12, v1, v3

    and-int/2addr v12, v6

    if-eqz v4, :cond_17

    if-le v4, v15, :cond_1a

    :cond_17
    if-eqz v8, :cond_18

    if-le v8, v15, :cond_1a

    :cond_18
    if-eqz v10, :cond_19

    if-le v10, v15, :cond_1a

    :cond_19
    if-eqz v12, :cond_1c

    if-le v12, v15, :cond_1a

    goto :goto_3

    .line 169
    :cond_1a
    sget v7, Ll0/c0;->g:I

    if-ne v7, v4, :cond_1b

    sget v7, Ll0/c0;->h:I

    if-ne v7, v8, :cond_1b

    sget v7, Ll0/c0;->i:I

    if-ne v7, v10, :cond_1b

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_1d

    .line 170
    :cond_1b
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_1d

    .line 171
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 172
    sput v13, Ll0/c0;->k:I

    .line 173
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 174
    :cond_1c
    :goto_3
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 175
    :cond_1d
    :goto_4
    sput v4, Ll0/c0;->g:I

    .line 176
    sput v8, Ll0/c0;->h:I

    .line 177
    sput v10, Ll0/c0;->i:I

    .line 178
    sput v12, Ll0/c0;->j:I

    .line 179
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 180
    aget-byte v2, v1, v5

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 181
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 182
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->M0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_21

    .line 183
    :pswitch_43
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_6f

    add-int/lit8 v2, p2, 0x2

    .line 184
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 185
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 186
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 187
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_21

    :pswitch_44
    add-int/lit8 v2, p2, 0x2

    .line 188
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 189
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1e

    new-array v2, v11, [I

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v11

    aput v6, v2, v7

    .line 190
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v6, v1, 0x7

    and-int/2addr v6, v11

    aput v6, v2, v7

    .line 191
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1e
    new-array v2, v11, [I

    shr-int/lit8 v6, v1, 0x7

    and-int/2addr v6, v11

    aput v6, v2, v7

    .line 192
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v11

    aput v6, v2, v7

    .line 193
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v11, [I

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v6, v11

    aput v6, v2, v7

    .line 194
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v11

    aput v4, v2, v7

    .line 195
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v11

    aput v4, v2, v7

    .line 196
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v2, v7

    .line 197
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_45
    add-int/lit8 v2, p2, 0x2

    .line 198
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 199
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 200
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 201
    aget-byte v5, v1, v5

    add-int/lit8 v14, p2, 0x6

    .line 202
    aget-byte v15, v1, v14

    const/16 v16, 0x3f

    and-int/lit8 v15, v15, 0x3f

    add-int/lit8 v18, p2, 0x7

    .line 203
    aget-byte v19, v1, v18

    and-int/lit8 v19, v19, 0x3f

    add-int/lit8 v16, p2, 0x8

    .line 204
    aget-byte v12, v1, v16

    and-int/2addr v12, v6

    new-array v13, v11, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v7

    const/16 v10, 0xa

    .line 205
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v13, v11, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v7

    .line 206
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v13, v11, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v7

    .line 207
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x35

    new-array v13, v11, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v7

    .line 208
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    new-array v10, v11, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v11

    aput v13, v10, v7

    const/16 v13, 0xd

    .line 209
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xe

    new-array v13, v11, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v7

    .line 210
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    new-array v10, v11, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v11

    aput v13, v10, v7

    .line 211
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x41

    new-array v10, v11, [I

    and-int/2addr v2, v11

    aput v2, v10, v7

    .line 212
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    packed-switch v3, :pswitch_data_8

    move v2, v7

    :goto_6
    move v8, v2

    :goto_7
    move v10, v8

    goto :goto_8

    :pswitch_46
    move v2, v11

    goto :goto_6

    :pswitch_47
    move v10, v7

    move v2, v11

    move v8, v2

    goto :goto_8

    :pswitch_48
    move v8, v7

    move v10, v8

    move v2, v11

    goto :goto_8

    :pswitch_49
    move v8, v7

    move v2, v11

    move v10, v2

    goto :goto_8

    :pswitch_4a
    move v2, v7

    move v8, v2

    move v10, v11

    goto :goto_8

    :pswitch_4b
    move v2, v7

    move v8, v11

    goto :goto_7

    :pswitch_4c
    move v2, v7

    move v10, v2

    move v8, v11

    :goto_8
    const/16 v13, 0x12

    new-array v6, v11, [I

    aput v2, v6, v7

    .line 213
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v11, [I

    aput v8, v6, v7

    .line 214
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v11, [I

    aput v10, v6, v7

    .line 215
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v6, v11, [I

    aput v3, v6, v7

    .line 216
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    and-int/2addr v4, v9

    aput v4, v3, v7

    .line 217
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 218
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_b

    :sswitch_0
    const-string v2, "persist.fyt.reversetemp"

    .line 219
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 220
    aget-byte v2, v1, v18

    const/16 v3, 0x3f

    and-int/lit8 v15, v2, 0x3f

    .line 221
    aget-byte v2, v1, v14

    and-int/lit8 v19, v2, 0x3f

    goto :goto_9

    :cond_1f
    const/16 v3, 0x3f

    :goto_9
    move/from16 v2, v19

    if-eqz v15, :cond_21

    if-eq v15, v3, :cond_20

    new-array v3, v11, [I

    aput v15, v3, v7

    const/16 v4, 0x1b

    .line 222
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_20
    const/16 v4, 0x1b

    new-array v3, v11, [I

    const/4 v5, -0x3

    aput v5, v3, v7

    .line 223
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_21
    const/16 v4, 0x1b

    new-array v3, v11, [I

    aput v20, v3, v7

    .line 224
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_a
    if-eqz v2, :cond_23

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_22

    const/16 v3, 0x1c

    new-array v4, v11, [I

    aput v2, v4, v7

    .line 225
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_22
    const/16 v2, 0x1c

    new-array v3, v11, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 226
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_23
    const/16 v2, 0x1c

    new-array v3, v11, [I

    aput v20, v3, v7

    .line 227
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :goto_b
    if-eqz v5, :cond_25

    const/16 v2, 0x11

    if-eq v5, v2, :cond_24

    new-array v2, v11, [I

    const/16 v3, 0xff

    and-int/lit16 v4, v5, 0xff

    aput v4, v2, v7

    const/16 v3, 0x1b

    .line 228
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_24
    const/16 v3, 0x1b

    new-array v2, v11, [I

    const/4 v6, -0x3

    aput v6, v2, v7

    .line 229
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_25
    const/16 v3, 0x1b

    new-array v2, v11, [I

    aput v20, v2, v7

    .line 230
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v2, 0x36

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 231
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 233
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 234
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x0

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 235
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 236
    sget v2, Lk0/nt;->a:I

    const v3, 0x9008b

    if-eq v2, v3, :cond_26

    const v3, 0xa008b

    if-eq v2, v3, :cond_26

    const v3, 0x19008b

    if-eq v2, v3, :cond_26

    const v3, 0x18008b

    if-ne v2, v3, :cond_6f

    :cond_26
    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 237
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 238
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_4d
    const/16 v2, 0x34

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 239
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v11, [I

    .line 240
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v11, [I

    .line 241
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x2

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v11, [I

    .line 242
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_4e
    const/4 v6, -0x3

    .line 243
    sget v2, Lk0/nt;->a:I

    const/16 v10, 0x8b

    if-ne v2, v10, :cond_3b

    add-int/lit8 v2, p2, 0x2

    .line 244
    aget-byte v2, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 245
    aget-byte v10, v1, v10

    add-int/lit8 v12, p2, 0x6

    .line 246
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x7

    .line 247
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x8

    .line 248
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x9

    .line 249
    aget-byte v15, v1, v15

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    if-eq v15, v11, :cond_2b

    if-eq v15, v5, :cond_2a

    const/4 v5, 0x3

    if-eq v15, v5, :cond_29

    if-eq v15, v4, :cond_28

    if-eq v15, v3, :cond_27

    move v4, v7

    move v5, v4

    :goto_d
    move v15, v5

    goto :goto_e

    :cond_27
    move v5, v7

    move v15, v5

    move v4, v11

    goto :goto_e

    :cond_28
    move v5, v7

    move v4, v11

    move v15, v4

    goto :goto_e

    :cond_29
    move v4, v7

    move v5, v4

    move v15, v11

    goto :goto_e

    :cond_2a
    move v4, v7

    move v5, v11

    goto :goto_d

    :cond_2b
    move v4, v7

    move v15, v4

    move v5, v11

    :goto_e
    const/16 v6, 0x12

    new-array v3, v11, [I

    aput v4, v3, v7

    .line 250
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v11, [I

    aput v5, v4, v7

    .line 251
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v11, [I

    aput v15, v4, v7

    .line 252
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    const/16 v4, 0xd

    .line 253
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 254
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 255
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    and-int/2addr v2, v11

    aput v2, v3, v7

    const/16 v2, 0xa

    .line 256
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v7

    .line 257
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v11, [I

    shr-int/lit8 v4, v10, 0x3

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 258
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v11, [I

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 259
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 260
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v11, [I

    and-int/lit8 v4, v10, 0x1

    aput v4, v3, v7

    .line 261
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 262
    aget-byte v3, v1, v2

    const/4 v4, 0x5

    add-int/lit8 v5, p2, 0x5

    .line 263
    aget-byte v4, v1, v5

    const-string v6, "persist.fyt.reversetemp"

    .line 264
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 265
    aget-byte v3, v1, v5

    .line 266
    aget-byte v4, v1, v2

    :cond_2c
    shr-int/lit8 v1, v3, 0x2

    const/16 v2, 0x3f

    and-int/2addr v1, v2

    if-lez v1, :cond_2d

    if-ge v1, v8, :cond_2d

    move/from16 v5, v20

    goto :goto_f

    :cond_2d
    if-le v1, v9, :cond_2f

    const/16 v2, 0x31

    if-ge v1, v2, :cond_2f

    and-int/lit8 v2, v14, 0x1

    if-nez v2, :cond_2e

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit8 v5, v1, 0x50

    goto :goto_f

    :cond_2e
    const/16 v2, 0x30

    add-int/2addr v1, v2

    const/16 v5, 0xa

    mul-int/2addr v1, v5

    move v5, v1

    goto :goto_f

    :cond_2f
    const/16 v2, 0x30

    if-le v1, v2, :cond_30

    const/16 v2, 0x40

    if-ge v1, v2, :cond_30

    const/4 v5, -0x3

    goto :goto_f

    :cond_30
    const/4 v5, -0x1

    :goto_f
    new-array v1, v11, [I

    aput v5, v1, v7

    const/16 v2, 0x1b

    .line 267
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v11, [I

    const/4 v5, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 268
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v4, 0x2

    const/16 v2, 0x3f

    and-int/2addr v1, v2

    if-lez v1, :cond_31

    if-ge v1, v8, :cond_31

    move/from16 v5, v20

    goto :goto_10

    :cond_31
    if-le v1, v9, :cond_33

    const/16 v2, 0x31

    if-ge v1, v2, :cond_33

    and-int/lit8 v2, v14, 0x1

    if-nez v2, :cond_32

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v5, v2, 0x50

    goto :goto_10

    :cond_32
    add-int/lit8 v2, v1, 0x30

    const/16 v3, 0xa

    mul-int/lit8 v5, v2, 0xa

    goto :goto_10

    :cond_33
    const/16 v2, 0x30

    if-le v1, v2, :cond_34

    const/16 v2, 0x40

    if-ge v1, v2, :cond_34

    const/4 v5, -0x3

    goto :goto_10

    :cond_34
    const/4 v5, -0x1

    :goto_10
    const/16 v2, 0x1c

    new-array v3, v11, [I

    aput v5, v3, v7

    .line 269
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v11, [I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 270
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v12, 0xff

    if-lez v3, :cond_36

    if-ge v3, v2, :cond_36

    and-int/lit8 v2, v14, 0x1

    if-nez v2, :cond_35

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x190

    goto :goto_11

    :cond_35
    const/16 v2, 0x30

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    const v2, 0x8000

    or-int/2addr v1, v2

    :goto_11
    add-int/lit16 v1, v1, 0x3e8

    .line 271
    invoke-static {v1}, Lu0/d;->A3(I)V

    :cond_36
    const/16 v1, 0x2c

    new-array v2, v11, [I

    shr-int/lit8 v3, v13, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v7

    .line 272
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x27

    new-array v2, v11, [I

    shr-int/lit8 v3, v13, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 273
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v11, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 274
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x36

    new-array v2, v11, [I

    shr-int/lit8 v3, v13, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 275
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3a

    new-array v2, v11, [I

    shr-int/lit8 v3, v13, 0x0

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 276
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v14, 0x2

    if-lez v1, :cond_37

    if-ge v1, v8, :cond_37

    move/from16 v8, v20

    goto :goto_12

    :cond_37
    if-le v1, v9, :cond_39

    const/16 v2, 0x31

    if-ge v1, v2, :cond_39

    and-int/lit8 v2, v14, 0x1

    if-nez v2, :cond_38

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit8 v8, v1, 0x50

    goto :goto_12

    :cond_38
    const/16 v2, 0x30

    add-int/2addr v1, v2

    const/16 v2, 0xa

    mul-int/lit8 v8, v1, 0xa

    goto :goto_12

    :cond_39
    const/16 v2, 0x30

    if-le v1, v2, :cond_3a

    const/16 v2, 0x40

    if-ge v1, v2, :cond_3a

    const/4 v8, -0x3

    goto :goto_12

    :cond_3a
    const/4 v8, -0x1

    :goto_12
    const/16 v1, 0x28

    new-array v2, v11, [I

    aput v8, v2, v7

    .line 277
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v11, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 278
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_3b
    const v3, 0x4008b

    if-eq v2, v3, :cond_3c

    const v3, 0x2f008b

    if-eq v2, v3, :cond_3c

    const v3, 0x30008b

    if-eq v2, v3, :cond_3c

    const v3, 0x5008b

    if-eq v2, v3, :cond_3c

    const v3, 0x6008b

    if-eq v2, v3, :cond_3c

    const v3, 0x7008b

    if-ne v2, v3, :cond_6f

    :cond_3c
    add-int/lit8 v2, p2, 0x2

    .line 279
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 280
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 281
    iput v2, v0, Lk0/x3;->g:I

    move v2, v7

    .line 282
    :goto_13
    iget-object v3, v0, Lk0/x3;->h:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3e

    .line 283
    iget v4, v0, Lk0/x3;->g:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_3d

    if-eqz v4, :cond_3e

    .line 284
    iput v2, v0, Lk0/x3;->f:I

    goto :goto_14

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 285
    :cond_3e
    :goto_14
    iget v4, v0, Lk0/x3;->g:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_46

    if-eq v4, v8, :cond_44

    const/16 v5, 0x11

    if-eq v4, v5, :cond_42

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v11, :cond_3f

    .line 286
    array-length v1, v3

    if-ge v2, v1, :cond_6f

    .line 287
    iget-byte v1, v0, Lk0/x3;->o:B

    if-nez v1, :cond_6f

    add-int/2addr v1, v11

    int-to-byte v1, v1

    .line 288
    iput-byte v1, v0, Lk0/x3;->o:B

    .line 289
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 290
    iget-object v1, v0, Lk0/x3;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_21

    :cond_3f
    if-nez v1, :cond_6f

    .line 291
    iget v1, v0, Lk0/x3;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_40

    const/16 v2, 0xff

    if-eq v1, v2, :cond_41

    .line 292
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 293
    iget-object v1, v0, Lk0/x3;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 294
    iput-byte v7, v0, Lk0/x3;->o:B

    goto :goto_15

    :cond_40
    const/16 v2, 0xff

    .line 295
    :cond_41
    :goto_15
    iput v2, v0, Lk0/x3;->f:I

    goto/16 :goto_21

    :cond_42
    const/16 v2, 0xff

    move v3, v7

    :goto_16
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_43

    .line 296
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 297
    :cond_43
    invoke-static {v15, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_44
    const/16 v2, 0xff

    move v3, v7

    :goto_17
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_45

    const/16 v4, 0x8

    .line 298
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_45
    const/16 v4, 0x8

    .line 299
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_46
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v11, :cond_6f

    .line 300
    sget v1, Lu0/b;->o:I

    if-ne v1, v11, :cond_47

    .line 301
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_21

    :cond_47
    if-nez v1, :cond_6f

    .line 302
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_21

    .line 303
    :pswitch_4f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_6f

    add-int/lit8 v2, p2, 0x2

    .line 304
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v6, p2, 0x3

    .line 305
    aget-byte v1, v1, v6

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 306
    iput v2, v0, Lk0/x3;->c:I

    move v2, v7

    .line 307
    :goto_18
    iget-object v3, v0, Lk0/x3;->e:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_4a

    .line 308
    iget v6, v0, Lk0/x3;->c:I

    aget-object v10, v3, v2

    aget v10, v10, v7

    if-ne v6, v10, :cond_49

    if-eqz v6, :cond_48

    .line 309
    iput v2, v0, Lk0/x3;->b:I

    .line 310
    :cond_48
    iput v6, v0, Lk0/x3;->d:I

    goto :goto_19

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 311
    :cond_4a
    :goto_19
    iget v6, v0, Lk0/x3;->d:I

    if-ne v6, v9, :cond_4c

    iget v6, v0, Lk0/x3;->c:I

    if-nez v6, :cond_4c

    .line 312
    iget-boolean v1, v0, Lk0/x3;->n:Z

    if-nez v1, :cond_4b

    .line 313
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 314
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto :goto_1a

    .line 315
    :cond_4b
    iput-boolean v7, v0, Lk0/x3;->n:Z

    .line 316
    :goto_1a
    iget v1, v0, Lk0/x3;->c:I

    iput v1, v0, Lk0/x3;->d:I

    goto/16 :goto_21

    .line 317
    :cond_4c
    iget v6, v0, Lk0/x3;->c:I

    const/16 v10, -0x50

    if-eq v6, v10, :cond_57

    const/16 v10, 0x40

    if-eq v6, v10, :cond_55

    const/16 v10, 0xb0

    if-eq v6, v10, :cond_6f

    if-eq v6, v9, :cond_53

    if-eq v6, v8, :cond_50

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v11, :cond_4d

    .line 318
    array-length v1, v3

    if-ge v2, v1, :cond_6f

    .line 319
    iget-byte v1, v0, Lk0/x3;->o:B

    if-nez v1, :cond_6f

    add-int/2addr v1, v11

    int-to-byte v1, v1

    .line 320
    iput-byte v1, v0, Lk0/x3;->o:B

    .line 321
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 322
    iget-object v1, v0, Lk0/x3;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_21

    :cond_4d
    if-nez v1, :cond_6f

    .line 323
    iget v1, v0, Lk0/x3;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_4e

    const/16 v2, 0xff

    if-eq v1, v2, :cond_4f

    .line 324
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 325
    iget-object v1, v0, Lk0/x3;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 326
    iput-byte v7, v0, Lk0/x3;->o:B

    goto :goto_1b

    :cond_4e
    const/16 v2, 0xff

    .line 327
    :cond_4f
    :goto_1b
    iput v2, v0, Lk0/x3;->b:I

    goto/16 :goto_21

    :cond_50
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v11, :cond_6f

    .line 328
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_52

    if-eq v1, v4, :cond_51

    const/4 v2, 0x5

    if-eq v1, v2, :cond_52

    const/16 v1, 0xd

    .line 329
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 330
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_51
    const/16 v1, 0x12

    .line 331
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 332
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_52
    const/16 v1, 0x1a

    .line 333
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 334
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    .line 335
    :cond_53
    iget v2, v0, Lk0/x3;->m:I

    if-eq v2, v1, :cond_6f

    .line 336
    iput v1, v0, Lk0/x3;->m:I

    if-ne v1, v11, :cond_54

    .line 337
    iput-boolean v7, v0, Lk0/x3;->n:Z

    goto/16 :goto_21

    :cond_54
    if-ne v1, v5, :cond_6f

    .line 338
    iput-boolean v11, v0, Lk0/x3;->n:Z

    const/16 v1, 0xd

    .line 339
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 340
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_55
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v11, :cond_6f

    .line 341
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 342
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_21

    .line 343
    :cond_56
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 344
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_21

    :cond_57
    const/16 v2, 0xd8

    new-array v3, v11, [I

    aput v1, v3, v7

    .line 345
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_58
    add-int/lit8 v2, p2, 0x2

    .line 346
    aget-byte v3, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 347
    aget-byte v6, v1, v3

    .line 348
    sget v8, Lk0/nt;->a:I

    const v9, 0xf008b

    if-eq v8, v9, :cond_5a

    .line 349
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v8

    if-nez v8, :cond_5a

    .line 350
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eqz v2, :cond_59

    .line 351
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto :goto_1c

    .line 352
    :cond_59
    invoke-static {v7}, Lk0/qt;->a(I)V

    .line 353
    :cond_5a
    :goto_1c
    sget v2, Lk0/nt;->a:I

    const v8, 0xd008b

    if-eq v2, v8, :cond_5d

    const v8, 0xf008b

    if-ne v2, v8, :cond_5b

    goto :goto_1d

    :cond_5b
    const v4, 0x13008b

    if-ne v2, v4, :cond_5c

    const/16 v2, 0x3f5

    new-array v4, v11, [I

    const/4 v8, 0x3

    add-int/lit8 v8, p2, 0x3

    .line 354
    aget-byte v8, v1, v8

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    const v9, 0xff00

    and-int/2addr v8, v9

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v8

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :cond_5c
    const/16 v2, 0x3f5

    new-array v3, v11, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 355
    aget-byte v1, v1, v4

    const/16 v4, 0x8

    shl-int/2addr v1, v4

    const v4, 0xff00

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :cond_5d
    :goto_1d
    add-int/lit8 v2, p2, 0x3

    .line 356
    aget-byte v3, v1, v2

    iput v3, v0, Lk0/x3;->z:I

    add-int/lit8 v3, p2, 0x4

    .line 357
    aget-byte v4, v1, v3

    shr-int/2addr v4, v14

    and-int/2addr v4, v11

    iput v4, v0, Lk0/x3;->A:I

    .line 358
    aget-byte v4, v1, v3

    shr-int/2addr v4, v15

    and-int/2addr v4, v11

    iput v4, v0, Lk0/x3;->B:I

    const/16 v4, 0x3f5

    new-array v8, v11, [I

    .line 359
    aget-byte v2, v1, v2

    const/16 v9, 0x8

    shl-int/2addr v2, v9

    const v9, 0xff00

    and-int/2addr v2, v9

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, v8, v7

    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    :goto_1e
    const/16 v1, 0x91

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 360
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x92

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 361
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x93

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 362
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x94

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 363
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x95

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 364
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x96

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 365
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    .line 366
    :cond_5e
    sget v2, Lk0/x3;->m0:I

    if-ne v2, v11, :cond_6f

    add-int/lit8 v2, p2, 0x2

    .line 367
    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_5f

    .line 368
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 369
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_21

    .line 370
    :cond_5f
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 371
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_21

    .line 372
    :cond_60
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_61
    add-int/lit8 v2, p2, 0x2

    .line 373
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v11, :cond_66

    if-eq v2, v14, :cond_65

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_64

    const/4 v3, 0x3

    if-eq v2, v3, :cond_63

    if-eq v2, v4, :cond_62

    packed-switch v2, :pswitch_data_9

    goto/16 :goto_21

    :pswitch_50
    const/16 v2, 0x408

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 374
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_51
    const/16 v3, 0xff

    add-int/lit8 v2, p2, 0x4

    .line 375
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x28

    .line 376
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v5, v8, v7

    aput v4, v8, v11

    const/16 v4, 0x419

    const/4 v5, 0x0

    invoke-static {v6, v4, v8, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 377
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 378
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_21

    :pswitch_52
    add-int/lit8 v2, p2, 0x3

    .line 379
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 380
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 381
    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    .line 382
    iput-boolean v11, v0, Lk0/x3;->y:Z

    goto/16 :goto_21

    :cond_62
    add-int/lit8 v2, p2, 0x7

    .line 383
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa

    div-int/2addr v1, v2

    .line 384
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    const/4 v4, 0x5

    aput v4, v3, v7

    aput v1, v3, v11

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_63
    add-int/lit8 v2, p2, 0x4

    .line 385
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v11, [I

    aput v1, v3, v7

    .line 386
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 387
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    aput v11, v3, v7

    aput v1, v3, v11

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_64
    const/16 v2, 0xf7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 388
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 389
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 390
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 391
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 392
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v3, v11, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 393
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    .line 394
    :cond_65
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    const/16 v6, 0xc

    aput v6, v3, v7

    add-int/lit8 v6, p2, 0x3

    aget-byte v8, v1, v6

    shr-int/2addr v8, v14

    and-int/2addr v8, v11

    aput v8, v3, v11

    const/16 v8, 0x419

    const/4 v10, 0x0

    invoke-static {v2, v8, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    const/4 v12, 0x3

    aput v12, v3, v7

    .line 395
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v11

    aput v6, v3, v11

    invoke-static {v2, v8, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x4

    .line 396
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v3, v11

    invoke-static {v2, v8, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_66
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 397
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_67

    add-int/lit8 v2, p2, 0x3

    .line 398
    aget-byte v3, v1, v2

    const/4 v6, 0x3

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v11

    invoke-static {v3, v2, v7}, Ll0/c0;->b(III)V

    goto :goto_1f

    :cond_67
    const/4 v6, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 399
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v11

    invoke-static {v3, v2, v7}, Ll0/c0;->a(III)V

    .line 400
    :goto_1f
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    const/16 v4, 0xb

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v11

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_68
    const/16 v2, 0xde

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 401
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v11, [I

    .line 402
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v3, v11, [I

    .line 403
    aget-byte v4, v1, v4

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 404
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 405
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 406
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 407
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_69
    const/16 v2, 0xe7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 408
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_6a
    add-int/lit8 v2, p2, 0x2

    .line 409
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 410
    aget-byte v1, v1, v3

    const/16 v3, 0x67

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 411
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 412
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v11, [I

    and-int/2addr v2, v9

    aput v2, v4, v7

    .line 413
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 414
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 415
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    and-int/2addr v1, v9

    aput v1, v3, v7

    .line 416
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    .line 417
    :cond_6b
    iget-boolean v2, v0, Lk0/x3;->y:Z

    if-nez v2, :cond_6f

    add-int/lit8 v2, p2, 0x3

    .line 418
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1545

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_21

    :cond_6c
    add-int/lit8 v2, p2, 0x2

    .line 419
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6d

    const/16 v1, 0xa

    mul-int/2addr v2, v1

    rsub-int v1, v2, 0x3e8

    goto :goto_20

    :cond_6d
    const/16 v1, 0xa

    mul-int/2addr v2, v1

    add-int/lit16 v1, v2, 0x3e8

    :goto_20
    const/16 v2, 0x258

    if-le v1, v2, :cond_6e

    .line 420
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_21

    .line 421
    :cond_6e
    invoke-static {v7}, Lu0/d;->A3(I)V

    :cond_6f
    :goto_21
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_41
        :pswitch_40
        :pswitch_3f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x11
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1e
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x29
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x55
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9008b -> :sswitch_0
        0xa008b -> :sswitch_0
        0xb008b -> :sswitch_0
        0xc008b -> :sswitch_0
        0xd008b -> :sswitch_0
        0xe008b -> :sswitch_0
        0xf008b -> :sswitch_0
        0x11008b -> :sswitch_0
        0x12008b -> :sswitch_0
        0x13008b -> :sswitch_0
        0x14008b -> :sswitch_0
        0x15008b -> :sswitch_0
        0x16008b -> :sswitch_0
        0x17008b -> :sswitch_0
        0x18008b -> :sswitch_0
        0x19008b -> :sswitch_0
        0x1a008b -> :sswitch_0
        0x1b008b -> :sswitch_0
        0x1c008b -> :sswitch_0
        0x1d008b -> :sswitch_0
        0x1e008b -> :sswitch_0
        0x1f008b -> :sswitch_0
        0x20008b -> :sswitch_0
        0x21008b -> :sswitch_0
        0x22008b -> :sswitch_0
        0x23008b -> :sswitch_0
        0x25008b -> :sswitch_0
        0x26008b -> :sswitch_0
        0x27008b -> :sswitch_0
        0x28008b -> :sswitch_0
        0x29008b -> :sswitch_0
        0x2a008b -> :sswitch_0
        0x2d008b -> :sswitch_0
        0x31008b -> :sswitch_0
        0x32008b -> :sswitch_0
        0x33008b -> :sswitch_0
        0x34008b -> :sswitch_0
        0x36008b -> :sswitch_0
        0x37008b -> :sswitch_0
        0x38008b -> :sswitch_0
        0x39008b -> :sswitch_0
        0x3a008b -> :sswitch_0
        0x3b008b -> :sswitch_0
        0x3c008b -> :sswitch_0
        0x3d008b -> :sswitch_0
        0x3e008b -> :sswitch_0
        0x3f008b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x8
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/x3;->g0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/x3;->W:Lo1/o;

    sput-object v0, Le/c;->w:Lo1/o;

    .line 4
    iget-object v0, p0, Lk0/x3;->X:Lo1/o;

    sput-object v0, Le/c;->x:Lo1/o;

    .line 5
    iget-object v0, p0, Lk0/x3;->Y:Lo1/o;

    sput-object v0, Le/c;->y:Lo1/o;

    .line 6
    iget-object v0, p0, Lk0/x3;->Z:Lo1/o;

    sput-object v0, Le/c;->z:Lo1/o;

    .line 7
    iget-object v0, p0, Lk0/x3;->Q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/x3;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/x3;->k0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/x3;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/x3;->c0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/x3;->d0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/x3;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xfd

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v9, 0xd

    const/16 v10, 0x9

    const/4 v11, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x8

    const/16 v15, 0xe3

    const/4 v3, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x4

    const/4 v12, 0x1

    const/4 v8, 0x0

    if-eq v1, v9, :cond_17

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_16

    const/16 v9, 0x3eb

    const v5, 0x3f008b

    if-eq v1, v9, :cond_e

    const/16 v9, 0x3ed

    const/16 v16, -0x7e

    if-eq v1, v9, :cond_2

    const/16 v9, 0x405

    if-eq v1, v9, :cond_a

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_18

    .line 1
    array-length v1, v2

    if-lez v1, :cond_18

    .line 2
    aget v1, v2, v8

    invoke-virtual {v0, v1}, Lk0/x3;->u3(I)V

    goto/16 :goto_4

    :pswitch_1
    if-eqz v2, :cond_18

    .line 3
    array-length v1, v2

    if-lez v1, :cond_18

    .line 4
    aget v1, v2, v8

    aget v3, v2, v12

    aget v2, v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lk0/x3;->s3(III)V

    goto/16 :goto_4

    :pswitch_2
    if-eqz v2, :cond_18

    .line 5
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v3, [I

    aput v15, v1, v8

    const/16 v3, -0x7d

    aput v3, v1, v12

    aput v4, v1, v4

    .line 6
    aget v3, v2, v8

    aput v3, v1, v6

    aget v2, v2, v12

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_3
    if-eqz v2, :cond_18

    .line 7
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v3, [I

    aput v15, v1, v8

    const/16 v3, -0x70

    aput v3, v1, v12

    aput v4, v1, v4

    .line 8
    aget v3, v2, v8

    aput v3, v1, v6

    aget v2, v2, v12

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_4
    if-eqz v2, :cond_18

    .line 9
    array-length v1, v2

    if-lez v1, :cond_18

    .line 10
    iput v8, v0, Lk0/x3;->l0:I

    .line 11
    aget v1, v2, v8

    invoke-virtual {v0, v1}, Lk0/x3;->r3(I)V

    goto/16 :goto_4

    :pswitch_5
    if-eqz v2, :cond_18

    .line 12
    array-length v1, v2

    if-lez v1, :cond_18

    .line 13
    aget v1, v2, v8

    if-eqz v1, :cond_0

    .line 14
    iget v1, v0, Lk0/x3;->l0:I

    add-int/2addr v1, v12

    iput v1, v0, Lk0/x3;->l0:I

    goto :goto_0

    .line 15
    :cond_0
    iput v8, v0, Lk0/x3;->l0:I

    :goto_0
    const/16 v1, 0xc2

    new-array v2, v12, [I

    .line 16
    iget v3, v0, Lk0/x3;->l0:I

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_6
    if-eqz v2, :cond_18

    .line 17
    array-length v1, v2

    if-lez v1, :cond_18

    .line 18
    aget v1, v2, v8

    invoke-virtual {v0, v1}, Lk0/x3;->t3(I)V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v2, :cond_18

    .line 19
    array-length v1, v2

    if-le v1, v4, :cond_18

    new-array v1, v13, [I

    aput v15, v1, v8

    const/16 v5, -0x3a

    aput v5, v1, v12

    aput v6, v1, v4

    .line 20
    aget v5, v2, v8

    aput v5, v1, v6

    aget v5, v2, v12

    aput v5, v1, v7

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_8
    if-eqz v2, :cond_18

    .line 21
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v7, [I

    aput v15, v1, v8

    aput v16, v1, v12

    aput v12, v1, v4

    .line 22
    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_9
    if-eqz v2, :cond_18

    .line 23
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v3, [I

    aput v15, v1, v8

    const/16 v5, -0x80

    aput v5, v1, v12

    aput v4, v1, v4

    .line 24
    aget v5, v2, v8

    aput v5, v1, v6

    aget v5, v2, v12

    aput v5, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 25
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v1, v3, [I

    aput v15, v1, v8

    const/16 v3, -0x70

    aput v3, v1, v12

    aput v4, v1, v4

    const/16 v3, 0x4e

    aput v3, v1, v6

    .line 26
    aget v2, v2, v8

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_a
    if-eqz v2, :cond_18

    .line 27
    array-length v1, v2

    if-lez v1, :cond_18

    .line 28
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v12, :cond_1

    sget v1, Lk0/nt;->a:I

    const/16 v5, 0x8b

    if-ne v1, v5, :cond_1

    .line 29
    invoke-virtual {v0, v2}, Lk0/x3;->q3([I)V

    goto/16 :goto_4

    :cond_1
    new-array v1, v10, [I

    aput v15, v1, v8

    const/16 v5, -0x76

    aput v5, v1, v12

    aput v13, v1, v4

    .line 30
    aget v5, v2, v8

    aput v5, v1, v6

    aget v5, v2, v12

    aput v5, v1, v7

    aget v4, v2, v4

    aput v4, v1, v3

    aget v4, v2, v6

    aput v4, v1, v13

    aget v4, v2, v7

    aput v4, v1, v11

    aget v2, v2, v3

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_2
    if-eqz v2, :cond_a

    .line 31
    array-length v1, v2

    if-lez v1, :cond_a

    .line 32
    aget v1, v2, v8

    if-gt v1, v12, :cond_3

    new-array v1, v7, [I

    aput v15, v1, v8

    aput v16, v1, v12

    aput v12, v1, v4

    .line 33
    aget v9, v2, v8

    add-int/2addr v9, v7

    aput v9, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 34
    :cond_3
    aget v1, v2, v8

    if-ne v1, v7, :cond_5

    .line 35
    iget v1, v0, Lk0/x3;->B:I

    if-ne v1, v12, :cond_4

    new-array v1, v7, [I

    .line 36
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array v1, v7, [I

    .line 37
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 38
    :cond_5
    aget v1, v2, v8

    if-ne v1, v3, :cond_7

    .line 39
    iget v1, v0, Lk0/x3;->A:I

    if-ne v1, v12, :cond_6

    new-array v1, v7, [I

    .line 40
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_6
    new-array v1, v7, [I

    .line 41
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 42
    :cond_7
    aget v1, v2, v8

    if-ne v1, v13, :cond_9

    .line 43
    iget v1, v0, Lk0/x3;->z:I

    if-ne v1, v3, :cond_8

    new-array v1, v7, [I

    .line 44
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_8
    new-array v1, v7, [I

    .line 45
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_9
    new-array v1, v7, [I

    aput v15, v1, v8

    aput v16, v1, v12

    aput v12, v1, v4

    .line 46
    aget v9, v2, v8

    aput v9, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_a
    :goto_1
    if-eqz v2, :cond_18

    .line 47
    array-length v1, v2

    if-lt v1, v6, :cond_18

    .line 48
    sget v1, Lk0/nt;->a:I

    if-ne v1, v5, :cond_d

    .line 49
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " FinalCanbus.C_CMD_360_TOUCH  touch_x == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "--------touch_y == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 50
    aget v1, v2, v12

    mul-int/lit16 v1, v1, 0x500

    invoke-static {}, La/f;->w()I

    move-result v5

    div-int/2addr v1, v5

    .line 51
    aget v5, v2, v4

    mul-int/lit16 v5, v5, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v9

    div-int/2addr v5, v9

    .line 52
    aget v9, v2, v8

    if-nez v9, :cond_b

    const/16 v9, 0xe

    new-array v2, v9, [I

    aput v15, v2, v8

    const/16 v9, 0xef

    aput v9, v2, v12

    const/16 v9, 0xb

    aput v9, v2, v4

    const/16 v4, 0x7d

    aput v4, v2, v6

    const/16 v4, 0xf2

    aput v4, v2, v7

    aput v12, v2, v3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v13

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v11

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    and-int/lit16 v1, v5, 0xff

    const/16 v3, 0x9

    aput v1, v2, v3

    const/16 v1, 0xa

    aput v8, v2, v1

    const/16 v9, 0xb

    aput v8, v2, v9

    const/16 v1, 0xc

    aput v8, v2, v1

    const/16 v1, 0xd

    aput v8, v2, v1

    .line 53
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_b
    const/16 v9, 0xb

    .line 54
    aget v10, v2, v8

    if-ne v10, v12, :cond_c

    const/16 v10, 0xe

    new-array v2, v10, [I

    aput v15, v2, v8

    const/16 v10, 0xef

    aput v10, v2, v12

    aput v9, v2, v4

    const/16 v4, 0x7d

    aput v4, v2, v6

    const/16 v4, 0xf2

    aput v4, v2, v7

    aput v8, v2, v3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v13

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v11

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    and-int/lit16 v1, v5, 0xff

    const/16 v3, 0x9

    aput v1, v2, v3

    const/16 v1, 0xa

    aput v8, v2, v1

    const/16 v9, 0xb

    aput v8, v2, v9

    const/16 v1, 0xc

    aput v8, v2, v1

    const/16 v1, 0xd

    aput v8, v2, v1

    .line 55
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 56
    :cond_c
    aget v2, v2, v8

    if-ne v2, v4, :cond_18

    const/16 v2, 0xe

    new-array v2, v2, [I

    aput v15, v2, v8

    const/16 v10, 0xef

    aput v10, v2, v12

    aput v9, v2, v4

    const/16 v4, 0x7d

    aput v4, v2, v6

    const/16 v4, 0xf2

    aput v4, v2, v7

    aput v12, v2, v3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v13

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v11

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    and-int/lit16 v1, v5, 0xff

    const/16 v3, 0x9

    aput v1, v2, v3

    const/16 v1, 0xa

    aput v8, v2, v1

    const/16 v1, 0xb

    aput v8, v2, v1

    const/16 v1, 0xc

    aput v8, v2, v1

    const/16 v1, 0xd

    aput v8, v2, v1

    .line 57
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 58
    :cond_d
    aget v1, v2, v8

    if-nez v1, :cond_18

    new-array v1, v11, [I

    aput v15, v1, v8

    const/16 v5, -0x7d

    aput v5, v1, v12

    aput v7, v1, v4

    .line 59
    aget v5, v2, v12

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    aget v5, v2, v12

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v7

    aget v5, v2, v4

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v3

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_e
    if-eqz v2, :cond_18

    .line 60
    array-length v1, v2

    if-lez v1, :cond_18

    .line 61
    sget v1, Lk0/nt;->a:I

    const v3, 0xf008b

    if-eq v1, v3, :cond_14

    const v3, 0x3d008b

    if-ne v1, v3, :cond_f

    goto :goto_3

    :cond_f
    const v3, 0xd008b

    if-eq v1, v3, :cond_12

    const v3, 0x4008b

    if-eq v1, v3, :cond_12

    const v3, 0x2f008b

    if-eq v1, v3, :cond_12

    if-ne v1, v5, :cond_10

    goto :goto_2

    .line 62
    :cond_10
    aget v1, v2, v8

    if-ne v1, v12, :cond_11

    new-array v1, v7, [I

    .line 63
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_11
    new-array v1, v7, [I

    .line 64
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 65
    :cond_12
    :goto_2
    sget v1, Lu0/b;->o:I

    if-ne v1, v12, :cond_13

    new-array v1, v7, [I

    .line 66
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_13
    new-array v1, v7, [I

    .line 67
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 68
    :cond_14
    :goto_3
    aget v1, v2, v8

    if-ne v1, v12, :cond_15

    new-array v1, v7, [I

    .line 69
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    .line 70
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_4

    .line 71
    :cond_15
    invoke-static {v12}, Lk0/qt;->a(I)V

    new-array v1, v7, [I

    .line 72
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 73
    :cond_16
    invoke-virtual {v0, v2, v4}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0xb

    new-array v1, v1, [I

    aput v15, v1, v8

    const/16 v5, 0xef

    aput v5, v1, v12

    aput v14, v1, v4

    const/16 v5, 0x7d

    aput v5, v1, v6

    const/16 v5, 0xf0

    aput v5, v1, v7

    .line 74
    aget v5, v2, v8

    aput v5, v1, v3

    aget v5, v2, v12

    aput v5, v1, v13

    aget v4, v2, v4

    aput v4, v1, v11

    aget v4, v2, v6

    aput v4, v1, v14

    aget v4, v2, v7

    const/16 v5, 0x9

    aput v4, v1, v5

    aget v2, v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_17
    const/16 v1, 0xe

    new-array v1, v1, [I

    aput v15, v1, v8

    const/16 v5, 0xef

    aput v5, v1, v12

    const/16 v5, 0xb

    aput v5, v1, v4

    const/16 v5, 0x7d

    aput v5, v1, v6

    const/16 v5, 0xf2

    aput v5, v1, v7

    .line 75
    aget v5, v2, v8

    aput v5, v1, v3

    aget v3, v2, v12

    aput v3, v1, v13

    aget v3, v2, v4

    aput v3, v1, v11

    aget v3, v2, v6

    aput v3, v1, v14

    aget v2, v2, v7

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0xa

    aput v8, v1, v2

    const/16 v2, 0xb

    aput v8, v1, v2

    const/16 v2, 0xc

    aput v8, v1, v2

    const/16 v2, 0xd

    aput v8, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_18
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x6
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7e
        0x1
        0xb
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7e
        0x1
        0xa
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x9
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x8
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data
.end method

.method public final a3(II)V
    .locals 15

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, -0x76

    const/4 v9, 0x1

    const/16 v10, 0xe3

    const/16 v11, 0xb

    const/16 v12, 0x8

    const/4 v13, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput v13, v14, v5

    aput v13, v14, v4

    aput v13, v14, v3

    aput v13, v14, v2

    aput v13, v14, v12

    aput v13, v14, v1

    aput p1, v14, v0

    .line 1
    invoke-static {v14}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput v13, v14, v5

    aput v13, v14, v4

    aput v13, v14, v3

    aput v13, v14, v2

    aput v13, v14, v12

    aput p1, v14, v1

    aput v13, v14, v0

    .line 2
    invoke-static {v14}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput v13, v14, v5

    aput v13, v14, v4

    aput v13, v14, v3

    aput v13, v14, v2

    aput p1, v14, v12

    aput v13, v14, v1

    aput v13, v14, v0

    .line 3
    invoke-static {v14}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput v13, v14, v5

    aput v13, v14, v4

    aput v13, v14, v3

    aput p1, v14, v2

    aput v13, v14, v12

    aput v13, v14, v1

    aput v13, v14, v0

    .line 4
    invoke-static {v14}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput v13, v14, v5

    aput v13, v14, v4

    aput p1, v14, v3

    aput v13, v14, v2

    aput v13, v14, v12

    aput v13, v14, v1

    aput v13, v14, v0

    .line 5
    invoke-static {v14}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput v13, v14, v5

    aput p1, v14, v4

    aput v13, v14, v3

    aput v13, v14, v2

    aput v13, v14, v12

    aput v13, v14, v1

    aput v13, v14, v0

    .line 6
    invoke-static {v14}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput v13, v14, v6

    aput p1, v14, v5

    aput v13, v14, v4

    aput v13, v14, v3

    aput v13, v14, v2

    aput v13, v14, v12

    aput v13, v14, v1

    aput v13, v14, v0

    .line 7
    invoke-static {v14}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v14, v11, [I

    aput v10, v14, v13

    aput v8, v14, v9

    aput v12, v14, v7

    aput p1, v14, v6

    aput v13, v14, v5

    aput v13, v14, v4

    aput v13, v14, v3

    aput v13, v14, v2

    aput v13, v14, v12

    aput v13, v14, v1

    aput v13, v14, v0

    .line 8
    invoke-static {v14}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 v0, 0x32

    .line 9
    invoke-static {v0, v1}, La/i;->a0(J)V

    new-array v0, v11, [I

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x76
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v1, p0, Lk0/x3;->j:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/x3;->j:I

    .line 5
    iput v0, p0, Lk0/x3;->k:I

    .line 6
    iput v0, p0, Lk0/x3;->l:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/x3;->i:[B

    iget v2, p0, Lk0/x3;->j:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/x3;->j:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/x3;->j:I

    .line 9
    iget p1, p0, Lk0/x3;->l:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/x3;->i:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/x3;->l:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/x3;->i:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/x3;->i:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/x3;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/x3;->l:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/x3;->k:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/x3;->k:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/x3;->l:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/x3;->j:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/x3;->k:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/x3;->i:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/x3;->l:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/x3;->l:I

    .line 23
    iget v6, p0, Lk0/x3;->j:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/x3;->l:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/x3;->l:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/x3;->i:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/x3;->i:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/x3;->k:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/x3;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/x3;->l:I

    iput v1, p0, Lk0/x3;->k:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/x3;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/x3;->k:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/x3;->l:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/x3;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/x3;->k:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/x3;->j:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/x3;->j:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/x3;->i:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/x3;->k:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final c3()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lk0/x3;->K:I

    if-lez v1, :cond_7

    sget-object v2, Lk0/x3;->s0:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v3, v0, Lk0/x3;->G:I

    mul-int/lit8 v4, v3, 0xa

    .line 3
    iget v5, v0, Lk0/x3;->F:I

    mul-int/lit8 v6, v5, 0xa

    .line 4
    iget v7, v0, Lk0/x3;->I:I

    div-int/lit16 v8, v7, 0xe10

    .line 5
    rem-int/lit16 v7, v7, 0xe10

    div-int/lit8 v7, v7, 0x3c

    const/4 v9, 0x2

    const/16 v10, 0xc

    const/4 v11, 0x1

    const/16 v12, 0xb

    const/4 v13, 0x0

    if-eq v1, v12, :cond_3

    if-eq v1, v10, :cond_3

    const/16 v14, 0x11

    if-eq v1, v14, :cond_3

    const/16 v14, 0x12

    if-ne v1, v14, :cond_1

    goto :goto_0

    :cond_1
    const/16 v14, 0xf

    if-ne v1, v14, :cond_2

    move v14, v9

    goto :goto_1

    :cond_2
    move v14, v13

    goto :goto_1

    :cond_3
    :goto_0
    move v14, v11

    .line 6
    :goto_1
    iget v15, v0, Lk0/x3;->M:I

    if-nez v15, :cond_4

    iget v15, v0, Lk0/x3;->L:I

    if-nez v15, :cond_4

    move v15, v13

    goto :goto_2

    :cond_4
    const/16 v15, 0x80

    :goto_2
    const/16 v10, 0x3e8

    if-le v5, v10, :cond_5

    or-int/lit8 v15, v15, 0x20

    .line 7
    div-int/lit16 v6, v6, 0x3e8

    :cond_5
    if-le v3, v10, :cond_6

    or-int/lit8 v15, v15, 0x40

    .line 8
    div-int/lit16 v4, v4, 0x3e8

    :cond_6
    const/16 v3, 0xd

    new-array v3, v3, [I

    const/16 v5, 0xe3

    aput v5, v3, v13

    const/16 v5, 0xb0

    aput v5, v3, v11

    const/16 v5, 0xa

    aput v5, v3, v9

    const/4 v9, 0x3

    aput v15, v3, v9

    const/4 v9, 0x4

    and-int/lit16 v10, v4, 0xff

    aput v10, v3, v9

    const/4 v9, 0x5

    const/16 v10, 0x8

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    const/4 v4, 0x6

    and-int/lit16 v9, v6, 0xff

    aput v9, v3, v4

    const/4 v4, 0x7

    shr-int/2addr v6, v10

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v4

    and-int/lit16 v4, v8, 0xff

    aput v4, v3, v10

    const/16 v4, 0x9

    shr-int/lit8 v6, v8, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v4

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v5

    .line 9
    aget v1, v2, v1

    aput v1, v3, v12

    const/16 v1, 0xc

    aput v14, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public m3()Ljava/lang/String;
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

.method public final n3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v2, v0, 0x4

    .line 2
    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    const/4 v3, 0x1

    .line 4
    aput p1, v2, v3

    add-int/2addr v0, v3

    const/4 p1, 0x2

    .line 5
    aput v0, v2, p1

    const/4 p1, 0x3

    const/16 v0, 0x11

    .line 6
    aput v0, v2, p1

    :goto_1
    if-ge v4, v1, :cond_2

    .line 7
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v0, 0x5

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 8
    aput v5, v2, v3

    add-int/lit8 v0, v0, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 9
    aput p1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final o3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0/x3;->m3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.jili.YuanjingX3TireAct"

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

.method public final p3(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move p1, v3

    move v4, p1

    :goto_0
    move v5, v4

    :goto_1
    move v6, v5

    goto :goto_4

    :pswitch_1
    move v5, v2

    move p1, v3

    move v4, p1

    move v6, v4

    goto :goto_4

    :pswitch_2
    const/16 p1, 0x40

    goto :goto_3

    :pswitch_3
    move v6, v2

    goto :goto_2

    :pswitch_4
    move v6, v1

    :goto_2
    move p1, v3

    move v4, p1

    move v5, v4

    goto :goto_4

    :pswitch_5
    move v4, v0

    move p1, v3

    move v5, p1

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x10

    goto :goto_3

    :pswitch_7
    move p1, v2

    goto :goto_3

    :pswitch_8
    move p1, v1

    goto :goto_3

    :pswitch_9
    const/16 p1, 0x80

    :goto_3
    move v4, v3

    goto :goto_0

    :goto_4
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/16 v8, 0xe3

    aput v8, v7, v3

    const/16 v3, -0x76

    aput v3, v7, v2

    aput v0, v7, v1

    const/4 v1, 0x3

    aput p1, v7, v1

    aput v4, v7, v0

    const/4 p1, 0x5

    aput v5, v7, p1

    const/4 p1, 0x6

    aput v6, v7, p1

    .line 1
    invoke-static {v7}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final q3([I)V
    .locals 13

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, p1, v0}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    new-array v2, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x39

    aput v5, v2, v3

    const/4 v6, 0x2

    aput v0, v2, v6

    .line 2
    aget v7, p1, v4

    const/4 v8, 0x3

    aput v7, v2, v8

    aget v7, p1, v3

    const/4 v9, 0x4

    aput v7, v2, v9

    aget v7, p1, v6

    const/4 v10, 0x5

    aput v7, v2, v10

    aget v7, p1, v8

    aput v7, v2, v0

    aget v7, p1, v9

    const/4 v11, 0x7

    aput v7, v2, v11

    aget v7, p1, v10

    const/16 v12, 0x8

    aput v7, v2, v12

    invoke-static {v2}, Lz/k;->s([I)V

    const/16 v2, 0xa

    new-array v2, v2, [B

    const/16 v7, 0x2e

    aput-byte v7, v2, v4

    aput-byte v5, v2, v3

    aput-byte v0, v2, v6

    .line 3
    aget v5, p1, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    aget v5, p1, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v9

    aget v5, p1, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v10

    aget v5, p1, v8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    aget v0, p1, v9

    int-to-byte v0, v0

    aput-byte v0, v2, v11

    aget v0, p1, v10

    int-to-byte v0, v0

    aput-byte v0, v2, v12

    aput-byte v4, v2, v1

    invoke-static {v2}, Lk0/x3;->v3([B)V

    .line 4
    aget v0, p1, v4

    if-nez v0, :cond_0

    aget v0, p1, v3

    if-nez v0, :cond_0

    aget v0, p1, v6

    if-nez v0, :cond_0

    aget v0, p1, v8

    if-nez v0, :cond_0

    aget v0, p1, v9

    if-nez v0, :cond_0

    aget p1, p1, v10

    if-nez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 5
    invoke-static {v0, v1}, La/i;->a0(J)V

    new-array p1, v10, [B

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lk0/x3;->v3([B)V

    .line 7
    :cond_0
    iput v3, p0, Lk0/x3;->j0:I

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x2et
        -0x70t
        0x1t
        0x21t
        0x0t
    .end array-data
.end method

.method public final r3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/x3;->n0:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lk0/x3;->l0:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    aput p1, v1, p1

    const/16 v2, 0xc2

    .line 3
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p1, v1, p1

    const/16 v2, 0xc4

    .line 4
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v0, [I

    .line 5
    sget v1, Lk0/x3;->n0:I

    aput v1, v0, p1

    const/16 v1, 0xc3

    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object v0, p0, Lk0/x3;->q:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/x3;->n0:I

    if-eq p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final s3(III)V
    .locals 5

    .line 1
    sput p1, Lk0/x3;->o0:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xed

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    const/4 v1, 0x3

    const/16 v3, 0x80

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v4, Lk0/x3;->o0:I

    if-eq p1, v4, :cond_0

    .line 4
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, v1, v4}, Lo1/g0;->g(II)V

    .line 5
    :cond_0
    sput p2, Lk0/x3;->p0:I

    const/16 p1, 0xee

    new-array v4, v0, [I

    aput p2, v4, v2

    .line 6
    invoke-static {p1, v4}, Lk0/qt;->y0(I[I)V

    .line 7
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v4, Lk0/x3;->p0:I

    if-eq p1, v4, :cond_1

    .line 8
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, p2, v4}, Lo1/g0;->g(II)V

    .line 9
    :cond_1
    sput p3, Lk0/x3;->q0:I

    const/16 p1, 0xef

    new-array v4, v0, [I

    aput p3, v4, v2

    .line 10
    invoke-static {p1, v4}, Lk0/qt;->y0(I[I)V

    .line 11
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/x3;->q0:I

    if-eq p1, v3, :cond_2

    .line 12
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, p3, v3}, Lo1/g0;->g(II)V

    :cond_2
    const/4 p1, 0x6

    new-array p1, p1, [I

    const/16 v3, 0xe3

    aput v3, p1, v2

    const/16 v2, -0x7b

    aput v2, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    .line 13
    sget v0, Lk0/x3;->o0:I

    aput v0, p1, v1

    sget v0, Lk0/x3;->p0:I

    aput v0, p1, p2

    sget p2, Lk0/x3;->q0:I

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public final t3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/x3;->m0:I

    const/16 v2, 0xb9

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/x3;->m0:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final u3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/x3;->r0:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xf2

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/x3;->r0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/x3;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
