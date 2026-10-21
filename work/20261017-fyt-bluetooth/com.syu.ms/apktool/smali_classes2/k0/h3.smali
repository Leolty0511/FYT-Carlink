.class public Lk0/h3;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static v:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:Z

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:B

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/h3;->b:Lo1/g0;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/h3;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/h3;->e:I

    const/16 v3, 0x10

    new-array v4, v3, [[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 5
    fill-array-data v6, :array_0

    aput-object v6, v4, v2

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    aput-object v6, v4, v1

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    const/4 v7, 0x3

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    const/4 v8, 0x4

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    const/4 v9, 0x5

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    const/4 v10, 0x6

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    const/4 v11, 0x7

    aput-object v6, v4, v11

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    const/16 v12, 0x8

    aput-object v6, v4, v12

    new-array v6, v5, [I

    fill-array-data v6, :array_9

    const/16 v13, 0x9

    aput-object v6, v4, v13

    new-array v6, v5, [I

    fill-array-data v6, :array_a

    const/16 v14, 0xa

    aput-object v6, v4, v14

    new-array v6, v5, [I

    fill-array-data v6, :array_b

    const/16 v15, 0xb

    aput-object v6, v4, v15

    new-array v6, v5, [I

    fill-array-data v6, :array_c

    const/16 v16, 0xc

    aput-object v6, v4, v16

    new-array v6, v5, [I

    fill-array-data v6, :array_d

    const/16 v17, 0xd

    aput-object v6, v4, v17

    new-array v6, v5, [I

    fill-array-data v6, :array_e

    const/16 v18, 0xe

    aput-object v6, v4, v18

    new-array v6, v5, [I

    fill-array-data v6, :array_f

    const/16 v19, 0xf

    aput-object v6, v4, v19

    iput-object v4, v0, Lk0/h3;->f:[[I

    .line 6
    iput v2, v0, Lk0/h3;->h:I

    const/16 v4, 0x1c

    new-array v4, v4, [[I

    new-array v6, v5, [I

    .line 7
    fill-array-data v6, :array_10

    aput-object v6, v4, v2

    new-array v6, v5, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_12

    aput-object v1, v4, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_13

    aput-object v1, v4, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_14

    aput-object v1, v4, v8

    new-array v1, v5, [I

    fill-array-data v1, :array_15

    aput-object v1, v4, v9

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v4, v10

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v4, v11

    new-array v1, v5, [I

    fill-array-data v1, :array_18

    aput-object v1, v4, v12

    new-array v1, v5, [I

    fill-array-data v1, :array_19

    aput-object v1, v4, v13

    new-array v1, v5, [I

    fill-array-data v1, :array_1a

    aput-object v1, v4, v14

    new-array v1, v5, [I

    fill-array-data v1, :array_1b

    aput-object v1, v4, v15

    new-array v1, v5, [I

    fill-array-data v1, :array_1c

    aput-object v1, v4, v16

    new-array v1, v5, [I

    fill-array-data v1, :array_1d

    aput-object v1, v4, v17

    new-array v1, v5, [I

    fill-array-data v1, :array_1e

    aput-object v1, v4, v18

    new-array v1, v5, [I

    fill-array-data v1, :array_1f

    aput-object v1, v4, v19

    new-array v1, v5, [I

    fill-array-data v1, :array_20

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_21

    const/16 v3, 0x11

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_22

    const/16 v3, 0x12

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    const/16 v3, 0x13

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_24

    const/16 v3, 0x14

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_25

    const/16 v3, 0x15

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_26

    const/16 v3, 0x16

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_27

    const/16 v3, 0x17

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_28

    const/16 v3, 0x18

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_29

    const/16 v3, 0x19

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2a

    const/16 v3, 0x1a

    aput-object v1, v4, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2b

    const/16 v3, 0x1b

    aput-object v1, v4, v3

    iput-object v4, v0, Lk0/h3;->i:[[I

    .line 8
    iput-boolean v2, v0, Lk0/h3;->j:Z

    .line 9
    new-instance v1, Lk0/h3$b;

    invoke-direct {v1, v0}, Lk0/h3$b;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/h3$c;

    invoke-direct {v1, v0}, Lk0/h3$c;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->l:Ljava/lang/Runnable;

    .line 11
    iput-byte v9, v0, Lk0/h3;->m:B

    .line 12
    new-instance v1, Lk0/h3$d;

    invoke-direct {v1, v0}, Lk0/h3$d;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/h3$e;

    invoke-direct {v1, v0}, Lk0/h3$e;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/h3$f;

    invoke-direct {v1, v0}, Lk0/h3$f;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/h3$g;

    invoke-direct {v1, v0}, Lk0/h3$g;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->q:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Lk0/h3$h;

    invoke-direct {v1, v0}, Lk0/h3$h;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lk0/h3$i;

    invoke-direct {v1, v0}, Lk0/h3$i;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->s:Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lk0/h3$j;

    invoke-direct {v1, v0}, Lk0/h3$j;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/h3$a;

    invoke-direct {v1, v0}, Lk0/h3$a;-><init>(Lk0/h3;)V

    iput-object v1, v0, Lk0/h3;->u:Ljava/lang/Runnable;

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
        0x17
        0x5
    .end array-data

    :array_9
    .array-data 4
        0x18
        0x3f
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_16
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_18
    .array-data 4
        0xb
        0x9
    .end array-data

    :array_19
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x31
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_1d
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_1e
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_20
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_21
    .array-data 4
        0x38
        0x28
    .end array-data

    :array_22
    .array-data 4
        0x39
        0x29
    .end array-data

    :array_23
    .array-data 4
        0x3a
        0x2a
    .end array-data

    :array_24
    .array-data 4
        0x3b
        0x2b
    .end array-data

    :array_25
    .array-data 4
        0x3c
        0x2c
    .end array-data

    :array_26
    .array-data 4
        0x3d
        0x2d
    .end array-data

    :array_27
    .array-data 4
        0x3e
        0x1d
    .end array-data

    :array_28
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_29
    .array-data 4
        0x40
        0x5
    .end array-data

    :array_2a
    .array-data 4
        0x41
        0x10
    .end array-data

    :array_2b
    .array-data 4
        0x42
        0x36
    .end array-data
.end method

.method public static synthetic b3(Lk0/h3;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/h3;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/h3;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/h3;->e3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic d3(Lk0/h3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/h3;->g3(Ljava/lang/String;)V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/h3;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/h3;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v3, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v3, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lk0/h3;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 15
    iget-object v0, p0, Lk0/h3;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/h3;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/h3;->f3(I)V

    .line 17
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/h3;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/h3;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/h3;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/h3;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/h3;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lk0/h3;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x30

    const/4 v2, 0x3

    if-eq v0, v1, :cond_24

    const/16 v1, 0x16

    const/16 v3, 0x408

    const v4, 0xff00

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v1, :cond_23

    const/16 v1, 0x30

    if-eq v0, v1, :cond_22

    const/16 p3, 0x71

    if-eq v0, p3, :cond_21

    const/16 p3, 0x7d

    const/4 v1, 0x4

    if-eq v0, p3, :cond_1c

    const/16 p3, 0x29

    if-eq v0, p3, :cond_1b

    const/16 p3, 0x2a

    if-eq v0, p3, :cond_16

    const/4 p3, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/2addr p2, v6

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 4
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 5
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 6
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 7
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 8
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 9
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v9, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v9

    aput v0, p2, v8

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v9, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v9

    aput p1, p2, v8

    .line 11
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v0, p2, 0x2

    .line 13
    aget-byte v2, p1, v0

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    .line 14
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x4

    .line 15
    aget-byte v6, p1, v5

    and-int/2addr v6, v7

    add-int/2addr p2, p3

    .line 16
    aget-byte p3, p1, p2

    and-int/2addr p3, v7

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-nez v6, :cond_1

    if-nez p3, :cond_1

    .line 17
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 18
    :cond_1
    sget v8, Ll0/c0;->g:I

    if-ne v8, v2, :cond_2

    sget v8, Ll0/c0;->h:I

    if-ne v8, v4, :cond_2

    sget v8, Ll0/c0;->i:I

    if-ne v8, v6, :cond_2

    sget v8, Ll0/c0;->j:I

    if-eq v8, p3, :cond_3

    .line 19
    :cond_2
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_3

    .line 20
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 21
    sput v1, Ll0/c0;->k:I

    .line 22
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_3
    :goto_1
    sput v2, Ll0/c0;->g:I

    .line 24
    sput v4, Ll0/c0;->h:I

    .line 25
    sput v6, Ll0/c0;->i:I

    .line 26
    sput p3, Ll0/c0;->j:I

    .line 27
    aget-byte p3, p1, v0

    and-int/2addr p3, v7

    invoke-virtual {p0, p3}, Lk0/h3;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 28
    aget-byte p3, p1, v3

    and-int/2addr p3, v7

    invoke-virtual {p0, p3}, Lk0/h3;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 29
    aget-byte p3, p1, v5

    and-int/2addr p3, v7

    invoke-virtual {p0, p3}, Lk0/h3;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lk0/h3;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    .line 31
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v0, p2, 0x2

    .line 32
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lk0/h3;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 33
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lk0/h3;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 34
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lk0/h3;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lk0/h3;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    const/16 v0, 0xa

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 37
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 38
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v9, [I

    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_4

    move v2, v8

    goto :goto_2

    :cond_4
    move v2, v9

    :goto_2
    aput v2, v1, v8

    .line 39
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 40
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x2

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 41
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v1, v9, [I

    shr-int/2addr p3, v8

    and-int/2addr p3, v9

    aput p3, v1, v8

    .line 42
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 44
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 45
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v9, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 46
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p3, p3, 0xf

    const/4 v0, 0x7

    if-le p3, v0, :cond_5

    move p3, v0

    :cond_5
    const/16 v0, 0x15

    new-array v1, v9, [I

    aput p3, v1, v8

    .line 47
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 48
    invoke-static {p3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x2

    const/4 v1, -0x3

    const/4 v2, -0x1

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    if-nez p3, :cond_b

    add-int/lit8 p3, p2, 0x4

    .line 49
    aget-byte p3, p1, p3

    add-int/lit8 v5, p2, 0x6

    .line 50
    aget-byte v10, p1, v5

    and-int/2addr v10, v6

    if-nez v10, :cond_8

    if-eq p3, v2, :cond_7

    if-eqz p3, :cond_6

    new-array v10, v9, [I

    and-int/2addr p3, v7

    aput p3, v10, v8

    .line 51
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array p3, v9, [I

    aput v0, p3, v8

    .line 52
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array p3, v9, [I

    aput v1, p3, v8

    .line 53
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    :cond_8
    :goto_3
    add-int/lit8 p3, p2, 0x5

    .line 54
    aget-byte p3, p1, p3

    .line 55
    aget-byte v4, p1, v5

    and-int/2addr v4, v6

    if-nez v4, :cond_11

    if-eq p3, v2, :cond_a

    if-eqz p3, :cond_9

    new-array v0, v9, [I

    and-int/2addr p3, v7

    aput p3, v0, v8

    .line 56
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_9
    new-array p3, v9, [I

    aput v0, p3, v8

    .line 57
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_a
    new-array p3, v9, [I

    aput v1, p3, v8

    .line 58
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    add-int/lit8 p3, p2, 0x5

    .line 59
    aget-byte p3, p1, p3

    add-int/lit8 v5, p2, 0x6

    .line 60
    aget-byte v10, p1, v5

    and-int/2addr v10, v6

    if-nez v10, :cond_e

    if-eq p3, v2, :cond_d

    if-eqz p3, :cond_c

    new-array v10, v9, [I

    and-int/2addr p3, v7

    aput p3, v10, v8

    .line 61
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array p3, v9, [I

    aput v0, p3, v8

    .line 62
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array p3, v9, [I

    aput v1, p3, v8

    .line 63
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    :cond_e
    :goto_4
    add-int/lit8 p3, p2, 0x4

    .line 64
    aget-byte p3, p1, p3

    .line 65
    aget-byte v4, p1, v5

    and-int/2addr v4, v6

    if-nez v4, :cond_11

    if-eq p3, v2, :cond_10

    if-eqz p3, :cond_f

    new-array v0, v9, [I

    and-int/2addr p3, v7

    aput p3, v0, v8

    .line 66
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array p3, v9, [I

    aput v0, p3, v8

    .line 67
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array p3, v9, [I

    aput v1, p3, v8

    .line 68
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    :cond_11
    :goto_5
    add-int/lit8 p2, p2, 0x6

    .line 69
    aget-byte p1, p1, p2

    const/16 p2, 0x41

    new-array p3, v9, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v9

    aput v0, p3, v8

    .line 70
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x25

    new-array p3, v9, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v9

    aput p1, p3, v8

    .line 71
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 73
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 74
    iput p2, p0, Lk0/h3;->e:I

    move p2, v8

    .line 75
    :goto_6
    iget-object p3, p0, Lk0/h3;->f:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 76
    iget v0, p0, Lk0/h3;->e:I

    aget-object v1, p3, p2

    aget v1, v1, v8

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 77
    iput p2, p0, Lk0/h3;->d:I

    goto :goto_7

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_13
    :goto_7
    and-int/2addr p1, v7

    if-ne p1, v9, :cond_14

    .line 78
    array-length p1, p3

    if-ge p2, p1, :cond_25

    .line 79
    aget-object p1, p3, p2

    aget p1, p1, v9

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_14
    if-nez p1, :cond_25

    .line 80
    iget p1, p0, Lk0/h3;->d:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v7, :cond_15

    .line 81
    aget-object p1, p3, p1

    aget p1, p1, v9

    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    .line 82
    :cond_15
    iput v7, p0, Lk0/h3;->d:I

    goto/16 :goto_a

    :cond_16
    add-int/lit8 p3, p2, 0x2

    .line 83
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 84
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 85
    iput p2, p0, Lk0/h3;->h:I

    move p2, v8

    .line 86
    :goto_8
    iget-object p3, p0, Lk0/h3;->i:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_18

    .line 87
    iget v0, p0, Lk0/h3;->h:I

    aget-object v1, p3, p2

    aget v1, v1, v8

    if-ne v0, v1, :cond_17

    if-eqz v0, :cond_18

    .line 88
    iput p2, p0, Lk0/h3;->g:I

    goto :goto_9

    :cond_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_18
    :goto_9
    and-int/2addr p1, v7

    if-ne p1, v9, :cond_19

    .line 89
    array-length p1, p3

    if-ge p2, p1, :cond_25

    .line 90
    aget-object p1, p3, p2

    aget p1, p1, v9

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_19
    if-nez p1, :cond_25

    .line 91
    iget p1, p0, Lk0/h3;->g:I

    array-length p2, p3

    if-ge p1, p2, :cond_1a

    if-eq p1, v7, :cond_1a

    .line 92
    aget-object p1, p3, p1

    aget p1, p1, v9

    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    .line 93
    :cond_1a
    iput v7, p0, Lk0/h3;->g:I

    goto/16 :goto_a

    .line 94
    :cond_1b
    iget-boolean p3, p0, Lk0/h3;->j:Z

    if-nez p3, :cond_25

    add-int/lit8 p3, p2, 0x2

    .line 95
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x1200

    invoke-static {p3, p1, v9, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 p3, p2, 0x2

    .line 96
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    if-eq p3, v9, :cond_1f

    if-eq p3, v2, :cond_1e

    if-eq p3, v5, :cond_1d

    goto/16 :goto_a

    :cond_1d
    add-int/lit8 p3, p2, 0x3

    .line 97
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 98
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 99
    invoke-static {p3, p1, v9, p2}, Lk0/qt;->i(IIZI)V

    .line 100
    iput-boolean v9, p0, Lk0/h3;->j:Z

    goto/16 :goto_a

    :cond_1e
    add-int/lit8 p3, p2, 0x4

    .line 101
    aget-byte p3, p1, p3

    shl-int/2addr p3, v5

    and-int/2addr p3, v4

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v9, [I

    aput p1, p3, v8

    .line 102
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 103
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v6, [I

    aput v9, v0, v8

    aput p1, v0, v9

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1f
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 104
    invoke-static {p3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_20

    add-int/2addr p2, v2

    .line 105
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v9

    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v9

    invoke-static {p3, p1, v8}, Ll0/c0;->b(III)V

    goto :goto_a

    :cond_20
    add-int/2addr p2, v2

    .line 106
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v9

    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v9

    invoke-static {p3, p1, v8}, Ll0/c0;->a(III)V

    goto :goto_a

    :cond_21
    const/16 p3, 0x63

    new-array v0, v9, [I

    add-int/lit8 v1, p2, 0x3

    .line 107
    aget-byte v2, p1, v1

    shl-int/2addr v2, v5

    and-int/2addr v2, v4

    add-int/2addr p2, v6

    aget-byte v6, p1, p2

    and-int/2addr v6, v7

    or-int/2addr v2, v6

    aput v2, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v9, [I

    .line 108
    aget-byte v0, p1, v1

    shl-int/2addr v0, v5

    and-int/2addr v0, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    or-int/2addr p1, v0

    aput p1, p3, v8

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    .line 109
    :cond_22
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_a

    :cond_23
    const/16 p3, 0x62

    new-array v0, v9, [I

    add-int/lit8 v1, p2, 0x3

    .line 110
    aget-byte v2, p1, v1

    shl-int/2addr v2, v5

    and-int/2addr v2, v4

    add-int/2addr p2, v6

    aget-byte v6, p1, p2

    and-int/2addr v6, v7

    or-int/2addr v2, v6

    aput v2, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v9, [I

    .line 111
    aget-byte v0, p1, v1

    shl-int/2addr v0, v5

    and-int/2addr v0, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    or-int/2addr p1, v0

    aput p1, p3, v8

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_24
    add-int/lit8 p3, p2, 0x2

    .line 112
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 113
    aget-byte p1, p1, p2

    :cond_25
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
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/h3;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/h3;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/h3;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/h3;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/h3;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/h3;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/h3;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/h3;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/h3;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/h3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/h3;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/h3;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 0

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/h3;->f3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)I
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

.method public final e3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xcb

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x21

    aput v3, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x5

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/h3;->v:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez p1, :cond_2

    new-array p1, v2, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    new-array p1, v2, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    const/16 p1, 0x3f5

    new-array v1, v3, [I

    .line 6
    sget v2, Lk0/h3;->v:I

    aput v2, v1, v0

    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 7
    iget-object p1, p0, Lk0/h3;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/h3;->v:I

    if-eq p1, v0, :cond_6

    .line 8
    iget-object p1, p0, Lk0/h3;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_6
    return-void

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

    :array_3
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x3
    .end array-data
.end method

.method public final g3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, -0x1d

    aput v3, v0, v2

    const/16 v2, -0x35

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const/16 v4, 0x21

    aput v4, v0, v2

    const/4 v2, 0x3

    aput v3, v0, v2

    const/4 v2, 0x4

    add-int/2addr v1, v2

    :goto_1
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, -0x4

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0xf

    .line 3
    aput p1, v0, v1

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
