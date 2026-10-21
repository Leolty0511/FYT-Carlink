.class public Lmodule/canbus/l;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/l$e;
    }
.end annotation


# static fields
.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static final v:[I

.field public static final w:[I

.field public static final x:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/l$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:[I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/l;->v:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/l;->w:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/l;->x:Lo1/f;

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
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x23
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
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/l;->c:I

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

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v4, 0x20

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v4, 0x21

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v4, 0x22

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v4, 0x23

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v4, 0x24

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v4, 0x25

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v4, 0x26

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v4, 0x27

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v4, 0x28

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v4, 0x29

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v4, 0x2e

    aput-object v3, v1, v4

    iput-object v1, p0, Lmodule/canbus/l;->d:[[I

    .line 4
    new-instance v1, Lmodule/canbus/l$a;

    invoke-direct {v1, p0}, Lmodule/canbus/l$a;-><init>(Lmodule/canbus/l;)V

    iput-object v1, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_2f

    iput-object v1, p0, Lmodule/canbus/l;->f:[I

    .line 6
    iput v0, p0, Lmodule/canbus/l;->g:I

    .line 7
    new-instance v1, Lmodule/canbus/l$b;

    invoke-direct {v1, p0}, Lmodule/canbus/l$b;-><init>(Lmodule/canbus/l;)V

    iput-object v1, p0, Lmodule/canbus/l;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lmodule/canbus/l$c;

    invoke-direct {v1, p0}, Lmodule/canbus/l$c;-><init>(Lmodule/canbus/l;)V

    iput-object v1, p0, Lmodule/canbus/l;->i:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 9
    iput v1, p0, Lmodule/canbus/l;->j:I

    .line 10
    new-instance v1, Lmodule/canbus/l$d;

    invoke-direct {v1, p0}, Lmodule/canbus/l$d;-><init>(Lmodule/canbus/l;)V

    iput-object v1, p0, Lmodule/canbus/l;->k:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lmodule/canbus/l;->l:I

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

    :array_2f
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic A3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->p:I

    return v0
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->n:I

    return v0
.end method

.method public static synthetic C3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/l;->n:I

    return p0
.end method

.method public static D3(IIIIIII)V
    .locals 7

    .line 1
    sget-object v0, Lmodule/canbus/l;->x:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmodule/canbus/l$e;

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
    invoke-virtual/range {v0 .. v6}, Lmodule/canbus/l$e;->b(IIIIII)V

    :cond_1
    return-void
.end method

.method public static E3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/l;->x:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/l$e;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/l$e;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/l;->a3()V

    return-void
.end method

.method public static synthetic g3(Lmodule/canbus/l;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/l;->e3(I)V

    return-void
.end method

.method public static synthetic h3(Lmodule/canbus/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/l;->G3()V

    return-void
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->r:I

    return v0
.end method

.method public static synthetic j3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/l;->r:I

    return p0
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->t:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->s:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/l;->s:I

    return p0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->u:I

    return v0
.end method

.method public static synthetic o3(Lmodule/canbus/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/l;->H3()V

    return-void
.end method

.method public static synthetic p3(Lmodule/canbus/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/l;->m:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/l;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/l;->m:I

    return p1
.end method

.method public static synthetic r3(Lmodule/canbus/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/l;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/l;->m:I

    return v0
.end method

.method public static synthetic s3(Lmodule/canbus/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/l;->F3()V

    return-void
.end method

.method public static synthetic t3(Lmodule/canbus/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/l;->j:I

    return p0
.end method

.method public static synthetic u3(Lmodule/canbus/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/l;->l:I

    return p0
.end method

.method public static synthetic v3(Lmodule/canbus/l;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/l;->l:I

    return p1
.end method

.method public static synthetic w3(Lmodule/canbus/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/l;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/l;->l:I

    return v0
.end method

.method public static synthetic x3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/l;->q:I

    return v0
.end method

.method public static synthetic y3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/l;->q:I

    return p0
.end method

.method public static synthetic z3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/l;->v:[I

    return-object v0
.end method


# virtual methods
.method public final F3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/l;->G3()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/l;->H3()V

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
    sget v0, Lmodule/canbus/l;->p:I

    sget v1, Lmodule/canbus/l;->q:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v3

    .line 3
    sput v0, Lmodule/canbus/l;->p:I

    .line 4
    iput v2, p0, Lmodule/canbus/l;->m:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    sub-int/2addr v0, v3

    .line 5
    sput v0, Lmodule/canbus/l;->p:I

    .line 6
    iput v2, p0, Lmodule/canbus/l;->m:I

    goto :goto_0

    .line 7
    :cond_2
    sput v1, Lmodule/canbus/l;->p:I

    .line 8
    :goto_0
    sget v0, Lmodule/canbus/l;->n:I

    const/4 v1, 0x2

    if-ne v0, v3, :cond_3

    .line 9
    sget v0, Lmodule/canbus/l;->p:I

    or-int/lit16 v0, v0, 0x80

    invoke-static {v1, v0}, Lmodule/canbus/l;->E3(II)V

    goto :goto_1

    .line 10
    :cond_3
    sget v0, Lmodule/canbus/l;->p:I

    and-int/lit8 v0, v0, 0x7f

    invoke-static {v1, v0}, Lmodule/canbus/l;->E3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
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
    sget v2, Lmodule/canbus/l;->o:I

    sget v3, Lmodule/canbus/l;->r:I

    sget v4, Lmodule/canbus/l;->s:I

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-static/range {v1 .. v7}, Lmodule/canbus/l;->D3(IIIIIII)V
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
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public O2([I)V
    .locals 7

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

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x10

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v4}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x14

    .line 10
    invoke-virtual {p0, p1}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 11
    invoke-virtual {p0, p1}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v6

    const/16 v3, 0x23

    if-ne v0, v6, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-eq p1, v6, :cond_a

    .line 14
    invoke-virtual {p0, v3}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v6

    if-nez p1, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-eq p1, v1, :cond_a

    .line 17
    invoke-virtual {p0, v3}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v6

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lmodule/canbus/l;->d3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v6

    const/16 v0, 0x26

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v6

    const/16 v0, 0xd

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v1}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_a

    .line 32
    invoke-virtual {p0, v1}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v5}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_a

    .line 37
    invoke-virtual {p0, v5}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v6

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v6}, Lmodule/canbus/l;->d3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_a

    .line 42
    invoke-virtual {p0, v6}, Lmodule/canbus/l;->d3(I)V

    :cond_a
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
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
    sget-object p1, Lmodule/canbus/l;->w:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/l;->t:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/l;->u:I

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
    iget-object v0, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    :cond_0
    sget v0, Lk0/nt;->c:I

    shr-int/lit8 v0, v0, 0x10

    sput v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->e:I

    .line 8
    iput v1, v0, Lk0/mt;->f:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->e:I

    .line 11
    iput v1, v0, Lk0/mt;->f:I

    .line 12
    iput v1, v0, Lk0/mt;->g:I

    .line 13
    iput v1, v0, Lk0/mt;->b:I

    .line 14
    iput v1, v0, Lk0/mt;->c:I

    .line 15
    iput v1, v0, Lk0/mt;->d:I

    .line 16
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lmodule/canbus/l;->init()V

    .line 18
    iget-object v0, p0, Lmodule/canbus/l;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 19
    :cond_2
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    if-ne v0, v4, :cond_5

    .line 20
    :cond_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    .line 21
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 23
    :cond_5
    :goto_1
    iget-object v0, p0, Lmodule/canbus/l;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x26

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v3, :cond_22

    const/16 v3, 0x27

    const/16 v6, 0xa

    const/4 v7, 0x2

    const/16 v8, 0xff

    if-eq v2, v3, :cond_20

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x55

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0xf

    const/4 v13, -0x2

    const/4 v14, 0x4

    const/4 v12, 0x0

    if-eq v2, v3, :cond_17

    const/16 v3, 0x8

    const/4 v15, 0x5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 4
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 5
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 6
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 8
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 9
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v5

    aput v1, v2, v12

    .line 10
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v6, v1, v4

    and-int/2addr v6, v8

    add-int/lit8 v7, p2, 0x4

    .line 14
    aget-byte v9, v1, v7

    and-int/2addr v9, v8

    add-int/lit8 v10, p2, 0x5

    .line 15
    aget-byte v11, v1, v10

    and-int/2addr v11, v8

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    if-nez v9, :cond_1

    if-nez v11, :cond_1

    .line 16
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_2

    sget v12, Ll0/c0;->h:I

    if-ne v12, v6, :cond_2

    sget v12, Ll0/c0;->i:I

    if-ne v12, v9, :cond_2

    sget v12, Ll0/c0;->j:I

    if-eq v12, v11, :cond_3

    .line 18
    :cond_2
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_3

    .line 19
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 20
    sput v14, Ll0/c0;->k:I

    .line 21
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v6, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput v11, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lmodule/canbus/l;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lmodule/canbus/l;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v7

    and-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lmodule/canbus/l;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v10

    and-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lmodule/canbus/l;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    .line 30
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lmodule/canbus/l;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lmodule/canbus/l;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lmodule/canbus/l;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lmodule/canbus/l;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    .line 35
    :pswitch_3
    sget v2, Lk0/nt;->c:I

    if-lt v2, v4, :cond_4

    goto/16 :goto_13

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    new-array v4, v5, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v5

    aput v7, v4, v12

    .line 37
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v12

    .line 38
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_5

    move v6, v12

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    aput v6, v4, v12

    .line 39
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v5

    aput v7, v6, v12

    .line 40
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v5

    aput v7, v6, v12

    .line 41
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v6, v5, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v5

    aput v2, v6, v12

    .line 42
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 43
    aget-byte v2, v1, v2

    const/16 v4, 0x12

    new-array v6, v5, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v5

    aput v7, v6, v12

    .line 44
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v6, v5, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v5

    aput v7, v6, v12

    .line 45
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v6, v5, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v12

    .line 46
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v11

    if-le v2, v3, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    const/16 v2, 0x15

    new-array v4, v5, [I

    aput v3, v4, v12

    .line 47
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 48
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x5

    .line 49
    aget-byte v6, v1, v4

    and-int/2addr v6, v8

    const-string v7, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v7, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 51
    aget-byte v3, v1, v4

    and-int/2addr v3, v8

    .line 52
    aget-byte v1, v1, v2

    and-int/lit16 v6, v1, 0xff

    :cond_7
    if-nez v3, :cond_8

    new-array v1, v5, [I

    aput v13, v1, v12

    const/16 v2, 0x1b

    .line 53
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    const/16 v1, 0x1e

    const/16 v2, 0x1b

    if-ne v3, v1, :cond_9

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v12

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    if-lez v3, :cond_a

    if-ge v3, v1, :cond_a

    new-array v1, v5, [I

    aput v3, v1, v12

    .line 55
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :cond_a
    :goto_4
    if-nez v6, :cond_b

    new-array v1, v5, [I

    aput v13, v1, v12

    const/16 v2, 0x1c

    .line 56
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_b
    const/16 v1, 0x1e

    const/16 v2, 0x1c

    if-ne v6, v1, :cond_c

    new-array v1, v5, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 57
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_c
    if-lez v6, :cond_23

    if-ge v6, v1, :cond_23

    new-array v1, v5, [I

    aput v6, v1, v12

    .line 58
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 59
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 61
    aget-byte v1, v1, v4

    and-int/2addr v2, v8

    .line 62
    iput v2, v0, Lmodule/canbus/l;->c:I

    move v2, v12

    .line 63
    :goto_5
    iget-object v4, v0, Lmodule/canbus/l;->d:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_e

    .line 64
    iget v6, v0, Lmodule/canbus/l;->c:I

    aget-object v7, v4, v2

    aget v7, v7, v12

    if-ne v6, v7, :cond_d

    if-eqz v6, :cond_e

    .line 65
    iput v2, v0, Lmodule/canbus/l;->b:I

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 66
    :cond_e
    :goto_6
    iget v6, v0, Lmodule/canbus/l;->c:I

    const/16 v7, 0x32

    if-eq v6, v7, :cond_15

    const/16 v7, 0x8a

    if-eq v6, v7, :cond_13

    const/16 v7, 0x81

    if-eq v6, v7, :cond_13

    const/16 v7, 0x82

    if-eq v6, v7, :cond_15

    packed-switch v6, :pswitch_data_1

    and-int/2addr v1, v8

    if-eqz v1, :cond_f

    .line 67
    array-length v1, v4

    if-ge v2, v1, :cond_23

    .line 68
    aget-object v1, v4, v2

    aget v1, v1, v5

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 69
    :cond_f
    iget v1, v0, Lmodule/canbus/l;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_10

    if-eq v1, v8, :cond_10

    .line 70
    aget-object v1, v4, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 71
    :cond_10
    iput v8, v0, Lmodule/canbus/l;->b:I

    goto/16 :goto_13

    :pswitch_5
    move v2, v12

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_11

    const/16 v3, 0x1e

    .line 72
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    const/16 v3, 0x1e

    .line 73
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_6
    move v2, v12

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    const/16 v3, 0x1f

    .line 74
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    const/16 v1, 0x1f

    .line 75
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_13
    :pswitch_7
    move v2, v12

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/4 v3, 0x7

    .line 76
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x7

    .line 77
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_15
    :pswitch_8
    move v2, v12

    :goto_a
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_16

    .line 78
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 79
    :cond_16
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 80
    :cond_17
    sget v2, Lk0/nt;->c:I

    if-ge v2, v4, :cond_18

    goto/16 :goto_13

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 82
    aget-byte v3, v1, v3

    add-int/lit8 v6, p2, 0x4

    .line 83
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 84
    aget-byte v7, v1, v7

    const/4 v15, 0x7

    add-int/lit8 v17, p2, 0x7

    .line 85
    aget-byte v1, v1, v17

    and-int/2addr v2, v8

    const/16 v15, 0x50

    const/16 v9, 0x10

    if-eq v2, v9, :cond_1a

    if-eq v2, v15, :cond_19

    new-array v4, v5, [I

    aput v2, v4, v12

    const/16 v2, 0x1b

    .line 86
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_19
    const/16 v2, 0x1b

    new-array v4, v5, [I

    const/16 v16, -0x3

    aput v16, v4, v12

    .line 87
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1a
    const/16 v2, 0x1b

    new-array v4, v5, [I

    aput v13, v4, v12

    .line 88
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_b
    and-int/lit16 v2, v3, 0xff

    if-eq v2, v9, :cond_1c

    if-eq v2, v15, :cond_1b

    new-array v3, v5, [I

    aput v2, v3, v12

    const/16 v2, 0x1c

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1b
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v12

    .line 90
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1c
    const/16 v2, 0x1c

    new-array v3, v5, [I

    aput v13, v3, v12

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_c
    and-int/lit8 v2, v6, 0xf

    const/16 v3, 0x15

    new-array v4, v5, [I

    and-int/2addr v2, v8

    aput v2, v4, v12

    .line 92
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v6, 0x4

    and-int/2addr v2, v11

    packed-switch v2, :pswitch_data_2

    goto :goto_d

    :pswitch_9
    move v3, v5

    goto :goto_e

    :pswitch_a
    move v6, v5

    move v3, v12

    move v4, v3

    goto :goto_10

    :pswitch_b
    move v3, v5

    move v6, v3

    move v4, v12

    goto :goto_10

    :pswitch_c
    move v4, v5

    move v6, v4

    move v3, v12

    goto :goto_10

    :pswitch_d
    move v4, v5

    move v3, v12

    move v6, v3

    goto :goto_10

    :pswitch_e
    move v3, v5

    move v4, v3

    move v6, v12

    goto :goto_10

    :pswitch_f
    move v3, v5

    move v4, v12

    goto :goto_f

    :goto_d
    move v3, v12

    :goto_e
    move v4, v3

    :goto_f
    move v6, v4

    :goto_10
    const/16 v8, 0x13

    new-array v13, v5, [I

    aput v3, v13, v12

    .line 93
    invoke-static {v8, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v8, v5, [I

    aput v4, v8, v12

    .line 94
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v4, v5, [I

    aput v6, v4, v12

    .line 95
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v5, [I

    aput v2, v4, v12

    .line 96
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v5, [I

    shr-int/lit8 v4, v7, 0x0

    and-int/2addr v4, v5

    aput v4, v3, v12

    .line 97
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v7, 0x1

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 98
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v5, [I

    shr-int/lit8 v4, v7, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1d

    move v4, v12

    goto :goto_11

    :cond_1d
    move v4, v5

    :goto_11
    aput v4, v3, v12

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v5, [I

    shr-int/lit8 v4, v7, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v12

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v7, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 101
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    const/4 v3, 0x7

    shr-int/lit8 v3, v7, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v12

    .line 102
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr v1, v12

    const/4 v3, 0x3

    and-int/2addr v1, v3

    aput v1, v2, v12

    const/16 v1, 0xc

    .line 103
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    .line 104
    :cond_1e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_13

    .line 105
    :cond_1f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v1, v1, v2

    goto :goto_13

    .line 107
    :cond_20
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 108
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    and-int/2addr v1, v8

    if-eqz v2, :cond_21

    sub-int/2addr v1, v5

    sub-int/2addr v8, v1

    mul-int/2addr v8, v6

    rsub-int v1, v8, 0x3e8

    goto :goto_12

    :cond_21
    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x3e8

    .line 109
    :goto_12
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_13

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1200

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    :cond_23
    :goto_13
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

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/l;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/l;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x28

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    const/16 v2, 0x29

    :cond_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    const/16 v2, 0x30

    :cond_2
    const/16 v1, 0x8

    new-array v5, v1, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v5, v6

    const/4 v8, 0x1

    const/16 v9, 0x33

    aput v9, v5, v8

    const/4 v10, 0x2

    aput v4, v5, v10

    .line 2
    aget v11, p2, v6

    const/4 v12, 0x3

    aput v11, v5, v12

    iget-object v11, v0, Lmodule/canbus/l;->f:[I

    iget v13, v0, Lmodule/canbus/l;->g:I

    rem-int/2addr v13, v10

    aget v11, v11, v13

    aput v11, v5, v3

    const/16 v11, 0x25

    aput v11, v5, v4

    const/4 v13, 0x6

    aput v2, v5, v13

    const/4 v14, 0x7

    const/16 v15, 0xaa

    aput v15, v5, v14

    invoke-static {v5}, Lz/k;->s([I)V

    new-array v5, v1, [I

    aput v7, v5, v6

    aput v9, v5, v8

    aput v4, v5, v10

    .line 3
    aget v16, p2, v6

    aput v16, v5, v12

    iget-object v12, v0, Lmodule/canbus/l;->f:[I

    iget v8, v0, Lmodule/canbus/l;->g:I

    rem-int/2addr v8, v10

    aget v8, v12, v8

    aput v8, v5, v3

    aput v11, v5, v4

    aput v2, v5, v13

    aput v15, v5, v14

    invoke-static {v5}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v7, v1, v6

    const/4 v5, 0x1

    aput v9, v1, v5

    aput v4, v1, v10

    .line 4
    aget v5, p2, v6

    const/4 v6, 0x3

    aput v5, v1, v6

    iget-object v5, v0, Lmodule/canbus/l;->f:[I

    iget v6, v0, Lmodule/canbus/l;->g:I

    rem-int/2addr v6, v10

    aget v5, v5, v6

    aput v5, v1, v3

    aput v11, v1, v4

    aput v2, v1, v13

    aput v15, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget v1, v0, Lmodule/canbus/l;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/l;->g:I

    .line 6
    rem-int/2addr v1, v10

    iput v1, v0, Lmodule/canbus/l;->g:I

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
    sget-object v0, Lmodule/canbus/l;->v:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/l;->q:I

    :cond_0
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
    invoke-virtual {p0, v1}, Lmodule/canbus/l;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

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

    goto/16 :goto_2

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

    goto :goto_2

    :pswitch_3
    aput v3, v1, v10

    aput v3, v1, v7

    aput v3, v1, v9

    aput v3, v1, v8

    aput v3, v1, v4

    aput v3, v1, v6

    goto :goto_2

    .line 11
    :pswitch_4
    sget v5, Lw0/d;->i:I

    .line 12
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 13
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_0

    aput v2, v1, v10

    goto :goto_0

    :cond_0
    const v13, 0x10001

    if-ne v12, v13, :cond_1

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_1
    const v13, 0x10002

    if-ne v12, v13, :cond_2

    const/4 v2, 0x3

    aput v2, v1, v10

    goto :goto_0

    :cond_2
    if-nez v12, :cond_3

    const/16 v2, 0x11

    aput v2, v1, v10

    goto :goto_0

    :cond_3
    if-ne v12, v2, :cond_4

    const/16 v2, 0x12

    aput v2, v1, v10

    :cond_4
    :goto_0
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

    goto :goto_1

    :cond_5
    aput v2, v1, v8

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v6

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 15
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 16
    :cond_6
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

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

.method public final d3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0, p1, p1}, Lmodule/canbus/l;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public final e3(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xb

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    .line 5
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v1, [I

    .line 6
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v1, [I

    .line 7
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array p1, v1, [I

    .line 8
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xc6
        0x8
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/l;->x:Lo1/f;

    new-instance v1, Lmodule/canbus/l$e;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/l$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/l$e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/l$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
