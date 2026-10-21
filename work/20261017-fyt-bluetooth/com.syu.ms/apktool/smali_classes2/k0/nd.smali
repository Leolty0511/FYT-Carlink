.class public Lk0/nd;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static u:I = 0x1


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Lo1/g0;

.field public final i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Z

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:B

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/nd;->c:I

    const/16 v2, 0x14

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

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

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v14, 0xb

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v16, 0xd

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v17, 0xe

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v18, 0xf

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v19, 0x10

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v20, 0x11

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v21, 0x12

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v15, 0x13

    aput-object v4, v2, v15

    iput-object v2, v0, Lk0/nd;->d:[[I

    .line 4
    iput v1, v0, Lk0/nd;->f:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    const/16 v6, 0xc

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    aput-object v4, v2, v20

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    aput-object v3, v2, v21

    iput-object v2, v0, Lk0/nd;->g:[[I

    .line 6
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/nd;->h:Lo1/g0;

    .line 7
    iput v5, v0, Lk0/nd;->i:I

    .line 8
    new-instance v2, Lk0/nd$a;

    invoke-direct {v2, v0}, Lk0/nd$a;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v2, Lk0/nd$b;

    invoke-direct {v2, v0}, Lk0/nd$b;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->k:Ljava/lang/Runnable;

    .line 10
    iput-boolean v1, v0, Lk0/nd;->l:Z

    .line 11
    new-instance v2, Lk0/nd$c;

    invoke-direct {v2, v0}, Lk0/nd$c;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v2, Lk0/nd$d;

    invoke-direct {v2, v0}, Lk0/nd$d;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v2, Lk0/nd$e;

    invoke-direct {v2, v0}, Lk0/nd$e;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->o:Ljava/lang/Runnable;

    .line 14
    iput-byte v8, v0, Lk0/nd;->p:B

    .line 15
    new-instance v2, Lk0/nd$f;

    invoke-direct {v2, v0}, Lk0/nd$f;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->q:Ljava/lang/Runnable;

    .line 16
    new-instance v2, Lk0/nd$g;

    invoke-direct {v2, v0}, Lk0/nd$g;-><init>(Lk0/nd;)V

    iput-object v2, v0, Lk0/nd;->r:Ljava/lang/Runnable;

    .line 17
    iput v1, v0, Lk0/nd;->s:I

    .line 18
    iput v1, v0, Lk0/nd;->t:I

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
        0x7
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x8
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x9
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x20
        0x19
    .end array-data

    :array_11
    .array-data 4
        0x21
        0x36
    .end array-data

    :array_12
    .array-data 4
        0x22
        0xd
    .end array-data

    :array_13
    .array-data 4
        0x23
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_16
    .array-data 4
        0x9
        0x22
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x23
    .end array-data

    :array_18
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_19
    .array-data 4
        0xc
        0x21
    .end array-data

    :array_1a
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_1b
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_1c
    .array-data 4
        0xf
        0x20
    .end array-data

    :array_1d
    .array-data 4
        0x10
        0x21
    .end array-data

    :array_1e
    .array-data 4
        0x11
        0x1e
    .end array-data

    :array_1f
    .array-data 4
        0x12
        0x1f
    .end array-data

    :array_20
    .array-data 4
        0x13
        0x1d
    .end array-data

    :array_21
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x15
        0x36
    .end array-data

    :array_23
    .array-data 4
        0x16
        0x15
    .end array-data

    :array_24
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x18
        0x3a
    .end array-data

    :array_26
    .array-data 4
        0x19
        0x0
    .end array-data
.end method

.method public static synthetic a3(Lk0/nd;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/nd;->e3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b3(Lk0/nd;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nd;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/nd;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nd;->h:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/nd;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/nd;->g3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lk0/lt;->O2([I)V

    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget v1, p1, v0

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4
    :pswitch_1
    aget p1, p1, v4

    if-eqz p1, :cond_1

    const/16 p1, 0xd

    .line 5
    invoke-virtual {p0, p1}, Lk0/nd;->f3(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 6
    invoke-virtual {p0, p1}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 7
    :pswitch_2
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v2}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 10
    :pswitch_3
    aget p1, p1, v4

    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v2

    if-eq p1, v0, :cond_3

    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, p1}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v4

    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-eq p1, v0, :cond_3

    const/16 p1, 0x12

    .line 13
    invoke-virtual {p0, p1}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 14
    :pswitch_5
    aget p1, p1, v4

    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x41

    aget v0, v0, v1

    if-eq p1, v0, :cond_3

    const/4 p1, 0x6

    .line 15
    invoke-virtual {p0, p1}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 16
    :pswitch_6
    aget p1, p1, v4

    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v3

    if-eq p1, v0, :cond_3

    .line 17
    invoke-virtual {p0, v4}, Lk0/nd;->f3(I)V

    goto :goto_0

    .line 18
    :pswitch_7
    aget p1, p1, v4

    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    if-eq p1, v1, :cond_3

    .line 19
    invoke-virtual {p0, v0}, Lk0/nd;->f3(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/nd;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nd;->q:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/nd;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/nd;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    .line 8
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    .line 10
    iput v1, v0, Lk0/mt;->i:I

    .line 11
    iput v1, v0, Lk0/mt;->n:I

    .line 12
    sget v1, Lk0/nt;->c:I

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 13
    :pswitch_0
    iput v2, v0, Lk0/mt;->g:I

    .line 14
    iput v2, v0, Lk0/mt;->i:I

    .line 15
    iget-object v0, p0, Lk0/nd;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/nd;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 17
    :pswitch_1
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/nd;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/nd;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :pswitch_2
    iput v2, v0, Lk0/mt;->n:I

    goto :goto_0

    .line 20
    :pswitch_3
    iput v2, v0, Lk0/mt;->g:I

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    .line 21
    iput v1, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 22
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    .line 23
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 24
    iget-object v0, p0, Lk0/nd;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x21
        0x22
        0x24
        0x25
        0x26
        0x27
        0x29
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v3, :cond_44

    const/16 v3, 0x30

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v2, v3, :cond_43

    const/16 v3, 0x39

    const/4 v8, 0x5

    const/16 v9, 0xff

    if-eq v2, v3, :cond_42

    const/16 v3, 0x7d

    const/16 v10, 0x64

    const/16 v11, 0x8

    if-eq v2, v3, :cond_3d

    const/16 v3, 0xe

    const/16 v13, 0xd

    const/16 v15, 0x12

    const/4 v14, 0x6

    const/4 v12, 0x7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1b

    :pswitch_0
    const/16 v2, 0x63

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 3
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v5

    aput v1, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    .line 4
    :pswitch_1
    sget v2, Lk0/nt;->c:I

    if-eq v2, v13, :cond_0

    if-ne v2, v3, :cond_45

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v3, v1, v2

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v7}, Lk0/qt;->a(I)V

    .line 8
    :goto_0
    aget-byte v2, v1, v2

    iput v2, v0, Lk0/nd;->t:I

    add-int/lit8 v2, p2, 0x3

    .line 9
    aget-byte v3, v1, v2

    if-nez v3, :cond_2

    const/16 v3, 0x3f5

    new-array v4, v5, [I

    aput v5, v4, v7

    .line 10
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 11
    :cond_2
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_3

    const/16 v3, 0x3f5

    new-array v4, v5, [I

    aput v7, v4, v7

    .line 12
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 13
    :cond_3
    :goto_1
    aget-byte v1, v1, v2

    iput v1, v0, Lk0/nd;->s:I

    goto/16 :goto_1b

    .line 14
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 16
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 17
    iput v2, v0, Lk0/nd;->f:I

    move v2, v7

    .line 18
    :goto_2
    iget-object v3, v0, Lk0/nd;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 19
    iget v4, v0, Lk0/nd;->f:I

    aget-object v6, v3, v2

    aget v6, v6, v7

    if-ne v4, v6, :cond_4

    if-eqz v4, :cond_5

    .line 20
    iput v2, v0, Lk0/nd;->e:I

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 21
    :cond_5
    :goto_3
    iget v4, v0, Lk0/nd;->f:I

    const/16 v6, 0x11

    if-eq v4, v6, :cond_a

    if-eq v4, v15, :cond_8

    and-int/2addr v1, v9

    if-ne v1, v5, :cond_6

    .line 22
    array-length v1, v3

    if-ge v2, v1, :cond_45

    .line 23
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_6
    if-nez v1, :cond_45

    .line 24
    iget v1, v0, Lk0/nd;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_7

    if-eq v1, v9, :cond_7

    .line 25
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 26
    :cond_7
    iput v9, v0, Lk0/nd;->e:I

    goto/16 :goto_1b

    :cond_8
    move v2, v7

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_9

    .line 27
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 28
    :cond_9
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_a
    move v2, v7

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_b

    .line 29
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 30
    :cond_b
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :pswitch_3
    const-string v2, "persist.syu.reversefrontdoor"

    .line 31
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x2

    .line 32
    aget-byte v9, v1, v3

    shr-int/2addr v9, v12

    and-int/2addr v9, v5

    aput v9, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 33
    aget-byte v3, v1, v3

    shr-int/2addr v3, v14

    and-int/2addr v3, v5

    aput v3, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_c
    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x2

    .line 34
    aget-byte v9, v1, v3

    shr-int/2addr v9, v12

    and-int/2addr v9, v5

    aput v9, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 35
    aget-byte v3, v1, v3

    shr-int/2addr v3, v14

    and-int/2addr v3, v5

    aput v3, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x2

    .line 36
    aget-byte v9, v1, v3

    shr-int/2addr v9, v8

    and-int/2addr v9, v5

    aput v9, v2, v7

    const/4 v9, 0x4

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 37
    aget-byte v10, v1, v3

    shr-int/lit8 v9, v10, 0x4

    and-int/2addr v9, v5

    aput v9, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 38
    aget-byte v9, v1, v3

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v5

    aput v4, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 39
    aget-byte v1, v1, v3

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    .line 40
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 42
    aget-byte v6, v1, v4

    and-int/2addr v6, v9

    add-int/lit8 v10, p2, 0x4

    .line 43
    aget-byte v11, v1, v10

    and-int/2addr v11, v9

    add-int/lit8 v8, p2, 0x5

    .line 44
    aget-byte v12, v1, v8

    and-int/2addr v12, v9

    if-nez v3, :cond_d

    if-nez v6, :cond_d

    if-nez v11, :cond_d

    if-nez v12, :cond_d

    .line 45
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 46
    :cond_d
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_e

    sget v7, Ll0/c0;->h:I

    if-ne v7, v6, :cond_e

    sget v7, Ll0/c0;->i:I

    if-ne v7, v11, :cond_e

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_f

    .line 47
    :cond_e
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_f

    .line 48
    invoke-static {v5}, Lu0/d;->C2(I)V

    const/4 v5, 0x4

    .line 49
    sput v5, Ll0/c0;->k:I

    .line 50
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 51
    :cond_f
    :goto_7
    sput v3, Ll0/c0;->g:I

    .line 52
    sput v6, Ll0/c0;->h:I

    .line 53
    sput v11, Ll0/c0;->i:I

    .line 54
    sput v12, Ll0/c0;->j:I

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 56
    aget-byte v2, v1, v4

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 57
    aget-byte v2, v1, v10

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 58
    aget-byte v1, v1, v8

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1b

    .line 59
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 63
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1b

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v10, p2, 0x3

    .line 65
    aget-byte v10, v1, v10

    and-int/2addr v10, v9

    add-int/lit8 v12, p2, 0x4

    .line 66
    aget-byte v14, v1, v12

    and-int/2addr v14, v9

    add-int/lit8 v16, p2, 0x5

    .line 67
    aget-byte v15, v1, v16

    and-int/2addr v15, v9

    add-int/lit8 v17, p2, 0x6

    .line 68
    aget-byte v3, v1, v17

    and-int/2addr v3, v9

    add-int/lit8 v17, p2, 0x7

    .line 69
    aget-byte v13, v1, v17

    and-int/2addr v13, v9

    add-int/lit8 v17, p2, 0x8

    .line 70
    aget-byte v7, v1, v17

    and-int/2addr v7, v9

    and-int/lit8 v9, v10, 0xf

    .line 71
    sget v5, Lk0/nt;->c:I

    if-eq v5, v6, :cond_11

    if-eq v5, v4, :cond_11

    const/4 v6, 0x4

    if-eq v5, v6, :cond_11

    if-ne v5, v8, :cond_10

    goto :goto_8

    :cond_10
    if-le v9, v11, :cond_12

    goto :goto_9

    :cond_11
    :goto_8
    if-le v9, v11, :cond_12

    goto/16 :goto_1b

    :cond_12
    move v11, v9

    :goto_9
    const/16 v5, 0x15

    const/4 v6, 0x1

    new-array v9, v6, [I

    const/4 v4, 0x0

    aput v11, v9, v4

    .line 72
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v6

    aput v9, v5, v4

    const/16 v9, 0xa

    .line 73
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v6

    aput v9, v5, v4

    const/16 v9, 0xb

    .line 74
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v6

    aput v11, v5, v4

    const/16 v11, 0xc

    .line 75
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v6

    aput v11, v5, v4

    const/16 v11, 0xd

    .line 76
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v6

    aput v11, v5, v4

    const/16 v11, 0xe

    .line 77
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v6

    aput v11, v5, v4

    const/16 v11, 0xf

    .line 78
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x43

    new-array v11, v6, [I

    and-int/2addr v2, v6

    aput v2, v11, v4

    .line 79
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v5, v10, 0x7

    and-int/2addr v5, v6

    aput v5, v2, v4

    const/16 v5, 0x12

    .line 80
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v6, [I

    shr-int/lit8 v11, v10, 0x6

    and-int/2addr v11, v6

    aput v11, v5, v4

    .line 81
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v6, [I

    shr-int/2addr v10, v8

    and-int/2addr v10, v6

    aput v10, v5, v4

    .line 82
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 83
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 84
    aget-byte v2, v1, v16

    const/16 v4, 0xff

    and-int/lit16 v14, v2, 0xff

    .line 85
    aget-byte v2, v1, v12

    and-int/lit16 v15, v2, 0xff

    goto :goto_a

    :cond_13
    const/16 v4, 0xff

    :goto_a
    and-int/lit16 v2, v14, 0xff

    .line 86
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0x1b

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1a

    if-eq v4, v9, :cond_16

    packed-switch v4, :pswitch_data_1

    if-ge v2, v6, :cond_14

    const/4 v2, 0x0

    goto :goto_b

    :cond_14
    const/16 v4, 0xf

    if-le v2, v4, :cond_15

    const/16 v2, 0xf

    :cond_15
    :goto_b
    new-array v4, v6, [I

    const/4 v10, 0x0

    aput v2, v4, v10

    .line 87
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_16
    :pswitch_7
    if-eqz v2, :cond_19

    const/16 v4, 0xff

    if-eq v2, v4, :cond_18

    if-lt v2, v6, :cond_17

    const/16 v4, 0x21

    if-gt v2, v4, :cond_17

    new-array v4, v6, [I

    const/4 v10, 0x0

    aput v2, v4, v10

    .line 88
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_17
    const/4 v10, 0x0

    new-array v2, v6, [I

    const/4 v4, -0x1

    aput v4, v2, v10

    .line 89
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_18
    const/4 v10, 0x0

    new-array v2, v6, [I

    const/4 v4, -0x3

    aput v4, v2, v10

    .line 90
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_19
    const/4 v10, 0x0

    new-array v2, v6, [I

    const/4 v4, -0x2

    aput v4, v2, v10

    .line 91
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v2, 0xff

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    if-ge v2, v6, :cond_1b

    move v2, v10

    goto :goto_d

    :cond_1b
    const/16 v4, 0x9

    if-le v2, v4, :cond_1c

    const/16 v2, 0x9

    :cond_1c
    :goto_d
    new-array v4, v6, [I

    aput v2, v4, v10

    .line 92
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :goto_e
    and-int/lit16 v4, v15, 0xff

    .line 93
    sget v2, Lk0/nt;->c:I

    const/16 v5, 0x1c

    if-eq v2, v6, :cond_23

    if-eq v2, v9, :cond_1f

    packed-switch v2, :pswitch_data_2

    if-ge v4, v6, :cond_1d

    const/4 v2, 0x0

    goto :goto_f

    :cond_1d
    const/16 v2, 0xf

    if-le v4, v2, :cond_1e

    goto :goto_f

    :cond_1e
    move v2, v4

    :goto_f
    new-array v4, v6, [I

    const/4 v9, 0x0

    aput v2, v4, v9

    .line 94
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/4 v9, 0x0

    goto :goto_11

    :cond_1f
    :pswitch_8
    if-eqz v4, :cond_22

    const/16 v2, 0xff

    if-eq v4, v2, :cond_21

    if-lt v4, v6, :cond_20

    const/16 v2, 0x1f

    if-gt v4, v2, :cond_20

    new-array v2, v6, [I

    const/4 v9, 0x0

    aput v4, v2, v9

    .line 95
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_20
    const/4 v9, 0x0

    new-array v2, v6, [I

    const/4 v4, -0x1

    aput v4, v2, v9

    .line 96
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_21
    const/4 v9, 0x0

    new-array v2, v6, [I

    const/4 v4, -0x3

    aput v4, v2, v9

    .line 97
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_22
    const/4 v9, 0x0

    new-array v2, v6, [I

    const/4 v4, -0x2

    aput v4, v2, v9

    .line 98
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_23
    const/4 v9, 0x0

    if-ge v4, v6, :cond_24

    move v4, v9

    goto :goto_10

    :cond_24
    const/16 v2, 0x9

    if-le v4, v2, :cond_25

    const/16 v4, 0x9

    :cond_25
    :goto_10
    new-array v2, v6, [I

    aput v4, v2, v9

    .line 99
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_11
    const/16 v2, 0x41

    new-array v4, v6, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 100
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v6, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 101
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v4, v6, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 102
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v4, v6, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 103
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v6, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 104
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v4, v6, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 105
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v6, [I

    shr-int/2addr v3, v9

    and-int/2addr v3, v6

    aput v3, v4, v9

    .line 106
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v6, [I

    shr-int/lit8 v4, v13, 0x4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v9

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    and-int/lit8 v4, v13, 0x3

    aput v4, v3, v9

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v6, [I

    shr-int/lit8 v4, v7, 0x2

    and-int/2addr v4, v6

    aput v4, v3, v9

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x49

    new-array v3, v6, [I

    const/4 v4, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v9

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 111
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 112
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_26

    .line 113
    invoke-static {v9}, Lu0/d;->A3(I)V

    goto/16 :goto_1b

    :cond_26
    and-int/2addr v1, v2

    mul-int/2addr v1, v8

    add-int/lit16 v1, v1, 0x258

    .line 114
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_1b

    .line 115
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 117
    aget-byte v1, v1, v4

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 118
    iput v2, v0, Lk0/nd;->c:I

    const/4 v2, 0x0

    .line 119
    :goto_12
    iget-object v3, v0, Lk0/nd;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_28

    .line 120
    iget v4, v0, Lk0/nd;->c:I

    aget-object v5, v3, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v4, v5, :cond_27

    if-eqz v4, :cond_28

    .line 121
    iput v2, v0, Lk0/nd;->b:I

    goto :goto_13

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 122
    :cond_28
    :goto_13
    iget v4, v0, Lk0/nd;->c:I

    const/16 v5, 0x1a

    if-eq v4, v8, :cond_3a

    if-eq v4, v14, :cond_36

    if-eq v4, v11, :cond_34

    const/16 v6, 0x9

    if-eq v4, v6, :cond_32

    const/16 v6, 0x10

    if-eq v4, v6, :cond_2f

    const/16 v5, 0x11

    if-eq v4, v5, :cond_2c

    const/16 v4, 0xff

    and-int/2addr v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_29

    .line 123
    array-length v1, v3

    if-ge v2, v1, :cond_45

    .line 124
    aget-object v1, v3, v2

    aget v1, v1, v4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_29
    if-nez v1, :cond_45

    .line 125
    iget v1, v0, Lk0/nd;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2a

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2b

    .line 126
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_2a
    const/16 v2, 0xff

    .line 127
    :cond_2b
    :goto_14
    iput v2, v0, Lk0/nd;->b:I

    goto/16 :goto_1b

    :cond_2c
    const/16 v2, 0xff

    const/4 v4, 0x1

    and-int/2addr v1, v2

    if-ne v1, v4, :cond_45

    .line 128
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2d

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 129
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    .line 130
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_2d
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 131
    sget v3, Lh0/c;->E:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2e

    goto :goto_15

    :cond_2e
    const/16 v3, 0x12

    .line 132
    invoke-static {v3, v2}, Ll0/b0;->l0(II)V

    .line 133
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    .line 134
    :goto_15
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    .line 135
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_2f
    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x1

    and-int/2addr v1, v3

    if-ne v1, v4, :cond_45

    .line 136
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0xc

    if-eq v1, v3, :cond_30

    const/4 v1, 0x4

    .line 137
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    .line 138
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_30
    const/4 v1, 0x4

    .line 139
    sget v2, Lh0/c;->E:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_31

    if-eq v2, v1, :cond_31

    if-eq v2, v8, :cond_31

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_16

    :cond_31
    const/4 v2, 0x0

    .line 140
    invoke-static {v5, v2}, Ll0/b0;->l0(II)V

    const/4 v3, 0x1

    .line 141
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    .line 142
    :goto_16
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    .line 143
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_32
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    const/16 v6, 0xff

    :goto_17
    and-int/lit16 v5, v1, 0xff

    if-ge v4, v5, :cond_33

    .line 144
    invoke-static {v11, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 145
    :cond_33
    invoke-static {v11, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_34
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v6, 0xff

    move v4, v2

    :goto_18
    and-int/lit16 v5, v1, 0xff

    if-ge v4, v5, :cond_35

    .line 146
    invoke-static {v12, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_18

    .line 147
    :cond_35
    invoke-static {v12, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_36
    const/4 v3, 0x1

    const/16 v6, 0xff

    and-int/2addr v1, v6

    if-ne v1, v3, :cond_45

    .line 148
    sget v1, Lk0/nt;->c:I

    if-eqz v1, :cond_38

    if-eq v1, v3, :cond_37

    if-eq v1, v12, :cond_38

    if-eq v1, v11, :cond_38

    const/16 v2, 0xa

    if-eq v1, v2, :cond_38

    const/4 v1, 0x0

    .line 149
    invoke-static {v5, v1}, Ll0/b0;->l0(II)V

    .line 150
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_37
    const/4 v1, 0x0

    .line 151
    invoke-static {v5, v1}, Ll0/b0;->l0(II)V

    .line 152
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    .line 153
    :cond_38
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_39

    const/4 v2, 0x4

    if-eq v1, v2, :cond_39

    if-eq v1, v8, :cond_39

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_19
    const/16 v3, 0xc

    goto :goto_1a

    :cond_39
    const/4 v1, 0x0

    .line 154
    invoke-static {v5, v1}, Ll0/b0;->l0(II)V

    const/4 v2, 0x1

    .line 155
    invoke-static {v5, v2}, Ll0/b0;->l0(II)V

    goto :goto_19

    .line 156
    :goto_1a
    invoke-static {v3, v1}, Ll0/b0;->l0(II)V

    .line 157
    invoke-static {v3, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_3a
    const/4 v2, 0x1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v2, :cond_45

    .line 158
    sget v1, Lk0/nt;->c:I

    if-eqz v1, :cond_3c

    if-eq v1, v2, :cond_3c

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3c

    .line 159
    sget v1, Lh0/c;->E:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3b

    if-eq v1, v8, :cond_3b

    const/16 v1, 0x12

    const/4 v3, 0x0

    .line 160
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 161
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_3b
    const/4 v3, 0x0

    .line 162
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    .line 163
    invoke-static {v5, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_3c
    const/16 v1, 0x12

    const/4 v3, 0x0

    .line 164
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 165
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_1b

    :cond_3d
    move v2, v5

    add-int/lit8 v3, p2, 0x2

    .line 166
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-eq v3, v2, :cond_40

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3f

    if-eq v3, v11, :cond_3e

    goto/16 :goto_1b

    :cond_3e
    add-int/lit8 v3, p2, 0x3

    .line 167
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 168
    aget-byte v1, v1, v4

    const/16 v4, 0x21c

    .line 169
    invoke-static {v3, v1, v2, v4}, Lk0/qt;->i(IIZI)V

    .line 170
    iput-boolean v2, v0, Lk0/nd;->l:Z

    goto/16 :goto_1b

    :cond_3f
    add-int/lit8 v2, p2, 0x4

    .line 171
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/2addr v1, v10

    const/16 v2, 0x407

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    .line 172
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 173
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v6, v6, [I

    aput v3, v6, v5

    aput v1, v6, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v4, v6, v1, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_40
    move v3, v2

    const/4 v5, 0x0

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 174
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 175
    aget-byte v6, v1, v4

    shr-int/lit8 v2, v6, 0x3

    and-int/2addr v2, v3

    aget-byte v1, v1, v4

    const/4 v4, 0x4

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    invoke-static {v2, v1, v5}, Ll0/c0;->b(III)V

    goto/16 :goto_1b

    :cond_41
    const/4 v2, 0x3

    const/4 v4, 0x4

    add-int/lit8 v6, p2, 0x3

    .line 176
    aget-byte v7, v1, v6

    shr-int/lit8 v2, v7, 0x3

    and-int/2addr v2, v3

    aget-byte v1, v1, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    invoke-static {v2, v1, v5}, Ll0/c0;->a(III)V

    goto/16 :goto_1b

    :cond_42
    move v3, v5

    add-int/lit8 v2, p2, 0x2

    .line 177
    aget-byte v2, v1, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1b

    :pswitch_a
    const/16 v2, 0x78

    new-array v3, v3, [I

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 178
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    const/4 v7, 0x0

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_b
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x77

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 179
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_c
    const/4 v7, 0x0

    const/16 v2, 0x74

    new-array v5, v3, [I

    add-int/lit8 v6, p2, 0x3

    .line 180
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v5, v3, [I

    add-int/lit8 v6, p2, 0x4

    .line 181
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    aput v6, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x5

    .line 182
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_d
    const/4 v7, 0x0

    const/16 v2, 0x73

    new-array v3, v3, [I

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 183
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_e
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x72

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 184
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_f
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x71

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 185
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_10
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x70

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 186
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_11
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x6f

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 187
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_12
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x6e

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 188
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_13
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x6d

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 189
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_14
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x6c

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 190
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_15
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x6b

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 191
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_16
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x6a

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 192
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_17
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x69

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 193
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :pswitch_18
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x68

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 194
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    :pswitch_19
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x67

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 195
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    :pswitch_1a
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x66

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 196
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    :pswitch_1b
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/16 v2, 0x65

    new-array v3, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 197
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    .line 198
    :cond_43
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    .line 199
    iput-byte v7, v0, Lk0/nd;->p:B

    goto :goto_1b

    .line 200
    :cond_44
    iget-boolean v2, v0, Lk0/nd;->l:Z

    if-nez v2, :cond_45

    .line 201
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_4

    const/4 v3, 0x3

    const/4 v5, 0x1

    add-int/lit8 v2, p2, 0x2

    .line 202
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e80

    const/16 v4, 0x1518

    invoke-static {v2, v1, v3, v5, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_1b

    :pswitch_1c
    add-int/lit8 v2, p2, 0x2

    .line 203
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1f00

    const/16 v4, 0x1518

    const/4 v5, 0x1

    invoke-static {v2, v1, v3, v5, v4}, Lk0/qt;->m(IIIZI)V

    :cond_45
    :goto_1b
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nd;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nd;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/nd;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/nd;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/nd;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/nd;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/nd;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/nd;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x79

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz p1, :cond_1a

    if-eq p1, v2, :cond_19

    const/4 v5, 0x6

    const/4 v6, 0x7

    if-eq p1, v1, :cond_18

    const/16 p3, 0x3eb

    const/16 v7, 0xd

    const/16 v8, 0xe

    if-eq p1, p3, :cond_14

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C_CAMERA_MODE ints[0] ==== "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p2, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, p3, v9}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget p1, Lk0/nt;->c:I

    if-eq p1, v8, :cond_d

    if-ne p1, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 p3, 0x10

    if-eq p1, p3, :cond_a

    const/16 p3, 0x11

    if-eq p1, p3, :cond_a

    const/16 p3, 0xa

    if-ne p1, p3, :cond_2

    goto/16 :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 4
    aget p1, p2, v4

    const/16 p3, 0xff

    and-int/2addr p1, p3

    const/16 v0, 0xfe

    if-eq p1, v0, :cond_9

    if-eq p1, p3, :cond_8

    .line 5
    aget p1, p2, v4

    if-nez p1, :cond_3

    new-array p1, v3, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 7
    :cond_3
    aget p1, p2, v4

    if-ne p1, p4, :cond_4

    new-array p1, v3, [I

    .line 8
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 9
    :cond_4
    aget p1, p2, v4

    if-ne p1, v3, :cond_5

    new-array p1, v3, [I

    .line 10
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 11
    :cond_5
    aget p1, p2, v4

    if-ne p1, v5, :cond_6

    new-array p1, v3, [I

    .line 12
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 13
    :cond_6
    aget p1, p2, v4

    if-ne p1, v6, :cond_7

    new-array p1, v3, [I

    .line 14
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_7
    new-array p1, v3, [I

    .line 15
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_8
    new-array p1, p4, [I

    .line 16
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_9
    new-array p1, p4, [I

    .line 17
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 18
    :cond_a
    :goto_0
    aget p1, p2, v4

    if-ne p1, v0, :cond_b

    .line 19
    invoke-virtual {p0, v2}, Lk0/nd;->g3(I)V

    goto/16 :goto_3

    .line 20
    :cond_b
    aget p1, p2, v4

    if-ne p1, v2, :cond_c

    .line 21
    invoke-virtual {p0, v1}, Lk0/nd;->g3(I)V

    goto/16 :goto_3

    .line 22
    :cond_c
    aget p1, p2, v4

    if-ne p1, v1, :cond_1b

    .line 23
    invoke-virtual {p0, v0}, Lk0/nd;->g3(I)V

    goto/16 :goto_3

    .line 24
    :cond_d
    :goto_1
    aget p1, p2, v4

    if-nez p1, :cond_e

    new-array p1, v3, [I

    .line 25
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 26
    :cond_e
    aget p1, p2, v4

    if-ne p1, v2, :cond_f

    new-array p1, v3, [I

    .line 27
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 28
    :cond_f
    aget p1, p2, v4

    if-ne p1, v1, :cond_10

    new-array p1, v3, [I

    .line 29
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 30
    :cond_10
    aget p1, p2, v4

    if-ne p1, v0, :cond_11

    new-array p1, v3, [I

    .line 31
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 32
    :cond_11
    aget p1, p2, v4

    const/16 p3, 0x20

    if-ne p1, p3, :cond_12

    new-array p1, v3, [I

    .line 33
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 34
    :cond_12
    aget p1, p2, v4

    const/16 p2, 0x21

    if-ne p1, p2, :cond_13

    new-array p1, v3, [I

    .line 35
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_13
    new-array p1, v3, [I

    .line 36
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_14
    if-eqz p2, :cond_1b

    .line 37
    array-length p1, p2

    if-lez p1, :cond_1b

    .line 38
    sget p1, Lk0/nt;->c:I

    if-eq p1, v8, :cond_16

    if-ne p1, v7, :cond_15

    goto :goto_2

    :cond_15
    new-array p1, v3, [I

    .line 39
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    const-wide/16 p1, 0x64

    .line 40
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v3, [I

    .line 41
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 42
    :cond_16
    :goto_2
    aget p1, p2, v4

    if-nez p1, :cond_17

    .line 43
    invoke-static {v2}, Lk0/qt;->a(I)V

    new-array p1, v3, [I

    .line 44
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 45
    :cond_17
    aget p1, p2, v4

    if-ne p1, v2, :cond_1b

    .line 46
    invoke-static {v4}, Lk0/qt;->a(I)V

    new-array p1, v3, [I

    .line 47
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 48
    :cond_18
    invoke-virtual {p0, p2, v1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1b

    new-array p1, v6, [I

    aput p3, p1, v4

    const/16 p3, -0x7e

    aput p3, p1, v2

    aput p4, p1, v1

    .line 49
    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, p4

    aget p3, p2, v1

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 50
    :cond_19
    invoke-virtual {p0, p2, v1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 51
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/nd;->g3(I)V

    goto :goto_3

    .line 52
    :cond_1a
    invoke-virtual {p0, p2, v1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1b

    new-array p1, v3, [I

    aput p3, p1, v4

    const/16 p3, 0xa8

    aput p3, p1, v2

    aput v1, p1, v1

    .line 53
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1b
    :goto_3
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x6
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x7d
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x7d
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x4
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x7
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x8
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x3
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x1
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x1
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x2
        0x0
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public final e3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    shl-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p2, v1, 0xff

    const/4 v0, 0x4

    add-int/2addr p2, v0

    .line 6
    new-array p2, p2, [I

    const/16 v4, -0x1d

    .line 7
    aput v4, p2, v3

    const/4 v4, 0x1

    .line 8
    aput p1, p2, v4

    const/4 p1, 0x2

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    .line 9
    aput v4, p2, p1

    const/4 p1, 0x3

    const/16 v4, 0x11

    .line 10
    aput v4, p2, p1

    :goto_1
    if-ge v3, v1, :cond_2

    add-int p1, v0, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3(I)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0xa8

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3(I)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/nd;->u:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, -0x7e

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    aput v3, v2, v0

    const/4 v5, 0x4

    aput p1, v2, v5

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    const/16 p1, 0x62

    new-array v2, v1, [I

    .line 3
    sget v5, Lk0/nd;->u:I

    aput v5, v2, v4

    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    .line 4
    sget p1, Lk0/nd;->u:I

    const/16 v2, 0x3f5

    if-eq p1, v1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, v1, [I

    aput v3, p1, v4

    .line 5
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array p1, v1, [I

    aput v1, p1, v4

    .line 6
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p1, v1, [I

    aput v0, p1, v4

    .line 7
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    .line 8
    :goto_1
    iget-object p1, p0, Lk0/nd;->h:Lo1/g0;

    invoke-virtual {p1, v1, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/nd;->u:I

    if-eq p1, v0, :cond_5

    .line 9
    iget-object p1, p0, Lk0/nd;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method
