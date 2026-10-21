.class public Lk0/qc;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:I

.field public l:Z

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:B

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Z

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:F

.field public v:I

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/qc;->c:I

    .line 3
    iput v1, v0, Lk0/qc;->e:I

    const/16 v2, 0x12

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 4
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v14, 0xa

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v15, 0xb

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v18, 0xe

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v19, 0xf

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v20, 0x10

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v21, 0x11

    aput-object v5, v3, v21

    iput-object v3, v0, Lk0/qc;->f:[[I

    new-array v3, v15, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_12

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v14

    iput-object v3, v0, Lk0/qc;->g:[[I

    .line 6
    iput v1, v0, Lk0/qc;->i:I

    const/16 v3, 0x1a

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_1d

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_30

    const/16 v5, 0x13

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_31

    const/16 v5, 0x14

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_32

    const/16 v5, 0x15

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_33

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_34

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_35

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_36

    const/16 v4, 0x19

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/qc;->j:[[I

    .line 8
    iput v1, v0, Lk0/qc;->k:I

    .line 9
    iput-boolean v1, v0, Lk0/qc;->l:Z

    .line 10
    iput v1, v0, Lk0/qc;->m:I

    .line 11
    new-instance v2, Lk0/qc$a;

    invoke-direct {v2, v0}, Lk0/qc$a;-><init>(Lk0/qc;)V

    iput-object v2, v0, Lk0/qc;->n:Ljava/lang/Runnable;

    .line 12
    iput-byte v14, v0, Lk0/qc;->o:B

    .line 13
    new-instance v2, Lk0/qc$b;

    invoke-direct {v2, v0}, Lk0/qc$b;-><init>(Lk0/qc;)V

    iput-object v2, v0, Lk0/qc;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lk0/qc$c;

    invoke-direct {v2, v0}, Lk0/qc$c;-><init>(Lk0/qc;)V

    iput-object v2, v0, Lk0/qc;->q:Ljava/lang/Runnable;

    .line 15
    iput-boolean v1, v0, Lk0/qc;->r:Z

    .line 16
    new-instance v1, Lk0/qc$d;

    invoke-direct {v1, v0}, Lk0/qc$d;-><init>(Lk0/qc;)V

    iput-object v1, v0, Lk0/qc;->s:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lk0/qc$e;

    invoke-direct {v1, v0}, Lk0/qc$e;-><init>(Lk0/qc;)V

    iput-object v1, v0, Lk0/qc;->t:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lk0/qc;->u:F

    const/16 v1, 0xff

    .line 19
    iput v1, v0, Lk0/qc;->v:I

    .line 20
    iput v1, v0, Lk0/qc;->w:I

    .line 21
    new-instance v1, Lk0/qc$f;

    invoke-direct {v1, v0}, Lk0/qc$f;-><init>(Lk0/qc;)V

    iput-object v1, v0, Lk0/qc;->x:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Lk0/qc$g;

    invoke-direct {v1, v0}, Lk0/qc$g;-><init>(Lk0/qc;)V

    iput-object v1, v0, Lk0/qc;->y:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x15
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x17
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x18
        0x12
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0x1a
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1b
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x1c
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x1d
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x1e
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x1f
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x20
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0xa0
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_14
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_15
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x7
        0x1e
    .end array-data

    :array_19
    .array-data 4
        0x8
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_1b
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0xb
        0x3f
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_1f
    .array-data 4
        0x3
        0x15
    .end array-data

    :array_20
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_21
    .array-data 4
        0x5
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x19
    .end array-data

    :array_23
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_24
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_25
    .array-data 4
        0x9
        0x7
    .end array-data

    :array_26
    .array-data 4
        0xa
        0x8
    .end array-data

    :array_27
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_28
    .array-data 4
        0xc
        0xc
    .end array-data

    :array_29
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_2a
    .array-data 4
        0xe
        0x35
    .end array-data

    :array_2b
    .array-data 4
        0xf
        0x12
    .end array-data

    :array_2c
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_2d
    .array-data 4
        0x11
        0xd
    .end array-data

    :array_2e
    .array-data 4
        0x12
        0x36
    .end array-data

    :array_2f
    .array-data 4
        0x13
        0x6
    .end array-data

    :array_30
    .array-data 4
        0x14
        0x9
    .end array-data

    :array_31
    .array-data 4
        0x15
        0x3e
    .end array-data

    :array_32
    .array-data 4
        0x16
        -0x1
    .end array-data

    :array_33
    .array-data 4
        0x17
        0x3f
    .end array-data

    :array_34
    .array-data 4
        0x18
        -0x1
    .end array-data

    :array_35
    .array-data 4
        0x19
        0x37
    .end array-data

    :array_36
    .array-data 4
        0xff
        0x10
    .end array-data
.end method

.method public static synthetic b3(Lk0/qc;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/qc;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/qc;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/qc;->u:F

    return p0
.end method

.method public static synthetic d3(Lk0/qc;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/qc;->u:F

    return p1
.end method

.method public static synthetic e3(Lk0/qc;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/qc;->u:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/qc;->u:F

    return v0
.end method

.method public static synthetic f3(Lk0/qc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/qc;->w:I

    return p0
.end method

.method public static synthetic g3(Lk0/qc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/qc;->w:I

    return p1
.end method

.method public static synthetic h3(Lk0/qc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/qc;->v:I

    return p0
.end method

.method public static synthetic i3(Lk0/qc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/qc;->v:I

    return p1
.end method


# virtual methods
.method public K2()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

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

    const/16 v1, 0x10

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v2

    if-eqz p1, :cond_1

    const/16 p1, 0x21

    .line 4
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x20

    .line 5
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v2

    if-eqz p1, :cond_2

    const/16 p1, 0x1f

    .line 7
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x1e

    .line 8
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x1d

    .line 10
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x1c

    .line 11
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v2

    const/16 v1, 0x13

    const/16 v3, 0xc

    if-ne v0, v2, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v2, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v2

    const/16 v0, 0x16

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v2, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v2

    const/16 v0, 0x15

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v2, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v2

    const/16 v0, 0x14

    const/16 v1, 0xd

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v2, :cond_a

    .line 32
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v2

    const/16 v0, 0x11

    const/16 v1, 0xb

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v2, :cond_a

    .line 37
    invoke-virtual {p0, v0}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v2

    const/16 v0, 0xa

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    const/16 p1, 0x9

    .line 40
    invoke-virtual {p0, p1}, Lk0/qc;->a3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v2, :cond_a

    .line 42
    invoke-virtual {p0, v1}, Lk0/qc;->a3(I)V

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

.method public S2()V
    .locals 7

    .line 1
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qc;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/qc;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/qc;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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

    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lk0/mt;->b:I

    .line 14
    iput v1, v0, Lk0/mt;->c:I

    .line 15
    iput v1, v0, Lk0/mt;->l:I

    .line 16
    iput v1, v0, Lk0/mt;->h:I

    .line 17
    sget v1, Lk0/nt;->c:I

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 18
    :cond_0
    iput v2, v0, Lk0/mt;->q:I

    :cond_1
    const/16 v3, 0x8

    const/4 v4, 0x2

    const/16 v5, 0x31

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_2

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_3

    .line 19
    :cond_2
    iput v4, v0, Lk0/mt;->h:I

    .line 20
    :cond_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_4

    .line 21
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 22
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 23
    sget v1, Lk0/nt;->c:I

    if-eq v1, v2, :cond_9

    const/16 v6, 0xe

    if-eq v1, v6, :cond_9

    const/16 v6, 0x34

    if-eq v1, v6, :cond_9

    const/4 v6, 0x5

    if-eq v1, v6, :cond_9

    const/4 v6, 0x6

    if-eq v1, v6, :cond_8

    const/4 v6, 0x7

    if-eq v1, v6, :cond_9

    if-eq v1, v3, :cond_7

    const/16 v3, 0xb

    if-eq v1, v3, :cond_6

    const/16 v3, 0xc

    if-eq v1, v3, :cond_9

    const/16 v3, 0x10

    if-eq v1, v3, :cond_9

    const/16 v3, 0x11

    if-eq v1, v3, :cond_9

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    if-eq v1, v5, :cond_9

    const/16 v3, 0x32

    if-eq v1, v3, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 24
    :pswitch_0
    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_5
    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lk0/qc;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 27
    :cond_6
    iput v4, v0, Lk0/mt;->h:I

    .line 28
    iget-object v0, p0, Lk0/qc;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 29
    :cond_7
    iput v2, v0, Lk0/mt;->l:I

    .line 30
    iget-object v0, p0, Lk0/qc;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 31
    iget-object v0, p0, Lk0/qc;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_8
    iput v2, v0, Lk0/mt;->l:I

    .line 33
    iget-object v0, p0, Lk0/qc;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :cond_9
    :pswitch_1
    iget-object v0, p0, Lk0/qc;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x0

    .line 1
    aget-byte v2, v1, v2

    const/4 v4, 0x5

    const/16 v5, 0xff

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v8, :cond_5d

    const/16 v9, 0x15

    const/4 v11, 0x2

    if-eq v2, v9, :cond_54

    const/16 v9, 0x7d

    const v12, 0xff00

    const/16 v14, 0x8

    const/4 v15, 0x6

    const/4 v13, 0x4

    if-eq v2, v9, :cond_45

    if-eq v2, v13, :cond_3f

    const/16 v10, 0x10

    const/16 v3, 0x1f

    const/4 v9, 0x7

    if-eq v2, v4, :cond_25

    if-eq v2, v15, :cond_1e

    if-eq v2, v9, :cond_1d

    if-eq v2, v10, :cond_16

    const/16 v10, 0x11

    if-eq v2, v10, :cond_14

    const/16 v10, 0x18

    if-eq v2, v10, :cond_13

    const/16 v10, 0x19

    if-eq v2, v10, :cond_12

    const/16 v10, 0x22

    if-eq v2, v10, :cond_11

    const/16 v10, 0x23

    if-eq v2, v10, :cond_d

    const/16 v10, 0x60

    if-eq v2, v10, :cond_c

    const/16 v10, 0x61

    if-eq v2, v10, :cond_b

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v11, :cond_1

    if-eq v2, v6, :cond_0

    goto/16 :goto_1f

    :cond_0
    const/16 v2, 0xf9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1
    const/16 v2, 0xec

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x3

    .line 5
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xed

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x4

    .line 6
    aget-byte v13, v1, v11

    shr-int/2addr v13, v4

    and-int/2addr v13, v6

    aput v13, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xee

    new-array v10, v8, [I

    .line 7
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v3

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xef

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x5

    .line 8
    aget-byte v13, v1, v11

    shr-int/2addr v13, v9

    and-int/2addr v13, v8

    aput v13, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v10, v8, [I

    .line 9
    aget-byte v13, v1, v11

    shr-int/2addr v13, v4

    and-int/2addr v13, v6

    aput v13, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v10, v8, [I

    .line 10
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v3

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x6

    .line 11
    aget-byte v13, v1, v11

    shr-int/2addr v13, v4

    and-int/2addr v13, v6

    aput v13, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v10, v8, [I

    .line 12
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v3

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf4

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x7

    .line 13
    aget-byte v13, v1, v11

    shr-int/lit8 v9, v13, 0x7

    and-int/2addr v9, v8

    aput v9, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v9, v8, [I

    .line 14
    aget-byte v10, v1, v11

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v6

    aput v4, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v4, v8, [I

    .line 15
    aget-byte v6, v1, v11

    shr-int/2addr v6, v7

    and-int/2addr v3, v6

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 16
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v12

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 17
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v12

    add-int/lit8 v6, p2, 0xb

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2
    const/16 v2, 0xea

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 18
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v12

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xeb

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 19
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v12

    add-int/lit8 v6, p2, 0x6

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_3
    const/16 v2, 0xe3

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 20
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 21
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 22
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x7

    .line 23
    aget-byte v6, v1, v6

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 24
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v3, v8, [I

    .line 25
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v3, v8, [I

    .line 26
    aget-byte v1, v1, v5

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :pswitch_1
    const/16 v2, 0xb2

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 27
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 28
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 29
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 30
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :pswitch_2
    const/16 v2, 0xbd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 31
    aget-byte v4, v1, v4

    const/16 v9, 0x7f

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 32
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 33
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 36
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 37
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v8, [I

    .line 38
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 39
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    .line 40
    :pswitch_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 41
    :pswitch_4
    sget v2, Lk0/nt;->a:I

    const v3, 0x310175

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, p2, 0x2

    .line 42
    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_4

    .line 43
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_1f

    .line 44
    :cond_4
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_1f

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_67

    .line 46
    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_6

    .line 47
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_1f

    .line 48
    :cond_6
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_1f

    :pswitch_5
    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    if-nez v3, :cond_7

    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    if-ne v3, v8, :cond_7

    new-array v3, v4, [I

    .line 50
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_7
    const/16 v3, 0x72

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 51
    aget-byte v6, v1, v6

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x73

    new-array v4, v8, [I

    .line 52
    aget-byte v1, v1, v2

    const/16 v2, 0xf

    and-int/2addr v1, v2

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :pswitch_6
    add-int/lit8 v2, p2, 0x3

    .line 53
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 54
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 55
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 56
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 57
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 58
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 59
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 60
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 61
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    .line 62
    :pswitch_7
    iget-boolean v2, v0, Lk0/qc;->r:Z

    if-nez v2, :cond_67

    .line 63
    sget v2, Lk0/nt;->c:I

    if-eq v2, v13, :cond_a

    if-eq v2, v4, :cond_a

    if-eq v2, v11, :cond_a

    const/16 v3, 0x21

    if-ne v2, v3, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1f

    :cond_a
    :goto_1
    add-int/lit8 v2, p2, 0x3

    .line 65
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x700

    const/16 v4, 0x49c

    invoke-static {v2, v1, v3, v7, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_1f

    :cond_b
    const/16 v2, 0xd0

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 66
    aget-byte v10, v1, v5

    shr-int/lit8 v9, v10, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v3, v8, [I

    .line 67
    aget-byte v9, v1, v5

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v3, v8, [I

    .line 68
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v3, v8, [I

    .line 69
    aget-byte v9, v1, v5

    shr-int/2addr v9, v6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v8, [I

    .line 70
    aget-byte v9, v1, v5

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v3, v8, [I

    .line 71
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v3, v8, [I

    .line 72
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 73
    aget-byte v9, v1, v5

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v8, [I

    .line 74
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v3, v8, [I

    .line 75
    aget-byte v4, v1, v5

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v3, v8, [I

    .line 76
    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v8, [I

    .line 77
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_c
    const/16 v2, 0xc9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 79
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v6, p2, 0x3

    .line 81
    aget-byte v9, v1, v6

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x4

    .line 82
    aget-byte v11, v1, v10

    and-int/2addr v11, v5

    add-int/lit8 v4, p2, 0x5

    .line 83
    aget-byte v12, v1, v4

    and-int/2addr v12, v5

    if-nez v3, :cond_e

    if-nez v9, :cond_e

    if-nez v11, :cond_e

    if-nez v12, :cond_e

    .line 84
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 85
    :cond_e
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_f

    sget v7, Ll0/c0;->h:I

    if-ne v7, v9, :cond_f

    sget v7, Ll0/c0;->i:I

    if-ne v7, v11, :cond_f

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_10

    .line 86
    :cond_f
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_10

    .line 87
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 88
    sput v13, Ll0/c0;->k:I

    .line 89
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 90
    :cond_10
    :goto_2
    sput v3, Ll0/c0;->g:I

    .line 91
    sput v9, Ll0/c0;->h:I

    .line 92
    sput v11, Ll0/c0;->i:I

    .line 93
    sput v12, Ll0/c0;->j:I

    .line 94
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 95
    aget-byte v2, v1, v6

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 96
    aget-byte v2, v1, v10

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 97
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1f

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 101
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1f

    :cond_12
    const/16 v2, 0xaa

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 102
    aget-byte v10, v1, v5

    shr-int/2addr v10, v9

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    .line 103
    aget-byte v10, v1, v5

    shr-int/2addr v10, v15

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    .line 104
    aget-byte v10, v1, v5

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    .line 105
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    .line 106
    aget-byte v4, v1, v5

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    .line 107
    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v8, [I

    .line 108
    aget-byte v4, v1, v5

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v8, [I

    .line 109
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 110
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 112
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 113
    aget-byte v5, v1, v5

    add-int/lit8 v4, p2, 0x5

    .line 114
    aget-byte v1, v1, v4

    const/16 v4, 0x77

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v10, v7

    .line 115
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7b

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v10, v7

    .line 116
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7c

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v6

    aput v11, v10, v7

    .line 117
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7d

    new-array v10, v8, [I

    and-int/2addr v2, v6

    aput v2, v10, v7

    .line 118
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v8, [I

    shr-int/2addr v3, v15

    and-int/2addr v3, v6

    aput v3, v4, v7

    .line 119
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x7f

    .line 120
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 122
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 123
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 124
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v2, v5

    and-int/2addr v3, v12

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    and-int/2addr v3, v5

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, p2, 0x5

    add-int v10, p2, p3

    sub-int/2addr v10, v6

    :goto_3
    if-ge v9, v10, :cond_15

    .line 127
    aget-byte v6, v1, v9

    and-int/2addr v6, v5

    shl-int/2addr v6, v14

    add-int/lit8 v12, v9, 0x1

    aget-byte v12, v1, v12

    and-int/2addr v12, v5

    or-int/2addr v6, v12

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_15
    const/16 v1, 0x85

    new-array v5, v11, [I

    aput v2, v5, v7

    aput v3, v5, v8

    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_1f

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 130
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 131
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 132
    aget-byte v6, v1, v6

    add-int/lit8 v9, p2, 0x6

    .line 133
    aget-byte v9, v1, v9

    add-int/lit8 v11, p2, 0x7

    .line 134
    aget-byte v11, v1, v11

    add-int/lit8 v13, p2, 0x8

    .line 135
    aget-byte v13, v1, v13

    add-int/lit8 v15, p2, 0x9

    .line 136
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0xa

    .line 137
    aget-byte v12, v1, v16

    add-int/lit8 v16, p2, 0xb

    .line 138
    aget-byte v1, v1, v16

    const/16 v10, 0x86

    new-array v14, v8, [I

    shr-int/lit8 v16, v2, 0x4

    const/16 v17, 0xf

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v7

    .line 139
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x87

    new-array v14, v8, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v14, v7

    .line 140
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const v4, 0xffff

    and-int/2addr v2, v4

    and-int/lit16 v4, v6, 0xff

    shl-int/2addr v4, v3

    and-int/lit16 v3, v9, 0xff

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x88

    new-array v6, v8, [I

    const/16 v9, 0x10

    shl-int/2addr v3, v9

    or-int/2addr v2, v3

    aput v2, v6, v7

    .line 141
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    const/16 v4, 0x8

    shl-int/lit8 v4, v11, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    and-int/lit16 v6, v13, 0xff

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 142
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v15, 0xff

    const/16 v3, 0x12

    if-le v2, v3, :cond_17

    const/16 v3, 0x12

    goto :goto_4

    :cond_17
    move v3, v2

    :goto_4
    if-gez v3, :cond_18

    move v3, v7

    :cond_18
    and-int/lit16 v2, v12, 0xff

    const/16 v4, 0x3b

    if-le v2, v4, :cond_19

    const/16 v2, 0x3b

    :cond_19
    if-gez v2, :cond_1a

    move v2, v7

    :cond_1a
    and-int/2addr v1, v5

    const/16 v4, 0x3b

    if-le v1, v4, :cond_1b

    const/16 v1, 0x3b

    :cond_1b
    if-gez v1, :cond_1c

    goto :goto_5

    :cond_1c
    move v7, v1

    :goto_5
    const/16 v1, 0x8a

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_1f

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 144
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 145
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 146
    aget-byte v4, v1, v4

    add-int/lit8 v10, p2, 0x5

    .line 147
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x6

    .line 148
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x7

    .line 149
    aget-byte v12, v1, v12

    add-int/lit8 v14, p2, 0x8

    .line 150
    aget-byte v14, v1, v14

    add-int/lit8 v16, p2, 0x9

    .line 151
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0xa

    .line 152
    aget-byte v17, v1, v17

    add-int/lit8 v18, p2, 0xb

    .line 153
    aget-byte v18, v1, v18

    add-int/lit8 v19, p2, 0xc

    .line 154
    aget-byte v19, v1, v19

    add-int/lit8 v20, p2, 0xd

    .line 155
    aget-byte v20, v1, v20

    const/16 v5, 0x6d

    new-array v15, v8, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x3

    aput v21, v15, v7

    .line 156
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x6e

    new-array v15, v8, [I

    shr-int/lit8 v21, v2, 0x4

    and-int/lit8 v21, v21, 0x3

    aput v21, v15, v7

    .line 157
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x6f

    new-array v15, v8, [I

    shr-int/lit8 v21, v2, 0x2

    and-int/lit8 v21, v21, 0x3

    aput v21, v15, v7

    .line 158
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xa1

    new-array v15, v8, [I

    shr-int/lit8 v21, v2, 0x1

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v7

    .line 159
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x78

    new-array v15, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v15, v7

    .line 160
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v5, v8, [I

    shr-int/lit8 v15, v3, 0x7

    and-int/2addr v15, v8

    aput v15, v5, v7

    .line 161
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v5, v8, [I

    shr-int/lit8 v15, v3, 0x6

    and-int/2addr v15, v8

    aput v15, v5, v7

    .line 162
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v5, v8, [I

    shr-int/2addr v3, v13

    and-int/2addr v3, v6

    aput v3, v5, v7

    .line 163
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    shr-int/lit8 v5, v4, 0x6

    and-int/2addr v5, v6

    aput v5, v3, v7

    .line 164
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v3, v8, [I

    shr-int/lit8 v5, v4, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 165
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v8, [I

    shr-int/lit8 v5, v4, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 166
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v4, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x7f

    .line 167
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    shr-int/lit8 v5, v4, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 168
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    shr-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 169
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v8, [I

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 170
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 171
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 172
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 173
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 174
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 175
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 176
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x1

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 177
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    and-int/lit8 v4, v10, 0x1

    aput v4, v3, v7

    .line 178
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 179
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 180
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 181
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 182
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x1

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 183
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x0

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 184
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 185
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 186
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 187
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 188
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 189
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x1

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 190
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x0

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 191
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    shr-int/lit8 v4, v14, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 192
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v3, v8, [I

    shr-int/lit8 v4, v14, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 193
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v3, v8, [I

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 194
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    shr-int/lit8 v4, v14, 0x2

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 195
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v3, v8, [I

    shr-int/lit8 v4, v14, 0x0

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 196
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    shr-int/lit8 v4, v16, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 197
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    shr-int/lit8 v4, v16, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 198
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    shr-int/lit8 v4, v16, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 199
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    and-int/lit8 v4, v16, 0x3

    aput v4, v3, v7

    .line 200
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    shr-int/lit8 v4, v17, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 201
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    shr-int/lit8 v4, v17, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 202
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    shr-int/lit8 v4, v17, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 203
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    shr-int/lit8 v4, v17, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 204
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    and-int/lit8 v4, v17, 0x3

    aput v4, v3, v7

    .line 205
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    shr-int/lit8 v4, v18, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 206
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    shr-int/lit8 v4, v18, 0x3

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 207
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v8, [I

    shr-int/lit8 v4, v18, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 208
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v8, [I

    shr-int/lit8 v4, v18, 0x1

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 209
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    shr-int/lit8 v4, v18, 0x0

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 210
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v3, v8, [I

    shr-int/lit8 v4, v19, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 211
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    shr-int/lit8 v4, v19, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 212
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    shr-int/lit8 v4, v19, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 213
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v3, v8, [I

    shr-int/lit8 v4, v19, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 214
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    shr-int/lit8 v4, v19, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 215
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    shr-int/lit8 v4, v19, 0x0

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 216
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v3, v8, [I

    shr-int/lit8 v4, v20, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 217
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    shr-int/lit8 v4, v20, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 218
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    shr-int/lit8 v4, v20, 0x3

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 219
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    shr-int/lit8 v4, v20, 0x0

    and-int/2addr v4, v9

    aput v4, v3, v7

    .line 220
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 221
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0xf

    .line 222
    aget-byte v3, v1, v3

    const/16 v4, 0xa3

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 223
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xa4

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v5, v7

    .line 224
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xa5

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 225
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xa6

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 226
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xa7

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x2

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 227
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x97

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 228
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xba

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v5, v7

    .line 229
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v4, v8, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 230
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v4, v8, [I

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    aput v3, v4, v7

    .line 231
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 232
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x15

    .line 233
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfe

    new-array v3, v8, [I

    .line 234
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 235
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v2, v7

    const/16 v1, 0xff

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1e
    const/16 v2, 0x2a

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 236
    aget-byte v10, v1, v5

    shr-int/lit8 v9, v10, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    .line 237
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x56

    new-array v3, v8, [I

    .line 238
    aget-byte v9, v1, v5

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v8, [I

    .line 239
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 240
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    const/16 v4, 0xf

    and-int/2addr v3, v4

    if-eq v3, v8, :cond_21

    if-eq v3, v11, :cond_20

    if-eq v3, v6, :cond_1f

    move v3, v7

    :goto_6
    move v4, v3

    goto :goto_7

    :cond_1f
    move v3, v7

    move v4, v8

    goto :goto_7

    :cond_20
    move v3, v8

    goto :goto_6

    :cond_21
    move v4, v7

    move v3, v8

    :goto_7
    const/16 v5, 0x2e

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 241
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v5, v8, [I

    aput v4, v5, v7

    .line 242
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v4, v8, [I

    .line 243
    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    const/16 v5, 0xf

    and-int/2addr v2, v5

    aput v2, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 244
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-eqz v3, :cond_24

    const/16 v5, 0x7e

    if-eq v3, v5, :cond_23

    .line 245
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    const/16 v5, 0xc

    if-lt v3, v5, :cond_22

    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    const/16 v5, 0x2c

    if-gt v3, v5, :cond_22

    const/16 v3, 0x28

    new-array v5, v8, [I

    .line 246
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    aput v1, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_22
    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    .line 247
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_23
    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 248
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_24
    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 249
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 250
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 251
    aget-byte v5, v1, v5

    add-int/lit8 v10, p2, 0x4

    .line 252
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x5

    .line 253
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x6

    .line 254
    aget-byte v12, v1, v12

    add-int/lit8 v14, p2, 0x7

    .line 255
    aget-byte v14, v1, v14

    const/16 v15, 0x8

    add-int/lit8 v15, p2, 0x8

    .line 256
    aget-byte v1, v1, v15

    new-array v15, v8, [I

    shr-int/lit8 v21, v2, 0x7

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v7

    const/16 v9, 0xa

    .line 257
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v15, v8, [I

    shr-int/lit8 v22, v2, 0x6

    and-int/lit8 v22, v22, 0x1

    aput v22, v15, v7

    .line 258
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x35

    new-array v15, v8, [I

    shr-int/lit8 v22, v2, 0x5

    and-int/lit8 v22, v22, 0x1

    aput v22, v15, v7

    .line 259
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v15, v8, [I

    shr-int/lit8 v22, v2, 0x4

    and-int/lit8 v22, v22, 0x1

    aput v22, v15, v7

    .line 260
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xc

    new-array v15, v8, [I

    shr-int/lit8 v22, v2, 0x2

    and-int/lit8 v22, v22, 0x3

    aput v22, v15, v7

    .line 261
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    new-array v9, v8, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v8

    aput v15, v9, v7

    const/16 v15, 0x10

    .line 262
    invoke-static {v15, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x41

    new-array v15, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v15, v7

    .line 263
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v9, v8, [I

    shr-int/lit8 v15, v5, 0x6

    and-int/2addr v15, v8

    aput v15, v9, v7

    .line 264
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v9, v5, 0x5

    and-int/2addr v9, v8

    aput v9, v2, v7

    const/16 v9, 0xf

    .line 265
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v15, v8, [I

    and-int/2addr v5, v9

    aput v5, v15, v7

    .line 266
    invoke-static {v2, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v5, v8, [I

    shr-int/lit8 v9, v10, 0x7

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 267
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v10, 0x6

    and-int/2addr v5, v8

    aput v5, v2, v7

    const/16 v5, 0x12

    .line 268
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v8, [I

    shr-int/lit8 v9, v10, 0x5

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 269
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v8, [I

    shr-int/lit8 v9, v10, 0x4

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 270
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 271
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26

    and-int/lit16 v2, v11, 0xff

    goto :goto_8

    :cond_26
    and-int/lit16 v2, v12, 0xff

    :goto_8
    const/16 v5, 0x3c

    const/16 v9, 0x1b

    if-eqz v2, :cond_32

    const/16 v10, 0x7f

    if-eq v2, v10, :cond_31

    .line 272
    sget v10, Lk0/nt;->a:I

    const v13, 0x40175

    const/16 v15, 0x25

    if-eq v10, v13, :cond_2e

    const v13, 0x50175

    if-eq v10, v13, :cond_2e

    const v13, 0xa0175

    if-eq v10, v13, :cond_2e

    const v13, 0xc0175

    if-eq v10, v13, :cond_2e

    const v13, 0xf0175

    if-eq v10, v13, :cond_2e

    const v13, 0x20175

    if-eq v10, v13, :cond_2e

    const v13, 0x210175

    if-eq v10, v13, :cond_2e

    const v13, 0xd0175

    if-eq v10, v13, :cond_2e

    const v13, 0xe0175

    if-eq v10, v13, :cond_2e

    const v13, 0x100175

    if-ne v10, v13, :cond_27

    goto/16 :goto_b

    :cond_27
    const v13, 0x60175

    if-eq v10, v13, :cond_2a

    const v13, 0x80175

    if-eq v10, v13, :cond_2a

    const v13, 0x90175

    if-eq v10, v13, :cond_2a

    const v13, 0x1d0175

    if-eq v10, v13, :cond_2a

    const v13, 0x1e0175

    if-eq v10, v13, :cond_2a

    const v13, 0x1f0175

    if-eq v10, v13, :cond_2a

    const v13, 0x2b0175

    if-eq v10, v13, :cond_2a

    const v13, 0x2c0175

    if-eq v10, v13, :cond_2a

    const v13, 0x2f0175

    if-eq v10, v13, :cond_2a

    const v13, 0x300175

    if-eq v10, v13, :cond_2a

    const v13, 0x270175

    if-eq v10, v13, :cond_2a

    const v13, 0x280175

    if-eq v10, v13, :cond_2a

    const v13, 0x310175

    if-eq v10, v13, :cond_2a

    const v13, 0x320175

    if-ne v10, v13, :cond_28

    goto :goto_a

    :cond_28
    if-lt v2, v5, :cond_29

    const/16 v10, 0x54

    if-gt v2, v10, :cond_29

    .line 273
    iput v8, v0, Lk0/qc;->m:I

    new-array v10, v8, [I

    aput v8, v10, v7

    .line 274
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    .line 275
    :cond_29
    iput v7, v0, Lk0/qc;->m:I

    new-array v10, v8, [I

    aput v7, v10, v7

    .line 276
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v10, v8, [I

    const/16 v13, 0xa

    mul-int/2addr v2, v13

    aput v2, v10, v7

    .line 277
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_2a
    :goto_a
    if-lt v2, v5, :cond_2c

    const/16 v10, 0x54

    if-gt v2, v10, :cond_2c

    .line 278
    iput v8, v0, Lk0/qc;->m:I

    new-array v10, v8, [I

    aput v8, v10, v7

    .line 279
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    if-lt v2, v5, :cond_2b

    new-array v10, v8, [I

    const/16 v13, 0xa

    mul-int/2addr v2, v13

    aput v2, v10, v7

    .line 280
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_2b
    new-array v2, v8, [I

    const/4 v10, -0x1

    aput v10, v2, v7

    .line 281
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    .line 282
    :cond_2c
    iput v7, v0, Lk0/qc;->m:I

    new-array v10, v8, [I

    aput v7, v10, v7

    .line 283
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x10

    if-lt v2, v10, :cond_2d

    const/16 v10, 0xf

    sub-int/2addr v2, v10

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x9b

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 284
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_2d
    new-array v2, v8, [I

    const/4 v10, -0x1

    aput v10, v2, v7

    .line 285
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_2e
    :goto_b
    if-gt v2, v3, :cond_2f

    if-lt v2, v8, :cond_2f

    .line 286
    iput v7, v0, Lk0/qc;->m:I

    new-array v10, v8, [I

    aput v7, v10, v7

    .line 287
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x9b

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 288
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_2f
    if-lt v2, v5, :cond_30

    .line 289
    iput v8, v0, Lk0/qc;->m:I

    new-array v10, v8, [I

    aput v8, v10, v7

    .line 290
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v8, [I

    const/16 v13, 0xa

    mul-int/2addr v2, v13

    aput v2, v10, v7

    .line 291
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_30
    new-array v2, v8, [I

    const/4 v10, -0x1

    aput v10, v2, v7

    .line 292
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_31
    new-array v2, v8, [I

    const/4 v10, -0x3

    aput v10, v2, v7

    .line 293
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_32
    new-array v2, v8, [I

    const/4 v10, -0x2

    aput v10, v2, v7

    .line 294
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    const-string v2, "persist.fyt.reversetemp"

    .line 295
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_33

    const/16 v2, 0xff

    and-int/2addr v2, v12

    goto :goto_d

    :cond_33
    const/16 v2, 0xff

    and-int/2addr v2, v11

    :goto_d
    const/16 v9, 0x1c

    if-eqz v2, :cond_3e

    const/16 v10, 0x7f

    if-eq v2, v10, :cond_3d

    .line 296
    sget v10, Lk0/nt;->a:I

    const v11, 0x40175

    if-eq v10, v11, :cond_3a

    const v11, 0x50175

    if-eq v10, v11, :cond_3a

    const v11, 0xa0175

    if-eq v10, v11, :cond_3a

    const v11, 0xc0175

    if-eq v10, v11, :cond_3a

    const v11, 0xf0175

    if-eq v10, v11, :cond_3a

    const v11, 0x20175

    if-eq v10, v11, :cond_3a

    const v11, 0x210175

    if-eq v10, v11, :cond_3a

    const v11, 0xd0175

    if-eq v10, v11, :cond_3a

    const v11, 0xe0175

    if-eq v10, v11, :cond_3a

    const v11, 0x100175

    if-ne v10, v11, :cond_34

    goto/16 :goto_f

    :cond_34
    const v11, 0x60175

    if-eq v10, v11, :cond_36

    const v11, 0x80175

    if-eq v10, v11, :cond_36

    const v11, 0x90175

    if-eq v10, v11, :cond_36

    const v11, 0x1d0175

    if-eq v10, v11, :cond_36

    const v11, 0x1e0175

    if-eq v10, v11, :cond_36

    const v11, 0x1f0175

    if-eq v10, v11, :cond_36

    const v11, 0x2b0175

    if-eq v10, v11, :cond_36

    const v11, 0x2c0175

    if-eq v10, v11, :cond_36

    const v11, 0x2f0175

    if-eq v10, v11, :cond_36

    const v11, 0x300175

    if-eq v10, v11, :cond_36

    const v11, 0x270175

    if-eq v10, v11, :cond_36

    const v11, 0x280175

    if-eq v10, v11, :cond_36

    const v11, 0x310175

    if-eq v10, v11, :cond_36

    const v11, 0x320175

    if-ne v10, v11, :cond_35

    goto :goto_e

    :cond_35
    new-array v4, v8, [I

    const/16 v5, 0xa

    mul-int/2addr v2, v5

    aput v2, v4, v7

    .line 297
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_36
    :goto_e
    if-lt v2, v5, :cond_38

    const/16 v10, 0x54

    if-gt v2, v10, :cond_38

    if-lt v2, v5, :cond_37

    new-array v4, v8, [I

    const/16 v5, 0xa

    mul-int/2addr v2, v5

    aput v2, v4, v7

    .line 298
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_37
    new-array v2, v8, [I

    const/4 v4, -0x1

    aput v4, v2, v7

    .line 299
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_38
    const/16 v5, 0x10

    if-lt v2, v5, :cond_39

    const/16 v5, 0xf

    sub-int/2addr v2, v5

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x9b

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 300
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_39
    new-array v2, v8, [I

    const/4 v4, -0x1

    aput v4, v2, v7

    .line 301
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3a
    :goto_f
    if-gt v2, v3, :cond_3b

    if-lt v2, v8, :cond_3b

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x9b

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 302
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3b
    if-lt v2, v5, :cond_3c

    new-array v4, v8, [I

    const/16 v5, 0xa

    mul-int/2addr v2, v5

    aput v2, v4, v7

    .line 303
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3c
    new-array v2, v8, [I

    const/4 v4, -0x1

    aput v4, v2, v7

    .line 304
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3d
    new-array v2, v8, [I

    const/4 v4, -0x3

    aput v4, v2, v7

    .line 305
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3e
    new-array v2, v8, [I

    const/4 v4, -0x2

    aput v4, v2, v7

    .line 306
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_10
    const/16 v2, 0x1d

    new-array v4, v8, [I

    shr-int/lit8 v5, v14, 0x6

    and-int/2addr v5, v6

    aput v5, v4, v7

    .line 307
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v8, [I

    shr-int/lit8 v5, v14, 0x2

    and-int/2addr v5, v6

    aput v5, v4, v7

    .line 308
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v7

    .line 309
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    shr-int/lit8 v4, v14, 0x0

    and-int/2addr v4, v6

    aput v4, v3, v7

    .line 310
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v8, [I

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 311
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    .line 312
    :cond_3f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_67

    add-int/lit8 v2, p2, 0x2

    .line 313
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 314
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 315
    iput v2, v0, Lk0/qc;->e:I

    move v2, v7

    .line 316
    :goto_11
    iget-object v3, v0, Lk0/qc;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_41

    .line 317
    iget v4, v0, Lk0/qc;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_40

    if-eqz v4, :cond_41

    .line 318
    iput v2, v0, Lk0/qc;->d:I

    goto :goto_12

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_41
    :goto_12
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_42

    .line 319
    array-length v1, v3

    if-ge v2, v1, :cond_67

    .line 320
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_42
    if-nez v1, :cond_67

    .line 321
    iget v1, v0, Lk0/qc;->d:I

    array-length v2, v3

    if-ge v1, v2, :cond_43

    const/16 v2, 0xff

    if-eq v1, v2, :cond_44

    .line 322
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_13

    :cond_43
    const/16 v2, 0xff

    .line 323
    :cond_44
    :goto_13
    iput v2, v0, Lk0/qc;->d:I

    goto/16 :goto_1f

    :cond_45
    move v2, v5

    add-int/lit8 v3, p2, 0x2

    .line 324
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    if-eq v3, v8, :cond_52

    if-eq v3, v6, :cond_51

    const/16 v2, 0x8

    if-eq v3, v2, :cond_50

    const/16 v2, 0xa

    if-eq v3, v2, :cond_4f

    const/16 v2, 0x80

    if-eq v3, v2, :cond_49

    const/16 v2, 0xf0

    if-eq v3, v2, :cond_48

    const/16 v2, 0xf1

    if-eq v3, v2, :cond_46

    goto/16 :goto_1f

    :cond_46
    add-int/lit8 v2, p2, 0x3

    .line 325
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 326
    iget v2, v0, Lk0/qc;->k:I

    if-eq v2, v1, :cond_67

    .line 327
    iput v1, v0, Lk0/qc;->k:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_47

    .line 328
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_67

    .line 329
    iput-boolean v8, v0, Lk0/qc;->l:Z

    .line 330
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_1f

    :cond_47
    if-ne v1, v8, :cond_67

    .line 331
    iget-boolean v1, v0, Lk0/qc;->l:Z

    if-eqz v1, :cond_67

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_67

    const/4 v1, 0x6

    .line 332
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 333
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_48
    const/16 v2, 0xdd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 334
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 335
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 336
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 337
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v8, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 338
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_49
    const/16 v5, 0xff

    add-int/lit8 v2, p2, 0x3

    .line 339
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 340
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 341
    iput v2, v0, Lk0/qc;->i:I

    move v2, v7

    .line 342
    :goto_14
    iget-object v3, v0, Lk0/qc;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4b

    .line 343
    iget v4, v0, Lk0/qc;->i:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_4a

    if-eqz v4, :cond_4b

    .line 344
    iput v2, v0, Lk0/qc;->h:I

    goto :goto_15

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_4b
    :goto_15
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_4c

    .line 345
    array-length v1, v3

    if-ge v2, v1, :cond_67

    .line 346
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_4c
    if-nez v1, :cond_67

    .line 347
    iget v1, v0, Lk0/qc;->h:I

    array-length v2, v3

    if-ge v1, v2, :cond_4d

    const/16 v2, 0xff

    if-eq v1, v2, :cond_4e

    .line 348
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_4d
    const/16 v2, 0xff

    .line 349
    :cond_4e
    :goto_16
    iput v2, v0, Lk0/qc;->h:I

    goto/16 :goto_1f

    :cond_4f
    const/16 v2, 0x408

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 350
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_50
    add-int/lit8 v2, p2, 0x3

    .line 351
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 352
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 353
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 354
    iput-boolean v8, v0, Lk0/qc;->r:Z

    goto/16 :goto_1f

    :cond_51
    add-int/lit8 v2, p2, 0x4

    .line 355
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 356
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 357
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v11, [I

    aput v8, v4, v7

    aput v1, v4, v8

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_52
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 358
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_53

    add-int/lit8 v2, p2, 0x3

    .line 359
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->b(III)V

    goto/16 :goto_1f

    :cond_53
    add-int/lit8 v2, p2, 0x3

    .line 360
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_1f

    :cond_54
    add-int/lit8 v2, p2, 0x2

    .line 361
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 362
    sget v2, Lk0/nt;->a:I

    const v3, 0x40175

    if-eq v2, v3, :cond_59

    const v3, 0x50175

    if-eq v2, v3, :cond_59

    const v3, 0x160175

    if-eq v2, v3, :cond_59

    const v3, 0x20175

    if-eq v2, v3, :cond_59

    const v3, 0x210175

    if-ne v2, v3, :cond_55

    goto :goto_18

    .line 363
    :cond_55
    iget v2, v0, Lk0/qc;->m:I

    if-eq v2, v8, :cond_58

    const-string v2, "persist.fyt.temperature"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_56

    goto :goto_17

    .line 364
    :cond_56
    iget v2, v0, Lk0/qc;->m:I

    if-nez v2, :cond_57

    mul-int/lit8 v2, v1, 0xa

    add-int/lit16 v2, v2, 0x258

    goto :goto_1b

    :cond_57
    move v2, v7

    goto :goto_1b

    :cond_58
    :goto_17
    mul-int/lit8 v2, v1, 0x12

    add-int/lit16 v2, v2, 0x258

    goto :goto_1a

    .line 365
    :cond_59
    :goto_18
    iget v2, v0, Lk0/qc;->m:I

    if-eq v2, v8, :cond_5b

    const-string v2, "persist.fyt.temperature"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_5a

    goto :goto_19

    :cond_5a
    mul-int/lit8 v2, v1, 0xa

    add-int/lit16 v2, v2, 0x96

    goto :goto_1b

    :cond_5b
    :goto_19
    mul-int/lit8 v2, v1, 0x12

    add-int/lit16 v2, v2, -0xd2

    :goto_1a
    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    const/4 v3, -0x1

    and-int/2addr v2, v3

    :goto_1b
    if-nez v1, :cond_5c

    .line 366
    invoke-static {v7}, Lu0/d;->B3(I)V

    goto/16 :goto_1f

    .line 367
    :cond_5c
    invoke-static {v2}, Lu0/d;->B3(I)V

    goto/16 :goto_1f

    .line 368
    :cond_5d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_67

    add-int/lit8 v2, p2, 0x2

    .line 369
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 370
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 371
    iput v2, v0, Lk0/qc;->c:I

    move v2, v7

    .line 372
    :goto_1c
    iget-object v3, v0, Lk0/qc;->f:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_5f

    .line 373
    iget v5, v0, Lk0/qc;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v7

    if-ne v5, v9, :cond_5e

    if-eqz v5, :cond_5f

    .line 374
    iput v2, v0, Lk0/qc;->b:I

    goto :goto_1d

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 375
    :cond_5f
    :goto_1d
    iget v5, v0, Lk0/qc;->c:I

    const/16 v9, 0x18

    if-eq v5, v9, :cond_64

    const/16 v4, 0xa0

    if-eq v5, v4, :cond_63

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_60

    .line 376
    array-length v1, v3

    if-ge v2, v1, :cond_67

    .line 377
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_1f

    :cond_60
    if-nez v1, :cond_67

    .line 378
    iget v1, v0, Lk0/qc;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_61

    const/16 v2, 0xff

    if-eq v1, v2, :cond_62

    .line 379
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_1e

    :cond_61
    const/16 v2, 0xff

    .line 380
    :cond_62
    :goto_1e
    iput v2, v0, Lk0/qc;->b:I

    goto :goto_1f

    :cond_63
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v8, :cond_67

    .line 381
    invoke-virtual/range {p0 .. p0}, Lk0/qc;->j3()V

    goto :goto_1f

    :cond_64
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v8, :cond_67

    .line 382
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_66

    if-eq v1, v4, :cond_66

    .line 383
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0x1a

    .line 384
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 385
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_1f

    :cond_65
    const/16 v1, 0x12

    .line 386
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 387
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_1f

    :cond_66
    const/16 v1, 0x1a

    .line 388
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 389
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    :cond_67
    :goto_1f
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x97
        0x2
        0x56
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/qc;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/qc;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/qc;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qc;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/qc;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/qc;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/qc;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x100

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
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v6, 0xe3

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_16

    if-eq v1, v10, :cond_15

    if-eq v1, v11, :cond_14

    const/16 v14, 0x9

    const/4 v15, 0x7

    const/4 v3, 0x6

    const/16 v5, 0x8

    if-eq v1, v9, :cond_13

    if-eq v1, v8, :cond_10

    if-eq v1, v7, :cond_f

    const/16 v16, 0x7d

    const/16 v17, 0xef

    const/16 v4, 0xd

    const/16 v13, 0xb

    if-eq v1, v4, :cond_e

    const/16 v4, 0x3eb

    if-eq v1, v4, :cond_9

    const/16 v4, 0x405

    if-eq v1, v4, :cond_8

    const/16 v4, 0x410

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz v2, :cond_18

    .line 1
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v13, [I

    aput v6, v1, v12

    aput v17, v1, v10

    aput v5, v1, v11

    aput v16, v1, v9

    const/16 v4, 0xf0

    aput v4, v1, v8

    .line 2
    aget v4, v2, v12

    aput v4, v1, v7

    aget v4, v2, v10

    aput v4, v1, v3

    aget v3, v2, v11

    aput v3, v1, v15

    aget v3, v2, v9

    aput v3, v1, v5

    aget v3, v2, v8

    aput v3, v1, v14

    aget v2, v2, v7

    const/16 v3, 0xa

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz v2, :cond_18

    .line 3
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v7, [I

    aput v6, v1, v12

    const/16 v3, 0x96

    aput v3, v1, v10

    aput v11, v1, v11

    .line 4
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz v2, :cond_18

    .line 5
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v8, [I

    aput v6, v1, v12

    const/16 v3, 0xf1

    aput v3, v1, v10

    aput v10, v1, v11

    .line 6
    aget v2, v2, v12

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v2, :cond_18

    .line 7
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v7, [I

    aput v6, v1, v12

    const/16 v3, 0x93

    aput v3, v1, v10

    aput v11, v1, v11

    .line 8
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_4
    if-eqz v2, :cond_18

    .line 9
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v7, [I

    aput v6, v1, v12

    const/16 v3, 0xee

    aput v3, v1, v10

    aput v11, v1, v11

    const/16 v3, 0x60

    aput v3, v1, v9

    .line 10
    aget v2, v2, v12

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 11
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FinalCanbus.C_CMD_6606 --- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-static {v2, v12, v5}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 12
    aget v1, v2, v12

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 13
    :cond_1
    aget v1, v2, v10

    if-eq v1, v10, :cond_6

    if-eq v1, v11, :cond_4

    if-eq v1, v9, :cond_2

    goto/16 :goto_2

    .line 14
    :cond_2
    aget v1, v2, v11

    if-ne v1, v10, :cond_3

    const/16 v1, 0x21

    .line 15
    invoke-virtual {v0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_2

    .line 16
    :cond_3
    aget v1, v2, v11

    if-ne v1, v11, :cond_18

    const/16 v1, 0x20

    .line 17
    invoke-virtual {v0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_2

    .line 18
    :cond_4
    aget v1, v2, v11

    if-ne v1, v10, :cond_5

    const/16 v1, 0x1f

    .line 19
    invoke-virtual {v0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_2

    .line 20
    :cond_5
    aget v1, v2, v11

    if-ne v1, v11, :cond_18

    const/16 v1, 0x1e

    .line 21
    invoke-virtual {v0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_2

    .line 22
    :cond_6
    aget v1, v2, v11

    if-ne v1, v10, :cond_7

    const/16 v1, 0x1d

    .line 23
    invoke-virtual {v0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_2

    .line 24
    :cond_7
    aget v1, v2, v11

    if-ne v1, v11, :cond_18

    const/16 v1, 0x1c

    .line 25
    invoke-virtual {v0, v1}, Lk0/qc;->a3(I)V

    goto/16 :goto_2

    .line 26
    :cond_8
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 27
    aget v1, v2, v10

    mul-int/lit16 v1, v1, 0x438

    invoke-static {}, La/f;->w()I

    move-result v4

    div-int/2addr v1, v4

    .line 28
    aget v4, v2, v11

    mul-int/lit16 v4, v4, 0x320

    invoke-static {}, La/f;->i()I

    move-result v13

    div-int/2addr v4, v13

    .line 29
    aget v2, v2, v12

    if-nez v2, :cond_18

    const/16 v2, 0xa

    new-array v2, v2, [I

    aput v6, v2, v12

    const/16 v6, 0xc6

    aput v6, v2, v10

    aput v15, v2, v11

    aput v11, v2, v9

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v7

    shr-int/lit8 v1, v4, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v3

    and-int/lit16 v1, v4, 0xff

    aput v1, v2, v15

    aput v12, v2, v5

    aput v12, v2, v14

    .line 30
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 31
    :cond_9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FinalCanbus.C_CHANGE_PANORAMA == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v12

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 32
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x31

    if-eq v1, v2, :cond_c

    if-eq v1, v5, :cond_c

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_a

    goto :goto_0

    .line 33
    :cond_a
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_b

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 34
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 35
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 36
    :cond_c
    :goto_0
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_d

    .line 37
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_2

    .line 38
    :cond_d
    invoke-static {v12}, Lk0/qt;->a(I)V

    goto/16 :goto_2

    :cond_e
    if-eqz v2, :cond_18

    .line 39
    array-length v1, v2

    if-lez v1, :cond_18

    const/16 v1, 0xe

    new-array v1, v1, [I

    aput v6, v1, v12

    aput v17, v1, v10

    aput v13, v1, v11

    aput v16, v1, v9

    const/16 v6, 0xf2

    aput v6, v1, v8

    .line 40
    aget v6, v2, v12

    aput v6, v1, v7

    aget v6, v2, v10

    aput v6, v1, v3

    aget v3, v2, v11

    aput v3, v1, v15

    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v14

    const/16 v2, 0xa

    aput v12, v1, v2

    aput v12, v1, v13

    const/16 v2, 0xc

    aput v12, v1, v2

    aput v12, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_f
    if-eqz v2, :cond_18

    .line 41
    array-length v1, v2

    if-le v1, v10, :cond_18

    new-array v1, v7, [I

    aput v6, v1, v12

    const/16 v3, 0x99

    aput v3, v1, v10

    aput v11, v1, v11

    .line 42
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_10
    if-eqz v2, :cond_18

    .line 43
    array-length v1, v2

    if-le v1, v10, :cond_18

    .line 44
    aget v1, v2, v12

    const/16 v4, 0xf

    if-eq v1, v4, :cond_12

    aget v1, v2, v12

    const/16 v4, 0x82

    if-ne v1, v4, :cond_11

    goto :goto_1

    :cond_11
    new-array v1, v3, [I

    aput v6, v1, v12

    const/16 v3, 0xa0

    aput v3, v1, v10

    aput v9, v1, v11

    .line 45
    aget v2, v2, v12

    int-to-byte v2, v2

    aput v2, v1, v9

    aput v12, v1, v8

    aput v12, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_12
    :goto_1
    new-array v1, v3, [I

    aput v6, v1, v12

    const/16 v3, 0xa0

    aput v3, v1, v10

    aput v9, v1, v11

    .line 46
    aget v3, v2, v12

    aput v3, v1, v9

    aget v3, v2, v10

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v8

    aget v2, v2, v10

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_13
    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v6, v1, v12

    const/16 v4, 0xc6

    aput v4, v1, v10

    aput v15, v1, v11

    .line 47
    aget v4, v2, v12

    aput v4, v1, v9

    aget v4, v2, v10

    aput v4, v1, v8

    aget v4, v2, v11

    aput v4, v1, v7

    aget v4, v2, v9

    aput v4, v1, v3

    aget v4, v2, v8

    aput v4, v1, v15

    aget v4, v2, v7

    aput v4, v1, v5

    aget v2, v2, v3

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_14
    if-eqz v2, :cond_18

    .line 48
    array-length v1, v2

    if-le v1, v10, :cond_18

    new-array v1, v7, [I

    aput v6, v1, v12

    const/16 v3, 0x97

    aput v3, v1, v10

    aput v11, v1, v11

    .line 49
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_15
    if-eqz v2, :cond_18

    .line 50
    array-length v1, v2

    if-lez v1, :cond_18

    new-array v1, v7, [I

    aput v6, v1, v12

    const/16 v3, 0xfc

    aput v3, v1, v10

    aput v11, v1, v11

    .line 51
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 52
    :cond_16
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "persist.fyt.reversetemp"

    .line 53
    invoke-static {v1, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x95

    if-eqz v1, :cond_17

    .line 54
    aget v1, v2, v12

    packed-switch v1, :pswitch_data_1

    new-array v1, v7, [I

    aput v6, v1, v12

    aput v3, v1, v10

    aput v11, v1, v11

    .line 55
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_5
    new-array v1, v7, [I

    aput v6, v1, v12

    aput v3, v1, v10

    aput v11, v1, v11

    const/16 v3, 0x1f

    aput v3, v1, v9

    .line 56
    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_6
    new-array v1, v7, [I

    aput v6, v1, v12

    aput v3, v1, v10

    aput v11, v1, v11

    const/16 v3, 0x1e

    aput v3, v1, v9

    .line 57
    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_7
    new-array v1, v7, [I

    aput v6, v1, v12

    aput v3, v1, v10

    aput v11, v1, v11

    const/16 v3, 0x21

    aput v3, v1, v9

    .line 58
    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_8
    new-array v1, v7, [I

    aput v6, v1, v12

    aput v3, v1, v10

    aput v11, v1, v11

    const/16 v3, 0x20

    aput v3, v1, v9

    .line 59
    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_17
    new-array v1, v7, [I

    aput v6, v1, v12

    aput v3, v1, v10

    aput v11, v1, v11

    .line 60
    aget v3, v2, v12

    aput v3, v1, v9

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_18
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x7
        0x3
        0x1
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
        0x7
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x95

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

.method public final j3()V
    .locals 3

    const-string v0, "com.syu.carinfo.oudi.RZC_Jeep_PanelButton"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 7
    invoke-static {v1, v0}, Ll0/b0;->l0(II)V

    const/4 v0, 0x1

    .line 8
    invoke-static {v1, v0}, Ll0/b0;->l0(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
