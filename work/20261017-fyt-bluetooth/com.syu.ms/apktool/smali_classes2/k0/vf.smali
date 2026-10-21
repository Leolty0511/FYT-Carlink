.class public Lk0/vf;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static I:I = 0x0

.field public static J:I = 0x0

.field public static K:I = 0xa

.field public static L:I = 0xa

.field public static M:I = 0xa

.field public static N:I = 0xa

.field public static O:I = 0xa

.field public static P:I = 0xa

.field public static Q:I = 0x1

.field public static R:I = 0x0

.field public static S:I = 0xff

.field public static final T:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:I

.field public C:I

.field public D:F

.field public E:I

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public b:Lo1/g0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public m:I

.field public n:I

.field public o:[[I

.field public p:I

.field public q:I

.field public r:[[I

.field public s:I

.field public t:Z

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:B

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/vf;->T:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x21
        0x23
        0x25
        0x26
        0x27
        0x27
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/vf;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/vf;->c:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lk0/vf;->d:I

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lk0/vf;->e:I

    const/4 v3, 0x4

    .line 6
    iput v3, p0, Lk0/vf;->f:I

    const/4 v4, 0x5

    .line 7
    iput v4, p0, Lk0/vf;->g:I

    const/4 v5, 0x6

    .line 8
    iput v5, p0, Lk0/vf;->h:I

    const/4 v6, 0x7

    .line 9
    iput v6, p0, Lk0/vf;->i:I

    const/16 v7, 0x8

    .line 10
    iput v7, p0, Lk0/vf;->j:I

    const/16 v8, 0x9

    .line 11
    iput v8, p0, Lk0/vf;->k:I

    const/16 v9, 0xa

    .line 12
    iput v9, p0, Lk0/vf;->l:I

    const/4 v10, 0x0

    .line 13
    iput v10, p0, Lk0/vf;->n:I

    const/16 v11, 0xb

    new-array v12, v11, [[I

    new-array v13, v1, [I

    .line 14
    fill-array-data v13, :array_0

    aput-object v13, v12, v10

    new-array v13, v1, [I

    fill-array-data v13, :array_1

    aput-object v13, v12, v0

    new-array v13, v1, [I

    fill-array-data v13, :array_2

    aput-object v13, v12, v1

    new-array v13, v1, [I

    fill-array-data v13, :array_3

    aput-object v13, v12, v2

    new-array v13, v1, [I

    fill-array-data v13, :array_4

    aput-object v13, v12, v3

    new-array v13, v1, [I

    fill-array-data v13, :array_5

    aput-object v13, v12, v4

    new-array v13, v1, [I

    fill-array-data v13, :array_6

    aput-object v13, v12, v5

    new-array v13, v1, [I

    fill-array-data v13, :array_7

    aput-object v13, v12, v6

    new-array v13, v1, [I

    fill-array-data v13, :array_8

    aput-object v13, v12, v7

    new-array v13, v1, [I

    fill-array-data v13, :array_9

    aput-object v13, v12, v8

    new-array v13, v1, [I

    fill-array-data v13, :array_a

    aput-object v13, v12, v9

    iput-object v12, p0, Lk0/vf;->o:[[I

    .line 15
    iput v10, p0, Lk0/vf;->q:I

    const/16 v12, 0x15

    new-array v12, v12, [[I

    new-array v13, v1, [I

    .line 16
    fill-array-data v13, :array_b

    aput-object v13, v12, v10

    new-array v13, v1, [I

    fill-array-data v13, :array_c

    aput-object v13, v12, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    aput-object v0, v12, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_f

    aput-object v0, v12, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    aput-object v0, v12, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    aput-object v0, v12, v5

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    aput-object v0, v12, v6

    new-array v0, v1, [I

    fill-array-data v0, :array_13

    aput-object v0, v12, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_14

    aput-object v0, v12, v8

    new-array v0, v1, [I

    fill-array-data v0, :array_15

    aput-object v0, v12, v9

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    aput-object v0, v12, v11

    new-array v0, v1, [I

    fill-array-data v0, :array_17

    const/16 v2, 0xc

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    const/16 v2, 0xd

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_19

    const/16 v2, 0xe

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    const/16 v2, 0xf

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1b

    const/16 v2, 0x10

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    const/16 v2, 0x11

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1d

    const/16 v2, 0x12

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    const/16 v2, 0x13

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    const/16 v1, 0x14

    aput-object v0, v12, v1

    iput-object v12, p0, Lk0/vf;->r:[[I

    .line 17
    iput v10, p0, Lk0/vf;->s:I

    .line 18
    iput-boolean v10, p0, Lk0/vf;->t:Z

    .line 19
    iput v10, p0, Lk0/vf;->u:I

    .line 20
    new-instance v0, Lk0/vf$a;

    invoke-direct {v0, p0}, Lk0/vf$a;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->v:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/vf$b;

    invoke-direct {v0, p0}, Lk0/vf$b;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->w:Ljava/lang/Runnable;

    .line 22
    iput-byte v4, p0, Lk0/vf;->x:B

    .line 23
    new-instance v0, Lk0/vf$c;

    invoke-direct {v0, p0}, Lk0/vf$c;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->y:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Lk0/vf$d;

    invoke-direct {v0, p0}, Lk0/vf$d;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lk0/vf$e;

    invoke-direct {v0, p0}, Lk0/vf$e;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->A:Ljava/lang/Runnable;

    .line 26
    iput v10, p0, Lk0/vf;->B:I

    .line 27
    iput v10, p0, Lk0/vf;->C:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lk0/vf;->D:F

    const/16 v0, 0xff

    .line 29
    iput v0, p0, Lk0/vf;->E:I

    .line 30
    iput v0, p0, Lk0/vf;->F:I

    .line 31
    new-instance v0, Lk0/vf$f;

    invoke-direct {v0, p0}, Lk0/vf$f;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->G:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lk0/vf$g;

    invoke-direct {v0, p0}, Lk0/vf$g;-><init>(Lk0/vf;)V

    iput-object v0, p0, Lk0/vf;->H:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
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
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x3e
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x3e
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x7
        0xb
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x9
        0x9
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x6
    .end array-data

    :array_15
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_16
    .array-data 4
        0xc
        0x36
    .end array-data

    :array_17
    .array-data 4
        0xd
        0x18
    .end array-data

    :array_18
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_19
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_1a
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_1b
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_1c
    .array-data 4
        0x12
        0x22
    .end array-data

    :array_1d
    .array-data 4
        0x13
        0x21
    .end array-data

    :array_1e
    .array-data 4
        0x14
        0x20
    .end array-data

    :array_1f
    .array-data 4
        0x15
        0x23
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    .line 1
    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public static synthetic c3(Lk0/vf;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vf;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d3(Lk0/vf;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vf;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/vf;->T:[I

    return-object v0
.end method

.method public static synthetic f3(Lk0/vf;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/vf;->D:F

    return p0
.end method

.method public static synthetic g3(Lk0/vf;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/vf;->D:F

    return p1
.end method

.method public static synthetic h3(Lk0/vf;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/vf;->D:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/vf;->D:F

    return v0
.end method

.method public static synthetic i3(Lk0/vf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/vf;->F:I

    return p0
.end method

.method public static synthetic j3(Lk0/vf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/vf;->F:I

    return p1
.end method

.method public static synthetic k3(Lk0/vf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/vf;->C:I

    return p0
.end method

.method public static synthetic l3(Lk0/vf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/vf;->C:I

    return p1
.end method

.method public static synthetic m3(Lk0/vf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/vf;->E:I

    return p0
.end method

.method public static synthetic n3(Lk0/vf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/vf;->E:I

    return p1
.end method

.method public static synthetic o3(Lk0/vf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/vf;->B:I

    return p0
.end method

.method public static synthetic p3(Lk0/vf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/vf;->B:I

    return p1
.end method

.method public static synthetic q3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->G3(I)V

    return-void
.end method

.method public static synthetic r3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->F3(I)V

    return-void
.end method

.method public static synthetic s3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->C3(I)V

    return-void
.end method

.method public static synthetic t3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->A3(I)V

    return-void
.end method

.method public static synthetic u3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->z3(I)V

    return-void
.end method

.method public static synthetic v3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->B3(I)V

    return-void
.end method

.method public static synthetic w3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->E3(I)V

    return-void
.end method

.method public static synthetic x3(Lk0/vf;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vf;->D3(I)V

    return-void
.end method


# virtual methods
.method public final A3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/vf;->N:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x84

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v4, [I

    .line 3
    sget v0, Lk0/vf;->N:I

    aput v0, p1, v3

    const/16 v0, 0x91

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/4 v0, 0x6

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vf;->N:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final B3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/vf;->P:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/vf;->P:I

    aput v0, p1, v2

    const/16 v0, 0x93

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/16 v0, 0x8

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vf;->P:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final C3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/vf;->M:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x84

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    const/4 v5, 0x4

    aput v5, v1, v2

    aput p1, v1, v5

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v4, [I

    .line 3
    sget v1, Lk0/vf;->M:I

    aput v1, p1, v3

    const/16 v1, 0x90

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vf;->M:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final D3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/vf;->R:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v4, 0x6

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/vf;->R:I

    aput v0, p1, v2

    const/16 v0, 0x94

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vf;->R:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final E3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/vf;->Q:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v4, 0x7

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/vf;->Q:I

    aput v0, p1, v2

    const/16 v0, 0x95

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vf;->Q:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final F3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/vf;->L:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/vf;->L:I

    aput v0, p1, v2

    const/16 v0, 0x8f

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/vf;->L:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final G3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/vf;->K:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/16 v1, 0x8

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/vf;->K:I

    aput v0, p1, v2

    const/16 v0, 0x8e

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v4, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/vf;->K:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final H3(I)V
    .locals 3

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
    sput p1, Lk0/vf;->I:I

    const/16 v2, 0x73

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 2
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/vf;->I:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_11

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x29

    const/4 v4, 0x3

    if-eq v2, v3, :cond_f

    const/16 v3, 0x2a

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eq v2, v3, :cond_d

    const/16 v3, 0x43

    if-eq v2, v3, :cond_8

    const/16 v1, 0xa

    const/16 v3, 0x15

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x9

    .line 6
    invoke-virtual {p0, p1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget p1, p1, v0

    const/16 v1, 0x19

    const/16 v2, 0xc

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_11

    .line 9
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_11

    .line 11
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    aget p1, p1, v0

    const/16 v1, 0x31

    const/16 v2, 0x10

    if-eqz p1, :cond_3

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_11

    .line 14
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 15
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_11

    .line 16
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    aget p1, p1, v0

    const/16 v1, 0x30

    const/16 v2, 0x41

    if-eqz p1, :cond_4

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_11

    .line 19
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 20
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_11

    .line 21
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    aget p1, p1, v0

    const/16 v1, 0xd

    if-eqz p1, :cond_5

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_11

    .line 24
    invoke-virtual {p0, v3}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 25
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_11

    .line 26
    invoke-virtual {p0, v3}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_5
    aget p1, p1, v0

    const/16 v1, 0x17

    const/16 v2, 0xb

    if-eqz p1, :cond_6

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_11

    .line 29
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto/16 :goto_0

    .line 30
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_11

    .line 31
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    goto :goto_0

    .line 32
    :pswitch_6
    aget p1, p1, v0

    if-eqz p1, :cond_7

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_11

    .line 34
    invoke-virtual {p0, v3}, Lk0/vf;->b3(I)V

    goto :goto_0

    .line 35
    :cond_7
    invoke-virtual {p0, v0}, Lk0/vf;->b3(I)V

    goto :goto_0

    .line 36
    :cond_8
    aget p1, p1, v0

    if-eq p1, v1, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v5, :cond_a

    if-eq p1, v6, :cond_9

    goto :goto_0

    :cond_9
    new-array p1, v6, [I

    .line 37
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    new-array p1, v6, [I

    .line 38
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array p1, v6, [I

    .line 39
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_c
    new-array p1, v6, [I

    .line 40
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 41
    :cond_d
    aget p1, p1, v0

    if-eqz p1, :cond_e

    .line 42
    invoke-virtual {p0, v6}, Lk0/vf;->b3(I)V

    goto :goto_0

    .line 43
    :cond_e
    invoke-virtual {p0, v5}, Lk0/vf;->b3(I)V

    goto :goto_0

    .line 44
    :cond_f
    aget p1, p1, v0

    if-eqz p1, :cond_10

    .line 45
    invoke-virtual {p0, v4}, Lk0/vf;->b3(I)V

    goto :goto_0

    .line 46
    :cond_10
    invoke-virtual {p0, v1}, Lk0/vf;->b3(I)V

    :cond_11
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
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
        -0x75
        0x2
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x75
        0x2
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x75
        0x2
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x75
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/vf;->b:Lo1/g0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/vf;->H3(I)V

    .line 3
    iget-object v0, p0, Lk0/vf;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/vf;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/vf;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vf;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/vf;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/vf;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v2, v0, Lk0/mt;->e:I

    .line 11
    iput v2, v0, Lk0/mt;->f:I

    .line 12
    iput v2, v0, Lk0/mt;->g:I

    .line 13
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lk0/mt;->b:I

    .line 15
    iput v1, v0, Lk0/mt;->l:I

    .line 16
    iput v1, v0, Lk0/mt;->c:I

    .line 17
    iput v1, v0, Lk0/mt;->d:I

    .line 18
    iput v1, v0, Lk0/mt;->o:I

    .line 19
    sget v1, Lk0/nt;->a:I

    const v3, 0x3501c8

    if-eq v1, v3, :cond_0

    const v3, 0x3601c8

    if-eq v1, v3, :cond_0

    const v3, 0x3701c8

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iput v2, v0, Lk0/mt;->l:I

    :goto_0
    const/16 v1, 0xd

    new-array v1, v1, [I

    .line 21
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

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
        0x44
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v5, 0x10

    const/16 v6, 0xa

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v10, :cond_2b

    const/16 v11, 0x13

    const/16 v13, 0x1f

    const/16 v14, 0x1c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_24

    const/4 v7, 0x4

    if-eq v2, v8, :cond_1e

    if-eq v2, v7, :cond_1d

    const/4 v12, 0x6

    if-eq v2, v12, :cond_1c

    const/16 v12, 0x1e

    if-eq v2, v11, :cond_1b

    const/16 v11, 0x9

    if-eq v2, v14, :cond_1a

    const/16 v14, 0x21

    const/16 v15, 0x8

    if-eq v2, v14, :cond_c

    const/16 v12, 0x30

    if-eq v2, v12, :cond_b

    const/16 v12, 0x67

    if-eq v2, v12, :cond_4

    if-eq v2, v11, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    const/16 v4, 0x11

    if-eq v2, v4, :cond_0

    goto/16 :goto_e

    :cond_0
    const/16 v2, 0x7c

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 4
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1
    const/16 v2, 0x79

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 5
    aget-byte v5, v1, v5

    shl-int/2addr v5, v15

    const v7, 0xff00

    and-int/2addr v5, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 6
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 7
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 8
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x7

    .line 9
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 10
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x9

    .line 11
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 12
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_2
    const/16 v2, 0x72

    new-array v5, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 13
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_3
    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 15
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/vf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 21
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/vf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    .line 22
    :cond_4
    sget v2, Lk0/vf;->I:I

    if-nez v2, :cond_5

    goto/16 :goto_e

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v5, v1, v2

    if-eq v5, v10, :cond_8

    if-eq v5, v4, :cond_7

    if-eq v5, v8, :cond_6

    move v5, v9

    move v10, v5

    goto :goto_0

    :cond_6
    move v5, v10

    goto :goto_0

    :cond_7
    move v5, v9

    goto :goto_0

    :cond_8
    move v5, v10

    move v10, v9

    .line 24
    :goto_0
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 25
    invoke-static {v10, v5, v9}, Ll0/c0;->N1(III)V

    goto/16 :goto_e

    .line 26
    :cond_9
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    .line 27
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_34

    if-ne v1, v4, :cond_a

    .line 28
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 29
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_e

    .line 30
    :cond_a
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 31
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_e

    .line 32
    :cond_b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    .line 33
    iput-byte v9, v0, Lk0/vf;->x:B

    goto/16 :goto_e

    .line 34
    :cond_c
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_e

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 36
    aget-byte v1, v1, v5

    and-int/2addr v2, v3

    .line 37
    iput v2, v0, Lk0/vf;->q:I

    move v2, v9

    .line 38
    :goto_1
    iget-object v5, v0, Lk0/vf;->r:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_f

    .line 39
    iget v6, v0, Lk0/vf;->q:I

    aget-object v11, v5, v2

    aget v11, v11, v9

    if-ne v6, v11, :cond_e

    if-eqz v6, :cond_f

    .line 40
    iput v2, v0, Lk0/vf;->p:I

    goto :goto_2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_f
    :goto_2
    iget v6, v0, Lk0/vf;->q:I

    if-eq v6, v10, :cond_18

    if-eq v6, v4, :cond_16

    if-eq v6, v8, :cond_14

    if-eq v6, v7, :cond_12

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_10

    .line 42
    array-length v1, v5

    if-ge v2, v1, :cond_34

    .line 43
    aget-object v1, v5, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_10
    if-nez v1, :cond_34

    .line 44
    iget v1, v0, Lk0/vf;->p:I

    array-length v2, v5

    if-ge v1, v2, :cond_11

    if-eq v1, v3, :cond_11

    .line 45
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 46
    :cond_11
    iput v3, v0, Lk0/vf;->p:I

    goto/16 :goto_e

    :cond_12
    move v2, v9

    :goto_3
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_13

    .line 47
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 48
    :cond_13
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_14
    move v2, v9

    :goto_4
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_15

    .line 49
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 50
    :cond_15
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_16
    move v2, v9

    :goto_5
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_17

    .line 51
    invoke-static {v15, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 52
    :cond_17
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_18
    move v2, v9

    :goto_6
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_19

    const/4 v4, 0x7

    .line 53
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    const/4 v4, 0x7

    .line 54
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1a
    const/16 v2, 0x85

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 55
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 56
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x7

    .line 57
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v10, [I

    .line 58
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v10, [I

    .line 59
    aget-byte v5, v1, v5

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 60
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x9

    .line 61
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x1d

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x0

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v9

    .line 63
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v9

    .line 64
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x5d

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x0

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v9

    .line 66
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x5f

    new-array v5, v10, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v9

    .line 67
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x0

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v9

    .line 69
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v9

    const/16 v2, 0x20

    .line 70
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 71
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const/16 v2, 0x5e

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v9

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x60

    new-array v3, v10, [I

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v9

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x14f0

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_1d
    const/16 v2, 0x65

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x2

    .line 75
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 76
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x4

    .line 77
    aget-byte v6, v1, v6

    and-int/2addr v3, v6

    aput v3, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 78
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    .line 79
    aget-byte v5, v1, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 80
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 81
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    .line 82
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    .line 83
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    .line 84
    aget-byte v5, v1, v5

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    const/4 v5, 0x7

    add-int/lit8 v5, p2, 0x7

    .line 85
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 86
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    .line 87
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    .line 88
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1e
    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 90
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1f

    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 91
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 92
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1f
    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 93
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 94
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 95
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 96
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 97
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v10

    aput v2, v3, v9

    const/4 v2, 0x5

    .line 98
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 99
    iget v2, v0, Lk0/vf;->s:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    if-eq v2, v4, :cond_34

    .line 100
    aget-byte v1, v1, v3

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    iput v1, v0, Lk0/vf;->s:I

    .line 101
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_34

    if-ne v1, v10, :cond_22

    .line 102
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_21

    const/16 v1, 0x98

    new-array v2, v10, [I

    aput v10, v2, v9

    .line 103
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 104
    iput-boolean v10, v0, Lk0/vf;->t:Z

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "true"

    .line 105
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 106
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 107
    invoke-static {}, Lo1/u;->z()I

    .line 108
    sget v1, Ly0/f;->x:I

    if-nez v1, :cond_20

    sget v1, Ly0/f;->c:I

    sget v2, Ly0/f;->R:I

    mul-int/2addr v1, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    goto :goto_8

    :cond_20
    const/4 v1, 0x0

    :goto_8
    float-to-int v1, v1

    .line 109
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lk0/vf;->u:I

    .line 110
    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 111
    :cond_21
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto/16 :goto_e

    :cond_22
    if-nez v1, :cond_34

    .line 112
    iget v1, v0, Lk0/vf;->u:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 113
    iget-boolean v1, v0, Lk0/vf;->t:Z

    if-eqz v1, :cond_23

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x98

    new-array v2, v10, [I

    aput v9, v2, v9

    .line 114
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-wide/16 v1, 0x15e

    .line 115
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 116
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_23
    iput-boolean v9, v0, Lk0/vf;->t:Z

    goto/16 :goto_e

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/lit8 v7, p2, 0x4

    .line 120
    aget-byte v8, v1, v7

    and-int/2addr v8, v3

    add-int/lit8 v12, p2, 0x5

    .line 121
    aget-byte v15, v1, v12

    and-int/2addr v15, v3

    new-array v14, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    .line 122
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xb

    new-array v6, v10, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v6, v9

    .line 123
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xc

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v9

    .line 124
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x36

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v9

    .line 125
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v9

    .line 126
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v9

    .line 127
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x41

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x1

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v9

    .line 128
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v6, v9

    .line 129
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v4, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v9

    const/16 v5, 0x12

    .line 130
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v4, 0x6

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 131
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v10, [I

    shr-int/lit8 v6, v4, 0x5

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 132
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v10, [I

    and-int/2addr v4, v13

    aput v4, v5, v9

    .line 133
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 134
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 135
    aget-byte v8, v1, v12

    .line 136
    aget-byte v15, v1, v7

    :cond_25
    and-int/lit16 v2, v8, 0xff

    const/16 v4, 0x1b

    if-nez v2, :cond_26

    new-array v2, v10, [I

    const/4 v5, -0x2

    aput v5, v2, v9

    .line 137
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_26
    const/16 v5, 0x20

    if-ne v2, v5, :cond_27

    new-array v2, v10, [I

    const/4 v5, -0x3

    aput v5, v2, v9

    .line 138
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_27
    new-array v5, v10, [I

    aput v2, v5, v9

    .line 139
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_9
    and-int/lit16 v2, v15, 0xff

    if-nez v2, :cond_28

    new-array v2, v10, [I

    const/4 v4, -0x2

    aput v4, v2, v9

    const/16 v4, 0x1c

    .line 140
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_28
    const/16 v4, 0x1c

    const/16 v5, 0x20

    if-ne v2, v5, :cond_29

    new-array v2, v10, [I

    const/4 v5, -0x3

    aput v5, v2, v9

    .line 141
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_29
    new-array v5, v10, [I

    aput v2, v5, v9

    .line 142
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v2, 0x2a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 143
    aget-byte v5, v1, v5

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 144
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    and-int/lit8 v2, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2a

    const/16 v1, 0xa

    mul-int/2addr v2, v1

    rsub-int v1, v2, 0x3e8

    goto :goto_b

    :cond_2a
    const/16 v1, 0xa

    mul-int/2addr v2, v1

    add-int/lit16 v1, v2, 0x3e8

    :goto_b
    const/16 v2, 0x258

    if-le v1, v2, :cond_34

    .line 145
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_2b
    add-int/lit8 v2, p2, 0x2

    .line 146
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 147
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 148
    iput v2, v0, Lk0/vf;->n:I

    move v2, v9

    .line 149
    :goto_c
    iget-object v4, v0, Lk0/vf;->o:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_2d

    .line 150
    iget v6, v0, Lk0/vf;->n:I

    aget-object v7, v4, v2

    aget v7, v7, v9

    if-ne v6, v7, :cond_2c

    if-eqz v6, :cond_2d

    .line 151
    iput v2, v0, Lk0/vf;->m:I

    goto :goto_d

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 152
    :cond_2d
    :goto_d
    iget v6, v0, Lk0/vf;->n:I

    const/16 v7, 0xa

    if-eq v6, v7, :cond_32

    if-eq v6, v5, :cond_30

    const/16 v5, 0x11

    if-eq v6, v5, :cond_30

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_2e

    .line 153
    array-length v1, v4

    if-ge v2, v1, :cond_34

    .line 154
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_2e
    if-nez v1, :cond_34

    .line 155
    iget v1, v0, Lk0/vf;->m:I

    array-length v2, v4

    if-ge v1, v2, :cond_2f

    if-eq v1, v3, :cond_2f

    .line 156
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 157
    :cond_2f
    iput v3, v0, Lk0/vf;->m:I

    goto :goto_e

    :cond_30
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_34

    .line 158
    sget v1, Lk0/nt;->a:I

    const v2, 0x3501c8

    const/16 v3, 0x3e

    if-eq v1, v2, :cond_31

    const v2, 0x3601c8

    if-eq v1, v2, :cond_31

    const v2, 0x3701c8

    if-eq v1, v2, :cond_31

    .line 159
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 160
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 161
    :cond_31
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_34

    .line 162
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 163
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_32
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_34

    .line 164
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_33

    const/4 v2, 0x5

    if-eq v1, v2, :cond_33

    const/16 v1, 0x12

    .line 165
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 166
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_33
    const/16 v1, 0x1a

    .line 167
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 168
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    :cond_34
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/vf;->b:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/vf;->y3(I)V

    .line 3
    iget-object v0, p0, Lk0/vf;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/vf;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/vf;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/vf;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vf;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/vf;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/vf;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/vf;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x99

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
    .locals 9

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v2, :cond_9

    const/16 v5, 0x3ed

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-eq p1, v5, :cond_4

    const/16 v5, 0x405

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array p1, v6, [I

    aput p3, p1, v3

    const/16 p3, 0x76

    aput p3, p1, v4

    aput v1, p1, v2

    .line 1
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v0

    aput p3, p1, v8

    aget p2, p2, p4

    aput p2, p1, v7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 2
    :pswitch_1
    sget p1, Lk0/nt;->U:I

    if-ne p1, v4, :cond_c

    .line 3
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v3

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_1

    :pswitch_2
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v2

    .line 4
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :pswitch_3
    aget p1, p2, v3

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 6
    :pswitch_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->G3(I)V

    goto/16 :goto_1

    .line 7
    :pswitch_5
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->E3(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_6
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->D3(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_7
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->A3(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_8
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->C3(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_9
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->F3(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_a
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->z3(I)V

    goto/16 :goto_1

    .line 13
    :pswitch_b
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vf;->B3(I)V

    goto/16 :goto_1

    :pswitch_c
    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, 0x8a

    aput p3, p1, v4

    aput v2, p1, v2

    .line 14
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_d
    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, 0x74

    aput p3, p1, v4

    aput v2, p1, v2

    .line 15
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "touch_x = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p2, v4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\\\\\\touch_y = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p2, v2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "touch_state = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p2, v3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v4, :cond_c

    .line 19
    aget p1, p2, v4

    .line 20
    aget p3, p2, v2

    .line 21
    aget p2, p2, v3

    if-nez p2, :cond_c

    .line 22
    invoke-static {}, La/f;->w()I

    move-result p2

    mul-int/lit16 p2, p2, 0x168

    div-int/lit16 p2, p2, 0x400

    if-ge p1, p2, :cond_1

    invoke-static {}, La/f;->i()I

    move-result p2

    mul-int/lit16 p2, p2, 0x96

    div-int/lit16 p2, p2, 0x258

    if-ge p3, p2, :cond_1

    new-array p1, v1, [I

    .line 23
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 24
    :cond_1
    invoke-static {}, La/f;->w()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    div-int/lit16 p2, p2, 0x400

    if-ge p1, p2, :cond_2

    invoke-static {}, La/f;->i()I

    move-result p2

    mul-int/lit16 p2, p2, 0x1c2

    div-int/lit16 p2, p2, 0x258

    if-ge p3, p2, :cond_2

    invoke-static {}, La/f;->i()I

    move-result p2

    mul-int/lit16 p2, p2, 0xc8

    div-int/lit16 p2, p2, 0x258

    if-le p3, p2, :cond_2

    new-array p1, v1, [I

    .line 25
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 26
    :cond_2
    invoke-static {}, La/f;->w()I

    move-result p2

    mul-int/lit16 p2, p2, 0x1a4

    div-int/lit16 p2, p2, 0x400

    if-ge p1, p2, :cond_3

    invoke-static {}, La/f;->w()I

    move-result p2

    mul-int/lit16 p2, p2, 0xdc

    div-int/lit16 p2, p2, 0x400

    if-le p1, p2, :cond_3

    invoke-static {}, La/f;->i()I

    move-result p2

    mul-int/lit16 p2, p2, 0x1c2

    div-int/lit16 p2, p2, 0x258

    if-ge p3, p2, :cond_3

    invoke-static {}, La/f;->i()I

    move-result p2

    mul-int/lit16 p2, p2, 0xc8

    div-int/lit16 p2, p2, 0x258

    if-le p3, p2, :cond_3

    new-array p1, v1, [I

    .line 27
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 28
    :cond_3
    invoke-static {}, La/f;->w()I

    move-result p2

    mul-int/lit16 p2, p2, 0x104

    div-int/lit16 p2, p2, 0x400

    if-ge p1, p2, :cond_c

    invoke-static {}, La/f;->i()I

    move-result p1

    mul-int/lit16 p1, p1, 0x1e0

    div-int/lit16 p1, p1, 0x258

    if-le p3, p1, :cond_c

    new-array p1, v1, [I

    .line 29
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 30
    :cond_4
    aget p1, p2, v3

    if-ne p1, p4, :cond_5

    move v6, v4

    goto :goto_0

    .line 31
    :cond_5
    aget p1, p2, v3

    if-ne p1, v1, :cond_6

    move v6, v2

    goto :goto_0

    .line 32
    :cond_6
    aget p1, p2, v3

    if-ne p1, v8, :cond_7

    move v6, v7

    goto :goto_0

    .line 33
    :cond_7
    aget p1, p2, v3

    if-ne p1, v7, :cond_8

    goto :goto_0

    :cond_8
    move v6, v3

    :goto_0
    new-array p1, v8, [I

    aput p3, p1, v3

    const/16 p2, 0x83

    aput p2, p1, v4

    aput v0, p1, v2

    const/16 p2, 0xa

    aput p2, p1, v0

    int-to-byte p2, v6

    aput p2, p1, p4

    const/16 p2, 0xff

    aput p2, p1, v1

    .line 34
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_c

    .line 35
    array-length p1, p2

    if-lez p1, :cond_c

    .line 36
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/vf;->H3(I)V

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_c

    .line 37
    array-length p1, p2

    if-lt p1, v2, :cond_c

    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v2, p1, v2

    .line 38
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_c

    .line 39
    array-length p1, p2

    if-lt p1, v2, :cond_c

    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, -0x20

    aput p3, p1, v4

    aput v2, p1, v2

    .line 40
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_c
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x8b
        0x2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8b
        0x2
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x8b
        0x2
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x8b
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public final b3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x20

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

.method public final y3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/vf;->J:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x83

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    aput v4, v0, v1

    aput v1, v0, v4

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 p1, 0x5

    aput v2, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/vf;->J:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final z3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/vf;->O:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x84

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/vf;->O:I

    aput v0, p1, v2

    const/16 v0, 0x92

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    const/4 v0, 0x7

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vf;->O:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vf;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
