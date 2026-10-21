.class public Lk0/l6;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x1

.field public static B:I


# instance fields
.field public final b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:[[I

.field public k:B

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Z

.field public t:B

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:Lo1/g0;

.field public final y:I

.field public final z:I


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

    iput-object v1, p0, Lk0/l6;->b:[I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lk0/l6;->c:I

    .line 4
    iput v1, p0, Lk0/l6;->d:I

    .line 5
    iput v1, p0, Lk0/l6;->e:I

    .line 6
    iput v1, p0, Lk0/l6;->f:I

    .line 7
    iput v1, p0, Lk0/l6;->h:I

    const/16 v2, 0x22

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 8
    fill-array-data v4, :array_1

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v13, 0xa

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v13, 0xb

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xd

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xe

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    const/16 v4, 0xf

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v4, 0x10

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v4, 0x11

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v4, 0x12

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v4, 0x13

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v4, 0x14

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v4, 0x15

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v4, 0x16

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v4, 0x17

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v4, 0x18

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v4, 0x19

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v4, 0x1a

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v4, 0x1b

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v4, 0x1c

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v4, 0x1d

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    const/16 v4, 0x1e

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    const/16 v4, 0x1f

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_21

    const/16 v4, 0x20

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    const/16 v13, 0x21

    aput-object v0, v2, v13

    iput-object v2, p0, Lk0/l6;->i:[[I

    new-array v0, v12, [[I

    new-array v2, v3, [I

    .line 9
    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v11

    iput-object v0, p0, Lk0/l6;->j:[[I

    .line 10
    iput-byte v1, p0, Lk0/l6;->k:B

    .line 11
    new-instance v0, Lk0/l6$a;

    invoke-direct {v0, p0}, Lk0/l6$a;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->l:Ljava/lang/Runnable;

    .line 12
    iput v1, p0, Lk0/l6;->m:I

    .line 13
    iput v1, p0, Lk0/l6;->n:I

    .line 14
    new-instance v0, Lk0/l6$b;

    invoke-direct {v0, p0}, Lk0/l6$b;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/l6$c;

    invoke-direct {v0, p0}, Lk0/l6$c;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/l6$d;

    invoke-direct {v0, p0}, Lk0/l6$d;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/l6$e;

    invoke-direct {v0, p0}, Lk0/l6$e;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->r:Ljava/lang/Runnable;

    .line 18
    iput-boolean v1, p0, Lk0/l6;->s:Z

    .line 19
    iput-byte v8, p0, Lk0/l6;->t:B

    .line 20
    new-instance v0, Lk0/l6$f;

    invoke-direct {v0, p0}, Lk0/l6$f;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/l6$g;

    invoke-direct {v0, p0}, Lk0/l6$g;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/l6$h;

    invoke-direct {v0, p0}, Lk0/l6$h;-><init>(Lk0/l6;)V

    iput-object v0, p0, Lk0/l6;->w:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/l6;->x:Lo1/g0;

    .line 24
    iput v5, p0, Lk0/l6;->y:I

    .line 25
    iput v3, p0, Lk0/l6;->z:I

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
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x18
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x30
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_11
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_12
    .array-data 4
        0xb1
        0x7
    .end array-data

    :array_13
    .array-data 4
        0xb2
        0x8
    .end array-data

    :array_14
    .array-data 4
        0xb3
        0x4
    .end array-data

    :array_15
    .array-data 4
        0xb4
        0x3
    .end array-data

    :array_16
    .array-data 4
        0xb5
        0x5
    .end array-data

    :array_17
    .array-data 4
        0xb6
        0x10
    .end array-data

    :array_18
    .array-data 4
        0xb8
        0x6
    .end array-data

    :array_19
    .array-data 4
        0xb9
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0xba
        0x26
    .end array-data

    :array_1b
    .array-data 4
        0xbd
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0xbe
        0x4
    .end array-data

    :array_1d
    .array-data 4
        0x91
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x92
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x93
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x94
        0x3
    .end array-data

    :array_21
    .array-data 4
        0x95
        0x4
    .end array-data

    :array_22
    .array-data 4
        0x96
        0x2
    .end array-data

    :array_23
    .array-data 4
        0x11
        0x4a
    .end array-data

    :array_24
    .array-data 4
        0x12
        0x4b
    .end array-data

    :array_25
    .array-data 4
        0x13
        0x4
    .end array-data

    :array_26
    .array-data 4
        0x14
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x15
        0x2
    .end array-data

    :array_28
    .array-data 4
        0x19
        0x1a
    .end array-data

    :array_29
    .array-data 4
        0x1d
        0x4
    .end array-data

    :array_2a
    .array-data 4
        0x1e
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x30
        0xc
    .end array-data
.end method

.method public static synthetic b3(Lk0/l6;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l6;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/l6;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l6;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d3(Lk0/l6;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l6;->x:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/l6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l6;->g3(I)V

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
    iget-object v0, p0, Lk0/l6;->x:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/l6;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/l6;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/l6;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/l6;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v2, Lu0/c;->s:Lo1/y;

    iget-object v3, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v2, Lu0/c;->t:Lo1/y;

    iget-object v3, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget v2, Lk0/nt;->a:I

    const v3, 0x300cb

    if-ne v2, v3, :cond_0

    .line 14
    iget-object v2, p0, Lk0/l6;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/l6;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x2f

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v2, v3, :cond_34

    const/16 v3, 0x20

    const v9, 0x300cb

    const/16 v10, 0xa

    const/16 v11, 0xff

    const/4 v12, 0x0

    if-eq v2, v3, :cond_29

    const/16 v3, 0x29

    if-eq v2, v3, :cond_28

    const/16 v3, 0x30

    const/4 v4, 0x2

    if-eq v2, v3, :cond_27

    const/16 v3, 0x33

    const/16 v13, 0x10

    const/16 v15, 0xb

    const/16 v14, 0x8

    if-eq v2, v3, :cond_20

    const/16 v3, 0x78

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x79

    if-eq v2, v3, :cond_19

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_13

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_e

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 4
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 6
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 9
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v12

    .line 11
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 12
    :pswitch_1
    sget v2, Lk0/nt;->a:I

    if-ne v2, v9, :cond_a

    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 14
    aget-byte v3, v1, v3

    add-int/lit8 v6, p2, 0x6

    .line 15
    aget-byte v6, v1, v6

    new-array v7, v8, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v8

    aput v9, v7, v12

    .line 16
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v8, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v8

    aput v9, v7, v12

    .line 17
    invoke-static {v15, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v8, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v8

    aput v9, v7, v12

    const/16 v9, 0xc

    .line 18
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v8, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v8

    aput v9, v7, v12

    const/16 v9, 0xd

    .line 19
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    aput v2, v7, v12

    const/16 v2, 0xe

    .line 20
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v8, [I

    shr-int/lit8 v7, v3, 0x7

    and-int/2addr v7, v8

    aput v7, v4, v12

    .line 21
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v8, [I

    shr-int/lit8 v7, v3, 0x6

    and-int/2addr v7, v8

    aput v7, v4, v12

    .line 22
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    shr-int/lit8 v7, v3, 0x5

    and-int/2addr v7, v8

    aput v7, v4, v12

    .line 23
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v8, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v12

    .line 24
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 25
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x5

    .line 26
    aget-byte v7, v1, v4

    const-string v9, "persist.fyt.reversetemp"

    .line 27
    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 28
    aget-byte v3, v1, v4

    .line 29
    aget-byte v7, v1, v2

    :cond_1
    and-int/lit16 v1, v3, 0xff

    const/16 v2, 0x1c

    if-eqz v1, :cond_5

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_4

    if-lt v1, v8, :cond_3

    if-gt v1, v2, :cond_3

    and-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_2

    mul-int/2addr v1, v5

    add-int/lit16 v1, v1, 0x9b

    goto :goto_1

    :cond_2
    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0x24e

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x3

    goto :goto_1

    :cond_5
    const/4 v1, -0x2

    :goto_1
    const/16 v3, 0x1b

    new-array v4, v8, [I

    aput v1, v4, v12

    .line 30
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v7, 0xff

    if-eqz v1, :cond_9

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_8

    if-lt v1, v8, :cond_7

    if-gt v1, v2, :cond_7

    and-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_6

    mul-int/2addr v1, v5

    add-int/lit16 v1, v1, 0x9b

    goto :goto_2

    :cond_6
    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0x24e

    goto :goto_2

    :cond_7
    const/4 v1, -0x1

    goto :goto_2

    :cond_8
    const/4 v1, -0x3

    goto :goto_2

    :cond_9
    const/4 v1, -0x2

    :goto_2
    new-array v3, v8, [I

    aput v1, v3, v12

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v8, [I

    shr-int/lit8 v3, v6, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 32
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v8, [I

    shr-int/lit8 v2, v6, 0x6

    and-int/2addr v2, v8

    aput v2, v1, v12

    .line 33
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v8, [I

    and-int/lit8 v3, v6, 0x1

    aput v3, v2, v12

    .line 34
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 35
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 37
    aget-byte v7, v1, v4

    and-int/2addr v7, v11

    add-int/lit8 v9, p2, 0x4

    .line 38
    aget-byte v10, v1, v9

    and-int/2addr v10, v11

    add-int/lit8 v5, p2, 0x5

    .line 39
    aget-byte v13, v1, v5

    and-int/2addr v13, v11

    if-nez v3, :cond_b

    if-nez v7, :cond_b

    if-nez v10, :cond_b

    if-nez v13, :cond_b

    .line 40
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 41
    :cond_b
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_c

    sget v12, Ll0/c0;->h:I

    if-ne v12, v7, :cond_c

    sget v12, Ll0/c0;->i:I

    if-ne v12, v10, :cond_c

    sget v12, Ll0/c0;->j:I

    if-eq v12, v13, :cond_d

    .line 42
    :cond_c
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_d

    .line 43
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 44
    sput v6, Ll0/c0;->k:I

    .line 45
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 46
    :cond_d
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 47
    sput v7, Ll0/c0;->h:I

    .line 48
    sput v10, Ll0/c0;->i:I

    .line 49
    sput v13, Ll0/c0;->j:I

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lk0/l6;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 51
    aget-byte v2, v1, v4

    and-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lk0/l6;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 52
    aget-byte v2, v1, v9

    and-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lk0/l6;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 53
    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lk0/l6;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    .line 54
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lk0/l6;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lk0/l6;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lk0/l6;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lk0/l6;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v8, :cond_11

    if-eq v2, v7, :cond_10

    if-eq v2, v14, :cond_f

    goto/16 :goto_f

    :cond_f
    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 61
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 62
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 63
    iput-boolean v8, v0, Lk0/l6;->s:Z

    goto/16 :goto_f

    :cond_10
    add-int/lit8 v2, p2, 0x4

    .line 64
    aget-byte v2, v1, v2

    shl-int/2addr v2, v14

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v1, v3, v12

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 66
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v4, [I

    aput v8, v4, v12

    aput v1, v4, v8

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_11
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 67
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    invoke-static {v3, v1, v12}, Ll0/c0;->b(III)V

    goto/16 :goto_f

    :cond_12
    add-int/lit8 v2, p2, 0x3

    .line 69
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    invoke-static {v3, v1, v12}, Ll0/c0;->a(III)V

    goto/16 :goto_f

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 71
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 72
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 73
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 74
    aget-byte v7, v1, v7

    add-int/lit8 v9, p2, 0x7

    .line 75
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x8

    .line 76
    aget-byte v10, v1, v10

    add-int/lit8 v16, p2, 0x9

    .line 77
    aget-byte v4, v1, v16

    add-int/lit8 v16, p2, 0xa

    .line 78
    aget-byte v14, v1, v16

    add-int/lit8 v16, p2, 0xb

    .line 79
    aget-byte v1, v1, v16

    const/16 v15, 0x76

    new-array v11, v8, [I

    aput v2, v11, v12

    .line 80
    invoke-static {v15, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x77

    new-array v15, v8, [I

    shl-int/2addr v3, v13

    const/16 v13, 0xff

    and-int/2addr v5, v13

    const/16 v17, 0x8

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v15, v12

    .line 81
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v5, v8, [I

    and-int/lit16 v6, v7, 0xff

    and-int/lit16 v7, v9, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v7, v10, 0xff

    const/16 v9, 0x10

    shl-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v12

    .line 82
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x79

    new-array v5, v8, [I

    and-int/2addr v4, v13

    and-int/lit16 v6, v14, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    and-int/2addr v1, v13

    shl-int/2addr v1, v9

    or-int/2addr v1, v4

    aput v1, v5, v12

    .line 83
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 84
    iget v1, v0, Lk0/l6;->n:I

    if-eq v1, v2, :cond_3c

    if-eq v2, v8, :cond_16

    const/4 v1, 0x2

    if-ne v2, v1, :cond_14

    goto :goto_4

    .line 85
    :cond_14
    sget-object v1, La/b;->D:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 86
    invoke-static {}, Lo1/u;->k()V

    .line 87
    :cond_15
    iget v1, v0, Lk0/l6;->m:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_18

    .line 88
    invoke-static {v1}, Lu0/d;->s(I)V

    .line 89
    sget-object v1, Lu0/b;->c:Lu0/h;

    iget v3, v0, Lk0/l6;->m:I

    invoke-interface {v1, v3}, Lu0/h;->c(I)V

    goto :goto_5

    :cond_16
    :goto_4
    const/16 v3, 0xb

    .line 90
    iget v1, v0, Lk0/l6;->m:I

    if-eq v1, v3, :cond_17

    sget v1, Lu0/b;->D:I

    if-eq v1, v3, :cond_17

    .line 91
    iput v1, v0, Lk0/l6;->m:I

    .line 92
    :cond_17
    invoke-static {}, Lo1/u;->v()I

    .line 93
    :cond_18
    :goto_5
    iput v2, v0, Lk0/l6;->n:I

    goto/16 :goto_f

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 95
    aget-byte v1, v1, v3

    const/16 v3, 0x7a

    new-array v4, v8, [I

    and-int/2addr v2, v8

    const/16 v5, 0x8

    shl-int/2addr v2, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v12

    .line 96
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1a
    move v5, v11

    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 98
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 99
    iput v2, v0, Lk0/l6;->h:I

    move v2, v12

    .line 100
    :goto_6
    iget-object v3, v0, Lk0/l6;->i:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 101
    iget v4, v0, Lk0/l6;->h:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_1b

    if-eqz v4, :cond_1c

    .line 102
    iput v2, v0, Lk0/l6;->g:I

    goto :goto_7

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 103
    :cond_1c
    :goto_7
    iget v4, v0, Lk0/l6;->h:I

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_1e

    .line 104
    :cond_1d
    sget v4, Lu0/b;->D:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1e

    return-void

    :cond_1e
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_1f

    .line 105
    array-length v1, v3

    if-ge v2, v1, :cond_3c

    .line 106
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 107
    :cond_1f
    array-length v1, v3

    if-gt v2, v1, :cond_3c

    .line 108
    iget v1, v0, Lk0/l6;->g:I

    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 109
    aget-byte v2, v1, v2

    const/high16 v3, 0xff0000

    if-eq v2, v8, :cond_24

    const/4 v4, 0x2

    if-eq v2, v4, :cond_21

    goto/16 :goto_f

    :cond_21
    const/16 v2, 0x6e

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 110
    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    and-int/2addr v5, v3

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    const v9, 0xff00

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 111
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 112
    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    and-int/2addr v5, v3

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    const v9, 0xff00

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xb

    .line 113
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xc

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xd

    .line 114
    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 115
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x12

    .line 116
    aget-byte v2, v1, v2

    const/16 v3, 0x68

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x3

    aput v5, v4, v12

    .line 117
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v7

    aput v5, v4, v12

    .line 118
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v4, v12

    .line 119
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v12

    .line 120
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v4, v12

    .line 121
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x13

    .line 122
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-gez v1, :cond_22

    move v15, v12

    goto :goto_8

    :cond_22
    const/16 v2, 0xb

    if-le v1, v2, :cond_23

    const/16 v15, 0xb

    goto :goto_8

    :cond_23
    move v15, v1

    :goto_8
    const/16 v1, 0x6d

    new-array v2, v8, [I

    .line 123
    iget-object v3, v0, Lk0/l6;->b:[I

    aget v3, v3, v15

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_24
    const/16 v2, 0x62

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 124
    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 125
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 126
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 127
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xa

    .line 128
    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 129
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 130
    aget-byte v2, v1, v2

    const/16 v3, 0x68

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x3

    aput v5, v4, v12

    .line 131
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v7

    aput v5, v4, v12

    .line 132
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v4, v12

    .line 133
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v12

    .line 134
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v4, v12

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    add-int/lit8 v2, p2, 0x10

    .line 136
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-gez v1, :cond_25

    move v15, v12

    goto :goto_9

    :cond_25
    const/16 v2, 0xb

    if-le v1, v2, :cond_26

    move v15, v2

    goto :goto_9

    :cond_26
    move v15, v1

    :goto_9
    const/16 v1, 0x6d

    new-array v2, v8, [I

    .line 137
    iget-object v3, v0, Lk0/l6;->b:[I

    aget v3, v3, v15

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 138
    :cond_27
    sget v2, Lk0/nt;->a:I

    if-ne v2, v9, :cond_3c

    .line 139
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 140
    :cond_28
    iget-boolean v2, v0, Lk0/l6;->s:Z

    if-nez v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1200

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    .line 142
    :cond_29
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-nez v2, :cond_2c

    sget v2, Lk0/nt;->a:I

    if-ne v2, v9, :cond_2a

    goto :goto_a

    :cond_2a
    add-int/lit8 v2, p2, 0x2

    .line 143
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 144
    aget-byte v1, v1, v3

    const/16 v3, 0x18

    if-ne v2, v3, :cond_3c

    if-ne v1, v8, :cond_3c

    .line 145
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.canbus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 146
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_f

    .line 147
    :cond_2b
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_f

    :cond_2c
    :goto_a
    add-int/lit8 v2, p2, 0x2

    .line 148
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 149
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 150
    iput v2, v0, Lk0/l6;->h:I

    move v2, v12

    .line 151
    :goto_b
    iget-object v3, v0, Lk0/l6;->i:[[I

    array-length v9, v3

    if-ge v2, v9, :cond_2e

    .line 152
    iget v9, v0, Lk0/l6;->h:I

    aget-object v11, v3, v2

    aget v11, v11, v12

    if-ne v9, v11, :cond_2d

    if-eqz v9, :cond_2e

    .line 153
    iput v2, v0, Lk0/l6;->g:I

    goto :goto_c

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 154
    :cond_2e
    :goto_c
    iget v9, v0, Lk0/l6;->h:I

    if-eq v9, v10, :cond_32

    const/16 v9, 0xff

    and-int/2addr v1, v9

    if-eqz v1, :cond_2f

    .line 155
    array-length v1, v3

    if-ge v2, v1, :cond_3c

    .line 156
    iget-byte v1, v0, Lk0/l6;->k:B

    if-nez v1, :cond_3c

    add-int/2addr v1, v8

    int-to-byte v1, v1

    .line 157
    iput-byte v1, v0, Lk0/l6;->k:B

    .line 158
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 159
    iget-object v1, v0, Lk0/l6;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_f

    .line 160
    :cond_2f
    iget v1, v0, Lk0/l6;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_30

    const/16 v2, 0xff

    if-eq v1, v2, :cond_31

    .line 161
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 162
    iget-object v1, v0, Lk0/l6;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 163
    iput-byte v12, v0, Lk0/l6;->k:B

    goto :goto_d

    :cond_30
    const/16 v2, 0xff

    .line 164
    :cond_31
    :goto_d
    iput v2, v0, Lk0/l6;->g:I

    goto/16 :goto_f

    :cond_32
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v8, :cond_3c

    .line 165
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_33

    if-eq v1, v6, :cond_33

    if-eq v1, v5, :cond_33

    .line 166
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    .line 167
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_33
    const/16 v1, 0x1a

    .line 168
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 169
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 170
    :cond_34
    sget v2, Lh0/c;->E:I

    if-eq v2, v6, :cond_3c

    if-ne v2, v5, :cond_35

    goto/16 :goto_f

    .line 171
    :cond_35
    sget v2, Lk0/l6;->A:I

    if-nez v2, :cond_36

    goto/16 :goto_f

    .line 172
    :cond_36
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_3a

    .line 173
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_38

    .line 174
    iget v2, v0, Lk0/l6;->c:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v5, v1, v3

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    if-eq v2, v5, :cond_3a

    .line 175
    aget-byte v2, v1, v3

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    iput v2, v0, Lk0/l6;->c:I

    if-ne v2, v8, :cond_37

    .line 176
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 177
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_e

    .line 178
    :cond_37
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 179
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_e

    :cond_38
    add-int/lit8 v2, p2, 0x3

    .line 180
    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    .line 181
    iget v3, v0, Lk0/l6;->c:I

    if-eq v3, v2, :cond_3a

    .line 182
    iput v2, v0, Lk0/l6;->c:I

    if-ne v2, v8, :cond_39

    .line 183
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 184
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_e

    .line 185
    :cond_39
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 186
    invoke-static {}, Lk0/qt;->f()V

    :cond_3a
    :goto_e
    add-int/lit8 v2, p2, 0x3

    .line 187
    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    .line 188
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_3c

    if-ne v1, v8, :cond_3c

    .line 189
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 190
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_f

    .line 191
    :cond_3b
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 192
    invoke-static {}, Lk0/qt;->f()V

    :cond_3c
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/l6;->x:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/l6;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/l6;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lk0/l6;->r:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/l6;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/l6;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v1, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/l6;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/l6;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/l6;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7c

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/16 v5, 0x64

    if-eq p1, v5, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/l6;->f3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x70

    aput v0, p1, v4

    aput v3, p1, v3

    const/16 v0, 0x33

    aput v0, p1, p4

    .line 4
    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x6f

    aput v0, p1, v4

    aput v3, p1, v3

    .line 6
    aget v0, p2, v2

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    const/16 v0, 0xf

    :cond_4
    :goto_0
    return v0
.end method

.method public final f3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/l6;->B:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez p1, :cond_2

    new-array v4, v2, [I

    .line 2
    fill-array-data v4, :array_0

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    new-array v4, v2, [I

    .line 3
    fill-array-data v4, :array_1

    invoke-static {v4}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    if-ne p1, v1, :cond_4

    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    const/16 p1, 0x3f5

    new-array v1, v3, [I

    .line 5
    sget v2, Lk0/l6;->B:I

    aput v2, v1, v0

    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p1, p0, Lk0/l6;->x:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/l6;->B:I

    if-eq p1, v0, :cond_5

    .line 7
    iget-object p1, p0, Lk0/l6;->x:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x2
    .end array-data
.end method

.method public final g3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/l6;->A:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x7b

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/l6;->x:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/l6;->A:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/l6;->x:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
