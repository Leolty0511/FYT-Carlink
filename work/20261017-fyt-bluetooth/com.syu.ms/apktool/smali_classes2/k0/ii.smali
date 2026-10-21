.class public Lk0/ii;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static F:I = 0x0

.field public static G:I = 0x1

.field public static H:I = 0x1

.field public static I:I = 0x0

.field public static J:I = 0x0

.field public static K:I = 0x0

.field public static L:I = 0x0

.field public static M:I = 0x0

.field public static N:I = 0x0

.field public static O:I = 0x0

.field public static P:I = 0x1


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public final b:I

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

.field public m:Lo1/g0;

.field public n:I

.field public o:I

.field public p:[[I

.field public q:I

.field public r:I

.field public s:[[I

.field public t:Z

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:F

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/ii;->b:I

    const/4 v2, 0x2

    .line 3
    iput v2, v0, Lk0/ii;->c:I

    const/4 v3, 0x3

    .line 4
    iput v3, v0, Lk0/ii;->d:I

    const/4 v4, 0x4

    .line 5
    iput v4, v0, Lk0/ii;->e:I

    const/4 v5, 0x5

    .line 6
    iput v5, v0, Lk0/ii;->f:I

    const/4 v6, 0x6

    .line 7
    iput v6, v0, Lk0/ii;->g:I

    const/4 v7, 0x7

    .line 8
    iput v7, v0, Lk0/ii;->h:I

    const/16 v8, 0x8

    .line 9
    iput v8, v0, Lk0/ii;->i:I

    const/16 v9, 0x9

    .line 10
    iput v9, v0, Lk0/ii;->j:I

    const/16 v10, 0xa

    .line 11
    iput v10, v0, Lk0/ii;->k:I

    const/16 v11, 0xb

    .line 12
    iput v11, v0, Lk0/ii;->l:I

    .line 13
    new-instance v12, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x20

    invoke-direct {v12, v13, v14}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v12, v0, Lk0/ii;->m:Lo1/g0;

    const/4 v12, 0x0

    .line 14
    iput v12, v0, Lk0/ii;->o:I

    const/16 v13, 0x18

    new-array v13, v13, [[I

    new-array v14, v2, [I

    .line 15
    fill-array-data v14, :array_0

    aput-object v14, v13, v12

    new-array v14, v2, [I

    fill-array-data v14, :array_1

    aput-object v14, v13, v1

    new-array v14, v2, [I

    fill-array-data v14, :array_2

    aput-object v14, v13, v2

    new-array v14, v2, [I

    fill-array-data v14, :array_3

    aput-object v14, v13, v3

    new-array v14, v2, [I

    fill-array-data v14, :array_4

    aput-object v14, v13, v4

    new-array v14, v2, [I

    fill-array-data v14, :array_5

    aput-object v14, v13, v5

    new-array v14, v2, [I

    fill-array-data v14, :array_6

    aput-object v14, v13, v6

    new-array v14, v2, [I

    fill-array-data v14, :array_7

    aput-object v14, v13, v7

    new-array v14, v2, [I

    fill-array-data v14, :array_8

    aput-object v14, v13, v8

    new-array v14, v2, [I

    fill-array-data v14, :array_9

    aput-object v14, v13, v9

    new-array v14, v2, [I

    fill-array-data v14, :array_a

    aput-object v14, v13, v10

    new-array v14, v2, [I

    fill-array-data v14, :array_b

    aput-object v14, v13, v11

    new-array v14, v2, [I

    fill-array-data v14, :array_c

    const/16 v15, 0xc

    aput-object v14, v13, v15

    new-array v14, v2, [I

    fill-array-data v14, :array_d

    const/16 v16, 0xd

    aput-object v14, v13, v16

    new-array v14, v2, [I

    fill-array-data v14, :array_e

    const/16 v17, 0xe

    aput-object v14, v13, v17

    new-array v14, v2, [I

    fill-array-data v14, :array_f

    const/16 v18, 0xf

    aput-object v14, v13, v18

    new-array v14, v2, [I

    fill-array-data v14, :array_10

    const/16 v19, 0x10

    aput-object v14, v13, v19

    new-array v14, v2, [I

    fill-array-data v14, :array_11

    const/16 v20, 0x11

    aput-object v14, v13, v20

    new-array v14, v2, [I

    fill-array-data v14, :array_12

    const/16 v21, 0x12

    aput-object v14, v13, v21

    new-array v14, v2, [I

    fill-array-data v14, :array_13

    const/16 v22, 0x13

    aput-object v14, v13, v22

    new-array v14, v2, [I

    fill-array-data v14, :array_14

    const/16 v15, 0x14

    aput-object v14, v13, v15

    new-array v14, v2, [I

    fill-array-data v14, :array_15

    const/16 v23, 0x15

    aput-object v14, v13, v23

    new-array v14, v2, [I

    fill-array-data v14, :array_16

    const/16 v23, 0x16

    aput-object v14, v13, v23

    new-array v14, v2, [I

    fill-array-data v14, :array_17

    const/16 v23, 0x17

    aput-object v14, v13, v23

    iput-object v13, v0, Lk0/ii;->p:[[I

    .line 16
    iput v12, v0, Lk0/ii;->r:I

    new-array v13, v15, [[I

    new-array v14, v2, [I

    .line 17
    fill-array-data v14, :array_18

    aput-object v14, v13, v12

    new-array v14, v2, [I

    fill-array-data v14, :array_19

    aput-object v14, v13, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1a

    aput-object v1, v13, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_1b

    aput-object v1, v13, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1c

    aput-object v1, v13, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1d

    aput-object v1, v13, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v13, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_1f

    aput-object v1, v13, v7

    new-array v1, v2, [I

    fill-array-data v1, :array_20

    aput-object v1, v13, v8

    new-array v1, v2, [I

    fill-array-data v1, :array_21

    aput-object v1, v13, v9

    new-array v1, v2, [I

    fill-array-data v1, :array_22

    aput-object v1, v13, v10

    new-array v1, v2, [I

    fill-array-data v1, :array_23

    aput-object v1, v13, v11

    new-array v1, v2, [I

    fill-array-data v1, :array_24

    const/16 v3, 0xc

    aput-object v1, v13, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_25

    aput-object v1, v13, v16

    new-array v1, v2, [I

    fill-array-data v1, :array_26

    aput-object v1, v13, v17

    new-array v1, v2, [I

    fill-array-data v1, :array_27

    aput-object v1, v13, v18

    new-array v1, v2, [I

    fill-array-data v1, :array_28

    aput-object v1, v13, v19

    new-array v1, v2, [I

    fill-array-data v1, :array_29

    aput-object v1, v13, v20

    new-array v1, v2, [I

    fill-array-data v1, :array_2a

    aput-object v1, v13, v21

    new-array v1, v2, [I

    fill-array-data v1, :array_2b

    aput-object v1, v13, v22

    iput-object v13, v0, Lk0/ii;->s:[[I

    .line 18
    iput-boolean v12, v0, Lk0/ii;->t:Z

    .line 19
    new-instance v1, Lk0/ii$a;

    invoke-direct {v1, v0}, Lk0/ii$a;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->u:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lk0/ii$b;

    invoke-direct {v1, v0}, Lk0/ii$b;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->v:Ljava/lang/Runnable;

    .line 21
    new-instance v1, Lk0/ii$c;

    invoke-direct {v1, v0}, Lk0/ii$c;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->w:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Lk0/ii$d;

    invoke-direct {v1, v0}, Lk0/ii$d;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->x:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lk0/ii;->y:F

    const/16 v1, 0xff

    .line 24
    iput v1, v0, Lk0/ii;->z:I

    .line 25
    iput v1, v0, Lk0/ii;->A:I

    .line 26
    new-instance v1, Lk0/ii$e;

    invoke-direct {v1, v0}, Lk0/ii$e;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->B:Ljava/lang/Runnable;

    .line 27
    new-instance v1, Lk0/ii$f;

    invoke-direct {v1, v0}, Lk0/ii$f;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->C:Ljava/lang/Runnable;

    .line 28
    new-instance v1, Lk0/ii$g;

    invoke-direct {v1, v0}, Lk0/ii$g;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v1, Lk0/ii$h;

    invoke-direct {v1, v0}, Lk0/ii$h;-><init>(Lk0/ii;)V

    iput-object v1, v0, Lk0/ii;->E:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x80
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x84
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x85
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x87
        0x36
    .end array-data

    :array_11
    .array-data 4
        0x88
        0x37
    .end array-data

    :array_12
    .array-data 4
        0x89
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x8a
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x8b
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x8c
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x8d
        0x3f
    .end array-data

    :array_17
    .array-data 4
        0x8e
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_1e
    .array-data 4
        0x7
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_20
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_21
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_22
    .array-data 4
        0xb
        0x18
    .end array-data

    :array_23
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_24
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_25
    .array-data 4
        0xe
        0x36
    .end array-data

    :array_26
    .array-data 4
        0xf
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x10
        0x9
    .end array-data

    :array_28
    .array-data 4
        0x11
        0x3f
    .end array-data

    :array_29
    .array-data 4
        0x12
        0x6
    .end array-data

    :array_2a
    .array-data 4
        0x13
        0x19
    .end array-data

    :array_2b
    .array-data 4
        0x14
        -0x1
    .end array-data
.end method

.method public static synthetic a3(Lk0/ii;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ii;->h3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b3(Lk0/ii;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/ii;->y:F

    return p0
.end method

.method public static synthetic c3(Lk0/ii;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/ii;->y:F

    return p1
.end method

.method public static synthetic d3(Lk0/ii;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ii;->A:I

    return p0
.end method

.method public static synthetic e3(Lk0/ii;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ii;->A:I

    return p1
.end method

.method public static synthetic f3(Lk0/ii;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ii;->z:I

    return p0
.end method

.method public static synthetic g3(Lk0/ii;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ii;->z:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 14

    if-eqz p1, :cond_1a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x29

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_16

    const/16 v3, 0x37

    const/16 v6, 0x45

    const/16 v7, 0x7d

    const/16 v8, -0x12

    const/16 v9, 0xe3

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x6

    if-eq v2, v3, :cond_15

    const/16 v3, 0x38

    if-eq v2, v3, :cond_14

    const/16 v0, 0x44

    if-eq v2, v0, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    new-array p1, v13, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v13, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget v0, p1, v5

    if-ne v0, v5, :cond_2

    new-array p1, v13, [I

    .line 7
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    aget p1, p1, v5

    if-nez p1, :cond_1a

    new-array p1, v13, [I

    .line 9
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_3

    new-array p1, v13, [I

    .line 11
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v13, [I

    .line 12
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    aget p1, p1, v5

    if-eqz p1, :cond_4

    new-array p1, v13, [I

    .line 14
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array p1, v13, [I

    .line 15
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :pswitch_4
    aget p1, p1, v5

    if-eqz p1, :cond_5

    new-array p1, v13, [I

    .line 17
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array p1, v13, [I

    .line 18
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :pswitch_5
    aget p1, p1, v5

    if-eqz p1, :cond_6

    new-array p1, v13, [I

    .line 20
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_6
    new-array p1, v13, [I

    .line 21
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v5

    if-eqz p1, :cond_7

    new-array p1, v13, [I

    .line 23
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array p1, v13, [I

    .line 24
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 25
    :cond_8
    aget v0, p1, v5

    if-ne v0, v5, :cond_9

    new-array p1, v4, [I

    .line 26
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_9
    aget v0, p1, v5

    if-ne v0, v1, :cond_a

    new-array p1, v4, [I

    .line 28
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_a
    aget v0, p1, v5

    if-ne v0, v11, :cond_b

    new-array p1, v4, [I

    .line 30
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :cond_b
    aget v0, p1, v5

    if-ne v0, v12, :cond_c

    new-array p1, v4, [I

    .line 32
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 33
    :cond_c
    aget v0, p1, v5

    if-ne v0, v10, :cond_d

    new-array p1, v4, [I

    .line 34
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_d
    aget v0, p1, v5

    if-ne v0, v13, :cond_e

    new-array p1, v4, [I

    .line 36
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_e
    aget v0, p1, v5

    if-ne v0, v4, :cond_f

    new-array p1, v4, [I

    .line 38
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 39
    :cond_f
    aget v0, p1, v5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    new-array p1, v4, [I

    .line 40
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_10
    aget v0, p1, v5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    new-array p1, v13, [I

    .line 42
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_11
    aget v0, p1, v5

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    new-array p1, v13, [I

    .line 44
    fill-array-data p1, :array_17

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_12
    aget v0, p1, v5

    const/16 v1, 0xb

    if-ne v0, v1, :cond_13

    new-array p1, v4, [I

    .line 46
    fill-array-data p1, :array_18

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 47
    :cond_13
    aget p1, p1, v5

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1a

    new-array p1, v4, [I

    .line 48
    fill-array-data p1, :array_19

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_14
    new-array v2, v4, [I

    aput v9, v2, v0

    aput v8, v2, v5

    aput v12, v2, v1

    aput v7, v2, v11

    aput v6, v2, v12

    aput v5, v2, v10

    .line 49
    aget p1, p1, v5

    aput p1, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_15
    new-array v2, v4, [I

    aput v9, v2, v0

    aput v8, v2, v5

    aput v12, v2, v1

    aput v7, v2, v11

    aput v6, v2, v12

    aput v0, v2, v10

    .line 50
    aget p1, p1, v5

    aput p1, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    .line 51
    :cond_16
    aget p1, p1, v5

    if-eqz p1, :cond_17

    new-array p1, v4, [I

    .line 52
    fill-array-data p1, :array_1a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_17
    new-array p1, v4, [I

    .line 53
    fill-array-data p1, :array_1b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 54
    :cond_18
    aget p1, p1, v5

    if-eqz p1, :cond_19

    new-array p1, v4, [I

    .line 55
    fill-array-data p1, :array_1c

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_19
    new-array p1, v4, [I

    .line 56
    fill-array-data p1, :array_1d

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1a
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
        -0x12
        0x3
        0x7d
        0x44
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x44
        0x81
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x42
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x42
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x48
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x48
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x47
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x47
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x4b
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x4b
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x41
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x41
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x40
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x40
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x1
        0x0
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x1
        0x80
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x1
        0x81
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x0
        0x80
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x0
        0x81
    .end array-data
.end method

.method public S2()V
    .locals 13

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0xae01b7    # 1.5979992E-38f

    const v2, 0xad01b7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x2801b7

    if-eq v0, v6, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 3
    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {v0, v5, v4}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ii;->m3(I)V

    .line 4
    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ii;->l3(I)V

    .line 5
    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {v0, v3, v5}, Lo1/g0;->b(II)I

    move-result v0

    iget-object v6, p0, Lk0/ii;->m:Lo1/g0;

    const/4 v7, 0x4

    .line 6
    invoke-virtual {v6, v7, v4}, Lo1/g0;->b(II)I

    move-result v6

    iget-object v7, p0, Lk0/ii;->m:Lo1/g0;

    const/4 v8, 0x6

    .line 7
    invoke-virtual {v7, v8, v4}, Lo1/g0;->b(II)I

    move-result v7

    iget-object v8, p0, Lk0/ii;->m:Lo1/g0;

    const/16 v9, 0x8

    .line 8
    invoke-virtual {v8, v9, v4}, Lo1/g0;->b(II)I

    move-result v8

    .line 9
    invoke-virtual {p0, v0, v6, v7, v8}, Lk0/ii;->k3(IIII)V

    .line 10
    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Lo1/g0;->b(II)I

    move-result v8

    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    const/4 v6, 0x5

    .line 11
    invoke-virtual {v0, v6, v4}, Lo1/g0;->b(II)I

    move-result v9

    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    const/4 v6, 0x7

    .line 12
    invoke-virtual {v0, v6, v4}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    const/16 v6, 0x9

    .line 13
    invoke-virtual {v0, v6, v4}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v0, p0, Lk0/ii;->m:Lo1/g0;

    const/16 v6, 0xa

    .line 14
    invoke-virtual {v0, v6, v4}, Lo1/g0;->b(II)I

    move-result v12

    move-object v7, p0

    .line 15
    invoke-virtual/range {v7 .. v12}, Lk0/ii;->j3(IIIII)V

    .line 16
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v6, "com.syu.canbus"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v5, v0, Lk0/mt;->e:I

    .line 18
    iput v5, v0, Lk0/mt;->f:I

    .line 19
    iput v5, v0, Lk0/mt;->g:I

    .line 20
    iput v4, v0, Lk0/mt;->o:I

    .line 21
    iput v4, v0, Lk0/mt;->i:I

    .line 22
    sget v4, Lk0/nt;->a:I

    const v6, 0x2101c7

    if-ne v4, v6, :cond_2

    const/4 v4, 0x0

    .line 23
    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 24
    :cond_2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v4, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    iget-object v0, p0, Lk0/ii;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 26
    sget v0, Lk0/nt;->a:I

    const v4, 0x5d01c5

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x5c01c5

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_6

    .line 27
    :cond_4
    iget-object v0, p0, Lk0/ii;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 28
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ii;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ii;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Lh0/d;->l:Lo1/y;

    iget-object v1, p0, Lk0/ii;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/ii;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/ii;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 33
    :cond_5
    :goto_0
    iget-object v0, p0, Lk0/ii;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 34
    :cond_6
    :goto_1
    sget v0, Lk0/nt;->a:I

    if-ne v0, v4, :cond_7

    .line 35
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->h:I

    .line 36
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/ii;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 37
    :cond_7
    sget v0, Lk0/nt;->a:I

    const v1, 0x8001c7

    if-eq v0, v1, :cond_8

    const v1, 0x7f01b7

    if-eq v0, v1, :cond_8

    const v1, 0x8001b7

    if-ne v0, v1, :cond_9

    .line 38
    :cond_8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v5, v0, Lk0/mt;->i:I

    .line 39
    :cond_9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v5, :cond_3c

    const/16 v10, 0x11

    const/16 v11, 0xd

    const/16 v13, 0xa

    const/4 v15, 0x5

    const/4 v3, 0x4

    if-eq v2, v10, :cond_25

    const/16 v10, 0x28

    if-eq v2, v10, :cond_21

    const/16 v10, 0x30

    if-eq v2, v10, :cond_20

    const/16 v10, 0x40

    const/4 v12, 0x6

    if-eq v2, v10, :cond_1f

    const/16 v10, 0x60

    if-eq v2, v10, :cond_1e

    const/16 v10, 0x64

    const/16 v14, 0x9

    if-eq v2, v10, :cond_1d

    packed-switch v2, :pswitch_data_0

    const v10, 0xff00

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_10

    .line 2
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3
    :pswitch_1
    sget v2, Lk0/nt;->a:I

    const v4, 0x2101c7

    if-ne v2, v4, :cond_47

    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v4, v1, v8}, Ll0/c0;->N1(III)V

    goto/16 :goto_10

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v9, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v12, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v13, :cond_0

    goto/16 :goto_10

    :cond_0
    const/16 v2, 0x408

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 6
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 7
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 8
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 9
    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    .line 10
    iput-boolean v9, v0, Lk0/ii;->t:Z

    goto/16 :goto_10

    .line 11
    :cond_2
    sget v2, Lk0/nt;->a:I

    const v3, 0x2101c7

    if-ne v2, v3, :cond_47

    .line 12
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, p2, 0x3

    .line 13
    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    if-ne v1, v9, :cond_3

    .line 14
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2, v9}, Lu0/i;->g4(IZ)V

    goto/16 :goto_10

    .line 15
    :cond_3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2, v8}, Lu0/i;->g4(IZ)V

    goto/16 :goto_10

    :cond_4
    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    if-ne v1, v9, :cond_5

    .line 17
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_10

    .line 18
    :cond_5
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_10

    :cond_6
    add-int/lit8 v2, p2, 0x4

    .line 19
    aget-byte v2, v1, v2

    shl-int/2addr v2, v4

    and-int/2addr v2, v10

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 21
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v5, [I

    aput v9, v4, v8

    aput v1, v4, v9

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_10

    .line 22
    :cond_7
    sget v2, Lk0/nt;->a:I

    const v4, 0x2101c7

    if-eq v2, v4, :cond_47

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 23
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v2, p2, 0x3

    .line 24
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v4, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_10

    :cond_8
    add-int/lit8 v2, p2, 0x3

    .line 25
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v4, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_10

    :pswitch_3
    const/16 v2, 0x74

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 26
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    const v6, 0xffffff

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 27
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 32
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xc

    .line 33
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xd

    .line 34
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_4
    const/16 v2, 0x72

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 35
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 36
    aget-byte v6, v1, v6

    shl-int/lit8 v4, v6, 0x8

    and-int/2addr v4, v10

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    const v3, 0xffff

    and-int/2addr v1, v3

    aput v1, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_5
    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 37
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 38
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_6
    const/16 v2, 0xa4

    new-array v4, v9, [I

    add-int/lit8 v10, p2, 0x2

    .line 39
    aget-byte v11, v1, v10

    shr-int/2addr v11, v3

    and-int/2addr v11, v6

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v4, v9, [I

    .line 40
    aget-byte v11, v1, v10

    shr-int/2addr v11, v8

    and-int/lit8 v11, v11, 0xf

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 41
    aget-byte v2, v1, v10

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    if-eq v2, v9, :cond_a

    if-eq v2, v5, :cond_9

    const/16 v2, 0x3f5

    new-array v3, v9, [I

    aput v5, v3, v8

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_9
    const/16 v2, 0x3f5

    new-array v3, v9, [I

    aput v8, v3, v8

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_a
    const/16 v2, 0x3f5

    new-array v3, v9, [I

    aput v9, v3, v8

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 45
    :goto_0
    aget-byte v1, v1, v10

    and-int/2addr v1, v7

    shr-int/2addr v1, v12

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_b

    .line 46
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_10

    :cond_b
    if-nez v1, :cond_47

    .line 47
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_10

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    .line 49
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_10

    :pswitch_8
    const/16 v2, 0x9b

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_9
    const/16 v2, 0x9a

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_a
    const/16 v2, 0x99

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_b
    const/16 v2, 0x98

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_c
    const/16 v2, 0x97

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_d
    const/16 v2, 0x96

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_e
    const/16 v2, 0x95

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_f
    const/16 v2, 0x94

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 57
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_10
    const/16 v2, 0x8f

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 58
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_11
    const/16 v2, 0x8e

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_12
    const/16 v2, 0x8d

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_13
    const/16 v2, 0x8c

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_14
    const/16 v2, 0x8b

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_15
    const/16 v2, 0x8a

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_16
    const/16 v2, 0x89

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_17
    const/16 v2, 0x88

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_18
    const/16 v2, 0x6f

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_19
    const/16 v2, 0x6e

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 68
    :pswitch_1a
    sget v2, Lk0/nt;->a:I

    const v3, 0x5c01c5

    if-eq v2, v3, :cond_d

    const v3, 0x5d01c5

    if-eq v2, v3, :cond_d

    const v3, 0x8101c7

    if-ne v2, v3, :cond_c

    goto :goto_1

    :cond_c
    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 69
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 70
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 72
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_d
    :goto_1
    add-int/lit8 v2, p2, 0x1

    .line 73
    aget-byte v2, v1, v2

    if-lt v2, v4, :cond_47

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 74
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 75
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 76
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 77
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_1b
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_e

    const/16 v3, 0x66

    new-array v4, v9, [I

    .line 79
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_f

    const/16 v3, 0x67

    new-array v4, v9, [I

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_f
    add-int/lit8 v2, p2, 0x4

    .line 82
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_10

    const/16 v3, 0x68

    new-array v4, v9, [I

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_10
    add-int/lit8 v2, p2, 0x5

    .line 84
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_11

    const/16 v3, 0x69

    new-array v4, v9, [I

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_11
    add-int/lit8 v2, p2, 0x6

    .line 86
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_12

    const/16 v3, 0x62

    new-array v4, v9, [I

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_12
    add-int/lit8 v2, p2, 0x7

    .line 88
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_13

    const/16 v3, 0x63

    new-array v4, v9, [I

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_13
    add-int/lit8 v2, p2, 0x8

    .line 90
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_14

    const/16 v3, 0x64

    new-array v4, v9, [I

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_14
    add-int/lit8 v2, p2, 0x9

    .line 92
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_47

    const/16 v3, 0x65

    new-array v4, v9, [I

    .line 93
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_1c
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 95
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 96
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 97
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    :pswitch_1d
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 100
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 101
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_10

    :pswitch_1e
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 103
    aget-byte v1, v1, v4

    and-int/2addr v2, v7

    .line 104
    iput v2, v0, Lk0/ii;->o:I

    move v2, v8

    .line 105
    :goto_2
    iget-object v4, v0, Lk0/ii;->p:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_16

    .line 106
    iget v5, v0, Lk0/ii;->o:I

    aget-object v10, v4, v2

    aget v10, v10, v8

    if-ne v5, v10, :cond_15

    if-eqz v5, :cond_16

    .line 107
    iput v2, v0, Lk0/ii;->n:I

    goto :goto_3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    :cond_16
    :goto_3
    iget v5, v0, Lk0/ii;->o:I

    if-eq v5, v14, :cond_1b

    if-eq v5, v13, :cond_19

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_17

    .line 109
    array-length v1, v4

    if-ge v2, v1, :cond_47

    .line 110
    aget-object v1, v4, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_17
    if-nez v1, :cond_47

    .line 111
    iget v1, v0, Lk0/ii;->n:I

    array-length v2, v4

    if-ge v1, v2, :cond_18

    if-eq v1, v7, :cond_18

    .line 112
    aget-object v1, v4, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 113
    :cond_18
    iput v7, v0, Lk0/ii;->n:I

    goto/16 :goto_10

    :cond_19
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_47

    .line 114
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_1a

    if-eq v1, v3, :cond_1a

    if-eq v1, v15, :cond_1a

    const/16 v1, 0xc

    .line 115
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 116
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1a
    const/16 v1, 0x1a

    .line 117
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 118
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1b
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_47

    .line 119
    sget v1, Lh0/c;->E:I

    if-eq v1, v3, :cond_1c

    .line 120
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    .line 121
    invoke-static {v11, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1c
    const/16 v1, 0x12

    .line 122
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 123
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1d
    const/16 v2, 0xac

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 124
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 126
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 127
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 128
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 129
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 130
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 131
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_1e
    const/16 v2, 0x9c

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 132
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v9

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v9, [I

    .line 133
    aget-byte v5, v1, v5

    shr-int/2addr v5, v3

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 134
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 135
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 136
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v2, v8

    const/16 v4, 0xa0

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 137
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 138
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x8

    .line 139
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 140
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xa

    .line 141
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xb

    .line 142
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v4, v9, [I

    const/16 v5, 0xc

    add-int/lit8 v5, p2, 0xc

    .line 143
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v9, [I

    .line 144
    aget-byte v1, v1, v5

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_1f
    const/16 v2, 0x90

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 145
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 146
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v9, [I

    .line 147
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v9, [I

    .line 148
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 149
    :cond_20
    iget-boolean v2, v0, Lk0/ii;->t:Z

    if-nez v2, :cond_47

    add-int/lit8 v2, p2, 0x3

    .line 150
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x2ee0

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_10

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 151
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    const-string v4, "persist.syu.reversefrontdoor"

    .line 152
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_22

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 153
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 154
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_22
    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 155
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 156
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 157
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 158
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 159
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    aput v2, v3, v8

    .line 160
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    .line 161
    sget v2, Lk0/nt;->a:I

    const v3, 0x5c01c5

    if-eq v2, v3, :cond_23

    const v3, 0x5d01c5

    if-ne v2, v3, :cond_47

    :cond_23
    add-int/lit8 v2, p2, 0x3

    .line 162
    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_24

    .line 163
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto/16 :goto_10

    .line 164
    :cond_24
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto/16 :goto_10

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 165
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v4, p2, 0x3

    .line 166
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    add-int/lit8 v10, p2, 0x4

    .line 167
    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    add-int/lit8 v12, p2, 0x5

    .line 168
    aget-byte v14, v1, v12

    and-int/2addr v14, v7

    add-int/lit8 v16, p2, 0x6

    .line 169
    aget-byte v13, v1, v16

    and-int/2addr v13, v7

    const/16 v7, 0x35

    new-array v15, v9, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v8

    .line 170
    invoke-static {v7, v15}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb

    new-array v15, v9, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v8

    .line 171
    invoke-static {v7, v15}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v6

    aput v15, v7, v8

    const/16 v15, 0xc

    .line 172
    invoke-static {v15, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v9

    aput v15, v7, v8

    .line 173
    invoke-static {v11, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v11, v9, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v9

    aput v15, v11, v8

    .line 174
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x10

    new-array v11, v9, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v9

    aput v2, v11, v8

    .line 175
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v4, 0xf

    if-eq v2, v9, :cond_2a

    if-eq v2, v5, :cond_29

    if-eq v2, v6, :cond_28

    if-eq v2, v3, :cond_27

    const/4 v4, 0x5

    if-eq v2, v4, :cond_26

    move v4, v8

    move v5, v4

    move v6, v5

    goto :goto_5

    :cond_26
    move v4, v8

    move v5, v4

    move v6, v9

    goto :goto_5

    :cond_27
    move v5, v8

    move v4, v9

    move v6, v4

    goto :goto_5

    :cond_28
    move v5, v8

    move v6, v5

    move v4, v9

    goto :goto_5

    :cond_29
    move v6, v8

    move v4, v9

    move v5, v4

    goto :goto_5

    :cond_2a
    move v4, v8

    move v6, v4

    move v5, v9

    :goto_5
    const/16 v7, 0x14

    new-array v11, v9, [I

    aput v4, v11, v8

    .line 176
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v7, v9, [I

    aput v5, v7, v8

    .line 177
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x12

    new-array v5, v9, [I

    aput v6, v5, v8

    .line 178
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4d

    new-array v5, v9, [I

    aput v2, v5, v8

    .line 179
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v9, [I

    and-int/lit8 v5, v10, 0xf

    aput v5, v4, v8

    .line 180
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 181
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 182
    aget-byte v2, v1, v16

    const/16 v4, 0xff

    and-int/lit16 v14, v2, 0xff

    .line 183
    aget-byte v2, v1, v12

    and-int/lit16 v13, v2, 0xff

    .line 184
    :cond_2b
    sget v2, Lk0/nt;->a:I

    const v4, 0xa601c4

    const/4 v5, -0x2

    const/16 v6, 0x1e

    const/16 v7, 0x1c

    const/16 v10, 0x1b

    if-eq v2, v4, :cond_33

    const v4, 0xa701c4

    if-ne v2, v4, :cond_2c

    goto :goto_7

    :cond_2c
    if-eqz v14, :cond_2f

    if-eq v14, v6, :cond_2e

    if-lez v14, :cond_2d

    if-ge v14, v6, :cond_2d

    new-array v2, v9, [I

    const/16 v4, 0xff

    and-int/lit16 v11, v14, 0xff

    aput v11, v2, v8

    .line 185
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2d
    new-array v2, v9, [I

    const/4 v4, -0x1

    aput v4, v2, v8

    .line 186
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2e
    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 187
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2f
    new-array v2, v9, [I

    aput v5, v2, v8

    .line 188
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    if-eqz v13, :cond_32

    if-eq v13, v6, :cond_31

    if-lez v13, :cond_30

    if-ge v13, v6, :cond_30

    new-array v2, v9, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v13, 0xff

    aput v5, v2, v8

    .line 189
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_30
    new-array v2, v9, [I

    const/4 v4, -0x1

    aput v4, v2, v8

    .line 190
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_31
    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 191
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_32
    new-array v2, v9, [I

    aput v5, v2, v8

    .line 192
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_33
    :goto_7
    const/16 v2, 0x80

    if-eq v14, v2, :cond_36

    const/16 v4, 0xa0

    if-eq v14, v4, :cond_35

    if-le v14, v2, :cond_34

    if-ge v14, v4, :cond_34

    new-array v4, v9, [I

    const/16 v11, 0xff

    and-int/lit16 v12, v14, 0xff

    aput v12, v4, v8

    .line 193
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_34
    new-array v4, v9, [I

    const/4 v11, -0x1

    aput v11, v4, v8

    .line 194
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_35
    new-array v4, v9, [I

    const/4 v11, -0x3

    aput v11, v4, v8

    .line 195
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_36
    new-array v4, v9, [I

    aput v5, v4, v8

    .line 196
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    :goto_8
    if-eq v13, v2, :cond_39

    const/16 v4, 0xa0

    if-eq v13, v4, :cond_38

    if-le v13, v2, :cond_37

    if-ge v13, v4, :cond_37

    new-array v2, v9, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v13, 0xff

    aput v5, v2, v8

    .line 197
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_37
    new-array v2, v9, [I

    const/4 v4, -0x1

    aput v4, v2, v8

    .line 198
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_38
    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 199
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_39
    new-array v2, v9, [I

    aput v5, v2, v8

    .line 200
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v2, 0x1d

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x8

    .line 201
    aget-byte v7, v1, v5

    shr-int/lit8 v3, v7, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 202
    aget-byte v3, v1, v5

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v8

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 203
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3b

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_3a

    goto :goto_a

    :cond_3a
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 204
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_10

    .line 205
    :cond_3b
    :goto_a
    invoke-static {v8}, Lu0/d;->B3(I)V

    goto/16 :goto_10

    :cond_3c
    add-int/lit8 v2, p2, 0x2

    .line 206
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 207
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 208
    iput v2, v0, Lk0/ii;->r:I

    move v2, v8

    .line 209
    :goto_b
    iget-object v3, v0, Lk0/ii;->s:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_3e

    .line 210
    iget v7, v0, Lk0/ii;->r:I

    aget-object v10, v3, v2

    aget v10, v10, v8

    if-ne v7, v10, :cond_3d

    if-eqz v7, :cond_3e

    .line 211
    iput v2, v0, Lk0/ii;->q:I

    goto :goto_c

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 212
    :cond_3e
    :goto_c
    iget v7, v0, Lk0/ii;->r:I

    if-eq v7, v5, :cond_45

    if-eq v7, v6, :cond_43

    const/16 v4, 0x14

    if-eq v7, v4, :cond_42

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v9, :cond_3f

    .line 213
    array-length v1, v3

    if-ge v2, v1, :cond_47

    .line 214
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_3f
    if-nez v1, :cond_47

    .line 215
    iget v1, v0, Lk0/ii;->q:I

    array-length v2, v3

    if-ge v1, v2, :cond_40

    const/16 v2, 0xff

    if-eq v1, v2, :cond_41

    .line 216
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_40
    const/16 v2, 0xff

    .line 217
    :cond_41
    :goto_d
    iput v2, v0, Lk0/ii;->q:I

    goto :goto_10

    :cond_42
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_47

    const-string v1, "com.syu.carlink"

    .line 218
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "com.syu.carlink"

    .line 219
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_10

    :cond_43
    const/16 v2, 0xff

    move v3, v8

    :goto_e
    and-int/lit16 v5, v1, 0xff

    if-ge v3, v5, :cond_44

    .line 220
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 221
    :cond_44
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_45
    const/16 v2, 0xff

    move v3, v8

    :goto_f
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_46

    const/4 v4, 0x7

    .line 222
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_46
    const/4 v4, 0x7

    .line 223
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    :cond_47
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1b
        :pswitch_1a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
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
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ii;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ii;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ii;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/ii;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->e:Lo1/y;

    iget-object v1, p0, Lk0/ii;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ii;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/ii;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/ii;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb5

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

    const/16 p3, 0x63

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_4

    const/16 p3, 0x3eb

    const/4 v1, 0x4

    if-eq p1, p3, :cond_2

    const/16 p3, 0xa

    const/16 v2, 0x9

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/16 v7, 0xe3

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v5, [I

    aput v7, p1, v0

    const/16 p3, 0xee

    aput p3, p1, p4

    aput v1, p1, v10

    .line 2
    aget p3, p2, v0

    aput p3, p1, v9

    aget p3, p2, p4

    aput p3, p1, v1

    aget p3, p2, v10

    aput p3, p1, v8

    aget p2, p2, v9

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_5

    .line 3
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v3, [I

    aput v7, p1, v0

    const/16 v3, 0x87

    aput v3, p1, p4

    aput v4, p1, v10

    .line 4
    aget v0, p2, v0

    aput v0, p1, v9

    aget p4, p2, p4

    aput p4, p1, v1

    aget p4, p2, v10

    aput p4, p1, v8

    aget p4, p2, v9

    aput p4, p1, v6

    aget p4, p2, v1

    aput p4, p1, v5

    aget p4, p2, v8

    aput p4, p1, v4

    aget p4, p2, v6

    aput p4, p1, v2

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p2, :cond_5

    .line 5
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v6, [I

    aput v7, p1, v0

    const/16 p3, 0x8a

    aput p3, p1, p4

    aput v9, p1, v10

    .line 6
    aget p3, p2, v0

    aput p3, p1, v9

    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v10

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_5

    .line 7
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v1, [I

    aput v7, p1, v0

    const/16 p3, 0x84

    aput p3, p1, p4

    aput p4, p1, v10

    .line 8
    aget p2, p2, v0

    aput p2, p1, v9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_5

    .line 9
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0xe

    new-array p1, p1, [I

    aput v7, p1, v0

    const/16 v7, 0xa2

    aput v7, p1, p4

    aput v3, p1, v10

    .line 10
    aget v0, p2, v0

    aput v0, p1, v9

    aget p4, p2, p4

    aput p4, p1, v1

    aget p4, p2, v10

    aput p4, p1, v8

    aget p4, p2, v9

    aput p4, p1, v6

    aget p4, p2, v1

    aput p4, p1, v5

    aget p4, p2, v8

    aput p4, p1, v4

    aget p4, p2, v6

    aput p4, p1, v2

    aget p4, p2, v5

    aput p4, p1, p3

    aget p4, p2, v4

    aput p4, p1, v3

    const/16 p4, 0xc

    aget v0, p2, v2

    aput v0, p1, p4

    const/16 p4, 0xd

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz p2, :cond_5

    .line 11
    array-length p1, p2

    if-lez p1, :cond_5

    .line 12
    aget p1, p2, v0

    if-ne p1, p4, :cond_0

    .line 13
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/ii;->l3(I)V

    .line 14
    aget p1, p2, p4

    aget p3, p2, v10

    aget p4, p2, v9

    aget p2, p2, v1

    invoke-virtual {p0, p1, p3, p4, p2}, Lk0/ii;->k3(IIII)V

    goto/16 :goto_0

    .line 15
    :cond_0
    aget p1, p2, v0

    if-ne p1, v10, :cond_5

    .line 16
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/ii;->l3(I)V

    .line 17
    aget v3, p2, p4

    aget v4, p2, v10

    aget v5, p2, v9

    aget v6, p2, v1

    aget v7, p2, v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lk0/ii;->j3(IIIII)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz p2, :cond_5

    .line 18
    array-length p1, p2

    if-lez p1, :cond_5

    .line 19
    sget p1, Lk0/nt;->a:I

    const p3, 0xa601c4

    if-eq p1, p3, :cond_1

    const p3, 0xa701c4

    if-eq p1, p3, :cond_1

    .line 20
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/ii;->m3(I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v7, p1, v0

    const/16 p3, 0x85

    aput p3, p1, p4

    aput p4, p1, v10

    .line 21
    aget p2, p2, v0

    aput p2, p1, v9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_5

    .line 22
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v8, [I

    aput v7, p1, v0

    const/16 p3, 0x83

    aput p3, p1, p4

    aput v10, p1, v10

    .line 23
    aget p3, p2, v0

    aput p3, p1, v9

    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 24
    array-length p1, p2

    if-lez p1, :cond_5

    .line 25
    sget p1, Lu0/b;->o:I

    if-ne p1, p4, :cond_3

    new-array p1, v1, [I

    .line 26
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    .line 27
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 28
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0xa7

    new-array p3, p4, [I

    .line 29
    aget p2, p2, v0

    aput p2, p3, v0

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        -0x7c
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x1
        0xa
    .end array-data
.end method

.method public final h3(BLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    const/16 v1, 0xe3

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_4

    if-nez p2, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2
    array-length p2, p1

    const/16 v5, 0x3e

    if-le p2, v5, :cond_1

    goto :goto_0

    :cond_1
    array-length v5, p1

    :goto_0
    add-int/lit8 p2, v5, 0x5

    .line 3
    new-array v6, p2, [I

    move v7, v4

    :goto_1
    if-ge v7, p2, :cond_2

    .line 4
    aput v4, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5
    :cond_2
    aput v1, v6, v4

    const/16 p2, 0x78

    .line 6
    aput p2, v6, v3

    add-int/lit8 p2, v5, 0x1

    .line 7
    aput p2, v6, v0

    .line 8
    aput v2, v6, v2

    :goto_2
    if-ge v4, v5, :cond_3

    add-int/lit8 p2, v4, 0x4

    .line 9
    aget-byte v0, p1, v4

    aput v0, v6, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 10
    :cond_3
    invoke-static {v6}, Lz/k;->s([I)V

    goto :goto_6

    :cond_4
    if-nez p2, :cond_5

    const-string p2, "Unkown"

    .line 11
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 12
    array-length p2, p1

    const/16 v2, 0x3f

    if-le p2, v2, :cond_6

    goto :goto_3

    :cond_6
    array-length v2, p1

    :goto_3
    add-int/lit8 p2, v2, 0x4

    .line 13
    new-array v5, p2, [I

    move v6, v4

    :goto_4
    if-ge v6, p2, :cond_7

    .line 14
    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 15
    :cond_7
    aput v1, v5, v4

    const/16 p2, 0x76

    .line 16
    aput p2, v5, v3

    add-int/lit8 p2, v2, 0x1

    .line 17
    aput p2, v5, v0

    :goto_5
    if-ge v4, v2, :cond_8

    add-int/lit8 p2, v4, 0x3

    .line 18
    aget-byte v0, p1, v4

    aput v0, v5, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 19
    :cond_8
    invoke-static {v5}, Lz/k;->s([I)V

    :goto_6
    return-void
.end method

.method public final i3()V
    .locals 6

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget v1, v0, Landroid/text/format/Time;->weekDay:I

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 5
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, -0x7a

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v4, v3, v4

    aput v1, v3, v5

    const/4 v1, 0x5

    aput v2, v3, v1

    const/4 v1, 0x6

    aput v0, v3, v1

    .line 6
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3(IIIII)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7f

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p2, v1, v2

    const/16 v3, 0x81

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p3, v1, v2

    const/16 v3, 0x83

    .line 3
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p4, v1, v2

    const/16 v3, 0x85

    .line 4
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p5, v1, v2

    const/16 v3, 0x86

    .line 5
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 6
    sget v1, Lk0/ii;->P:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    new-array v4, v1, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    aput v3, v4, v0

    const/4 v3, 0x2

    const/4 v5, 0x6

    aput v5, v4, v3

    const/4 v6, 0x3

    aput v3, v4, v6

    const/4 v7, 0x4

    aput p1, v4, v7

    const/4 v7, 0x5

    aput p2, v4, v7

    aput p3, v4, v5

    const/4 v5, 0x7

    aput p4, v4, v5

    const/16 v8, 0x8

    aput p5, v4, v8

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    .line 8
    invoke-virtual {p0}, Lk0/ii;->i3()V

    .line 9
    sput p1, Lk0/ii;->H:I

    .line 10
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v6, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ii;->H:I

    if-eq p1, v0, :cond_1

    .line 11
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v6, v0}, Lo1/g0;->g(II)V

    .line 12
    :cond_1
    sput p2, Lk0/ii;->J:I

    .line 13
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v7, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ii;->J:I

    if-eq p1, p2, :cond_2

    .line 14
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v7, p2}, Lo1/g0;->g(II)V

    .line 15
    :cond_2
    sput p3, Lk0/ii;->L:I

    .line 16
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v5, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ii;->L:I

    if-eq p1, p2, :cond_3

    .line 17
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v5, p2}, Lo1/g0;->g(II)V

    .line 18
    :cond_3
    sput p4, Lk0/ii;->N:I

    .line 19
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ii;->N:I

    if-eq p1, p2, :cond_4

    .line 20
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v1, p2}, Lo1/g0;->g(II)V

    .line 21
    :cond_4
    sput p5, Lk0/ii;->O:I

    .line 22
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/ii;->O:I

    if-eq p1, p3, :cond_5

    .line 23
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    .line 24
    :cond_5
    sput v3, Lk0/ii;->P:I

    .line 25
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/ii;->P:I

    if-eq p1, p3, :cond_6

    .line 26
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_6
    return-void
.end method

.method public final k3(IIII)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7e

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p2, v1, v2

    const/16 v3, 0x80

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p3, v1, v2

    const/16 v3, 0x82

    .line 3
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p4, v1, v2

    const/16 v3, 0x84

    .line 4
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    sget v1, Lk0/ii;->P:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    new-array v4, v1, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    const/16 v5, 0x86

    aput v5, v4, v0

    const/4 v5, 0x5

    aput v5, v4, v3

    const/4 v6, 0x3

    aput v0, v4, v6

    const/4 v6, 0x4

    aput p1, v4, v6

    aput p2, v4, v5

    const/4 v5, 0x6

    aput p3, v4, v5

    const/4 v7, 0x7

    aput p4, v4, v7

    .line 6
    invoke-static {v4}, Lz/k;->s([I)V

    .line 7
    invoke-virtual {p0}, Lk0/ii;->i3()V

    .line 8
    sput p1, Lk0/ii;->G:I

    .line 9
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v4, Lk0/ii;->G:I

    if-eq p1, v4, :cond_1

    .line 10
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v3, v4}, Lo1/g0;->g(II)V

    .line 11
    :cond_1
    sput p2, Lk0/ii;->I:I

    .line 12
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v6, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ii;->I:I

    if-eq p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v6, p2}, Lo1/g0;->g(II)V

    .line 14
    :cond_2
    sput p3, Lk0/ii;->K:I

    .line 15
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v5, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ii;->K:I

    if-eq p1, p2, :cond_3

    .line 16
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v5, p2}, Lo1/g0;->g(II)V

    .line 17
    :cond_3
    sput p4, Lk0/ii;->M:I

    .line 18
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ii;->M:I

    if-eq p1, p2, :cond_4

    .line 19
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v1, p2}, Lo1/g0;->g(II)V

    .line 20
    :cond_4
    sput v0, Lk0/ii;->P:I

    .line 21
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/ii;->P:I

    if-eq p1, p3, :cond_5

    .line 22
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method

.method public final l3(I)V
    .locals 4

    const/4 v0, 0x2

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
    sput p1, Lk0/ii;->P:I

    const/16 v0, 0x87

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 2
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ii;->P:I

    if-eq p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final m3(I)V
    .locals 5

    const/4 v0, 0x2

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
    sput p1, Lk0/ii;->F:I

    const/16 v2, 0x7d

    new-array v3, v1, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v4

    const/16 v3, 0x85

    aput v3, v2, v1

    aput v1, v2, v0

    const/4 v0, 0x3

    aput p1, v2, v0

    .line 3
    invoke-static {v2}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v1, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ii;->F:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/ii;->m:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
