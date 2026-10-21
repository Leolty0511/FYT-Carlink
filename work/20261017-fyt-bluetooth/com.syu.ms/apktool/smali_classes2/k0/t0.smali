.class public Lk0/t0;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:[B

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/t0;->c:I

    const/16 v1, 0xb

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
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

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    iput-object v2, p0, Lk0/t0;->d:[[I

    .line 4
    iput v0, p0, Lk0/t0;->f:I

    const/16 v2, 0x1c

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_b

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    const/16 v3, 0x1b

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/t0;->g:[[I

    .line 6
    iput v0, p0, Lk0/t0;->h:I

    .line 7
    iput v0, p0, Lk0/t0;->i:I

    .line 8
    iput v0, p0, Lk0/t0;->j:I

    .line 9
    iput v0, p0, Lk0/t0;->k:I

    .line 10
    iput v0, p0, Lk0/t0;->l:I

    .line 11
    iput v0, p0, Lk0/t0;->m:I

    .line 12
    iput v0, p0, Lk0/t0;->n:I

    .line 13
    iput v0, p0, Lk0/t0;->o:I

    .line 14
    iput v0, p0, Lk0/t0;->p:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 15
    iput-object v1, p0, Lk0/t0;->q:[B

    .line 16
    iput v0, p0, Lk0/t0;->r:I

    .line 17
    iput v0, p0, Lk0/t0;->s:I

    .line 18
    iput v0, p0, Lk0/t0;->t:I

    .line 19
    new-instance v0, Lk0/t0$a;

    invoke-direct {v0, p0}, Lk0/t0$a;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/t0$b;

    invoke-direct {v0, p0}, Lk0/t0$b;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->v:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/t0$c;

    invoke-direct {v0, p0}, Lk0/t0$c;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->w:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/t0$d;

    invoke-direct {v0, p0}, Lk0/t0$d;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->x:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lk0/t0$e;

    invoke-direct {v0, p0}, Lk0/t0$e;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->y:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Lk0/t0$f;

    invoke-direct {v0, p0}, Lk0/t0$f;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lk0/t0$g;

    invoke-direct {v0, p0}, Lk0/t0$g;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lk0/t0$h;

    invoke-direct {v0, p0}, Lk0/t0$h;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->B:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lk0/t0$i;

    invoke-direct {v0, p0}, Lk0/t0$i;-><init>(Lk0/t0;)V

    iput-object v0, p0, Lk0/t0;->C:Ljava/lang/Runnable;

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
        0xb
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x1a
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
        0x7
        0x36
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
        0xb
        0x9
    .end array-data

    :array_14
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x31
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_18
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_19
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_1b
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_1c
    .array-data 4
        0x38
        0x28
    .end array-data

    :array_1d
    .array-data 4
        0x39
        0x29
    .end array-data

    :array_1e
    .array-data 4
        0x3a
        0x2a
    .end array-data

    :array_1f
    .array-data 4
        0x3b
        0x2b
    .end array-data

    :array_20
    .array-data 4
        0x3c
        0x2c
    .end array-data

    :array_21
    .array-data 4
        0x3d
        0x2d
    .end array-data

    :array_22
    .array-data 4
        0x3e
        0x1d
    .end array-data

    :array_23
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_24
    .array-data 4
        0x40
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x41
        0x10
    .end array-data

    :array_26
    .array-data 4
        0x42
        0x36
    .end array-data
.end method

.method public static synthetic e3(Lk0/t0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/t0;->a3()V

    return-void
.end method

.method public static synthetic f3(Lk0/t0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/t0;->c3()V

    return-void
.end method

.method public static synthetic g3(Lk0/t0;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/t0;->i3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic h3(Lk0/t0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/t0;->j3(Ljava/lang/String;)V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->o:I

    .line 4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/t0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/t0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lk0/t0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/t0;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/t0;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/t0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/t0;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 16
    iget-object v0, p0, Lk0/t0;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    sget v0, Lk0/nt;->c:I

    if-eq v0, v1, :cond_1

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->g:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc9
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x2e

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x16

    const/4 v10, 0x2

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x41

    const/16 v11, 0x77

    const-string v12, "persist.syu.reversefrontdoor"

    const/16 v13, 0x71

    const/16 v14, 0x70

    const/4 v15, 0x5

    const/4 v8, 0x4

    if-eq v2, v3, :cond_15

    const/16 v3, 0x29

    if-eq v2, v3, :cond_14

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_f

    if-eq v2, v14, :cond_c

    if-eq v2, v13, :cond_b

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    .line 3
    invoke-static {v12, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 10
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v9, v1, v4

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x4

    .line 14
    aget-byte v11, v1, v10

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x5

    .line 15
    aget-byte v13, v1, v12

    and-int/2addr v13, v5

    if-nez v3, :cond_1

    if-nez v9, :cond_1

    if-nez v11, :cond_1

    if-nez v13, :cond_1

    .line 16
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_2

    sget v6, Ll0/c0;->h:I

    if-ne v6, v9, :cond_2

    sget v6, Ll0/c0;->i:I

    if-ne v6, v11, :cond_2

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_3

    .line 18
    :cond_2
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_3

    .line 19
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 20
    sput v8, Ll0/c0;->k:I

    .line 21
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v9, Ll0/c0;->h:I

    .line 24
    sput v11, Ll0/c0;->i:I

    .line 25
    sput v13, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/t0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/t0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v10

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/t0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v12

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lk0/t0;->d3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    .line 30
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/t0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/t0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lk0/t0;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lk0/t0;->d3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 36
    aget-byte v11, v1, v3

    add-int/lit8 v12, p2, 0x5

    .line 37
    aget-byte v13, v1, v12

    add-int/lit8 v14, p2, 0x6

    .line 38
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x7

    .line 39
    aget-byte v9, v1, v16

    add-int/lit8 v17, p2, 0x8

    .line 40
    aget-byte v10, v1, v17

    add-int/lit8 v18, p2, 0x9

    .line 41
    aget-byte v4, v1, v18

    add-int/lit8 v19, p2, 0xa

    .line 42
    aget-byte v8, v1, v19

    add-int/lit8 v20, p2, 0xb

    .line 43
    aget-byte v6, v1, v20

    and-int/lit16 v7, v2, 0xff

    .line 44
    iput v7, v0, Lk0/t0;->h:I

    and-int/lit16 v7, v11, 0xff

    .line 45
    iput v7, v0, Lk0/t0;->i:I

    and-int/lit16 v7, v13, 0xff

    .line 46
    iput v7, v0, Lk0/t0;->j:I

    and-int/lit16 v7, v9, 0xff

    .line 47
    iput v7, v0, Lk0/t0;->k:I

    and-int/lit16 v7, v15, 0xff

    .line 48
    iput v7, v0, Lk0/t0;->l:I

    and-int/2addr v4, v5

    .line 49
    iput v4, v0, Lk0/t0;->m:I

    and-int/lit16 v4, v10, 0xff

    .line 50
    iput v4, v0, Lk0/t0;->n:I

    and-int/lit16 v4, v8, 0xff

    .line 51
    iput v4, v0, Lk0/t0;->o:I

    and-int/lit16 v4, v6, 0xff

    .line 52
    iput v4, v0, Lk0/t0;->p:I

    const/16 v4, 0x62

    const/4 v6, 0x1

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0xf

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 53
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v7, v6, [I

    const/4 v10, 0x4

    shr-int/2addr v2, v10

    const/4 v10, 0x3

    and-int/2addr v2, v10

    aput v2, v7, v9

    .line 54
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x67

    const v7, 0xffffff

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/16 v8, 0x64

    new-array v9, v6, [I

    .line 55
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v10, 0xff00

    and-int/2addr v3, v10

    aget-byte v11, v1, v12

    and-int/2addr v11, v5

    or-int/2addr v3, v11

    const/4 v11, 0x0

    aput v3, v9, v11

    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v8, v6, [I

    .line 56
    aget-byte v9, v1, v14

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v10

    aget-byte v12, v1, v16

    and-int/2addr v12, v5

    or-int/2addr v9, v12

    aput v9, v8, v11

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v8, v6, [I

    .line 57
    aget-byte v9, v1, v17

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v10

    aget-byte v10, v1, v18

    and-int/2addr v10, v5

    or-int/2addr v9, v10

    aput v9, v8, v11

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    new-array v2, v6, [I

    .line 58
    aget-byte v3, v1, v19

    and-int/2addr v3, v5

    aput v3, v2, v11

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v2, v6, [I

    aput v7, v2, v11

    .line 59
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x68

    new-array v3, v6, [I

    .line 60
    aget-byte v1, v1, v20

    and-int/2addr v1, v5

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    :goto_3
    const/4 v11, 0x0

    const/16 v1, 0x64

    new-array v2, v6, [I

    aput v7, v2, v11

    .line 61
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v6, [I

    aput v7, v2, v11

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v2, v6, [I

    aput v7, v2, v11

    .line 63
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    aput v7, v1, v11

    .line 64
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v6, [I

    aput v11, v2, v11

    .line 65
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 66
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 68
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 69
    iput v2, v0, Lk0/t0;->c:I

    const/4 v2, 0x0

    .line 70
    :goto_4
    iget-object v3, v0, Lk0/t0;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 71
    iget v4, v0, Lk0/t0;->c:I

    aget-object v6, v3, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v4, v6, :cond_7

    if-eqz v4, :cond_8

    .line 72
    iput v2, v0, Lk0/t0;->b:I

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    and-int/2addr v1, v5

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    .line 73
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 74
    aget-object v1, v3, v2

    aget v1, v1, v4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_9
    if-nez v1, :cond_1e

    .line 75
    iget v1, v0, Lk0/t0;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_a

    if-eq v1, v5, :cond_a

    .line 76
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 77
    :cond_a
    iput v5, v0, Lk0/t0;->b:I

    goto/16 :goto_9

    :cond_b
    move v4, v7

    new-array v2, v4, [I

    add-int/lit8 v3, p2, 0x3

    .line 78
    aget-byte v4, v1, v3

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    const/4 v7, 0x2

    add-int/lit8 v7, p2, 0x2

    aget-byte v8, v1, v7

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    const/4 v8, 0x0

    aput v4, v2, v8

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    const/4 v4, 0x1

    new-array v4, v4, [I

    .line 79
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    move v2, v4

    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    and-int/2addr v1, v2

    .line 81
    sget v2, Lu0/b;->o:I

    if-eqz v2, :cond_d

    goto/16 :goto_9

    :cond_d
    if-eqz v1, :cond_e

    .line 82
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 83
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_9

    .line 84
    :cond_e
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 85
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 88
    iput v2, v0, Lk0/t0;->f:I

    const/4 v2, 0x0

    .line 89
    :goto_6
    iget-object v3, v0, Lk0/t0;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 90
    iget v4, v0, Lk0/t0;->f:I

    aget-object v6, v3, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v4, v6, :cond_10

    if-eqz v4, :cond_11

    .line 91
    iput v2, v0, Lk0/t0;->e:I

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    :goto_7
    and-int/2addr v1, v5

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    .line 92
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 93
    aget-object v1, v3, v2

    aget v1, v1, v4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_12
    if-nez v1, :cond_1e

    .line 94
    iget v1, v0, Lk0/t0;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v5, :cond_13

    .line 95
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 96
    :cond_13
    iput v5, v0, Lk0/t0;->e:I

    goto/16 :goto_9

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1200

    const/4 v4, 0x1

    invoke-static {v2, v1, v4, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_15
    move v3, v4

    move v4, v7

    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_19

    const/4 v6, 0x2

    if-eq v2, v6, :cond_17

    if-eq v2, v3, :cond_16

    goto/16 :goto_9

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v1, v1, v2

    const/16 v2, 0x6c

    new-array v3, v4, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v4

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v4, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v4

    aput v1, v3, v6

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_17
    new-array v2, v4, [I

    add-int/lit8 v3, p2, 0x3

    .line 102
    aget-byte v4, v1, v3

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v7, v1, v6

    const/4 v8, 0x0

    shl-int/2addr v7, v8

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v2, v8

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    const/4 v4, 0x1

    new-array v7, v4, [I

    .line 103
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v9, 0xff00

    and-int/2addr v3, v9

    aget-byte v6, v1, v6

    shl-int/2addr v6, v8

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    aput v3, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    add-int/lit8 v3, p2, 0x5

    .line 104
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v8

    const/16 v3, 0x76

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    const/4 v3, 0x1

    new-array v4, v3, [I

    add-int/lit8 v3, p2, 0x7

    .line 105
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v6, 0xff00

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    const/4 v7, 0x0

    shl-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    const/4 v3, 0x1

    new-array v4, v3, [I

    add-int/lit8 v3, p2, 0x9

    .line 106
    aget-byte v6, v1, v3

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v8, p2, 0xa

    aget-byte v9, v1, v8

    const/4 v10, 0x0

    shl-int/2addr v9, v10

    and-int/2addr v9, v5

    or-int/2addr v6, v9

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 107
    aget-byte v2, v1, v3

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v7

    aget-byte v3, v1, v8

    shl-int/2addr v3, v10

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_18

    const v3, 0xffff

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    rsub-int v2, v3, 0x3e8

    goto :goto_8

    :cond_18
    const/4 v4, 0x1

    add-int/lit16 v2, v2, 0x3e8

    .line 108
    :goto_8
    invoke-static {v2}, Lu0/d;->A3(I)V

    const/16 v2, 0x73

    new-array v3, v4, [I

    add-int/lit8 v4, p2, 0xb

    .line 109
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xc

    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, v1, v6

    const/4 v7, 0x0

    shl-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    add-int/lit8 v3, p2, 0xe

    .line 110
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    aput v1, v2, v7

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_19
    move v2, v4

    const/4 v7, 0x0

    add-int/lit8 v4, p2, 0x3

    .line 111
    aget-byte v1, v1, v4

    const/16 v3, 0x6e

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v2

    aput v5, v4, v7

    .line 112
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v4, v2, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v7

    .line 113
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v2, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v2

    aput v4, v3, v7

    .line 114
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v2, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v2

    aput v4, v3, v7

    .line 115
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v2, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v2

    aput v4, v3, v7

    const/4 v4, 0x4

    .line 116
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v2, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v2

    aput v4, v3, v7

    const/4 v4, 0x3

    .line 117
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    .line 118
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    new-array v3, v2, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v2

    aput v4, v3, v7

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v2, [I

    shr-int/2addr v1, v2

    and-int/2addr v1, v2

    aput v1, v3, v7

    const/4 v1, 0x2

    .line 120
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1a
    new-array v3, v2, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v2

    aput v4, v3, v7

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v2, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v2

    aput v1, v3, v7

    const/4 v4, 0x2

    .line 122
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1b
    move v4, v10

    .line 123
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_9

    :cond_1c
    move v2, v7

    move v4, v10

    new-array v2, v2, [I

    add-int/lit8 v3, p2, 0x3

    .line 124
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v6, 0xff00

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    const/4 v3, 0x0

    aput v1, v2, v3

    const/16 v1, 0x76

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 126
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    const/16 v3, 0x69

    const/4 v4, 0x1

    new-array v5, v4, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v4

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 127
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v5, v4, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 128
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v4, [I

    const/4 v5, 0x3

    mul-int/2addr v1, v5

    shr-int/2addr v1, v4

    aput v1, v3, v7

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1e
    :goto_9
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
    iget-object v0, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/t0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/t0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/t0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/t0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/t0;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/t0;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/t0;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/t0;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/t0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/t0;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7b

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array p1, v2, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3
    aget p1, p2, v1

    if-ge p1, v3, :cond_2

    .line 4
    aput v3, p2, v1

    goto :goto_0

    .line 5
    :cond_2
    aget p1, p2, v1

    const/16 v4, 0xf

    if-le p1, v4, :cond_3

    .line 6
    aput v4, p2, v1

    :cond_3
    :goto_0
    new-array p1, v2, [I

    const/16 v2, 0xe3

    aput v2, p1, v1

    const/16 v2, 0xc9

    aput v2, p1, v3

    aput v0, p1, v0

    aput v0, p1, p4

    .line 7
    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 9
    aget p1, p2, v1

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, p4, :cond_6

    if-eq p1, p3, :cond_5

    goto :goto_1

    :cond_5
    new-array p1, v2, [I

    .line 10
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_6
    new-array p1, v2, [I

    .line 11
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_7
    new-array p1, v2, [I

    .line 12
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_8
    new-array p1, v2, [I

    .line 13
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_9
    new-array p1, v2, [I

    .line 14
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_a
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc9
        0x2
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc5
        0x2
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc5
        0x2
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc5
        0x2
        0x2
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc5
        0x2
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc5
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public final a3()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lk0/t0;->b3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x10

    const/16 v2, 0xc3

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x6

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v0, v6, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_1
    new-array v0, v9, [I

    aput v2, v0, v13

    aput v12, v0, v11

    .line 5
    sget v1, Lu0/b;->s3:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v0, v10

    shr-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 6
    sget v1, Lu0/b;->r3:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v0, v8

    shr-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 7
    sget v1, Lu0/b;->t3:I

    div-int/lit8 v2, v1, 0x3c

    aput v2, v0, v12

    .line 8
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v6

    new-array v1, v4, [I

    aput v3, v1, v13

    :goto_0
    if-ge v13, v9, :cond_0

    add-int/lit8 v2, v13, 0x1

    .line 9
    aget v3, v0, v13

    aput v3, v1, v2

    move v13, v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_2
    new-array v0, v9, [I

    aput v2, v0, v13

    aput v12, v0, v11

    .line 11
    iget v2, p0, Lk0/t0;->h:I

    and-int/lit8 v2, v2, 0x30

    if-ne v2, v1, :cond_1

    .line 12
    iget v1, p0, Lk0/t0;->k:I

    aput v1, v0, v10

    .line 13
    iget v1, p0, Lk0/t0;->l:I

    aput v1, v0, v5

    .line 14
    iget v1, p0, Lk0/t0;->m:I

    aput v1, v0, v8

    .line 15
    iget v1, p0, Lk0/t0;->n:I

    aput v1, v0, v7

    .line 16
    iget v1, p0, Lk0/t0;->p:I

    aput v1, v0, v12

    aput v13, v0, v6

    goto :goto_1

    .line 17
    :cond_1
    iget v1, p0, Lk0/t0;->o:I

    aput v1, v0, v10

    .line 18
    iget v1, p0, Lk0/t0;->p:I

    aput v1, v0, v5

    .line 19
    iget v1, p0, Lk0/t0;->k:I

    aput v1, v0, v8

    .line 20
    iget v1, p0, Lk0/t0;->l:I

    aput v1, v0, v7

    .line 21
    iget v1, p0, Lk0/t0;->i:I

    aput v1, v0, v12

    .line 22
    iget v1, p0, Lk0/t0;->j:I

    aput v1, v0, v6

    :goto_1
    new-array v1, v4, [I

    aput v3, v1, v13

    :goto_2
    if-ge v13, v9, :cond_2

    add-int/lit8 v2, v13, 0x1

    .line 23
    aget v3, v0, v13

    aput v3, v1, v2

    move v13, v2

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_3
    new-array v0, v9, [I

    aput v2, v0, v13

    aput v12, v0, v11

    .line 25
    sget v1, Lo0/e;->H:I

    if-ne v1, v11, :cond_3

    .line 26
    sget v1, Lo0/e;->C:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v10

    .line 27
    sget v1, Lo0/e;->B:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    aput v13, v0, v8

    aput v13, v0, v7

    .line 28
    sget v1, Lo0/e;->r:I

    div-int/lit8 v2, v1, 0x3c

    aput v2, v0, v12

    .line 29
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v6

    goto :goto_3

    .line 30
    :cond_3
    sget v1, Lo0/e;->C:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v0, v10

    shr-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 31
    sget v1, Lo0/e;->B:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v0, v8

    shr-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 32
    sget v1, Lo0/e;->r:I

    div-int/lit8 v2, v1, 0x3c

    aput v2, v0, v12

    .line 33
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v6

    :goto_3
    new-array v1, v4, [I

    aput v3, v1, v13

    :goto_4
    if-ge v13, v9, :cond_4

    add-int/lit8 v2, v13, 0x1

    .line 34
    aget v3, v0, v13

    aput v3, v1, v2

    move v13, v2

    goto :goto_4

    .line 35
    :cond_4
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_8

    :pswitch_4
    new-array v0, v12, [I

    const/16 v2, 0xc2

    aput v2, v0, v13

    aput v8, v0, v11

    .line 36
    sget v2, Lw0/d;->j:I

    and-int/lit16 v2, v2, 0xff

    .line 37
    sget v4, Lw0/d;->h:I

    if-eqz v4, :cond_6

    if-eq v4, v11, :cond_5

    packed-switch v4, :pswitch_data_1

    goto :goto_5

    :pswitch_5
    aput v13, v0, v10

    goto :goto_5

    :pswitch_6
    aput v10, v0, v10

    goto :goto_5

    :pswitch_7
    aput v11, v0, v10

    goto :goto_5

    :cond_5
    aput v1, v0, v10

    goto :goto_5

    :cond_6
    aput v1, v0, v10

    .line 38
    :goto_5
    sget v1, Lw0/d;->i:I

    and-int/lit16 v4, v1, 0xff

    aput v4, v0, v5

    shr-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v8

    .line 39
    rem-int/lit8 v1, v2, 0x6

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    aput v12, v0, v7

    goto :goto_6

    :cond_7
    aput v1, v0, v7

    :goto_6
    new-array v1, v6, [I

    aput v3, v1, v13

    :goto_7
    if-ge v13, v12, :cond_8

    add-int/lit8 v2, v13, 0x1

    .line 40
    aget v3, v0, v13

    aput v3, v1, v2

    move v13, v2

    goto :goto_7

    .line 41
    :cond_8
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_8
    :pswitch_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc2
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc3
        0x6
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
    iget v1, p0, Lk0/t0;->r:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/t0;->r:I

    .line 5
    iput v0, p0, Lk0/t0;->s:I

    .line 6
    iput v0, p0, Lk0/t0;->t:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/t0;->q:[B

    iget v2, p0, Lk0/t0;->r:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/t0;->r:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/t0;->r:I

    .line 9
    iget p1, p0, Lk0/t0;->t:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/t0;->q:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/t0;->t:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/t0;->q:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/t0;->q:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/t0;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/t0;->t:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/t0;->s:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/t0;->s:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/t0;->t:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/t0;->r:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/t0;->s:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/t0;->q:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/t0;->t:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/t0;->t:I

    .line 23
    iget v6, p0, Lk0/t0;->r:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/t0;->t:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/t0;->t:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/t0;->q:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/t0;->q:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/t0;->s:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/t0;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/t0;->t:I

    iput v1, p0, Lk0/t0;->s:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/t0;->s:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/t0;->s:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/t0;->t:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/t0;->s:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/t0;->s:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/t0;->r:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/t0;->r:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/t0;->q:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/t0;->s:I

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

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v3, 0xc0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x2

    aput v5, v2, v3

    .line 1
    sget v6, Lu0/b;->D:I

    const/16 v7, 0xa

    const/4 v8, 0x5

    const/16 v9, 0x11

    const/16 v10, 0x8

    const/4 v11, 0x3

    if-eq v6, v7, :cond_6

    const/16 v7, 0xd

    const/16 v12, 0x13

    const/16 v13, 0x12

    const/4 v14, 0x6

    const/16 v15, 0x10

    const/16 v16, 0x30

    if-eq v6, v7, :cond_4

    const/4 v7, 0x7

    packed-switch v6, :pswitch_data_0

    const/16 v3, 0xc

    aput v3, v2, v5

    aput v16, v2, v11

    goto :goto_0

    .line 2
    :pswitch_0
    sget v3, Ln0/j4;->b:I

    const/16 v6, 0x15

    if-ne v3, v6, :cond_0

    aput v14, v2, v5

    aput v13, v2, v11

    goto :goto_0

    .line 3
    :cond_0
    iget v3, v0, Lk0/t0;->h:I

    and-int/lit8 v3, v3, 0x30

    if-ne v3, v15, :cond_1

    aput v14, v2, v5

    aput v13, v2, v11

    goto :goto_0

    :cond_1
    aput v10, v2, v5

    aput v12, v2, v11

    goto :goto_0

    :pswitch_1
    aput v7, v2, v5

    aput v16, v2, v11

    goto :goto_0

    :pswitch_2
    aput v7, v2, v5

    aput v16, v2, v11

    goto :goto_0

    .line 4
    :pswitch_3
    sget v6, Lo0/e;->H:I

    if-ne v6, v3, :cond_2

    aput v5, v2, v5

    aput v15, v2, v11

    goto :goto_0

    :cond_2
    if-ne v6, v5, :cond_3

    aput v10, v2, v5

    aput v9, v2, v11

    goto :goto_0

    :cond_3
    if-ne v6, v11, :cond_7

    aput v10, v2, v5

    aput v9, v2, v11

    goto :goto_0

    :pswitch_4
    aput v8, v2, v5

    const/16 v3, 0x40

    aput v3, v2, v11

    goto :goto_0

    :pswitch_5
    aput v3, v2, v5

    aput v3, v2, v11

    goto :goto_0

    .line 5
    :cond_4
    iget v3, v0, Lk0/t0;->h:I

    and-int/lit8 v3, v3, 0x30

    if-ne v3, v15, :cond_5

    aput v14, v2, v5

    aput v13, v2, v11

    goto :goto_0

    :cond_5
    aput v10, v2, v5

    aput v12, v2, v11

    goto :goto_0

    :cond_6
    :pswitch_6
    aput v10, v2, v5

    aput v9, v2, v11

    :cond_7
    :goto_0
    new-array v3, v8, [I

    const/16 v5, 0xe3

    aput v5, v3, v4

    :goto_1
    if-ge v4, v1, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 6
    aget v4, v2, v4

    aput v4, v3, v5

    move v4, v5

    goto :goto_1

    .line 7
    :cond_8
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-ne v4, v2, :cond_0

    aput v3, v1, v5

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)I
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

.method public final i3(BLjava/lang/String;)V
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

.method public final j3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

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
