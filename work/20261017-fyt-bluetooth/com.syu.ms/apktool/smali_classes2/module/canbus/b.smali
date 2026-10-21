.class public Lmodule/canbus/b;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/b$h;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final C:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/b$h;",
            ">;"
        }
    .end annotation
.end field

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Lo1/g0;

.field public final m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/b;->A:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/b;->B:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/b;->C:Lo1/f;

    return-void

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
        0x0
        0x1
        0x3
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
        0x11
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/b;->c:I

    const/16 v1, 0x2f

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

    const/16 v6, 0x9

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v6, 0xa

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v6, 0xb

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v6, 0xc

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v6, 0xd

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v6, 0xe

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v6, 0xf

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v6, 0x10

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v6, 0x11

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v6, 0x12

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v6, 0x13

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v6, 0x14

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v6, 0x15

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v6, 0x16

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v6, 0x17

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v6, 0x18

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v6, 0x19

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v6, 0x1a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v6, 0x1b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v6, 0x1c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v6, 0x1d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v6, 0x1e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v6, 0x1f

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v6, 0x20

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v7, 0x21

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v7, 0x22

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v7, 0x23

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v7, 0x24

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v7, 0x25

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v7, 0x26

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v7, 0x27

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v7, 0x28

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v7, 0x29

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v7, 0x2a

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v7, 0x2b

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v7, 0x2c

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v7, 0x2d

    aput-object v3, v1, v7

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    iput-object v1, p0, Lmodule/canbus/b;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/b$a;

    invoke-direct {v1, p0}, Lmodule/canbus/b$a;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lmodule/canbus/b$b;

    invoke-direct {v1, p0}, Lmodule/canbus/b$b;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lmodule/canbus/b$c;

    invoke-direct {v1, p0}, Lmodule/canbus/b$c;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->g:Ljava/lang/Runnable;

    .line 7
    iput-byte v5, p0, Lmodule/canbus/b;->h:B

    .line 8
    new-instance v1, Lmodule/canbus/b$d;

    invoke-direct {v1, p0}, Lmodule/canbus/b$d;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lmodule/canbus/b$e;

    invoke-direct {v1, p0}, Lmodule/canbus/b$e;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lmodule/canbus/b$f;

    invoke-direct {v1, p0}, Lmodule/canbus/b$f;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmodule/canbus/b;->l:Lo1/g0;

    .line 12
    iput v4, p0, Lmodule/canbus/b;->m:I

    const/16 v1, 0x64

    .line 13
    iput v1, p0, Lmodule/canbus/b;->n:I

    .line 14
    new-instance v1, Lmodule/canbus/b$g;

    invoke-direct {v1, p0}, Lmodule/canbus/b$g;-><init>(Lmodule/canbus/b;)V

    iput-object v1, p0, Lmodule/canbus/b;->o:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lmodule/canbus/b;->p:I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
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
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_10
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_11
    .array-data 4
        0x30
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x31
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x32
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_15
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x35
        0x18
    .end array-data

    :array_17
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_18
    .array-data 4
        0x37
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_1a
    .array-data 4
        0x39
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_1c
    .array-data 4
        0x3b
        0x19
    .end array-data

    :array_1d
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_1e
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_21
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_23
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_24
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_25
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_26
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_27
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_28
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_29
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_2a
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_2b
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_2c
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2d
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_2e
    .array-data 4
        0x8b
        0x8
    .end array-data
.end method

.method public static synthetic A3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->v:I

    return v0
.end method

.method public static synthetic B3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/b;->v:I

    return p0
.end method

