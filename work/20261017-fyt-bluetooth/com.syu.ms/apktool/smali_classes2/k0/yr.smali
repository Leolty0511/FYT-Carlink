.class public Lk0/yr;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static a0:I = 0xff

.field public static b0:I = 0x14

.field public static c0:I = 0x24

.field public static d0:I

.field public static e0:I

.field public static f0:I

.field public static g0:I

.field public static h0:I


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:I

.field public J:Ljava/lang/Runnable;

.field public K:I

.field public L:Ljava/lang/Runnable;

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public W:Lo1/g0;

.field public X:I

.field public Y:Ljava/lang/Runnable;

.field public Z:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:[[I

.field public final k:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/yr;->b:I

    .line 3
    iput v0, p0, Lk0/yr;->c:I

    .line 4
    iput v0, p0, Lk0/yr;->d:I

    .line 5
    iput-boolean v0, p0, Lk0/yr;->e:Z

    .line 6
    iput-boolean v0, p0, Lk0/yr;->f:Z

    .line 7
    iput v0, p0, Lk0/yr;->g:I

    .line 8
    iput v0, p0, Lk0/yr;->i:I

    const/16 v1, 0x18

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 9
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

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x6

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v5, 0x7

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v5, 0x8

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v5, 0x9

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v5, 0xa

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v6, 0xb

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v7, 0xc

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v7, 0xd

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v7, 0xe

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v7, 0xf

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v8, 0x10

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v8, 0x11

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v8, 0x12

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v8, 0x13

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v8, 0x14

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v8, 0x15

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v8, 0x16

    aput-object v4, v2, v8

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v2, v4

    iput-object v2, p0, Lk0/yr;->j:[[I

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 10
    iput-object v2, p0, Lk0/yr;->k:[B

    .line 11
    iput v0, p0, Lk0/yr;->l:I

    .line 12
    iput v0, p0, Lk0/yr;->m:I

    .line 13
    iput v0, p0, Lk0/yr;->n:I

    .line 14
    iput v0, p0, Lk0/yr;->o:I

    const-string v2, ""

    .line 15
    iput-object v2, p0, Lk0/yr;->p:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lk0/yr;->q:Ljava/lang/String;

    .line 17
    iput v0, p0, Lk0/yr;->r:I

    .line 18
    iput v0, p0, Lk0/yr;->s:I

    .line 19
    iput v0, p0, Lk0/yr;->t:I

    .line 20
    iput v0, p0, Lk0/yr;->u:I

    .line 21
    iput v0, p0, Lk0/yr;->v:I

    .line 22
    iput v0, p0, Lk0/yr;->w:I

    .line 23
    iput v0, p0, Lk0/yr;->x:I

    .line 24
    iput v0, p0, Lk0/yr;->y:I

    .line 25
    iput v0, p0, Lk0/yr;->z:I

    .line 26
    iput v0, p0, Lk0/yr;->A:I

    .line 27
    new-instance v2, Lk0/yr$d;

    invoke-direct {v2, p0}, Lk0/yr$d;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->B:Ljava/lang/Runnable;

    .line 28
    new-instance v2, Lk0/yr$e;

    invoke-direct {v2, p0}, Lk0/yr$e;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->C:Ljava/lang/Runnable;

    .line 29
    new-instance v2, Lk0/yr$h;

    invoke-direct {v2, p0}, Lk0/yr$h;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->D:Ljava/lang/Runnable;

    .line 30
    new-instance v2, Lk0/yr$i;

    invoke-direct {v2, p0}, Lk0/yr$i;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->E:Ljava/lang/Runnable;

    .line 31
    iput v0, p0, Lk0/yr;->F:I

    .line 32
    new-instance v2, Lk0/yr$j;

    invoke-direct {v2, p0}, Lk0/yr$j;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->G:Ljava/lang/Runnable;

    .line 33
    new-instance v2, Lk0/yr$k;

    invoke-direct {v2, p0}, Lk0/yr$k;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->H:Ljava/lang/Runnable;

    .line 34
    iput v0, p0, Lk0/yr;->I:I

    .line 35
    new-instance v2, Lk0/yr$l;

    invoke-direct {v2, p0}, Lk0/yr$l;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->J:Ljava/lang/Runnable;

    .line 36
    iput v0, p0, Lk0/yr;->K:I

    .line 37
    new-instance v2, Lk0/yr$a;

    invoke-direct {v2, p0}, Lk0/yr$a;-><init>(Lk0/yr;)V

    iput-object v2, p0, Lk0/yr;->L:Ljava/lang/Runnable;

    .line 38
    iput v0, p0, Lk0/yr;->M:I

    .line 39
    iput-boolean v0, p0, Lk0/yr;->N:Z

    .line 40
    iput-boolean v0, p0, Lk0/yr;->O:Z

    .line 41
    iput-boolean v0, p0, Lk0/yr;->P:Z

    .line 42
    iput v5, p0, Lk0/yr;->Q:I

    .line 43
    iput v6, p0, Lk0/yr;->R:I

    .line 44
    iput v7, p0, Lk0/yr;->S:I

    .line 45
    iput v4, p0, Lk0/yr;->T:I

    .line 46
    iput v1, p0, Lk0/yr;->U:I

    const/16 v0, 0x19

    .line 47
    iput v0, p0, Lk0/yr;->V:I

    .line 48
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/yr;->W:Lo1/g0;

    .line 49
    iput v5, p0, Lk0/yr;->X:I

    .line 50
    new-instance v0, Lk0/yr$b;

    invoke-direct {v0, p0}, Lk0/yr$b;-><init>(Lk0/yr;)V

    iput-object v0, p0, Lk0/yr;->Y:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lk0/yr$c;

    invoke-direct {v0, p0}, Lk0/yr$c;-><init>(Lk0/yr;)V

    iput-object v0, p0, Lk0/yr;->Z:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x20
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x52
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x51
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x50
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x36
    .end array-data

    :array_9
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x37
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x32
    .end array-data

    :array_13
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_15
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_16
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_17
    .array-data 4
        0x1a
        0x0
    .end array-data
.end method

.method public static synthetic d3(Lk0/yr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/yr;->b3()V

    return-void
.end method

.method public static synthetic e3(Lk0/yr;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->c3(Z)V

    return-void
.end method

.method public static synthetic f3(Lk0/yr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->t3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/yr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->u3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/yr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->v3(I)V

    return-void
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lk0/yr;->g0:I

    return v0
.end method

.method public static synthetic j3()I
    .locals 2

    .line 1
    sget v0, Lk0/yr;->g0:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lk0/yr;->g0:I

    return v0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lk0/yr;->f0:I

    return v0
.end method

.method public static synthetic l3(Lk0/yr;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/yr;->e:Z

    return p0
.end method

.method public static synthetic m3(Lk0/yr;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/yr;->e:Z

    return p1
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lk0/yr;->c0:I

    return v0
.end method

.method public static synthetic o3(Lk0/yr;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/yr;->W:Lo1/g0;

    return-object p0
.end method

.method public static synthetic p3(Lk0/yr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->w3(I)V

    return-void
.end method

.method public static synthetic q3(Lk0/yr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->s3(I)V

    return-void
.end method

.method public static synthetic r3(Lk0/yr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yr;->x3(I)V

    return-void
.end method

.method public static y3([B)V
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
    xor-int/lit16 v1, v2, 0xff

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

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/yr;->W:Lo1/g0;

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
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->l:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->b:I

    .line 8
    iput v2, v0, Lk0/mt;->c:I

    .line 9
    iput v2, v0, Lk0/mt;->d:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    iput v2, v0, Lk0/mt;->h:I

    .line 12
    iput v2, v0, Lk0/mt;->p:I

    .line 13
    sget v0, Lk0/nt;->a:I

    const v2, 0x7101c7

    if-eq v0, v2, :cond_0

    .line 14
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/yr;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lk0/yr;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v2, Lk0/yr$f;

    invoke-direct {v2, p0}, Lk0/yr$f;-><init>(Lk0/yr;)V

    invoke-virtual {v0, v2}, Lo1/z;->a(Lo1/p;)V

    .line 17
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/yr;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/yr;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v0, p0, Lk0/yr;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v2, p0, Lk0/yr;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    iget-object v0, p0, Lk0/yr;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Lk0/yr;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/yr;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/yr;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v8, :cond_3a

    const/16 v14, 0x20

    const/16 v15, 0xa

    const/4 v3, 0x5

    if-eq v2, v14, :cond_25

    const/16 v14, 0x27

    const/16 v4, 0xb

    const/16 v5, 0x29

    if-eq v2, v14, :cond_17

    if-eq v2, v5, :cond_15

    const/16 v5, 0x30

    if-eq v2, v5, :cond_14

    const/16 v5, 0x35

    if-eq v2, v5, :cond_13

    const/16 v5, 0x38

    if-eq v2, v5, :cond_12

    const/16 v5, 0x7f

    if-eq v2, v5, :cond_11

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v5, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v5, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v13, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v13

    aput v11, v5, v12

    .line 4
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v13

    aput v11, v5, v12

    .line 5
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v5, v13, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v13

    aput v11, v5, v12

    .line 6
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v13

    aput v11, v5, v12

    .line 7
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v5, v13, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v13

    aput v11, v5, v12

    .line 8
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v13

    aput v7, v5, v12

    .line 9
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v13

    aput v7, v5, v12

    .line 10
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v13

    aput v2, v5, v12

    .line 11
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v5, v13, [I

    add-int/lit8 v7, p2, 0x3

    .line 12
    aget-byte v11, v1, v7

    shr-int/lit8 v3, v11, 0x5

    and-int/2addr v3, v13

    aput v3, v5, v12

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v13, [I

    .line 13
    aget-byte v5, v1, v7

    shr-int/2addr v5, v9

    and-int/2addr v5, v13

    aput v5, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 14
    iget v2, v0, Lk0/yr;->b:I

    aget-byte v3, v1, v7

    shr-int/2addr v3, v10

    and-int/2addr v3, v13

    if-ne v2, v3, :cond_1

    iget v2, v0, Lk0/yr;->c:I

    aget-byte v3, v1, v7

    shr-int/2addr v3, v8

    and-int/2addr v3, v13

    if-eq v2, v3, :cond_9

    .line 15
    :cond_1
    aget-byte v2, v1, v7

    shr-int/2addr v2, v10

    and-int/2addr v2, v13

    iput v2, v0, Lk0/yr;->b:I

    .line 16
    aget-byte v3, v1, v7

    shr-int/2addr v3, v8

    and-int/2addr v3, v13

    iput v3, v0, Lk0/yr;->c:I

    .line 17
    sget v5, Lu0/b;->r0:I

    if-nez v5, :cond_9

    if-eq v2, v13, :cond_5

    if-ne v3, v13, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 18
    sget v2, Lk0/yr;->f0:I

    if-nez v2, :cond_4

    const-wide/16 v2, 0x64

    .line 19
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 20
    iget-boolean v2, v0, Lk0/yr;->e:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    .line 22
    invoke-static {v8, v13}, Ll0/b0;->l0(II)V

    .line 23
    iget v2, v0, Lk0/yr;->g:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    :cond_3
    const-wide/16 v2, 0x32

    .line 24
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "false"

    .line 25
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-boolean v12, v0, Lk0/yr;->e:Z

    goto :goto_3

    .line 27
    :cond_4
    sput v15, Lk0/yr;->g0:I

    goto :goto_3

    :cond_5
    :goto_1
    if-ne v2, v13, :cond_6

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 28
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    .line 29
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 30
    :cond_6
    iget-boolean v2, v0, Lk0/yr;->e:Z

    if-nez v2, :cond_8

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_8

    .line 31
    iput-boolean v13, v0, Lk0/yr;->e:Z

    .line 32
    invoke-static {}, Lo1/u;->z()I

    .line 33
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_7

    sget v2, Ly0/f;->c:I

    sget v3, Ly0/f;->R:I

    mul-int/2addr v2, v3

    sget v3, Ly0/f;->S:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    float-to-int v2, v2

    .line 34
    sget v3, Ly0/f;->c:I

    iput v3, v0, Lk0/yr;->g:I

    .line 35
    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 36
    :cond_8
    invoke-static {v12}, Lu0/d;->C2(I)V

    .line 37
    :cond_9
    :goto_3
    iget v2, v0, Lk0/yr;->d:I

    aget-byte v3, v1, v7

    shr-int/2addr v3, v6

    and-int/2addr v3, v13

    if-eq v2, v3, :cond_3e

    .line 38
    aget-byte v1, v1, v7

    shr-int/2addr v1, v6

    and-int/2addr v1, v13

    iput v1, v0, Lk0/yr;->d:I

    if-ne v1, v13, :cond_b

    .line 39
    iget v1, v0, Lk0/yr;->b:I

    if-nez v1, :cond_b

    iget v1, v0, Lk0/yr;->X:I

    if-ne v1, v4, :cond_b

    .line 40
    sget v1, Lk0/yr;->h0:I

    if-ne v1, v13, :cond_a

    .line 41
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 42
    iput-boolean v13, v0, Lk0/yr;->f:Z

    .line 43
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_13

    .line 44
    :cond_a
    invoke-static {v13}, Lu0/d;->C2(I)V

    goto/16 :goto_13

    .line 45
    :cond_b
    sget v1, Lk0/yr;->h0:I

    if-ne v1, v13, :cond_d

    .line 46
    iget-boolean v1, v0, Lk0/yr;->f:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 47
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {v8, v13}, Ll0/b0;->l0(II)V

    .line 49
    :cond_c
    iput-boolean v12, v0, Lk0/yr;->f:Z

    goto/16 :goto_13

    .line 50
    :cond_d
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto/16 :goto_13

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x3

    .line 52
    aget-byte v6, v1, v5

    and-int/2addr v6, v11

    add-int/lit8 v7, p2, 0x4

    .line 53
    aget-byte v8, v1, v7

    and-int/2addr v8, v11

    add-int/lit8 v3, p2, 0x5

    .line 54
    aget-byte v9, v1, v3

    and-int/2addr v9, v11

    if-nez v4, :cond_e

    if-nez v6, :cond_e

    if-nez v8, :cond_e

    if-nez v9, :cond_e

    .line 55
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 56
    :cond_e
    sget v10, Ll0/c0;->g:I

    if-ne v10, v4, :cond_f

    sget v10, Ll0/c0;->h:I

    if-ne v10, v6, :cond_f

    sget v10, Ll0/c0;->i:I

    if-ne v10, v8, :cond_f

    sget v10, Ll0/c0;->j:I

    if-eq v10, v9, :cond_10

    .line 57
    :cond_f
    iget v10, v0, Lk0/yr;->d:I

    if-ne v10, v13, :cond_10

    iget v10, v0, Lk0/yr;->b:I

    if-nez v10, :cond_10

    .line 58
    invoke-static {v13}, Lu0/d;->C2(I)V

    const/16 v10, 0x8

    .line 59
    sput v10, Ll0/c0;->k:I

    .line 60
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 61
    :cond_10
    :goto_4
    sput v4, Ll0/c0;->g:I

    .line 62
    sput v6, Ll0/c0;->h:I

    .line 63
    sput v8, Ll0/c0;->i:I

    .line 64
    sput v9, Ll0/c0;->j:I

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 66
    aget-byte v2, v1, v5

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 67
    aget-byte v2, v1, v7

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 68
    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 72
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    .line 73
    :cond_11
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v0, Lk0/yr;->q:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lk0/yr;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lk0/yr;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    .line 75
    iput v4, v0, Lk0/yr;->X:I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lk0/yr;->b3()V

    goto/16 :goto_13

    :cond_12
    const/16 v2, 0x70

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x3

    .line 77
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_13
    const/16 v2, 0x62

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x2

    .line 78
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v13, [I

    .line 79
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v13, [I

    .line 80
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 81
    aget-byte v2, v1, v5

    shr-int/2addr v2, v7

    and-int/2addr v2, v13

    iput v2, v0, Lk0/yr;->y:I

    const/16 v2, 0x65

    new-array v4, v13, [I

    .line 82
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 83
    aget-byte v2, v1, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v13

    iput v2, v0, Lk0/yr;->z:I

    .line 84
    aget-byte v2, v1, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v13

    aget-byte v4, v1, v5

    shr-int/lit8 v3, v4, 0x5

    and-int/2addr v3, v13

    invoke-static {v2, v3, v12}, Ll0/c0;->N1(III)V

    const/16 v2, 0x69

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x3

    .line 85
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 86
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0xd

    .line 87
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 88
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v0, Lk0/yr;->p:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lk0/yr;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lk0/yr;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_15
    add-int/lit8 v2, p2, 0x3

    .line 90
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_16

    move v13, v12

    :cond_16
    const/16 v1, 0x32

    invoke-static {v2, v12, v13, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_13

    :cond_17
    new-array v2, v13, [I

    add-int/lit8 v14, p2, 0x2

    .line 91
    aget-byte v18, v1, v14

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v2, v12

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 92
    aget-byte v15, v1, v14

    shr-int/2addr v15, v8

    and-int/2addr v15, v13

    aput v15, v2, v12

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 93
    aget-byte v15, v1, v14

    shr-int/2addr v15, v3

    and-int/2addr v15, v13

    aput v15, v2, v12

    const/16 v15, 0xc

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v15, v13, [I

    .line 94
    aget-byte v17, v1, v14

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v12

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v15, v13, [I

    .line 95
    aget-byte v17, v1, v14

    shr-int/lit8 v17, v17, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v12

    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    .line 96
    aget-byte v15, v1, v14

    shr-int/2addr v15, v10

    and-int/2addr v15, v13

    aput v15, v2, v12

    const/16 v15, 0xf

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v13, [I

    .line 97
    aget-byte v18, v1, v14

    shr-int/lit8 v18, v18, 0x1

    and-int/lit8 v18, v18, 0x1

    aput v18, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v4, v13, [I

    .line 98
    aget-byte v14, v1, v14

    shr-int/2addr v14, v12

    and-int/2addr v14, v13

    aput v14, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v13, [I

    add-int/lit8 v14, p2, 0x3

    .line 99
    aget-byte v18, v1, v14

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v13, [I

    .line 100
    aget-byte v18, v1, v14

    shr-int/lit8 v8, v18, 0x6

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v13, [I

    .line 101
    aget-byte v8, v1, v14

    shr-int/2addr v8, v3

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v4, v13, [I

    .line 102
    aget-byte v8, v1, v14

    shr-int/2addr v8, v7

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v4, v13, [I

    .line 103
    aget-byte v8, v1, v14

    shr-int/2addr v8, v9

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v13, [I

    .line 104
    aget-byte v8, v1, v14

    shr-int/2addr v8, v10

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v4, v13, [I

    .line 105
    aget-byte v8, v1, v14

    shr-int/2addr v8, v13

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v4, v13, [I

    .line 106
    aget-byte v8, v1, v14

    shr-int/2addr v8, v12

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 107
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    add-int/lit8 v8, p2, 0x5

    .line 108
    aget-byte v9, v1, v8

    and-int/2addr v9, v11

    const-string v14, "persist.fyt.reversetemp"

    .line 109
    invoke-static {v14, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 110
    aget-byte v4, v1, v8

    and-int/2addr v4, v11

    .line 111
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    :cond_18
    const/16 v2, 0x40

    const/4 v8, -0x1

    const/4 v14, -0x3

    const/16 v18, -0x2

    const/16 v5, 0x1b

    const/16 v10, 0x1e

    if-eqz v4, :cond_1b

    if-eq v4, v11, :cond_1a

    if-lt v4, v10, :cond_19

    if-gt v4, v2, :cond_19

    new-array v6, v13, [I

    mul-int/lit8 v19, v4, 0x5

    aput v19, v6, v12

    .line 112
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_19
    new-array v6, v13, [I

    aput v8, v6, v12

    .line 113
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1a
    new-array v6, v13, [I

    aput v14, v6, v12

    .line 114
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1b
    new-array v6, v13, [I

    aput v18, v6, v12

    .line 115
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v9, :cond_1e

    if-eq v9, v11, :cond_1d

    if-lt v9, v10, :cond_1c

    if-gt v9, v2, :cond_1c

    new-array v5, v13, [I

    mul-int/lit8 v6, v9, 0x5

    aput v6, v5, v12

    const/16 v6, 0x1c

    .line 116
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1c
    const/16 v6, 0x1c

    new-array v5, v13, [I

    aput v8, v5, v12

    .line 117
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1d
    const/16 v6, 0x1c

    new-array v5, v13, [I

    aput v14, v5, v12

    .line 118
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1e
    const/16 v6, 0x1c

    new-array v5, v13, [I

    aput v18, v5, v12

    .line 119
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    .line 120
    :goto_6
    iput v4, v0, Lk0/yr;->v:I

    .line 121
    iput v9, v0, Lk0/yr;->w:I

    add-int/lit8 v4, p2, 0x6

    .line 122
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    iput v5, v0, Lk0/yr;->u:I

    const/16 v5, 0x15

    new-array v6, v13, [I

    .line 123
    aget-byte v9, v1, v4

    and-int/2addr v9, v15

    aput v9, v6, v12

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x21

    new-array v6, v13, [I

    .line 124
    aget-byte v9, v1, v4

    shr-int/2addr v9, v7

    and-int/2addr v9, v13

    aput v9, v6, v12

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x38

    new-array v6, v13, [I

    .line 125
    aget-byte v4, v1, v4

    shr-int/2addr v4, v3

    and-int/2addr v4, v13

    aput v4, v6, v12

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1d

    new-array v5, v13, [I

    add-int/lit8 v6, p2, 0x7

    .line 126
    aget-byte v9, v1, v6

    shr-int/2addr v9, v3

    const/16 v16, 0x7

    and-int/lit8 v9, v9, 0x7

    aput v9, v5, v12

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    .line 127
    aget-byte v5, v1, v6

    const/4 v9, 0x2

    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0x7

    aput v5, v4, v12

    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x25

    new-array v5, v13, [I

    .line 128
    aget-byte v6, v1, v6

    shr-int/2addr v6, v12

    and-int/2addr v6, v13

    aput v6, v5, v12

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v4, p2, 0x8

    .line 129
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x9

    .line 130
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    if-eqz v4, :cond_21

    if-eq v4, v11, :cond_20

    if-lt v4, v10, :cond_1f

    if-gt v4, v2, :cond_1f

    const/16 v6, 0x28

    new-array v9, v13, [I

    mul-int/lit8 v16, v4, 0x5

    aput v16, v9, v12

    .line 131
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1f
    const/16 v6, 0x28

    new-array v9, v13, [I

    aput v8, v9, v12

    .line 132
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_20
    const/16 v6, 0x28

    new-array v9, v13, [I

    aput v14, v9, v12

    .line 133
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_21
    const/16 v6, 0x28

    new-array v9, v13, [I

    aput v18, v9, v12

    .line 134
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    :goto_7
    if-eqz v5, :cond_24

    if-eq v5, v11, :cond_23

    if-lt v5, v10, :cond_22

    if-gt v5, v2, :cond_22

    new-array v2, v13, [I

    mul-int/2addr v5, v3

    aput v5, v2, v12

    const/16 v5, 0x29

    .line 135
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_22
    const/16 v5, 0x29

    new-array v2, v13, [I

    aput v8, v2, v12

    .line 136
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_23
    const/16 v5, 0x29

    new-array v2, v13, [I

    aput v14, v2, v12

    .line 137
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_24
    const/16 v5, 0x29

    new-array v2, v13, [I

    aput v18, v2, v12

    .line 138
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    .line 139
    :goto_8
    iput v4, v0, Lk0/yr;->t:I

    const/16 v2, 0x2b

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0xa

    .line 140
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v13, [I

    .line 141
    aget-byte v6, v1, v5

    and-int/2addr v6, v15

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 142
    aget-byte v2, v1, v5

    and-int/2addr v2, v15

    iput v2, v0, Lk0/yr;->s:I

    const/16 v2, 0x2e

    new-array v4, v13, [I

    const/16 v5, 0xb

    add-int/lit8 v5, p2, 0xb

    .line 143
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v13, [I

    .line 144
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x5

    and-int/2addr v3, v13

    aput v3, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x52

    new-array v3, v13, [I

    .line 145
    aget-byte v4, v1, v5

    const/4 v6, 0x2

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x53

    new-array v3, v13, [I

    .line 146
    aget-byte v1, v1, v5

    shr-int/2addr v1, v13

    and-int/2addr v1, v13

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lk0/yr;->b3()V

    goto/16 :goto_13

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 148
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 149
    aget-byte v1, v1, v4

    and-int/2addr v2, v11

    .line 150
    iput v2, v0, Lk0/yr;->i:I

    move v2, v12

    .line 151
    :goto_9
    iget-object v4, v0, Lk0/yr;->j:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_27

    .line 152
    iget v5, v0, Lk0/yr;->i:I

    aget-object v6, v4, v2

    aget v6, v6, v12

    if-ne v5, v6, :cond_26

    if-eqz v5, :cond_27

    .line 153
    iput v2, v0, Lk0/yr;->h:I

    goto :goto_a

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 154
    :cond_27
    :goto_a
    iget v5, v0, Lk0/yr;->i:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_36

    if-eq v5, v15, :cond_35

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_34

    const/16 v6, 0x15

    if-eq v5, v6, :cond_33

    const/16 v6, 0x16

    if-eq v5, v6, :cond_32

    packed-switch v5, :pswitch_data_1

    and-int/2addr v1, v11

    if-ne v1, v13, :cond_28

    .line 155
    array-length v1, v4

    if-ge v2, v1, :cond_3e

    .line 156
    aget-object v1, v4, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_28
    if-nez v1, :cond_3e

    .line 157
    iget v1, v0, Lk0/yr;->h:I

    array-length v2, v4

    if-ge v1, v2, :cond_29

    if-eq v1, v11, :cond_29

    .line 158
    aget-object v1, v4, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 159
    :cond_29
    iput v11, v0, Lk0/yr;->h:I

    goto/16 :goto_13

    .line 160
    :pswitch_3
    iget v2, v0, Lk0/yr;->o:I

    if-eq v2, v1, :cond_3e

    .line 161
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 162
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_2b

    .line 163
    iget v2, v0, Lk0/yr;->b:I

    if-nez v2, :cond_2b

    iget v2, v0, Lk0/yr;->c:I

    if-nez v2, :cond_2b

    .line 164
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    .line 165
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_2a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 166
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_2b

    .line 167
    invoke-static {}, Lo1/u;->z()I

    .line 168
    :cond_2b
    :goto_b
    iput v1, v0, Lk0/yr;->o:I

    goto/16 :goto_13

    :pswitch_4
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    .line 169
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_13

    :cond_2c
    const/16 v1, 0x26

    .line 170
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 171
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_5
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    .line 172
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto/16 :goto_13

    .line 173
    :cond_2d
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    .line 174
    invoke-static {v13, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_6
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    .line 175
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto/16 :goto_13

    :cond_2e
    const/16 v1, 0x37

    .line 176
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 177
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 178
    :pswitch_7
    iget v2, v0, Lk0/yr;->o:I

    if-eq v2, v1, :cond_3e

    .line 179
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 180
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_31

    .line 181
    iget v2, v0, Lk0/yr;->b:I

    if-nez v2, :cond_31

    iget v2, v0, Lk0/yr;->c:I

    if-nez v2, :cond_31

    .line 182
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    .line 183
    invoke-static {v8, v13}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_2f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 184
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_30

    .line 185
    invoke-static {}, Lo1/u;->z()I

    goto :goto_c

    :cond_30
    if-nez v1, :cond_31

    .line 186
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_31

    .line 187
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    .line 188
    invoke-static {v8, v13}, Ll0/b0;->l0(II)V

    .line 189
    :cond_31
    :goto_c
    iput v1, v0, Lk0/yr;->o:I

    goto/16 :goto_13

    .line 190
    :cond_32
    sget v2, Lk0/yr;->d0:I

    if-ne v2, v13, :cond_3e

    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    const/16 v1, 0x8

    .line 191
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 192
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 193
    :cond_33
    sget v2, Lk0/yr;->d0:I

    if-ne v2, v13, :cond_3e

    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    const/4 v1, 0x7

    .line 194
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 195
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 196
    :cond_34
    sget v2, Lk0/yr;->d0:I

    if-ne v2, v13, :cond_3e

    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    const/16 v1, 0xc

    .line 197
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 198
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_35
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_3e

    .line 199
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 200
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_13

    .line 201
    :cond_36
    iget v2, v0, Lk0/yr;->o:I

    if-eq v2, v1, :cond_3e

    .line 202
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x2

    if-ne v1, v2, :cond_39

    .line 203
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_39

    .line 204
    iget v2, v0, Lk0/yr;->b:I

    if-nez v2, :cond_39

    iget v2, v0, Lk0/yr;->c:I

    if-nez v2, :cond_39

    .line 205
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    .line 206
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_37
    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 207
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_38

    .line 208
    invoke-static {}, Lo1/u;->z()I

    goto :goto_d

    :cond_38
    if-nez v1, :cond_39

    .line 209
    iget v2, v0, Lk0/yr;->o:I

    if-ne v2, v13, :cond_39

    .line 210
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    .line 211
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    .line 212
    :cond_39
    :goto_d
    iput v1, v0, Lk0/yr;->o:I

    goto/16 :goto_13

    :cond_3a
    add-int/lit8 v2, p2, 0x2

    .line 213
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3d

    if-eq v2, v9, :cond_3c

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3b

    goto/16 :goto_13

    :cond_3b
    add-int/lit8 v2, p2, 0x3

    .line 214
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-ne v2, v13, :cond_3e

    add-int/lit8 v2, p2, 0x4

    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3e

    const/16 v1, 0xc

    .line 215
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 216
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_3c
    move v2, v12

    :goto_e
    add-int/lit8 v3, p2, 0x3

    .line 217
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    if-ge v2, v3, :cond_3e

    add-int/lit8 v3, p2, 0x4

    .line 218
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    packed-switch v3, :pswitch_data_2

    const/4 v3, 0x7

    goto :goto_f

    :pswitch_8
    const/4 v3, 0x7

    .line 219
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    .line 220
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto :goto_f

    :pswitch_9
    const/4 v3, 0x7

    const/16 v4, 0x15

    .line 221
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_f

    :pswitch_a
    const/4 v3, 0x7

    const/16 v4, 0x13

    .line 222
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_f

    :pswitch_b
    const/4 v3, 0x7

    const/16 v4, 0x1d

    .line 223
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_f

    :pswitch_c
    const/4 v3, 0x7

    const/16 v4, 0x34

    .line 224
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_f

    :pswitch_d
    const/4 v3, 0x7

    const/16 v4, 0x31

    .line 225
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3d
    move v2, v12

    :goto_10
    add-int/lit8 v3, p2, 0x3

    .line 226
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    if-ge v2, v3, :cond_3e

    add-int/lit8 v3, p2, 0x4

    .line 227
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    packed-switch v3, :pswitch_data_3

    const/16 v3, 0x8

    :goto_11
    const/16 v4, 0x1c

    goto :goto_12

    :pswitch_e
    const/16 v3, 0x8

    .line 228
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    .line 229
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto :goto_11

    :pswitch_f
    const/16 v3, 0x8

    const/16 v4, 0x14

    .line 230
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_11

    :pswitch_10
    const/16 v3, 0x8

    const/16 v4, 0x12

    .line 231
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_11

    :pswitch_11
    const/16 v3, 0x8

    const/16 v4, 0x1c

    .line 232
    invoke-virtual {v0, v4}, Lk0/yr;->a3(I)V

    goto :goto_12

    :pswitch_12
    const/16 v3, 0x8

    const/16 v4, 0x1c

    const/16 v5, 0x33

    .line 233
    invoke-virtual {v0, v5}, Lk0/yr;->a3(I)V

    goto :goto_12

    :pswitch_13
    const/16 v3, 0x8

    const/16 v4, 0x1c

    const/16 v5, 0x30

    .line 234
    invoke-virtual {v0, v5}, Lk0/yr;->a3(I)V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_3e
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/yr;->W:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/yr;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/yr;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yr;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/yr;->Z:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/yr;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/yr;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/yr;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/yr;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/yr;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/yr;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/yr;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/yr$g;

    invoke-direct {v1, p0}, Lk0/yr$g;-><init>(Lk0/yr;)V

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x74

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
    .locals 6

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v2, :cond_3

    const/4 v5, 0x6

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    sget p1, Lk0/nt;->U:I

    if-ne p1, v4, :cond_12

    .line 2
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v3

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_2

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xcb

    aput p3, p1, v4

    aput v2, p1, v2

    .line 3
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_2
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0xc8

    aput p3, p1, v4

    aput p4, p1, v2

    .line 4
    aget p3, p2, v3

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, p4

    aget p3, p2, v1

    aput p3, p1, v5

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 5
    :cond_3
    aget p1, p2, v3

    if-nez p1, :cond_6

    const-string p1, "persist.lesc.video.ignore"

    .line 6
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    sget p1, Lk0/yr;->b0:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 8
    :cond_4
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    if-eq p1, p4, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    iget-boolean p1, p0, Lk0/yr;->O:Z

    if-nez p1, :cond_7

    .line 10
    invoke-virtual {p0, v4}, Lk0/yr;->c3(Z)V

    goto :goto_0

    :cond_6
    const/16 p1, 0xf

    .line 11
    iput p1, p0, Lk0/yr;->I:I

    .line 12
    :cond_7
    :goto_0
    aget p1, p2, v3

    if-ne p1, v4, :cond_9

    .line 13
    sget p1, Ll0/c0;->t:I

    if-nez p1, :cond_8

    sget p1, Ll0/c0;->r:I

    if-nez p1, :cond_8

    sget p1, Ll0/c0;->v:I

    if-nez p1, :cond_8

    sget-boolean p1, Ll0/c0;->q:Z

    if-eqz p1, :cond_9

    :cond_8
    move p1, v3

    goto :goto_1

    :cond_9
    move p1, v4

    :goto_1
    if-eqz p1, :cond_12

    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xc0

    aput p3, p1, v4

    aput v2, p1, v2

    .line 14
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_a
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v2, p1, v2

    .line 15
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 16
    :cond_b
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfd

    if-ne p1, v5, :cond_c

    .line 17
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/yr;->w3(I)V

    goto :goto_2

    .line 18
    :cond_c
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfc

    if-ne p1, v5, :cond_d

    .line 19
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/yr;->s3(I)V

    goto :goto_2

    .line 20
    :cond_d
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf7

    if-ne p1, v5, :cond_e

    .line 21
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/yr;->x3(I)V

    goto :goto_2

    .line 22
    :cond_e
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf4

    if-ne p1, v5, :cond_f

    .line 23
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/yr;->t3(I)V

    goto :goto_2

    .line 24
    :cond_f
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf3

    if-ne p1, v5, :cond_10

    .line 25
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/yr;->u3(I)V

    goto :goto_2

    .line 26
    :cond_10
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf2

    if-ne p1, v5, :cond_11

    .line 27
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/yr;->v3(I)V

    goto :goto_2

    :cond_11
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xc6

    aput p3, p1, v4

    aput v2, p1, v2

    .line 28
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_12
    :goto_2
    return-void
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x35

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0xc8

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
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
    iget v1, p0, Lk0/yr;->l:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/yr;->l:I

    .line 5
    iput v0, p0, Lk0/yr;->m:I

    .line 6
    iput v0, p0, Lk0/yr;->n:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/yr;->k:[B

    iget v2, p0, Lk0/yr;->l:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/yr;->l:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/yr;->l:I

    .line 9
    iget p1, p0, Lk0/yr;->n:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/yr;->k:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/yr;->n:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/yr;->k:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/yr;->k:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/yr;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/yr;->n:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/yr;->m:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/yr;->m:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/yr;->n:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/yr;->l:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/yr;->m:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/yr;->k:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/yr;->n:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/yr;->n:I

    .line 23
    iget v6, p0, Lk0/yr;->l:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/yr;->n:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/yr;->n:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/yr;->k:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/yr;->k:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/yr;->m:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/yr;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/yr;->n:I

    iput v1, p0, Lk0/yr;->m:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/yr;->m:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/yr;->m:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/yr;->n:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/yr;->m:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/yr;->m:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/yr;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/yr;->l:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/yr;->k:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/yr;->m:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final b3()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lk0/nt;->a:I

    const v2, 0x7101c7

    if-eq v1, v2, :cond_6

    .line 2
    iget v1, v0, Lk0/yr;->y:I

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/16 v9, -0x7c

    const/16 v10, 0x2e

    const/16 v11, 0xc

    const/4 v12, 0x3

    const/16 v13, 0x8

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-ne v1, v15, :cond_1

    iget v2, v0, Lk0/yr;->z:I

    if-nez v2, :cond_1

    new-array v1, v11, [B

    aput-byte v10, v1, v16

    aput-byte v9, v1, v15

    aput-byte v13, v1, v14

    .line 3
    iget v2, v0, Lk0/yr;->A:I

    rem-int/2addr v2, v14

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v15, v16

    :goto_0
    int-to-byte v2, v15

    aput-byte v2, v1, v12

    iget v2, v0, Lk0/yr;->r:I

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    iget v2, v0, Lk0/yr;->s:I

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget v2, v0, Lk0/yr;->t:I

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    iget v2, v0, Lk0/yr;->u:I

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    iget v2, v0, Lk0/yr;->v:I

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    iget v2, v0, Lk0/yr;->w:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget v2, v0, Lk0/yr;->x:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xb

    aput-byte v16, v1, v2

    .line 4
    invoke-static {v1}, Lk0/yr;->y3([B)V

    goto/16 :goto_3

    :cond_1
    if-nez v1, :cond_3

    .line 5
    iget v2, v0, Lk0/yr;->z:I

    if-ne v2, v15, :cond_3

    new-array v1, v11, [B

    aput-byte v10, v1, v16

    aput-byte v9, v1, v15

    aput-byte v13, v1, v14

    .line 6
    iget v2, v0, Lk0/yr;->A:I

    rem-int/2addr v2, v14

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v14, v16

    :goto_1
    int-to-byte v2, v14

    aput-byte v2, v1, v12

    iget v2, v0, Lk0/yr;->r:I

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    iget v2, v0, Lk0/yr;->s:I

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget v2, v0, Lk0/yr;->t:I

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    iget v2, v0, Lk0/yr;->u:I

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    iget v2, v0, Lk0/yr;->v:I

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    iget v2, v0, Lk0/yr;->w:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget v2, v0, Lk0/yr;->x:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xb

    aput-byte v16, v1, v2

    .line 7
    invoke-static {v1}, Lk0/yr;->y3([B)V

    goto/16 :goto_3

    :cond_3
    if-ne v1, v15, :cond_5

    .line 8
    iget v1, v0, Lk0/yr;->z:I

    if-ne v1, v15, :cond_5

    new-array v1, v11, [B

    aput-byte v10, v1, v16

    aput-byte v9, v1, v15

    aput-byte v13, v1, v14

    .line 9
    iget v2, v0, Lk0/yr;->A:I

    rem-int/2addr v2, v14

    if-nez v2, :cond_4

    move v2, v12

    goto :goto_2

    :cond_4
    move/from16 v2, v16

    :goto_2
    int-to-byte v2, v2

    aput-byte v2, v1, v12

    iget v2, v0, Lk0/yr;->r:I

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    iget v2, v0, Lk0/yr;->s:I

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget v2, v0, Lk0/yr;->t:I

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    iget v2, v0, Lk0/yr;->u:I

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    iget v2, v0, Lk0/yr;->v:I

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    iget v2, v0, Lk0/yr;->w:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget v2, v0, Lk0/yr;->x:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xb

    aput-byte v16, v1, v2

    .line 10
    invoke-static {v1}, Lk0/yr;->y3([B)V

    goto :goto_3

    :cond_5
    new-array v1, v11, [B

    aput-byte v10, v1, v16

    aput-byte v9, v1, v15

    aput-byte v13, v1, v14

    aput-byte v16, v1, v12

    .line 11
    iget v2, v0, Lk0/yr;->r:I

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    iget v2, v0, Lk0/yr;->s:I

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget v2, v0, Lk0/yr;->t:I

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    iget v2, v0, Lk0/yr;->u:I

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    iget v2, v0, Lk0/yr;->v:I

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    iget v2, v0, Lk0/yr;->w:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget v2, v0, Lk0/yr;->x:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xb

    aput-byte v16, v1, v2

    invoke-static {v1}, Lk0/yr;->y3([B)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final c3(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 1111111=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/yr;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/yr;->O:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/yr;->O:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/yr;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_3
    const-string v1, "6316"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "6315"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 12
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_7
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_8

    .line 14
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 17
    :cond_a
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method

.method public final s3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x6e

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/yr;->c0:I

    .line 3
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yr;->c0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final t3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x71

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/yr;->e0:I

    .line 3
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/yr;->e0:I

    if-eq p1, v3, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lk0/yr;->e0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.allscreenon"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    sget v0, Lk0/yr;->e0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final u3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x73

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/yr;->f0:I

    .line 3
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    const/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yr;->f0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final v3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x72

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/yr;->h0:I

    .line 3
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yr;->h0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final w3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x6d

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/yr;->b0:I

    .line 3
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yr;->b0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final x3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x6f

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/yr;->d0:I

    .line 3
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yr;->d0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/yr;->W:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
