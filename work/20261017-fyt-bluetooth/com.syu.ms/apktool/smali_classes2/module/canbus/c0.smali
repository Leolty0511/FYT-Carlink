.class public Lmodule/canbus/c0;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/c0$e;
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

.field public static final M:[I

.field public static final N:[I

.field public static final O:[I

.field public static final P:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/c0$e;",
            ">;"
        }
    .end annotation
.end field

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Lo1/g0;

.field public final k:I

.field public l:Ljava/lang/Runnable;

.field public m:J

.field public n:I

.field public o:[I

.field public p:I

.field public q:B

.field public r:Ljava/lang/Runnable;

.field public final s:[B

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/c0;->M:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/c0;->N:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/c0;->O:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/c0;->P:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
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
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x8
        0xa
        0xd
        0xf
        0x10
        0x11
        0x13
        0x16
        0x18
        0x1a
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xc
        0xe
        0xf
        0x10
        0x11
        0x12
        0x14
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/c0;->e:I

    const/16 v1, 0x24

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x17

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x18

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x19

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x1c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x1d

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1e

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1f

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x20

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v6, 0x21

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v6, 0x22

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v6, 0x23

    aput-object v3, v1, v6

    iput-object v1, p0, Lmodule/canbus/c0;->f:[[I

    .line 4
    iput v0, p0, Lmodule/canbus/c0;->g:I

    .line 5
    iput v0, p0, Lmodule/canbus/c0;->h:I

    .line 6
    new-instance v1, Lmodule/canbus/c0$a;

    invoke-direct {v1, p0}, Lmodule/canbus/c0$a;-><init>(Lmodule/canbus/c0;)V

    iput-object v1, p0, Lmodule/canbus/c0;->i:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmodule/canbus/c0;->j:Lo1/g0;

    .line 8
    iput v4, p0, Lmodule/canbus/c0;->k:I

    .line 9
    new-instance v1, Lmodule/canbus/c0$b;

    invoke-direct {v1, p0}, Lmodule/canbus/c0$b;-><init>(Lmodule/canbus/c0;)V

    iput-object v1, p0, Lmodule/canbus/c0;->l:Ljava/lang/Runnable;

    const-wide/16 v3, -0x1

    .line 10
    iput-wide v3, p0, Lmodule/canbus/c0;->m:J

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lmodule/canbus/c0;->n:I

    new-array v1, v2, [I

    .line 12
    fill-array-data v1, :array_24

    iput-object v1, p0, Lmodule/canbus/c0;->o:[I

    .line 13
    iput v0, p0, Lmodule/canbus/c0;->p:I

    .line 14
    iput-byte v0, p0, Lmodule/canbus/c0;->q:B

    .line 15
    new-instance v1, Lmodule/canbus/c0$c;

    invoke-direct {v1, p0}, Lmodule/canbus/c0$c;-><init>(Lmodule/canbus/c0;)V

    iput-object v1, p0, Lmodule/canbus/c0;->r:Ljava/lang/Runnable;

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 16
    iput-object v1, p0, Lmodule/canbus/c0;->s:[B

    .line 17
    iput v0, p0, Lmodule/canbus/c0;->t:I

    .line 18
    iput v0, p0, Lmodule/canbus/c0;->u:I

    .line 19
    iput v0, p0, Lmodule/canbus/c0;->v:I

    const/16 v1, 0xc8

    .line 20
    iput v1, p0, Lmodule/canbus/c0;->w:I

    .line 21
    new-instance v1, Lmodule/canbus/c0$d;

    invoke-direct {v1, p0}, Lmodule/canbus/c0$d;-><init>(Lmodule/canbus/c0;)V

    iput-object v1, p0, Lmodule/canbus/c0;->x:Ljava/lang/Runnable;

    .line 22
    iput v0, p0, Lmodule/canbus/c0;->y:I

    return-void

    nop

    :array_0
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x83
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x84
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x85
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x86
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x88
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x89
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x8a
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x8b
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xa0
        0x1b
    .end array-data

    :array_b
    .array-data 4
        0xa1
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xc5
        0x4c
    .end array-data

    :array_d
    .array-data 4
        0xc6
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xc7
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x24
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_16
    .array-data 4
        0x36
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x37
        0x10
    .end array-data

    :array_18
    .array-data 4
        0x38
        0x27
    .end array-data

    :array_19
    .array-data 4
        0x39
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x4a
        0x26
    .end array-data

    :array_1b
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_1c
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x2f
        0x37
    .end array-data

    :array_1f
    .array-data 4
        0x47
        0x4a
    .end array-data

    :array_20
    .array-data 4
        0x48
        0x4b
    .end array-data

    :array_21
    .array-data 4
        0x49
        0xf
    .end array-data

    :array_22
    .array-data 4
        0x5b
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x5c
        0x4
    .end array-data

    :array_24
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/c0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/c0;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/c0;->y:I

    return v0
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->B:I

    return v0
.end method

.method public static synthetic C3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/c0;->B:I

    return p0
.end method

.method public static synthetic D3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/c0;->M:[I

    return-object v0
.end method

.method public static synthetic E3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->A:I

    return v0
.end method

.method public static F3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/c0;->P:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/c0$e;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/c0$e;->a(I)V

    :cond_0
    return-void
.end method

.method public static P3([B)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_0
    return-void
.end method

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->E:I

    return v0
.end method

.method public static synthetic b3(Lmodule/canbus/c0;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/c0;->j:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lmodule/canbus/c0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->K3(I)V

    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c0;->O3()V

    return-void
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->C:I

    return v0
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->F:I

    return v0
.end method

.method public static synthetic g3(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c0;->J3()V

    return-void
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->D:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->G:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c0;->M3()V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->H:I

    return v0
.end method

.method public static synthetic l3(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c0;->N3()V

    return-void
.end method

.method public static synthetic m3(Lmodule/canbus/c0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmodule/canbus/c0;->m:J

    return-wide v0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->I:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/c0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmodule/canbus/c0;->m:J

    return-wide p1
.end method

.method public static synthetic p3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->K:I

    return v0
.end method

.method public static synthetic q3(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c0;->L3()V

    return-void
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->J:I

    return v0
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c0;->L:I

    return v0
.end method

.method public static synthetic t3(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c0;->I3()V

    return-void
.end method

.method public static synthetic u3(Lmodule/canbus/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c0;->n:I

    return p0
.end method

.method public static synthetic v3(Lmodule/canbus/c0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/c0;->n:I

    return p1
.end method

.method public static synthetic w3(Lmodule/canbus/c0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/c0;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic x3(Lmodule/canbus/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c0;->w:I

    return p0
.end method

.method public static synthetic y3(Lmodule/canbus/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c0;->y:I

    return p0
.end method

.method public static synthetic z3(Lmodule/canbus/c0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/c0;->y:I

    return p1
.end method


# virtual methods
.method public final G3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->R2([I)V

    return-void
.end method

.method public final H3([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x55

    if-eq v0, v1, :cond_1

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/16 p3, 0x6b

    const/4 v0, 0x1

    new-array v1, v0, [I

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v3, p1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v1, v0, [I

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v5, p1, v3

    aput v5, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v1, v0, [I

    add-int/lit8 v5, p2, 0x4

    .line 5
    aget-byte v6, p1, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v1, v0, [I

    add-int/lit8 v6, p2, 0x5

    .line 6
    aget-byte v6, p1, v6

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v1, v0, [I

    add-int/lit8 v6, p2, 0x6

    .line 7
    aget-byte v7, p1, v6

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v1, v0, [I

    add-int/lit8 p2, p2, 0x7

    .line 8
    aget-byte v7, p1, p2

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1b

    new-array v1, v0, [I

    .line 9
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1c

    new-array v1, v0, [I

    .line 10
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v0, [I

    .line 11
    aget-byte v2, p1, v5

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    .line 12
    aget-byte p3, p1, v5

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    packed-switch p3, :pswitch_data_0

    move p3, v4

    :goto_0
    move v1, p3

    :goto_1
    move v2, v1

    goto :goto_2

    :pswitch_0
    move p3, v0

    goto :goto_0

    :pswitch_1
    move p3, v0

    move v1, v4

    goto :goto_1

    :pswitch_2
    move p3, v0

    move v2, p3

    move v1, v4

    goto :goto_2

    :pswitch_3
    move p3, v0

    move v1, p3

    move v2, v4

    goto :goto_2

    :pswitch_4
    move v1, v0

    move p3, v4

    move v2, p3

    goto :goto_2

    :pswitch_5
    move v1, v0

    move v2, v1

    move p3, v4

    goto :goto_2

    :pswitch_6
    move v2, v0

    move p3, v4

    move v1, p3

    :goto_2
    const/16 v3, 0x12

    new-array v5, v0, [I

    aput p3, v5, v4

    .line 13
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v3, v0, [I

    aput v1, v3, v4

    .line 14
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v0, [I

    aput v2, v1, v4

    .line 15
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v0, [I

    .line 16
    aget-byte v2, p1, v6

    shr-int/2addr v2, v4

    and-int/2addr v2, v0

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v1, v0, [I

    .line 17
    aget-byte v2, p1, v6

    shr-int/2addr v2, v0

    and-int/2addr v2, v0

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x3e

    new-array v1, v0, [I

    .line 18
    aget-byte v2, p1, v6

    shr-int/lit8 v2, v2, 0x2

    and-int/2addr v2, v0

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v1, v0, [I

    .line 19
    aget-byte v2, p1, v6

    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v0

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v0, [I

    .line 20
    aget-byte v2, p1, v6

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v0

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v0, [I

    .line 21
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/lit8 p1, p1, 0x3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized I3()V
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
    sget v0, Lmodule/canbus/c0;->L:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c0;->F3(II)V
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

.method public final declared-synchronized J3()V
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
    sget v0, Lmodule/canbus/c0;->F:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c0;->F3(II)V
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

.method public final K3(I)V
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
    sput p1, Lmodule/canbus/c0;->z:I

    const/16 v2, 0x69

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/c0;->j:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/c0;->z:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lmodule/canbus/c0;->j:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final declared-synchronized L3()V
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
    sget v0, Lmodule/canbus/c0;->K:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c0;->F3(II)V
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

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized M3()V
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
    sget v0, Lmodule/canbus/c0;->G:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c0;->F3(II)V
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

.method public final declared-synchronized N3()V
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
    sget v0, Lmodule/canbus/c0;->H:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c0;->F3(II)V
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

.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x14

    const/16 v3, 0x6f

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v4

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 4
    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v2}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 11
    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v4

    const/16 v1, 0x23

    const/16 v2, 0x70

    if-nez v0, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v4

    if-ne p1, v4, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v4

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v4

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v4

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v1}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 32
    invoke-virtual {p0, v1}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v4

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 37
    invoke-virtual {p0, v0}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v4

    const/16 v0, 0x6d

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v2}, Lmodule/canbus/c0;->a3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    if-lez p1, :cond_a

    .line 42
    invoke-virtual {p0, v4}, Lmodule/canbus/c0;->a3(I)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized O3()V
    .locals 2

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
    sget v0, Lmodule/canbus/c0;->B:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c0;->F3(II)V
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

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/c0;->N:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/c0;->F:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/c0;->G:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/c0;->H:I

    :cond_0
    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/c0;->O:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/c0;->K:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/c0;->L:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmodule/canbus/c0;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lmodule/canbus/c0;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput v2, v0, Lk0/mt;->e:I

    .line 9
    iput v1, v0, Lk0/mt;->f:I

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->o:I

    .line 12
    sget v3, Lk0/nt;->c:I

    const-string v4, "com.syu.canbus"

    const/4 v5, 0x0

    const/4 v6, 0x5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v6, [I

    .line 13
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 15
    iput v1, v0, Lk0/mt;->e:I

    .line 16
    iput v1, v0, Lk0/mt;->f:I

    .line 17
    iput v1, v0, Lk0/mt;->g:I

    .line 18
    iput v2, v0, Lk0/mt;->b:I

    .line 19
    iput v2, v0, Lk0/mt;->c:I

    .line 20
    iput v2, v0, Lk0/mt;->d:I

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v6, [I

    .line 21
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 22
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 23
    iput v1, v0, Lk0/mt;->e:I

    .line 24
    iput v1, v0, Lk0/mt;->f:I

    .line 25
    iput v1, v0, Lk0/mt;->g:I

    .line 26
    iput v2, v0, Lk0/mt;->b:I

    .line 27
    iput v2, v0, Lk0/mt;->c:I

    .line 28
    iput v2, v0, Lk0/mt;->d:I

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v6, [I

    .line 29
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 30
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 31
    iput v1, v0, Lk0/mt;->e:I

    .line 32
    iput v1, v0, Lk0/mt;->f:I

    .line 33
    iput v1, v0, Lk0/mt;->g:I

    .line 34
    iput v2, v0, Lk0/mt;->b:I

    .line 35
    iput v2, v0, Lk0/mt;->c:I

    .line 36
    iput v2, v0, Lk0/mt;->d:I

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v6, [I

    .line 37
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 38
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 39
    iput v1, v0, Lk0/mt;->e:I

    .line 40
    iput v1, v0, Lk0/mt;->f:I

    .line 41
    iput v1, v0, Lk0/mt;->g:I

    .line 42
    iput v1, v0, Lk0/mt;->b:I

    .line 43
    iput v1, v0, Lk0/mt;->c:I

    .line 44
    iput v1, v0, Lk0/mt;->d:I

    .line 45
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lmodule/canbus/c0;->init()V

    .line 47
    iget-object v0, p0, Lmodule/canbus/c0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p0}, Lmodule/canbus/c0;->G3()V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v6, [I

    .line 49
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 50
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 51
    iput v1, v0, Lk0/mt;->e:I

    .line 52
    iput v1, v0, Lk0/mt;->f:I

    .line 53
    iput v1, v0, Lk0/mt;->g:I

    .line 54
    iput v2, v0, Lk0/mt;->b:I

    .line 55
    iput v2, v0, Lk0/mt;->c:I

    .line 56
    iput v2, v0, Lk0/mt;->d:I

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v6, [I

    .line 57
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    .line 58
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 59
    iput v1, v0, Lk0/mt;->e:I

    .line 60
    iput v1, v0, Lk0/mt;->f:I

    .line 61
    iput v1, v0, Lk0/mt;->g:I

    .line 62
    iput v1, v0, Lk0/mt;->b:I

    .line 63
    iput v1, v0, Lk0/mt;->c:I

    .line 64
    iput v1, v0, Lk0/mt;->d:I

    .line 65
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lmodule/canbus/c0;->init()V

    .line 67
    iget-object v0, p0, Lmodule/canbus/c0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {p0}, Lmodule/canbus/c0;->G3()V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v6, [I

    .line 69
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    .line 70
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 71
    iput v1, v0, Lk0/mt;->e:I

    .line 72
    iput v1, v0, Lk0/mt;->f:I

    .line 73
    iput v1, v0, Lk0/mt;->g:I

    .line 74
    iput v2, v0, Lk0/mt;->b:I

    .line 75
    iput v2, v0, Lk0/mt;->c:I

    .line 76
    iput v2, v0, Lk0/mt;->d:I

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v6, [I

    .line 77
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    .line 78
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 79
    iput v1, v0, Lk0/mt;->e:I

    .line 80
    iput v1, v0, Lk0/mt;->f:I

    .line 81
    iput v1, v0, Lk0/mt;->g:I

    .line 82
    iput v1, v0, Lk0/mt;->b:I

    .line 83
    iput v1, v0, Lk0/mt;->c:I

    .line 84
    iput v1, v0, Lk0/mt;->d:I

    .line 85
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lmodule/canbus/c0;->init()V

    .line 87
    iget-object v0, p0, Lmodule/canbus/c0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p0}, Lmodule/canbus/c0;->G3()V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v6, [I

    .line 89
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    .line 90
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 91
    iput v1, v0, Lk0/mt;->f:I

    .line 92
    iput v1, v0, Lk0/mt;->g:I

    .line 93
    iput v2, v0, Lk0/mt;->b:I

    .line 94
    iput v2, v0, Lk0/mt;->c:I

    .line 95
    iput v2, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 96
    :pswitch_9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v5, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_a
    iput v1, v0, Lk0/mt;->f:I

    .line 100
    iput v1, v0, Lk0/mt;->g:I

    .line 101
    iput v1, v0, Lk0/mt;->b:I

    .line 102
    iput v1, v0, Lk0/mt;->c:I

    .line 103
    iput v1, v0, Lk0/mt;->d:I

    new-array v0, v6, [I

    .line 104
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    .line 105
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lmodule/canbus/c0;->init()V

    .line 107
    iget-object v0, p0, Lmodule/canbus/c0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {p0}, Lmodule/canbus/c0;->G3()V

    goto :goto_0

    :pswitch_b
    new-array v0, v6, [I

    .line 109
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array v0, v6, [I

    .line 110
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v6, [I

    .line 111
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

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

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x31
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x30
        0x9
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x2f
        0x9
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x2d
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x2e
        0x9
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x2a
        0x9
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x2a
        0x9
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x2c
        0x9
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x2c
        0x9
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x9
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x9
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x26
        0x9
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x9
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v7, 0x0

    if-eq v2, v3, :cond_30

    const/16 v3, -0x17

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v2, v3, :cond_2e

    const/16 v3, -0x10

    const/4 v12, 0x2

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x41

    if-eq v2, v3, :cond_2c

    const/16 v13, 0x11

    if-eq v2, v13, :cond_26

    const/16 v13, 0x12

    if-eq v2, v13, :cond_24

    const/16 v14, 0x21

    if-eq v2, v14, :cond_1e

    const/16 v14, 0x22

    if-eq v2, v14, :cond_13

    const/16 v14, 0xf

    const/16 v15, 0x31

    if-eq v2, v15, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_12

    :cond_0
    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0xf

    .line 2
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    .line 3
    aget-byte v1, v1, v5

    shr-int/2addr v1, v10

    and-int/2addr v1, v10

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v4, v1, v4

    add-int/lit8 v16, p2, 0x4

    .line 6
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 7
    aget-byte v6, v1, v17

    add-int/lit8 v17, p2, 0x7

    .line 8
    aget-byte v17, v1, v17

    const/16 v15, 0xa

    new-array v13, v11, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v13, v7

    .line 9
    invoke-static {v15, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v11

    aput v15, v13, v7

    const/16 v15, 0xd

    .line 10
    invoke-static {v15, v13}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x3e

    new-array v15, v11, [I

    shr-int/lit8 v19, v2, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v15, v7

    .line 11
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v15, v11, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v15, v7

    .line 12
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    .line 13
    sget v2, Lk0/nt;->a:I

    const v13, 0xc018a

    if-eq v2, v13, :cond_2

    const v13, 0xd018a

    if-ne v2, v13, :cond_3

    :cond_2
    const/16 v2, 0xc

    new-array v13, v11, [I

    shr-int/lit8 v15, v4, 0x4

    and-int/2addr v15, v11

    aput v15, v13, v7

    .line 14
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v13, v11, [I

    shr-int/2addr v4, v9

    and-int/2addr v4, v11

    aput v4, v13, v7

    .line 15
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    :cond_3
    new-array v2, v11, [I

    shr-int/lit8 v4, v16, 0x4

    and-int/2addr v4, v11

    aput v4, v2, v7

    .line 16
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    if-eq v6, v11, :cond_8

    if-eq v6, v12, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    if-eq v6, v5, :cond_4

    packed-switch v6, :pswitch_data_0

    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    goto/16 :goto_1

    :pswitch_0
    move v2, v7

    move v6, v2

    move v3, v11

    move v4, v3

    goto :goto_0

    :pswitch_1
    move v2, v7

    move v4, v2

    move v6, v4

    move v3, v11

    move v5, v3

    goto :goto_1

    :pswitch_2
    move v2, v7

    move v5, v2

    move v6, v5

    move v3, v11

    move v4, v3

    goto :goto_1

    :pswitch_3
    move v2, v7

    move v4, v2

    move v5, v4

    move v6, v5

    move v3, v11

    goto :goto_1

    :cond_4
    move v2, v7

    move v3, v2

    move v4, v3

    move v6, v4

    move v5, v11

    goto :goto_1

    :cond_5
    move v2, v7

    move v3, v2

    move v6, v3

    move v4, v11

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_6
    move v2, v7

    move v3, v2

    move v5, v3

    move v6, v5

    move v4, v11

    goto :goto_1

    :cond_7
    move v3, v7

    move v4, v3

    move v5, v4

    move v6, v5

    move v2, v11

    goto :goto_1

    :cond_8
    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v11

    :goto_1
    new-array v8, v11, [I

    aput v2, v8, v7

    .line 17
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v3, v2, v7

    const/16 v3, 0x12

    .line 18
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v7

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v11, [I

    aput v5, v3, v7

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v6, v2, v7

    const/16 v3, 0x31

    .line 21
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    aput v17, v3, v7

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 23
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0xfe

    const/16 v6, 0x1c

    const/16 v8, 0x1b

    if-eqz v2, :cond_d

    add-int/lit8 v2, p2, 0x9

    .line 24
    aget-byte v2, v1, v2

    const/16 v10, 0xff

    and-int/2addr v2, v10

    if-eq v2, v5, :cond_a

    if-eq v2, v10, :cond_9

    new-array v10, v11, [I

    mul-int/2addr v2, v9

    aput v2, v10, v7

    .line 25
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v2, v11, [I

    aput v3, v2, v7

    .line 26
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v2, v11, [I

    aput v4, v2, v7

    .line 27
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x8

    .line 28
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    and-int/2addr v2, v8

    if-eq v2, v5, :cond_c

    if-eq v2, v8, :cond_b

    new-array v3, v11, [I

    mul-int/2addr v2, v9

    aput v2, v3, v7

    .line 29
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v2, v11, [I

    aput v3, v2, v7

    .line 30
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v2, v11, [I

    aput v4, v2, v7

    .line 31
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    add-int/lit8 v2, p2, 0x8

    .line 32
    aget-byte v2, v1, v2

    const/16 v10, 0xff

    and-int/2addr v2, v10

    if-eq v2, v5, :cond_f

    if-eq v2, v10, :cond_e

    new-array v10, v11, [I

    mul-int/2addr v2, v9

    aput v2, v10, v7

    .line 33
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v2, v11, [I

    aput v3, v2, v7

    .line 34
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    new-array v2, v11, [I

    aput v4, v2, v7

    .line 35
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 36
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    and-int/2addr v2, v8

    if-eq v2, v5, :cond_11

    if-eq v2, v8, :cond_10

    new-array v3, v11, [I

    mul-int/2addr v2, v9

    aput v2, v3, v7

    .line 37
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v2, v11, [I

    aput v3, v2, v7

    .line 38
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v2, v11, [I

    aput v4, v2, v7

    .line 39
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    .line 40
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 41
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-nez v1, :cond_12

    .line 42
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_12

    :cond_12
    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0x258

    .line 43
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_12

    .line 44
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 46
    aget-byte v1, v1, v3

    if-eq v2, v11, :cond_19

    if-eq v2, v12, :cond_14

    if-eq v2, v10, :cond_14

    goto/16 :goto_12

    .line 47
    :cond_14
    iget v2, v0, Lmodule/canbus/c0;->h:I

    if-eq v1, v2, :cond_31

    if-le v1, v2, :cond_16

    move v2, v7

    .line 48
    :goto_5
    iget v3, v0, Lmodule/canbus/c0;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_15

    const/16 v3, 0x1f

    .line 49
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    const/16 v2, 0x1f

    .line 50
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_16
    if-ge v1, v2, :cond_18

    move v2, v7

    .line 51
    :goto_6
    iget v3, v0, Lmodule/canbus/c0;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_17

    const/16 v3, 0x1e

    .line 52
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    const/16 v2, 0x1e

    .line 53
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 54
    :cond_18
    :goto_7
    iput v1, v0, Lmodule/canbus/c0;->h:I

    goto/16 :goto_12

    .line 55
    :cond_19
    iget v2, v0, Lmodule/canbus/c0;->g:I

    if-eq v1, v2, :cond_31

    if-le v1, v2, :cond_1b

    move v2, v7

    .line 56
    :goto_8
    iget v3, v0, Lmodule/canbus/c0;->g:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1a

    .line 57
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 58
    :cond_1a
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_1b
    if-ge v1, v2, :cond_1d

    move v2, v7

    .line 59
    :goto_9
    iget v3, v0, Lmodule/canbus/c0;->g:I

    sub-int/2addr v3, v1

    const/16 v4, 0x8

    if-ge v2, v3, :cond_1c

    .line 60
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 61
    :cond_1c
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    .line 62
    :cond_1d
    :goto_a
    iput v1, v0, Lmodule/canbus/c0;->g:I

    goto/16 :goto_12

    .line 63
    :cond_1e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lmodule/canbus/c0;->e:I

    add-int/lit8 v2, p2, 0x3

    .line 65
    aget-byte v1, v1, v2

    move v2, v7

    .line 66
    :goto_b
    iget-object v3, v0, Lmodule/canbus/c0;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_20

    .line 67
    iget v4, v0, Lmodule/canbus/c0;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_1f

    if-eqz v4, :cond_20

    .line 68
    iput v2, v0, Lmodule/canbus/c0;->c:I

    goto :goto_c

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    :goto_c
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_21

    .line 69
    array-length v1, v3

    if-ge v2, v1, :cond_31

    .line 70
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 71
    :cond_21
    iget v1, v0, Lmodule/canbus/c0;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_22

    const/16 v2, 0xff

    if-eq v1, v2, :cond_23

    .line 72
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_22
    const/16 v2, 0xff

    .line 73
    :cond_23
    :goto_d
    iput v2, v0, Lmodule/canbus/c0;->c:I

    goto/16 :goto_12

    :cond_24
    add-int/lit8 v2, p2, 0x4

    .line 74
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 75
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_25

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 76
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 77
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_25
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 78
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 79
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 80
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 81
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 82
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v11

    aput v1, v2, v7

    .line 83
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    .line 84
    :cond_26
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x5

    .line 85
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 86
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lmodule/canbus/c0;->d:I

    move v1, v7

    .line 87
    :goto_f
    iget-object v3, v0, Lmodule/canbus/c0;->f:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_28

    .line 88
    iget v4, v0, Lmodule/canbus/c0;->d:I

    aget-object v5, v3, v1

    aget v5, v5, v7

    if-ne v4, v5, :cond_27

    if-eqz v4, :cond_28

    .line 89
    iput v1, v0, Lmodule/canbus/c0;->b:I

    goto :goto_10

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_28
    :goto_10
    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-eqz v2, :cond_29

    .line 90
    array-length v2, v3

    if-ge v1, v2, :cond_31

    .line 91
    iget-byte v2, v0, Lmodule/canbus/c0;->q:B

    if-nez v2, :cond_31

    add-int/2addr v2, v11

    int-to-byte v2, v2

    .line 92
    iput-byte v2, v0, Lmodule/canbus/c0;->q:B

    .line 93
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 94
    iget-object v1, v0, Lmodule/canbus/c0;->r:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    .line 95
    :cond_29
    iget v1, v0, Lmodule/canbus/c0;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2a

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2b

    .line 96
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 97
    iget-object v1, v0, Lmodule/canbus/c0;->r:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 98
    iput-byte v7, v0, Lmodule/canbus/c0;->q:B

    goto :goto_11

    :cond_2a
    const/16 v2, 0xff

    .line 99
    :cond_2b
    :goto_11
    iput v2, v0, Lmodule/canbus/c0;->b:I

    goto/16 :goto_12

    :cond_2c
    const/16 v2, 0xff

    .line 100
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v3, p2, 0x2

    .line 101
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 102
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 103
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 104
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->U2(I)V

    add-int/lit8 v3, p2, 0x6

    .line 105
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    add-int/lit8 v3, p2, 0x7

    .line 106
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    add-int/lit8 v3, p2, 0x8

    .line 107
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->J1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    add-int/lit8 v3, p2, 0x9

    .line 108
    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    invoke-static {v1}, Ll0/c0;->J1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_12

    .line 109
    :cond_2d
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_2e
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v1, v2

    const/16 v3, 0x66

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v10

    aput v6, v4, v7

    .line 111
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v10

    aput v6, v4, v7

    .line 112
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x3

    .line 113
    aget-byte v12, v1, v6

    shr-int/lit8 v9, v12, 0x5

    and-int/2addr v9, v11

    aput v9, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x63

    new-array v4, v11, [I

    .line 114
    aget-byte v9, v1, v6

    shr-int/lit8 v8, v9, 0x4

    and-int/2addr v8, v11

    aput v8, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3f5

    new-array v4, v11, [I

    and-int/2addr v2, v10

    aput v2, v4, v7

    .line 115
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 116
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 117
    aget-byte v1, v1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_2f

    .line 118
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto :goto_12

    .line 119
    :cond_2f
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_12

    .line 120
    :cond_30
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 121
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 122
    aget-byte v3, v1, v3

    add-int/lit8 v6, p2, 0x4

    .line 123
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x5

    .line 124
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x6

    .line 125
    aget-byte v9, v1, v9

    add-int/lit8 v4, p2, 0x7

    .line 126
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v2, v4

    const/16 v10, 0x2d

    .line 127
    invoke-static {v2, v7, v10}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/c0;->A:I

    and-int/lit16 v2, v6, 0xff

    const/16 v6, 0x1a

    .line 128
    invoke-static {v2, v5, v6}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/c0;->I:I

    and-int/lit16 v2, v3, 0xff

    .line 129
    invoke-static {v2, v5, v6}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/c0;->J:I

    and-int/lit16 v2, v8, 0xff

    .line 130
    invoke-static {v2, v5, v6}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/c0;->C:I

    and-int/lit16 v2, v9, 0xff

    .line 131
    invoke-static {v2, v5, v6}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/c0;->D:I

    and-int/2addr v1, v4

    .line 132
    invoke-static {v1, v5, v6}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/c0;->E:I

    :cond_31
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/c0;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/c0;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/c0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/c0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6c

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
    .locals 11

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    const/4 v4, -0x7

    const/16 v5, 0xe3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    const/16 v6, 0x3ed

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v0, [I

    aput v5, p1, v1

    aput v3, p1, v2

    aput v4, p1, v3

    aput v2, p1, p4

    .line 2
    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 3
    :cond_1
    aget p1, p2, v1

    invoke-virtual {p0, p1}, Lmodule/canbus/c0;->K3(I)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 4
    array-length p1, p2

    if-lt p1, v3, :cond_5

    new-array p1, v0, [I

    aput v5, p1, v1

    aput v3, p1, v2

    aput v4, p1, v3

    .line 5
    aget v0, p2, v1

    aput v0, p1, p4

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_3
    sget p1, Lk0/nt;->a:I

    const v4, 0x4018a

    if-ne p1, v4, :cond_4

    const/4 p1, 0x7

    new-array v4, p1, [B

    const/16 v5, 0x33

    aput-byte v5, v4, v1

    aput-byte v0, v4, v2

    .line 7
    aget v6, p2, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    iget-object v6, p0, Lmodule/canbus/c0;->o:[I

    iget v7, p0, Lmodule/canbus/c0;->p:I

    rem-int/2addr v7, v3

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, p4

    const/16 v6, 0x25

    aput-byte v6, v4, p3

    aput-byte v2, v4, v0

    const/4 v7, 0x6

    const/16 v8, -0x56

    aput-byte v8, v4, v7

    invoke-static {v4}, Lmodule/canbus/c0;->P3([B)V

    new-array v4, p1, [B

    aput-byte v5, v4, v1

    aput-byte v0, v4, v2

    .line 8
    aget v9, p2, v1

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    iget-object v9, p0, Lmodule/canbus/c0;->o:[I

    iget v10, p0, Lmodule/canbus/c0;->p:I

    rem-int/2addr v10, v3

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, p4

    aput-byte v6, v4, p3

    aput-byte v2, v4, v0

    aput-byte v8, v4, v7

    invoke-static {v4}, Lmodule/canbus/c0;->P3([B)V

    new-array p1, p1, [B

    aput-byte v5, p1, v1

    aput-byte v0, p1, v2

    .line 9
    aget p2, p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    iget-object p2, p0, Lmodule/canbus/c0;->o:[I

    iget v1, p0, Lmodule/canbus/c0;->p:I

    rem-int/2addr v1, v3

    aget p2, p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, p4

    aput-byte v6, p1, p3

    aput-byte v2, p1, v0

    aput-byte v8, p1, v7

    invoke-static {p1}, Lmodule/canbus/c0;->P3([B)V

    .line 10
    :cond_4
    iget p1, p0, Lmodule/canbus/c0;->p:I

    add-int/2addr p1, v2

    iput p1, p0, Lmodule/canbus/c0;->p:I

    .line 11
    rem-int/2addr p1, v3

    iput p1, p0, Lmodule/canbus/c0;->p:I

    :cond_5
    :goto_0
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/c0;->M:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/c0;->B:I

    :cond_0
    return-void
.end method

.method public final a3(I)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0, p1, p1}, Lmodule/canbus/c0;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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
    if-eqz p1, :cond_c

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v1, p0, Lmodule/canbus/c0;->t:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lmodule/canbus/c0;->t:I

    .line 5
    iput v0, p0, Lmodule/canbus/c0;->u:I

    .line 6
    iput v0, p0, Lmodule/canbus/c0;->v:I

    .line 7
    :cond_2
    iget-object v1, p0, Lmodule/canbus/c0;->s:[B

    iget v2, p0, Lmodule/canbus/c0;->t:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lmodule/canbus/c0;->t:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/c0;->t:I

    .line 9
    iget p1, p0, Lmodule/canbus/c0;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lmodule/canbus/c0;->s:[B

    aget-byte p1, p1, v0

    move p1, v2

    .line 11
    :goto_0
    iget v1, p0, Lmodule/canbus/c0;->v:I

    if-ge p1, v1, :cond_4

    .line 12
    iget-object v1, p0, Lmodule/canbus/c0;->s:[B

    aget-byte v1, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lmodule/canbus/c0;->s:[B

    aget-byte v1, p1, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmodule/canbus/c0;->H3([BII)V

    .line 14
    iget p1, p0, Lmodule/canbus/c0;->v:I

    add-int/2addr p1, v3

    iput p1, p0, Lmodule/canbus/c0;->u:I

    .line 15
    iput v0, p0, Lmodule/canbus/c0;->v:I

    .line 16
    :cond_5
    iget p1, p0, Lmodule/canbus/c0;->t:I

    sub-int/2addr p1, v2

    :goto_1
    iget v1, p0, Lmodule/canbus/c0;->u:I

    if-ge v1, p1, :cond_a

    .line 17
    iget-object v4, p0, Lmodule/canbus/c0;->s:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x55

    if-ne v5, v6, :cond_9

    .line 18
    iget v5, p0, Lmodule/canbus/c0;->v:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_6

    .line 19
    iput v0, p0, Lmodule/canbus/c0;->v:I

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v1, 0x1

    .line 20
    aget-byte v5, v4, v5

    iput v5, p0, Lmodule/canbus/c0;->v:I

    .line 21
    iget v6, p0, Lmodule/canbus/c0;->t:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 22
    iput v5, p0, Lmodule/canbus/c0;->v:I

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 23
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 24
    :goto_2
    iget v4, p0, Lmodule/canbus/c0;->v:I

    if-ge v1, v4, :cond_8

    .line 25
    iget-object v4, p0, Lmodule/canbus/c0;->s:[B

    aget-byte v4, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_8
    iget-object v1, p0, Lmodule/canbus/c0;->s:[B

    iget v4, p0, Lmodule/canbus/c0;->u:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5

    add-int/2addr v5, v2

    invoke-virtual {p0, v1, v4, v5}, Lmodule/canbus/c0;->H3([BII)V

    .line 27
    iget v1, p0, Lmodule/canbus/c0;->v:I

    iput v1, p0, Lmodule/canbus/c0;->u:I

    .line 28
    iput v0, p0, Lmodule/canbus/c0;->v:I

    .line 29
    :cond_9
    :goto_3
    iget v1, p0, Lmodule/canbus/c0;->u:I

    add-int/2addr v1, v3

    iput v1, p0, Lmodule/canbus/c0;->u:I

    goto :goto_1

    :cond_a
    :goto_4
    if-eqz v1, :cond_c

    .line 30
    iget p1, p0, Lmodule/canbus/c0;->t:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/c0;->t:I

    if-eqz p1, :cond_b

    .line 31
    iget-object v2, p0, Lmodule/canbus/c0;->s:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_b
    iput v0, p0, Lmodule/canbus/c0;->u:I

    :cond_c
    :goto_5
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/c0;->P:Lo1/f;

    new-instance v1, Lmodule/canbus/c0$e;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/c0$e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/c0$e;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/c0$e;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/c0$e;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/c0$e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
