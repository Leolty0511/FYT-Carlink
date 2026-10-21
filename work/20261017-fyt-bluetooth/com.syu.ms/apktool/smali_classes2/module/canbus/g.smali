.class public Lmodule/canbus/g;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/g$g;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static final R:[I

.field public static final S:[I

.field public static final T:[I

.field public static final U:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/g$g;",
            ">;"
        }
    .end annotation
.end field

.field public static y:I

.field public static z:I


# instance fields
.field public final b:[I

.field public c:Lo1/g0;

.field public final d:I

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:[[I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:F

.field public o:I

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:J

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/g;->R:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/g;->S:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/g;->T:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/g;->U:Lo1/f;

    return-void

    nop

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
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x13
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x5
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lmodule/canbus/g;->b:[I

    .line 3
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmodule/canbus/g;->c:Lo1/g0;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lmodule/canbus/g;->d:I

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lmodule/canbus/g;->e:I

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lmodule/canbus/g;->f:I

    .line 7
    iput v3, p0, Lmodule/canbus/g;->h:I

    const/16 v4, 0x9

    new-array v5, v4, [[I

    new-array v6, v2, [I

    .line 8
    fill-array-data v6, :array_1

    aput-object v6, v5, v3

    new-array v6, v2, [I

    fill-array-data v6, :array_2

    aput-object v6, v5, v1

    new-array v6, v2, [I

    fill-array-data v6, :array_3

    aput-object v6, v5, v2

    new-array v6, v2, [I

    fill-array-data v6, :array_4

    const/4 v7, 0x3

    aput-object v6, v5, v7

    new-array v6, v2, [I

    fill-array-data v6, :array_5

    const/4 v8, 0x4

    aput-object v6, v5, v8

    new-array v6, v2, [I

    fill-array-data v6, :array_6

    const/4 v9, 0x5

    aput-object v6, v5, v9

    new-array v6, v2, [I

    fill-array-data v6, :array_7

    const/4 v10, 0x6

    aput-object v6, v5, v10

    new-array v6, v2, [I

    fill-array-data v6, :array_8

    const/4 v11, 0x7

    aput-object v6, v5, v11

    new-array v6, v2, [I

    fill-array-data v6, :array_9

    const/16 v12, 0x8

    aput-object v6, v5, v12

    iput-object v5, p0, Lmodule/canbus/g;->i:[[I

    const/16 v5, 0x13

    new-array v5, v5, [[I

    new-array v6, v2, [I

    .line 9
    fill-array-data v6, :array_a

    aput-object v6, v5, v3

    new-array v6, v2, [I

    fill-array-data v6, :array_b

    aput-object v6, v5, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v5, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v5, v7

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v5, v8

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v5, v9

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v5, v10

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v5, v11

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v5, v12

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v5, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    const/16 v4, 0xa

    aput-object v1, v5, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v5, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    aput-object v1, v5, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v1, 0xd

    aput-object v0, v5, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v1, 0xe

    aput-object v0, v5, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v1, 0xf

    aput-object v0, v5, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0x10

    aput-object v0, v5, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0x11

    aput-object v0, v5, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x12

    aput-object v0, v5, v1

    iput-object v5, p0, Lmodule/canbus/g;->j:[[I

    .line 10
    new-instance v0, Lmodule/canbus/g$a;

    invoke-direct {v0, p0}, Lmodule/canbus/g$a;-><init>(Lmodule/canbus/g;)V

    iput-object v0, p0, Lmodule/canbus/g;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lmodule/canbus/g$b;

    invoke-direct {v0, p0}, Lmodule/canbus/g$b;-><init>(Lmodule/canbus/g;)V

    iput-object v0, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lmodule/canbus/g$c;

    invoke-direct {v0, p0}, Lmodule/canbus/g$c;-><init>(Lmodule/canbus/g;)V

    iput-object v0, p0, Lmodule/canbus/g;->m:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lmodule/canbus/g;->n:F

    const/16 v0, 0xff

    .line 14
    iput v0, p0, Lmodule/canbus/g;->o:I

    .line 15
    iput v0, p0, Lmodule/canbus/g;->p:I

    .line 16
    new-instance v0, Lmodule/canbus/g$d;

    invoke-direct {v0, p0}, Lmodule/canbus/g$d;-><init>(Lmodule/canbus/g;)V

    iput-object v0, p0, Lmodule/canbus/g;->q:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lmodule/canbus/g;->r:J

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lmodule/canbus/g;->s:I

    .line 19
    new-instance v0, Lmodule/canbus/g$e;

    invoke-direct {v0, p0}, Lmodule/canbus/g$e;-><init>(Lmodule/canbus/g;)V

    iput-object v0, p0, Lmodule/canbus/g;->t:Ljava/lang/Runnable;

    const/16 v0, 0x64

    .line 20
    iput v0, p0, Lmodule/canbus/g;->u:I

    .line 21
    new-instance v0, Lmodule/canbus/g$f;

    invoke-direct {v0, p0}, Lmodule/canbus/g$f;-><init>(Lmodule/canbus/g;)V

    iput-object v0, p0, Lmodule/canbus/g;->v:Ljava/lang/Runnable;

    .line 22
    iput v3, p0, Lmodule/canbus/g;->w:I

    return-void

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
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_11
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_12
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_13
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x13
        0xc
    .end array-data

    :array_15
    .array-data 4
        0x14
        0x19
    .end array-data

    :array_16
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_19
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_1a
    .array-data 4
        0x19
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x20
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x21
        0x0
    .end array-data
.end method

.method public static synthetic A3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g;->D:I

    return p0
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->Q:I

    return v0
.end method

.method public static synthetic C3(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->U3()V

    return-void
.end method

.method public static synthetic D3(Lmodule/canbus/g;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g;->n:F

    return p0
.end method

.method public static synthetic E3(Lmodule/canbus/g;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g;->n:F

    return p1
.end method

.method public static synthetic F3(Lmodule/canbus/g;F)F
    .locals 1

    .line 1
    iget v0, p0, Lmodule/canbus/g;->n:F

    rem-float/2addr v0, p1

    iput v0, p0, Lmodule/canbus/g;->n:F

    return v0
.end method

.method public static synthetic G3(Lmodule/canbus/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g;->p:I

    return p0
.end method

.method public static synthetic H3(Lmodule/canbus/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g;->p:I

    return p1
.end method

.method public static synthetic I3(Lmodule/canbus/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g;->o:I

    return p0
.end method

.method public static synthetic J3(Lmodule/canbus/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g;->o:I

    return p1
.end method

.method public static synthetic K3(Lmodule/canbus/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g;->u:I

    return p0
.end method

.method public static synthetic L3(Lmodule/canbus/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g;->w:I

    return p0
.end method

.method public static synthetic M3(Lmodule/canbus/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g;->w:I

    return p1
.end method

.method public static synthetic N3(Lmodule/canbus/g;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/g;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/g;->w:I

    return v0
.end method

.method public static synthetic O3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->G:I

    return v0
.end method

.method public static synthetic P3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g;->G:I

    return p0
.end method

.method public static synthetic Q3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/g;->R:[I

    return-object v0
.end method

.method public static R3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/g;->U:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/g$g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/g$g;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->E:I

    return v0
.end method

.method public static synthetic d3(Lmodule/canbus/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmodule/canbus/g;->r:J

    return-wide v0
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->F:I

    return v0
.end method

.method public static synthetic f3(Lmodule/canbus/g;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmodule/canbus/g;->r:J

    return-wide p1
.end method

.method public static synthetic g3(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->a4()V

    return-void
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->z:I

    return v0
.end method

.method public static synthetic i3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g;->z:I

    return p0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->K:I

    return v0
.end method

.method public static synthetic k3(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->V3()V

    return-void
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->A:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g;->A:I

    return p0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->L:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->Y3()V

    return-void
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->B:I

    return v0
.end method

.method public static synthetic q3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g;->B:I

    return p0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->M:I

    return v0
.end method

.method public static synthetic s3(Lmodule/canbus/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g;->s:I

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->Z3()V

    return-void
.end method

.method public static synthetic u3(Lmodule/canbus/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g;->s:I

    return p1
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->C:I

    return v0
.end method

.method public static synthetic w3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g;->C:I

    return p0
.end method

.method public static synthetic x3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->P:I

    return v0
.end method

.method public static synthetic y3(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->X3()V

    return-void
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g;->D:I

    return v0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lk0/nt;->a:I

    const v0, 0x10075    # 9.2E-41f

    if-eq p1, v0, :cond_0

    const v0, 0x20075

    if-eq p1, v0, :cond_0

    const v0, 0x30075

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lmodule/canbus/g;->S:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/g;->K:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/g;->L:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/g;->M:I

    :cond_1
    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lk0/nt;->a:I

    const v0, 0x10075    # 9.2E-41f

    if-eq p1, v0, :cond_0

    const v0, 0x20075

    if-eq p1, v0, :cond_0

    const v0, 0x30075

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lmodule/canbus/g;->T:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/g;->P:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/g;->Q:I

    :cond_1
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/canbus/g;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/g;->c:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/g;->W3(I)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/g;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/g;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v1, v0, Lk0/mt;->e:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    sget v3, Lk0/nt;->a:I

    const v4, 0x10075    # 9.2E-41f

    if-eq v3, v4, :cond_0

    const v4, 0x20075

    if-eq v3, v4, :cond_0

    const v4, 0x30075

    if-ne v3, v4, :cond_2

    .line 9
    :cond_0
    iput v1, v0, Lk0/mt;->g:I

    .line 10
    iget-object v0, p0, Lmodule/canbus/g;->c:Lo1/g0;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmodule/canbus/g;->T3(II)V

    .line 11
    sget v0, Lmodule/canbus/g;->E:I

    if-ne v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 13
    iput v1, v0, Lk0/mt;->c:I

    .line 14
    iput v1, v0, Lk0/mt;->d:I

    .line 15
    invoke-virtual {p0, v1}, Lmodule/canbus/g;->b3(I)V

    .line 16
    invoke-virtual {p0}, Lmodule/canbus/g;->init()V

    .line 17
    iget-object v0, p0, Lmodule/canbus/g;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p0}, Lmodule/canbus/g;->S3()V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    .line 20
    iput v2, v0, Lk0/mt;->c:I

    .line 21
    iput v2, v0, Lk0/mt;->d:I

    .line 22
    :goto_0
    iget-object v0, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/g;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    return-void
.end method

.method public final S3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g;->a4()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/g;->X3()V

    .line 3
    invoke-virtual {p0}, Lmodule/canbus/g;->U3()V

    .line 4
    invoke-virtual {p0}, Lmodule/canbus/g;->V3()V

    .line 5
    invoke-virtual {p0}, Lmodule/canbus/g;->Y3()V

    .line 6
    invoke-virtual {p0}, Lmodule/canbus/g;->Z3()V

    return-void
.end method

.method public final T3(II)V
    .locals 4

    .line 1
    sput p2, Lmodule/canbus/g;->E:I

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p1, v1

    const/16 v0, -0x7c

    const/4 v2, 0x1

    aput v0, p1, v2

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x4

    aput p2, p1, v2

    .line 2
    invoke-static {p1}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/g;->c:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lmodule/canbus/g;->E:I

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/g;->c:Lo1/g0;

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x16

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v2, :cond_44

    const/16 v2, 0x17

    const/16 v8, 0x13

    if-eq v1, v2, :cond_43

    const/16 v2, 0x27

    const/4 v9, 0x5

    if-eq v1, v2, :cond_40

    const/16 v2, 0x29

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x33

    const/16 v10, 0xb

    const/16 v11, 0x10

    const/4 v12, 0x2

    if-eq v1, v2, :cond_38

    const/16 v2, 0x40

    const/16 v13, 0x1e

    const/16 v14, 0xa

    const/4 v15, 0x4

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x43

    if-eq v1, v2, :cond_19

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 10
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 11
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 12
    :pswitch_1
    sget v1, Lk0/nt;->a:I

    const v2, 0x10075    # 9.2E-41f

    if-eq v1, v2, :cond_1

    const v2, 0x20075

    if-eq v1, v2, :cond_1

    const v2, 0x30075

    if-ne v1, v2, :cond_45

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 14
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 15
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 16
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_14

    .line 17
    :pswitch_2
    sget v1, Lk0/nt;->a:I

    const v2, 0x10075    # 9.2E-41f

    if-eq v1, v2, :cond_3

    const v2, 0x20075

    if-eq v1, v2, :cond_3

    const v2, 0x30075

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_45

    add-int/lit8 v1, p2, 0x2

    .line 19
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/g;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 20
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/g;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 21
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/g;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 22
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/g;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_14

    :cond_3
    :goto_1
    add-int/lit8 v1, p2, 0x2

    .line 23
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 24
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 25
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 26
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_14

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 27
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 28
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x6

    .line 29
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x7

    .line 30
    aget-byte v4, p1, v4

    new-array v15, v7, [I

    shr-int/lit8 v16, v1, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 31
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v7, [I

    shr-int/lit8 v15, v1, 0x6

    and-int/2addr v15, v7

    aput v15, v14, v6

    .line 32
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v14, v7, [I

    shr-int/lit8 v15, v1, 0x5

    and-int/2addr v15, v7

    aput v15, v14, v6

    .line 33
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v14, v7, [I

    shr-int/lit8 v15, v1, 0x3

    and-int/2addr v15, v7

    aput v15, v14, v6

    .line 34
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x3e

    new-array v14, v7, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v14, v6

    .line 35
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v10, v7, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v7

    aput v12, v10, v6

    .line 36
    invoke-static {v1, v10}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v7

    aput v10, v1, v6

    .line 37
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v8, v7, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 38
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v8, v7, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v8, v6

    .line 39
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 40
    aget-byte v2, p1, v1

    add-int/lit8 v8, p2, 0x5

    .line 41
    aget-byte v9, p1, v8

    const-string v10, "persist.fyt.reversetemp"

    .line 42
    invoke-static {v10, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 43
    aget-byte v2, p1, v8

    .line 44
    aget-byte v9, p1, v1

    :cond_4
    and-int/lit16 v1, v2, 0xff

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v7

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_5

    mul-int/lit8 v1, v1, 0x5

    goto :goto_2

    :cond_5
    mul-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_6
    const/4 v1, -0x3

    goto :goto_2

    :cond_7
    const/4 v1, -0x2

    :cond_8
    :goto_2
    const/16 v8, 0x1b

    new-array v10, v7, [I

    aput v1, v10, v6

    .line 45
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v9, 0xff

    if-nez v2, :cond_c

    if-eqz v1, :cond_b

    if-eq v1, v5, :cond_a

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_9

    mul-int/lit8 v1, v1, 0x5

    goto :goto_3

    :cond_9
    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    :cond_a
    const/4 v1, -0x3

    goto :goto_3

    :cond_b
    const/4 v1, -0x2

    :cond_c
    :goto_3
    const/16 v2, 0x1c

    new-array v5, v7, [I

    aput v1, v5, v6

    .line 46
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 48
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x24

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x34

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v7, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x4

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v6

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v2, v4, 0x0

    and-int/lit8 v2, v2, 0x7

    aput v2, v1, v6

    .line 55
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 56
    aget-byte v2, p1, v1

    add-int/lit8 v3, p2, 0x3

    .line 57
    aget-byte v4, p1, v3

    .line 58
    sget v8, Lk0/nt;->a:I

    const v9, 0x10075    # 9.2E-41f

    if-eq v8, v9, :cond_14

    const v9, 0x20075

    if-eq v8, v9, :cond_14

    const v9, 0x30075

    if-ne v8, v9, :cond_d

    goto :goto_7

    :cond_d
    const/16 v8, 0x18

    if-ne v2, v8, :cond_f

    if-ne v4, v7, :cond_f

    .line 59
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.canbus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 60
    invoke-static {}, Lo1/u;->k()V

    goto :goto_4

    .line 61
    :cond_e
    invoke-static {}, Lo1/u;->v()I

    .line 62
    :cond_f
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 63
    aget-byte v1, p1, v1

    .line 64
    aget-byte v2, p1, v3

    and-int/2addr v1, v5

    .line 65
    iput v1, v0, Lmodule/canbus/g;->h:I

    move v1, v6

    .line 66
    :goto_5
    iget-object v3, v0, Lmodule/canbus/g;->i:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_11

    .line 67
    iget v4, v0, Lmodule/canbus/g;->h:I

    aget-object v8, v3, v1

    aget v8, v8, v6

    if-ne v4, v8, :cond_10

    if-eqz v4, :cond_11

    .line 68
    iput v1, v0, Lmodule/canbus/g;->g:I

    goto :goto_6

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    :goto_6
    and-int/2addr v2, v5

    if-eqz v2, :cond_12

    .line 69
    array-length v2, v3

    if-ge v1, v2, :cond_45

    .line 70
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 71
    :cond_12
    iget v1, v0, Lmodule/canbus/g;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v5, :cond_13

    .line 72
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 73
    :cond_13
    iput v5, v0, Lmodule/canbus/g;->g:I

    goto/16 :goto_14

    .line 74
    :cond_14
    :goto_7
    aget-byte v1, p1, v1

    .line 75
    aget-byte v2, p1, v3

    and-int/2addr v1, v5

    .line 76
    iput v1, v0, Lmodule/canbus/g;->h:I

    move v1, v6

    .line 77
    :goto_8
    iget-object v3, v0, Lmodule/canbus/g;->j:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_16

    .line 78
    iget v4, v0, Lmodule/canbus/g;->h:I

    aget-object v8, v3, v1

    aget v8, v8, v6

    if-ne v4, v8, :cond_15

    if-eqz v4, :cond_16

    .line 79
    iput v1, v0, Lmodule/canbus/g;->g:I

    goto :goto_9

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    :goto_9
    and-int/2addr v2, v5

    if-ne v2, v7, :cond_17

    .line 80
    array-length v2, v3

    if-ge v1, v2, :cond_45

    .line 81
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_17
    if-nez v2, :cond_45

    .line 82
    iget v1, v0, Lmodule/canbus/g;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    if-eq v1, v5, :cond_18

    .line 83
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 84
    :cond_18
    iput v5, v0, Lmodule/canbus/g;->g:I

    goto/16 :goto_14

    :cond_19
    add-int/lit8 v1, p2, 0x2

    .line 85
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 86
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    add-int/lit8 v4, p2, 0x4

    .line 87
    aget-byte v4, p1, v4

    and-int/2addr v4, v5

    add-int/lit8 v8, p2, 0x5

    .line 88
    aget-byte v8, p1, v8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x6

    .line 89
    aget-byte v9, p1, v9

    and-int/2addr v9, v5

    add-int/lit8 v12, p2, 0x7

    .line 90
    aget-byte v12, p1, v12

    and-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x8

    .line 91
    aget-byte v13, p1, v13

    and-int/2addr v13, v5

    add-int/lit8 v14, p2, 0x9

    .line 92
    aget-byte v14, p1, v14

    and-int/2addr v14, v5

    add-int/lit8 v15, p2, 0xa

    .line 93
    aget-byte v15, p1, v15

    add-int/lit8 v10, p2, 0xb

    .line 94
    aget-byte v10, p1, v10

    and-int/2addr v10, v5

    const/16 v15, 0xb6

    new-array v11, v7, [I

    and-int/2addr v1, v5

    shl-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, v11, v6

    .line 95
    invoke-static {v15, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb8

    new-array v2, v7, [I

    const/16 v11, 0x10

    shl-int/2addr v9, v11

    and-int/2addr v8, v5

    shl-int/2addr v8, v3

    or-int/2addr v8, v9

    or-int/2addr v4, v8

    aput v4, v2, v6

    .line 96
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb7

    new-array v2, v7, [I

    shl-int/lit8 v4, v14, 0x10

    and-int/2addr v5, v13

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    or-int/2addr v4, v12

    aput v4, v2, v6

    .line 97
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb9

    new-array v2, v7, [I

    and-int/lit16 v4, v10, 0xff

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v3, v10

    aput v3, v2, v6

    .line 98
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1a
    add-int/lit8 v1, p2, 0x2

    .line 99
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 100
    aget-byte v2, p1, v2

    const/16 v3, 0xb4

    new-array v4, v7, [I

    aput v1, v4, v6

    .line 101
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb5

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 102
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1b
    add-int/lit8 v1, p2, 0x2

    .line 103
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 104
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    const/16 v4, 0x408

    new-array v8, v7, [I

    and-int/2addr v2, v5

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v8, v6

    .line 105
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1c
    add-int/lit8 v1, p2, 0x2

    .line 107
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 108
    aget-byte v2, p1, v2

    add-int/lit8 v8, p2, 0x4

    .line 109
    aget-byte v8, p1, v8

    add-int/lit8 v10, p2, 0x5

    .line 110
    aget-byte v10, p1, v10

    and-int/2addr v1, v5

    if-eqz v1, :cond_34

    if-eq v1, v7, :cond_33

    const/16 v9, 0x20

    const/16 v11, 0x7f

    if-eq v1, v9, :cond_2b

    const/16 v9, 0x21

    if-eq v1, v9, :cond_32

    const/16 v9, 0x30

    if-eq v1, v9, :cond_2a

    const/16 v9, 0x40

    const/16 v14, 0x90

    if-eq v1, v9, :cond_23

    if-eq v1, v14, :cond_22

    const/16 v5, 0xa0

    if-eq v1, v5, :cond_1f

    const/16 v5, 0xb0

    if-eq v1, v5, :cond_20

    const/16 v3, 0xc0

    if-eq v1, v3, :cond_1e

    const/16 v3, 0xd0

    if-eq v1, v3, :cond_1d

    goto/16 :goto_14

    :cond_1d
    const/16 v1, 0xb2

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x0

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 111
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb3

    new-array v3, v7, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 112
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1e
    const/16 v1, 0xa8

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 113
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa9

    new-array v3, v7, [I

    shr-int/2addr v2, v12

    and-int/lit8 v2, v2, 0x7

    aput v2, v3, v6

    .line 114
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1f
    const/16 v1, 0x94

    new-array v5, v7, [I

    and-int/lit8 v9, v2, 0x1

    aput v9, v5, v6

    .line 115
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x95

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 116
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x96

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 117
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x97

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 118
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x98

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 119
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9c

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 120
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9d

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 121
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9a

    new-array v5, v7, [I

    and-int/lit8 v9, v8, 0x3

    aput v9, v5, v6

    .line 122
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9b

    new-array v5, v7, [I

    shr-int/lit8 v9, v8, 0x2

    and-int/2addr v9, v4

    aput v9, v5, v6

    .line 123
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa3

    new-array v5, v7, [I

    shr-int/lit8 v9, v8, 0x4

    and-int/2addr v9, v4

    aput v9, v5, v6

    .line 124
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9f

    new-array v5, v7, [I

    shr-int/lit8 v9, v8, 0x6

    and-int/2addr v9, v4

    aput v9, v5, v6

    .line 125
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x99

    new-array v5, v7, [I

    shr-int/lit8 v9, v10, 0x0

    and-int/2addr v4, v9

    aput v4, v5, v6

    .line 126
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa0

    new-array v4, v7, [I

    shr-int/lit8 v5, v10, 0x2

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 127
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    :cond_20
    const/16 v1, 0xa4

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0xf

    if-le v5, v3, :cond_21

    goto :goto_a

    :cond_21
    move v3, v5

    :goto_a
    aput v3, v4, v6

    .line 128
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa5

    new-array v3, v7, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 129
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa6

    new-array v2, v7, [I

    and-int/lit8 v3, v8, 0xf

    aput v3, v2, v6

    .line 130
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_22
    const/16 v1, 0x93

    new-array v3, v7, [I

    and-int/lit8 v4, v2, 0x3

    aput v4, v3, v6

    .line 131
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb1

    new-array v3, v7, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 132
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_23
    and-int/lit8 v1, v2, 0x7f

    if-eq v1, v13, :cond_26

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_25

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_24

    new-array v1, v7, [I

    aput v6, v1, v6

    .line 133
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_24
    new-array v1, v7, [I

    aput v4, v1, v6

    .line 134
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_25
    new-array v1, v7, [I

    aput v12, v1, v6

    .line 135
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_26
    new-array v1, v7, [I

    aput v7, v1, v6

    .line 136
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    :goto_b
    and-int/lit16 v1, v8, 0xff

    if-eq v1, v4, :cond_29

    const/16 v2, 0x14

    if-eq v1, v2, :cond_28

    const/16 v2, 0x28

    if-eq v1, v2, :cond_27

    const/16 v1, 0x91

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 137
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_27
    const/16 v1, 0x91

    new-array v2, v7, [I

    aput v4, v2, v6

    .line 138
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_28
    const/16 v1, 0x91

    new-array v2, v7, [I

    aput v12, v2, v6

    .line 139
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_29
    const/16 v1, 0x91

    new-array v2, v7, [I

    aput v7, v2, v6

    .line 140
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v1, 0x92

    new-array v2, v7, [I

    and-int/lit8 v3, v10, 0x1

    aput v3, v2, v6

    .line 141
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2a
    const/16 v1, 0x86

    new-array v3, v7, [I

    and-int/lit8 v5, v2, 0x1

    aput v5, v3, v6

    .line 142
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x87

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 143
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x88

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 144
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x89

    new-array v3, v7, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v4

    aput v2, v3, v6

    .line 145
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8c

    new-array v2, v7, [I

    and-int/lit8 v3, v8, 0x1

    aput v3, v2, v6

    .line 146
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8d

    new-array v2, v7, [I

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 147
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8b

    new-array v2, v7, [I

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 148
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8e

    new-array v2, v7, [I

    and-int/lit8 v3, v10, 0x1

    aput v3, v2, v6

    .line 149
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8f

    new-array v2, v7, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 150
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2b
    and-int/lit8 v1, v2, 0x7f

    const/16 v3, 0x7c

    if-eq v1, v13, :cond_2e

    const/16 v5, 0x3c

    if-eq v1, v5, :cond_2d

    const/16 v5, 0x5a

    if-eq v1, v5, :cond_2c

    new-array v1, v7, [I

    aput v6, v1, v6

    .line 151
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_2c
    new-array v1, v7, [I

    aput v4, v1, v6

    .line 152
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_2d
    new-array v1, v7, [I

    aput v12, v1, v6

    .line 153
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_2e
    new-array v1, v7, [I

    aput v7, v1, v6

    .line 154
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_d
    const/16 v1, 0x7d

    new-array v3, v7, [I

    shr-int/lit8 v5, v8, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 155
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v1, v8, 0x7f

    if-eq v1, v13, :cond_31

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_30

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_2f

    const/16 v1, 0x7e

    new-array v3, v7, [I

    aput v6, v3, v6

    .line 156
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_2f
    const/16 v1, 0x7e

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 157
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_30
    const/16 v1, 0x7e

    new-array v3, v7, [I

    aput v12, v3, v6

    .line 158
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_31
    const/16 v1, 0x7e

    new-array v3, v7, [I

    aput v7, v3, v6

    .line 159
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array v1, v7, [I

    and-int/lit8 v3, v10, 0x1

    aput v3, v1, v6

    .line 160
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x80

    new-array v3, v7, [I

    shr-int/lit8 v5, v10, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 161
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x81

    new-array v3, v7, [I

    shr-int/lit8 v5, v10, 0x2

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 162
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x83

    new-array v3, v7, [I

    shr-int/lit8 v5, v10, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 163
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x82

    new-array v3, v7, [I

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 164
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x84

    new-array v3, v7, [I

    shr-int/lit8 v5, v10, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 165
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x85

    new-array v3, v7, [I

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 166
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :cond_32
    const/16 v1, 0xaf

    new-array v3, v7, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v3, v6

    .line 167
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_33
    const/16 v1, 0x77

    new-array v3, v7, [I

    and-int/lit8 v5, v2, 0x1

    aput v5, v3, v6

    .line 168
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x78

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v4

    aput v5, v3, v6

    .line 169
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x79

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 170
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 171
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7b

    new-array v3, v7, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v4

    aput v2, v3, v6

    .line 172
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_34
    if-lez v2, :cond_35

    add-int/lit8 v1, v2, -0x1

    goto :goto_f

    :cond_35
    move v1, v7

    :goto_f
    if-ne v2, v7, :cond_36

    move v1, v6

    goto :goto_10

    :cond_36
    if-ne v2, v14, :cond_37

    move v1, v7

    :cond_37
    :goto_10
    const/16 v2, 0x76

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 173
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_38
    add-int/lit8 v1, p2, 0x2

    .line 174
    aget-byte v1, p1, v1

    const/high16 v2, 0xff0000

    const v9, 0xff00

    if-eq v1, v7, :cond_3c

    if-eq v1, v12, :cond_39

    goto/16 :goto_14

    :cond_39
    const/16 v1, 0x6e

    new-array v11, v7, [I

    add-int/lit8 v12, p2, 0x3

    .line 175
    aget-byte v12, p1, v12

    const/16 v13, 0x10

    shl-int/2addr v12, v13

    and-int/2addr v12, v2

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, p1, v13

    shl-int/2addr v13, v3

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0x5

    aget-byte v13, p1, v13

    and-int/2addr v13, v5

    or-int/2addr v12, v13

    aput v12, v11, v6

    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v11, v7, [I

    add-int/lit8 v12, p2, 0x6

    .line 176
    aget-byte v12, p1, v12

    shl-int/2addr v12, v3

    and-int/2addr v12, v9

    add-int/lit8 v13, p2, 0x7

    aget-byte v13, p1, v13

    and-int/2addr v13, v5

    or-int/2addr v12, v13

    aput v12, v11, v6

    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v11, v7, [I

    add-int/lit8 v12, p2, 0x8

    .line 177
    aget-byte v12, p1, v12

    const/16 v13, 0x10

    shl-int/2addr v12, v13

    and-int/2addr v12, v2

    add-int/lit8 v13, p2, 0x9

    aget-byte v13, p1, v13

    shl-int/2addr v13, v3

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0xa

    aget-byte v13, p1, v13

    and-int/2addr v13, v5

    or-int/2addr v12, v13

    aput v12, v11, v6

    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v11, v7, [I

    add-int/lit8 v12, p2, 0xb

    .line 178
    aget-byte v12, p1, v12

    shl-int/2addr v12, v3

    and-int/2addr v12, v9

    add-int/lit8 v13, p2, 0xc

    aget-byte v13, p1, v13

    and-int/2addr v13, v5

    or-int/2addr v12, v13

    aput v12, v11, v6

    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v11, v7, [I

    add-int/lit8 v12, p2, 0xd

    .line 179
    aget-byte v12, p1, v12

    const/16 v13, 0x10

    shl-int/2addr v12, v13

    and-int/2addr v2, v12

    add-int/lit8 v12, p2, 0xe

    aget-byte v12, p1, v12

    shl-int/2addr v12, v3

    and-int/2addr v12, v9

    or-int/2addr v2, v12

    add-int/lit8 v12, p2, 0xf

    aget-byte v12, p1, v12

    and-int/2addr v12, v5

    or-int/2addr v2, v12

    aput v2, v11, v6

    invoke-static {v1, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v2, v7, [I

    add-int/lit8 v11, p2, 0x10

    .line 180
    aget-byte v11, p1, v11

    shl-int/lit8 v3, v11, 0x8

    and-int/2addr v3, v9

    add-int/lit8 v9, p2, 0x11

    aget-byte v9, p1, v9

    and-int/2addr v9, v5

    or-int/2addr v3, v9

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x12

    .line 181
    aget-byte v1, p1, v1

    const/16 v2, 0x68

    new-array v3, v7, [I

    and-int/lit8 v9, v1, 0x3

    aput v9, v3, v6

    .line 182
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    shr-int/lit8 v9, v1, 0x2

    and-int/2addr v9, v4

    aput v9, v3, v6

    .line 183
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    shr-int/lit8 v9, v1, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v6

    .line 184
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 185
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 186
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x13

    .line 187
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    if-gez v1, :cond_3a

    move v10, v6

    goto :goto_11

    :cond_3a
    if-le v1, v10, :cond_3b

    goto :goto_11

    :cond_3b
    move v10, v1

    :goto_11
    const/16 v1, 0x6d

    new-array v2, v7, [I

    .line 188
    iget-object v3, v0, Lmodule/canbus/g;->b:[I

    aget v3, v3, v10

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_3c
    const/16 v1, 0x62

    new-array v8, v7, [I

    add-int/lit8 v11, p2, 0x3

    .line 189
    aget-byte v11, p1, v11

    and-int/2addr v11, v5

    aput v11, v8, v6

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v8, v7, [I

    add-int/lit8 v11, p2, 0x4

    .line 190
    aget-byte v11, p1, v11

    shl-int/2addr v11, v3

    and-int/2addr v11, v9

    add-int/lit8 v12, p2, 0x5

    aget-byte v12, p1, v12

    and-int/2addr v12, v5

    or-int/2addr v11, v12

    aput v11, v8, v6

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v8, v7, [I

    add-int/lit8 v11, p2, 0x6

    .line 191
    aget-byte v11, p1, v11

    shl-int/2addr v11, v3

    and-int/2addr v11, v9

    add-int/lit8 v12, p2, 0x7

    aget-byte v12, p1, v12

    and-int/2addr v12, v5

    or-int/2addr v11, v12

    aput v11, v8, v6

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v8, v7, [I

    add-int/lit8 v11, p2, 0x8

    .line 192
    aget-byte v11, p1, v11

    shl-int/2addr v11, v3

    and-int/2addr v11, v9

    add-int/lit8 v12, p2, 0x9

    aget-byte v12, p1, v12

    and-int/2addr v12, v5

    or-int/2addr v11, v12

    aput v11, v8, v6

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v8, v7, [I

    add-int/lit8 v11, p2, 0xa

    .line 193
    aget-byte v11, p1, v11

    const/16 v12, 0x10

    shl-int/2addr v11, v12

    and-int/2addr v2, v11

    add-int/lit8 v11, p2, 0xb

    aget-byte v11, p1, v11

    shl-int/2addr v11, v3

    and-int/2addr v11, v9

    or-int/2addr v2, v11

    add-int/lit8 v11, p2, 0xc

    aget-byte v11, p1, v11

    and-int/2addr v11, v5

    or-int/2addr v2, v11

    aput v2, v8, v6

    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v2, v7, [I

    add-int/lit8 v8, p2, 0xd

    .line 194
    aget-byte v8, p1, v8

    shl-int/lit8 v3, v8, 0x8

    and-int/2addr v3, v9

    add-int/lit8 v8, p2, 0xe

    aget-byte v8, p1, v8

    and-int/2addr v8, v5

    or-int/2addr v3, v8

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0xf

    .line 195
    aget-byte v1, p1, v1

    const/16 v2, 0x68

    new-array v3, v7, [I

    and-int/lit8 v8, v1, 0x3

    aput v8, v3, v6

    .line 196
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    shr-int/lit8 v8, v1, 0x2

    and-int/2addr v8, v4

    aput v8, v3, v6

    .line 197
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    shr-int/lit8 v8, v1, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 198
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 199
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 200
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    add-int/lit8 v1, p2, 0x10

    .line 201
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    if-gez v1, :cond_3d

    move v10, v6

    goto :goto_12

    :cond_3d
    if-le v1, v10, :cond_3e

    goto :goto_12

    :cond_3e
    move v10, v1

    :goto_12
    const/16 v1, 0x6d

    new-array v2, v7, [I

    .line 202
    iget-object v3, v0, Lmodule/canbus/g;->b:[I

    aget v3, v3, v10

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_3f
    add-int/lit8 v1, p2, 0x2

    .line 203
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1200

    invoke-static {v1, v2, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_14

    :cond_40
    add-int/lit8 v1, p2, 0x2

    .line 204
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 205
    aget-byte v2, p1, v2

    if-nez v1, :cond_41

    .line 206
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto :goto_14

    :cond_41
    if-ne v2, v7, :cond_42

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_13

    :cond_42
    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0x258

    .line 207
    :goto_13
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_14

    :cond_43
    add-int/lit8 v1, p2, 0x2

    .line 208
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 209
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    .line 210
    aget-byte v4, p1, v4

    add-int/lit8 v9, p2, 0x6

    .line 211
    aget-byte v9, p1, v9

    add-int/lit8 v10, p2, 0x7

    .line 212
    aget-byte v10, p1, v10

    add-int/lit8 v3, p2, 0x8

    .line 213
    aget-byte v3, p1, v3

    and-int/2addr v1, v7

    if-eqz v1, :cond_45

    and-int/2addr v2, v5

    .line 214
    invoke-static {v2, v7, v8}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/g;->N:I

    and-int/lit16 v2, v4, 0xff

    .line 215
    invoke-static {v2, v7, v8}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/g;->O:I

    and-int/lit16 v2, v9, 0xff

    .line 216
    invoke-static {v2, v7, v8}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/g;->H:I

    and-int/lit16 v2, v10, 0xff

    .line 217
    invoke-static {v2, v7, v8}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/g;->I:I

    and-int/lit16 v2, v3, 0xff

    .line 218
    invoke-static {v2, v7, v8}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/g;->J:I

    const/16 v2, 0xb0

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 219
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_44
    add-int/lit8 v1, p2, 0x2

    .line 220
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 221
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    const/16 v4, 0x407

    new-array v7, v7, [I

    and-int/2addr v2, v5

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v7, v6

    .line 222
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    :cond_45
    :goto_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized U3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/g;->Q:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/g;->R3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized V3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/g;->K:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/g;->R3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/g;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/g;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/g;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/g;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W3(I)V
    .locals 4

    .line 1
    sput p1, Lmodule/canbus/g;->y:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    const/16 p1, 0x3f5

    new-array v0, v1, [I

    .line 5
    sget v2, Lmodule/canbus/g;->y:I

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p1, p0, Lmodule/canbus/g;->c:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/g;->y:I

    if-eq p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lmodule/canbus/g;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x2
    .end array-data
.end method

.method public final declared-synchronized X3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/g;->P:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/g;->R3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xba

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

.method public final declared-synchronized Y3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/g;->L:I

    const/4 v1, 0x7

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/g;->R3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_10

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    const/16 v5, 0x64

    if-eq p1, v5, :cond_2

    const/16 p3, 0x65

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lmodule/canbus/g;->W3(I)V

    goto/16 :goto_1

    :cond_1
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_11

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v4

    aput v3, p1, v3

    const/16 p4, 0x33

    aput p4, p1, v1

    .line 5
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 7
    aget p1, p2, v2

    aget p3, p2, v4

    invoke-virtual {p0, p1, p3}, Lmodule/canbus/g;->T3(II)V

    .line 8
    aget p1, p2, v2

    if-ne p1, v4, :cond_11

    .line 9
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lmodule/canbus/g;->t:Ljava/lang/Runnable;

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_11

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, -0x38

    aput p4, p1, v4

    aput v3, p1, v3

    .line 11
    aget p2, p2, v2

    aput p2, p1, v1

    aput v2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 13
    aget p1, p2, v2

    if-eqz p1, :cond_d

    const/16 v5, 0x29

    if-eq p1, v5, :cond_c

    const/16 v5, 0x20

    if-eq p1, v5, :cond_9

    const/16 v5, 0x21

    if-eq p1, v5, :cond_9

    const/16 v5, 0x40

    if-eq p1, v5, :cond_9

    const/16 v5, 0x41

    if-eq p1, v5, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    aget p1, p2, v4

    if-ne p1, v4, :cond_7

    aput v1, p2, v4

    goto :goto_0

    .line 15
    :cond_7
    aget p1, p2, v4

    if-ne p1, v3, :cond_8

    const/16 p1, 0x14

    aput p1, p2, v4

    goto :goto_0

    .line 16
    :cond_8
    aget p1, p2, v4

    if-ne p1, v1, :cond_f

    const/16 p1, 0x28

    aput p1, p2, v4

    goto :goto_0

    .line 17
    :cond_9
    aget p1, p2, v4

    if-ne p1, v4, :cond_a

    const/16 p1, 0x1e

    aput p1, p2, v4

    goto :goto_0

    .line 18
    :cond_a
    aget p1, p2, v4

    if-ne p1, v3, :cond_b

    const/16 p1, 0x3c

    aput p1, p2, v4

    goto :goto_0

    .line 19
    :cond_b
    aget p1, p2, v4

    if-ne p1, v1, :cond_f

    const/16 p1, 0x5a

    aput p1, p2, v4

    goto :goto_0

    .line 20
    :cond_c
    aget p1, p2, v4

    add-int/2addr p1, v4

    aput p1, p2, v4

    goto :goto_0

    .line 21
    :cond_d
    aget p1, p2, v4

    if-ne p1, v4, :cond_e

    const/16 p1, 0xa

    aput p1, p2, v4

    goto :goto_0

    .line 22
    :cond_e
    aget p1, p2, v4

    if-nez p1, :cond_f

    aput v4, p2, v4

    :cond_f
    :goto_0
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, -0x3a

    aput p4, p1, v4

    aput v3, p1, v3

    .line 23
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 24
    :cond_10
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_11

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x82

    aput p4, p1, v4

    aput v3, p1, v3

    .line 25
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_11
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x33
        0x3
    .end array-data
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lk0/nt;->a:I

    const v1, 0x10075    # 9.2E-41f

    if-eq v0, v1, :cond_0

    const v1, 0x20075

    if-eq v0, v1, :cond_0

    const v1, 0x30075

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lmodule/canbus/g;->R:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/g;->G:I

    :cond_1
    return-void
.end method

.method public final declared-synchronized Z3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/g;->M:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/g;->R3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public final declared-synchronized a4()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/g;->F:I

    sget v1, Lmodule/canbus/g;->G:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lmodule/canbus/g;->F:I

    .line 4
    iput v2, p0, Lmodule/canbus/g;->x:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5
    sput v0, Lmodule/canbus/g;->F:I

    .line 6
    iput v2, p0, Lmodule/canbus/g;->x:I

    goto :goto_0

    .line 7
    :cond_2
    sput v1, Lmodule/canbus/g;->F:I

    :goto_0
    const/4 v0, 0x2

    .line 8
    sget v1, Lmodule/canbus/g;->F:I

    invoke-static {v0, v1}, Lmodule/canbus/g;->R3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x81

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/g;->U:Lo1/f;

    new-instance v1, Lmodule/canbus/g$g;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/g$g;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/g$g;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/g$g;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/g$g;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/g$g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