.method public static synthetic C3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/b;->A:[I

    return-object v0
.end method

.method public static D3(IIIIIII)V
    .locals 7

    .line 1
    sget-object v0, Lmodule/canbus/b;->C:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmodule/canbus/b$h;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lmodule/canbus/b$h;->b(IIIIII)V

    :cond_1
    return-void
.end method

.method public static E3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/b;->C:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/b$h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/b$h;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b;->a3()V

    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b;->G3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->u:I

    return v0
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->s:I

    return v0
.end method

.method public static synthetic i3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/b;->s:I

    return p0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->w:I

    return v0
.end method

.method public static synthetic k3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/b;->w:I

    return p0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->y:I

    return v0
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->x:I

    return v0
.end method

.method public static synthetic n3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/b;->x:I

    return p0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b;->z:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b;->H3()V

    return-void
.end method

.method public static synthetic q3(Lmodule/canbus/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/b;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic r3(Lmodule/canbus/b;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/b;->l:Lo1/g0;

    return-object p0
.end method

.method public static synthetic s3(Lmodule/canbus/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/b;->q:I

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/b;->q:I

    return p1
.end method

.method public static synthetic u3(Lmodule/canbus/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/b;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/b;->q:I

    return v0
.end method

.method public static synthetic v3(Lmodule/canbus/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b;->F3()V

    return-void
.end method

.method public static synthetic w3(Lmodule/canbus/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/b;->n:I

    return p0
.end method

.method public static synthetic x3(Lmodule/canbus/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/b;->p:I

    return p0
.end method

.method public static synthetic y3(Lmodule/canbus/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/b;->p:I

    return p1
.end method

.method public static synthetic z3(Lmodule/canbus/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/b;->p:I

    return v0
.end method


# virtual methods
.method public final F3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b;->G3()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/b;->H3()V

    return-void
.end method

.method public final declared-synchronized G3()V
    .locals 4

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
    sget v0, Lu0/b;->a0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_2
    sget v0, Lmodule/canbus/b;->u:I

    sget v1, Lmodule/canbus/b;->v:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    add-int/2addr v0, v3

    .line 4
    sput v0, Lmodule/canbus/b;->u:I

    .line 5
    iput v2, p0, Lmodule/canbus/b;->q:I

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    sub-int/2addr v0, v3

    .line 6
    sput v0, Lmodule/canbus/b;->u:I

    .line 7
    iput v2, p0, Lmodule/canbus/b;->q:I

    goto :goto_0

    .line 8
    :cond_3
    sput v1, Lmodule/canbus/b;->u:I

    .line 9
    :goto_0
    sget v0, Lmodule/canbus/b;->s:I

    const/4 v1, 0x2

    if-ne v0, v3, :cond_4

    .line 10
    sget v0, Lmodule/canbus/b;->u:I

    or-int/lit16 v0, v0, 0x80

    invoke-static {v1, v0}, Lmodule/canbus/b;->E3(II)V

    goto :goto_1

    .line 11
    :cond_4
    sget v0, Lmodule/canbus/b;->u:I

    and-int/lit8 v0, v0, 0x7f

    invoke-static {v1, v0}, Lmodule/canbus/b;->E3(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized H3()V
    .locals 8

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

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_1
    sget v2, Lmodule/canbus/b;->t:I

    sget v3, Lmodule/canbus/b;->w:I

    sget v4, Lmodule/canbus/b;->x:I

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-static/range {v1 .. v7}, Lmodule/canbus/b;->D3(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
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

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
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
    sget-object p1, Lmodule/canbus/b;->B:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/b;->y:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/b;->z:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/b;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/b;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/canbus/b;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 6
    iget-object v0, p0, Lmodule/canbus/b;->l:Lo1/g0;

    invoke-virtual {v0, v1, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->d3(I)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v4, v0, Lk0/mt;->e:I

    .line 11
    iput v1, v0, Lk0/mt;->f:I

    .line 12
    iput v4, v0, Lk0/mt;->g:I

    .line 13
    iput v4, v0, Lk0/mt;->b:I

    .line 14
    iput v4, v0, Lk0/mt;->c:I

    .line 15
    iput v4, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v4, v0, Lk0/mt;->e:I

    .line 18
    iput v1, v0, Lk0/mt;->f:I

    .line 19
    iput v4, v0, Lk0/mt;->g:I

    .line 20
    iput v1, v0, Lk0/mt;->b:I

    .line 21
    iput v1, v0, Lk0/mt;->c:I

    .line 22
    iput v1, v0, Lk0/mt;->d:I

    .line 23
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lmodule/canbus/b;->init()V

    .line 25
    iget-object v0, p0, Lmodule/canbus/b;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 26
    invoke-virtual {p0}, Lmodule/canbus/b;->F3()V

    .line 27
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->o:I

    .line 29
    iget-object v0, p0, Lmodule/canbus/b;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x27

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/16 v4, 0xff

    if-eq v0, v1, :cond_11

    const/16 v1, 0x29

    if-eq v0, v1, :cond_10

    const/16 v1, 0x30

    if-eq v0, v1, :cond_f

    const/16 p3, 0x50

    const/4 v1, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, p3, :cond_c

    const/4 p3, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v7, [I

    and-int/lit8 v0, p1, 0x1

    aput v0, p2, v6

    .line 4
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x1

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 5
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x1

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 6
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    and-int/lit8 v0, p1, 0x1

    aput v0, p2, v6

    .line 7
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x2

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 8
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v7

    aput v0, p2, v6

    const/4 v0, 0x4

    .line 9
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v7

    aput v0, p2, v6

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 11
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, p2, 0x2

    .line 13
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 14
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 15
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/2addr p2, p3

    .line 16
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lmodule/canbus/b;->c3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    .line 17
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, p2, 0x2

    .line 18
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 19
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 20
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmodule/canbus/b;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 21
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lmodule/canbus/b;->c3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    new-array v0, v7, [I

    shr-int/lit8 v1, p3, 0x7

    and-int/2addr v1, v7

    aput v1, v0, v6

    .line 23
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 24
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 25
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 26
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x2

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v1, v7, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v7

    aput p3, v1, v6

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 29
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 30
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 31
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 32
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v1, v7, [I

    shr-int/2addr p3, v6

    and-int/lit8 p3, p3, 0xf

    aput p3, v1, v6

    .line 33
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 34
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v0, 0x1c

    const/16 v1, 0x1b

    if-nez p3, :cond_1

    new-array p3, v7, [I

    add-int/lit8 v2, p2, 0x4

    .line 35
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, p3, v6

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/lit8 v1, p2, 0x5

    .line 36
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, p3, v6

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    new-array p3, v7, [I

    add-int/lit8 v2, p2, 0x5

    .line 37
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, p3, v6

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/lit8 v1, p2, 0x4

    .line 38
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, p3, v6

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p3, 0x37

    new-array v0, v7, [I

    add-int/lit8 p2, p2, 0x6

    .line 39
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v7

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 40
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 42
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 43
    iput p2, p0, Lmodule/canbus/b;->c:I

    move p2, v6

    .line 44
    :goto_2
    iget-object p3, p0, Lmodule/canbus/b;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_3

    .line 45
    iget v0, p0, Lmodule/canbus/b;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v6

    if-ne v0, v2, :cond_2

    if-eqz v0, :cond_3

    .line 46
    iput p2, p0, Lmodule/canbus/b;->b:I

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 47
    :cond_3
    :goto_3
    iget v0, p0, Lmodule/canbus/b;->c:I

    const/16 v2, 0x32

    if-eq v0, v2, :cond_a

    const/16 v2, 0x81

    if-eq v0, v2, :cond_8

    const/16 v2, 0x82

    if-eq v0, v2, :cond_a

    const/16 v2, 0x8a

    if-eq v0, v2, :cond_8

    const/16 v2, 0x8b

    if-eq v0, v2, :cond_a

    packed-switch v0, :pswitch_data_1

    and-int/2addr p1, v4

    if-eqz p1, :cond_4

    .line 48
    array-length p1, p3

    if-ge p2, p1, :cond_13

    .line 49
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 50
    :cond_4
    iget p1, p0, Lmodule/canbus/b;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_5

    if-eq p1, v4, :cond_5

    .line 51
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 52
    :cond_5
    iput v4, p0, Lmodule/canbus/b;->b:I

    goto/16 :goto_a

    :pswitch_5
    move p2, v6

    :goto_4
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_6

    .line 53
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 54
    :cond_6
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :pswitch_6
    move p2, v6

    :goto_5
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_7

    .line 55
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 56
    :cond_7
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_8
    :pswitch_7
    move p2, v6

    :goto_6
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_9

    .line 57
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 58
    :cond_9
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_a
    :pswitch_8
    move p2, v6

    :goto_7
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x8

    if-ge p2, p3, :cond_b

    .line 59
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 60
    :cond_b
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_c
    add-int/lit8 p3, p2, 0x2

    .line 61
    aget-byte v0, p1, p3

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v5

    if-eqz v0, :cond_d

    .line 62
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_8

    :cond_d
    if-nez v0, :cond_e

    .line 63
    invoke-static {v6}, Lk0/qt;->a(I)V

    :cond_e
    :goto_8
    const/16 v0, 0x3f5

    new-array v2, v7, [I

    .line 64
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v5

    aput p3, v2, v6

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v7, [I

    add-int/2addr p2, v5

    .line 65
    aget-byte v2, p1, p2

    shr-int/lit8 v1, v2, 0x7

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v7, [I

    .line 66
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v7, [I

    .line 67
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v7, [I

    .line 68
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    .line 69
    :cond_f
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_a

    .line 70
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/2addr p2, v3

    .line 71
    aget-byte p1, p1, p2

    goto :goto_a

    .line 72
    :cond_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/2addr p2, v3

    .line 73
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_12

    rsub-int p1, p1, 0x100

    mul-int/2addr p1, v2

    rsub-int p1, p1, 0x3e8

    goto :goto_9

    :cond_12
    mul-int/2addr p1, v2

    add-int/lit16 p1, p1, 0x3e8

    .line 74
    :goto_9
    invoke-static {p1}, Lu0/d;->A3(I)V

    :cond_13
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/b;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/b;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/b;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/b;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/b;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x68

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

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    .line 2
    aget p1, p2, v3

    const/16 v5, -0x7c

    if-gt p1, v1, :cond_1

    new-array p1, v0, [I

    aput p4, p1, v3

    aput v5, p1, v2

    aput v4, p1, v4

    aput v2, p1, p3

    .line 3
    aget p2, p2, v3

    add-int/2addr p2, v1

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v3

    aput v5, p1, v2

    aput v4, p1, v4

    aput v2, p1, p3

    .line 4
    aget p2, p2, v3

    sub-int/2addr p2, v1

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lmodule/canbus/b;->d3(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p4, 0x84

    aput p4, p1, v2

    aput v4, p1, v4

    .line 7
    aget p4, p2, v3

    aput p4, p1, p3

    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
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
    sget-object v0, Lmodule/canbus/b;->A:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/b;->v:I

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 15

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lmodule/canbus/b;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 3
    :pswitch_1
    sget v2, Lu0/b;->s3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    aput v3, v1, v9

    .line 4
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v8

    .line 5
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto/16 :goto_3

    .line 7
    :pswitch_2
    sget v2, Lo0/e;->C:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    aput v3, v1, v9

    .line 8
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v8

    .line 9
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 10
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto :goto_3

    :pswitch_3
    aput v3, v1, v10

    aput v3, v1, v7

    aput v3, v1, v9

    aput v3, v1, v8

    aput v3, v1, v4

    aput v3, v1, v6

    goto :goto_3

    .line 11
    :pswitch_4
    sget v5, Lw0/d;->i:I

    .line 12
    sget v11, Lw0/d;->j:I

    .line 13
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_0

    aput v2, v1, v10

    :goto_0
    sub-int/2addr v11, v13

    goto :goto_1

    :cond_0
    const v14, 0x10001

    if-ne v12, v14, :cond_1

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_1
    const v14, 0x10002

    if-ne v12, v14, :cond_2

    const/4 v2, 0x3

    aput v2, v1, v10

    goto :goto_0

    :cond_2
    if-nez v12, :cond_3

    const/16 v2, 0x11

    aput v2, v1, v10

    goto :goto_1

    :cond_3
    if-ne v12, v2, :cond_4

    const/16 v2, 0x12

    aput v2, v1, v10

    :cond_4
    :goto_1
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v7

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 14
    rem-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_5

    if-eqz v11, :cond_5

    aput v9, v1, v8

    goto :goto_2

    :cond_5
    aput v2, v1, v8

    :goto_2
    aput v3, v1, v4

    aput v3, v1, v6

    :goto_3
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_4
    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 15
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_4

    .line 16
    :cond_6
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final b3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x30

    const/16 v3, 0xc

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x13

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v3, p1, v7

    .line 4
    aput v2, p1, v1

    goto :goto_0

    .line 5
    :pswitch_1
    aput v4, p1, v7

    .line 6
    aput v6, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_3
    aput v3, p1, v7

    const/16 v0, 0x22

    .line 10
    aput v0, p1, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    .line 12
    aput v2, p1, v1

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v6, p1, v1

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_2

    .line 16
    aput v4, p1, v7

    .line 17
    aput v6, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p1, v7

    .line 19
    aput v6, p1, v1

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    .line 20
    aput v0, p1, v7

    const/4 v0, 0x0

    .line 21
    aput v0, p1, v1

    goto :goto_0

    .line 22
    :pswitch_7
    aput v5, p1, v7

    .line 23
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public d3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/b;->r:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x62

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object v1, p0, Lmodule/canbus/b;->l:Lo1/g0;

    invoke-virtual {v1, v0, v0}, Lo1/g0;->b(II)I

    move-result v1

    sget v3, Lmodule/canbus/b;->r:I

    if-eq v1, v3, :cond_0

    .line 4
    iget-object v1, p0, Lmodule/canbus/b;->l:Lo1/g0;

    invoke-virtual {v1, v0, v3}, Lo1/g0;->g(II)V

    :cond_0
    const/16 v1, 0xb

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v0, 0x2

    const/16 v3, 0x8

    aput v3, v1, v0

    const/4 v4, 0x3

    aput v0, v1, v4

    const/4 v0, 0x4

    aput p1, v1, v0

    const/4 p1, 0x5

    aput v2, v1, p1

    const/4 p1, 0x6

    aput v2, v1, p1

    const/4 p1, 0x7

    aput v2, v1, p1

    aput v2, v1, v3

    const/16 p1, 0x9

    aput v2, v1, p1

    const/16 p1, 0xa

    aput v2, v1, p1

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/b;->C:Lo1/f;

    new-instance v1, Lmodule/canbus/b$h;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/b$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/b$h;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/b$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
