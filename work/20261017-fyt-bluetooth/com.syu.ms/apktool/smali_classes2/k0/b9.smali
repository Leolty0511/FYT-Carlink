.class public Lk0/b9;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static r:I

.field public static s:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Lo1/g0;

.field public final l:I

.field public final m:I

.field public n:B

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/b9;->e:I

    const/16 v2, 0x1a

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
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

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    const/16 v22, 0x12

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    const/16 v23, 0x13

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v24, 0x14

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    const/16 v25, 0x19

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/b9;->f:[[I

    new-array v2, v2, [[I

    new-array v3, v4, [I

    .line 4
    fill-array-data v3, :array_1a

    aput-object v3, v2, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v2, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v2, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v2, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v2, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v2, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_21

    aput-object v3, v2, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_22

    aput-object v3, v2, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_23

    aput-object v3, v2, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_24

    aput-object v3, v2, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_26

    aput-object v3, v2, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_27

    aput-object v3, v2, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_28

    aput-object v3, v2, v18

    new-array v3, v4, [I

    fill-array-data v3, :array_29

    aput-object v3, v2, v19

    new-array v3, v4, [I

    fill-array-data v3, :array_2a

    aput-object v3, v2, v20

    new-array v3, v4, [I

    fill-array-data v3, :array_2b

    aput-object v3, v2, v21

    new-array v3, v4, [I

    fill-array-data v3, :array_2c

    aput-object v3, v2, v22

    new-array v3, v4, [I

    fill-array-data v3, :array_2d

    aput-object v3, v2, v23

    new-array v3, v4, [I

    fill-array-data v3, :array_2e

    aput-object v3, v2, v24

    new-array v3, v4, [I

    fill-array-data v3, :array_2f

    const/16 v5, 0x15

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_30

    const/16 v5, 0x16

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_31

    const/16 v5, 0x17

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_32

    const/16 v5, 0x18

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_33

    const/16 v5, 0x19

    aput-object v3, v2, v5

    iput-object v2, v0, Lk0/b9;->g:[[I

    .line 5
    iput-boolean v1, v0, Lk0/b9;->h:Z

    .line 6
    iput v1, v0, Lk0/b9;->i:I

    .line 7
    iput-boolean v1, v0, Lk0/b9;->j:Z

    .line 8
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/b9;->k:Lo1/g0;

    .line 9
    iput v6, v0, Lk0/b9;->l:I

    .line 10
    iput v4, v0, Lk0/b9;->m:I

    .line 11
    iput-byte v9, v0, Lk0/b9;->n:B

    .line 12
    new-instance v1, Lk0/b9$a;

    invoke-direct {v1, v0}, Lk0/b9$a;-><init>(Lk0/b9;)V

    iput-object v1, v0, Lk0/b9;->o:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/b9$b;

    invoke-direct {v1, v0}, Lk0/b9$b;-><init>(Lk0/b9;)V

    iput-object v1, v0, Lk0/b9;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/b9$c;

    invoke-direct {v1, v0}, Lk0/b9$c;-><init>(Lk0/b9;)V

    iput-object v1, v0, Lk0/b9;->q:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x10
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x3e
    .end array-data

    :array_d
    .array-data 4
        0x15
        0x3f
    .end array-data

    :array_e
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x1f
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x20
        0x20
    .end array-data

    :array_11
    .array-data 4
        0x21
        0x21
    .end array-data

    :array_12
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_14
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_16
    .array-data 4
        0xa
        0x1b
    .end array-data

    :array_17
    .array-data 4
        0xb
        0x1c
    .end array-data

    :array_18
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_19
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_1d
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_1f
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_20
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_21
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x10
        0xd
    .end array-data

    :array_23
    .array-data 4
        0x11
        0x9
    .end array-data

    :array_24
    .array-data 4
        0x12
        0x6
    .end array-data

    :array_25
    .array-data 4
        0x13
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x14
        0x3e
    .end array-data

    :array_27
    .array-data 4
        0x15
        0x3f
    .end array-data

    :array_28
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_29
    .array-data 4
        0x1f
        0x2
    .end array-data

    :array_2a
    .array-data 4
        0x20
        0x20
    .end array-data

    :array_2b
    .array-data 4
        0x21
        0x21
    .end array-data

    :array_2c
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_2e
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_2f
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_30
    .array-data 4
        0xa
        0x1b
    .end array-data

    :array_31
    .array-data 4
        0xb
        0x1c
    .end array-data

    :array_32
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_33
    .array-data 4
        0xf
        0x23
    .end array-data
.end method

.method public static synthetic b3(Lk0/b9;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/b9;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/b9;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/b9;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/b9;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/b9;->j3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/b9;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/b9;->i3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1a

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget v4, v1, v2

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Air codeCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "      value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v5, 0x29

    const-wide/16 v6, 0xc8

    if-eq v4, v5, :cond_18

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_16

    const/16 v5, 0x37

    const/16 v9, -0x76

    const/16 v10, 0xe3

    const/16 v11, 0x10

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-eq v4, v5, :cond_13

    const/16 v5, 0x44

    const/4 v15, 0x6

    if-eq v4, v5, :cond_9

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v4, v1, v8

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    new-array v4, v14, [I

    aput v10, v4, v2

    aput v9, v4, v8

    aput v3, v4, v3

    const/16 v2, 0x27

    aput v2, v4, v12

    .line 5
    aget v1, v1, v8

    aput v1, v4, v13

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v13, v8}, Lk0/b9;->a3(II)V

    .line 7
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 8
    invoke-virtual {v0, v13, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v13, v3}, Lk0/b9;->a3(II)V

    .line 10
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 11
    invoke-virtual {v0, v13, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_1
    aget v1, v1, v8

    const/16 v3, 0xc

    if-eqz v1, :cond_3

    .line 13
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_1a

    .line 14
    invoke-virtual {v0, v12, v8}, Lk0/b9;->a3(II)V

    .line 15
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 16
    invoke-virtual {v0, v12, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 17
    :cond_3
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_1a

    .line 18
    invoke-virtual {v0, v12, v8}, Lk0/b9;->a3(II)V

    .line 19
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 20
    invoke-virtual {v0, v12, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 21
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_4

    .line 22
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v11

    if-nez v1, :cond_1a

    const/4 v1, 0x7

    .line 23
    invoke-virtual {v0, v1, v8}, Lk0/b9;->a3(II)V

    .line 24
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 25
    invoke-virtual {v0, v1, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x7

    .line 26
    sget-object v3, Lk0/nt;->g:[I

    aget v3, v3, v11

    if-ne v3, v8, :cond_1a

    .line 27
    invoke-virtual {v0, v1, v8}, Lk0/b9;->a3(II)V

    .line 28
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 29
    invoke-virtual {v0, v1, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 30
    :pswitch_3
    aget v1, v1, v8

    const/16 v3, 0x41

    if-eqz v1, :cond_5

    .line 31
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_1a

    .line 32
    invoke-virtual {v0, v15, v8}, Lk0/b9;->a3(II)V

    .line 33
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 34
    invoke-virtual {v0, v15, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 35
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_1a

    .line 36
    invoke-virtual {v0, v15, v8}, Lk0/b9;->a3(II)V

    .line 37
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 38
    invoke-virtual {v0, v15, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 39
    :pswitch_4
    aget v1, v1, v8

    const/16 v3, 0xd

    if-eqz v1, :cond_6

    .line 40
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_1a

    const/16 v1, 0x9

    .line 41
    invoke-virtual {v0, v1, v8}, Lk0/b9;->a3(II)V

    .line 42
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 43
    invoke-virtual {v0, v1, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    .line 44
    sget-object v4, Lk0/nt;->g:[I

    aget v3, v4, v3

    if-ne v3, v8, :cond_1a

    .line 45
    invoke-virtual {v0, v1, v8}, Lk0/b9;->a3(II)V

    .line 46
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 47
    invoke-virtual {v0, v1, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 48
    :pswitch_5
    aget v1, v1, v8

    const/16 v3, 0xb

    if-eqz v1, :cond_7

    .line 49
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_1a

    const/16 v1, 0x8

    .line 50
    invoke-virtual {v0, v1, v8}, Lk0/b9;->a3(II)V

    .line 51
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 52
    invoke-virtual {v0, v1, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    .line 53
    sget-object v4, Lk0/nt;->g:[I

    aget v3, v4, v3

    if-ne v3, v8, :cond_1a

    .line 54
    invoke-virtual {v0, v1, v8}, Lk0/b9;->a3(II)V

    .line 55
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 56
    invoke-virtual {v0, v1, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    .line 57
    :pswitch_6
    aget v1, v1, v8

    if-eqz v1, :cond_8

    .line 58
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0xa

    aget v1, v1, v4

    if-nez v1, :cond_1a

    .line 59
    invoke-virtual {v0, v14, v8}, Lk0/b9;->a3(II)V

    .line 60
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 61
    invoke-virtual {v0, v14, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xa

    .line 62
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v4

    if-ne v1, v8, :cond_1a

    .line 63
    invoke-virtual {v0, v14, v8}, Lk0/b9;->a3(II)V

    .line 64
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 65
    invoke-virtual {v0, v14, v2}, Lk0/b9;->a3(II)V

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xa

    .line 66
    aget v2, v1, v8

    if-ne v2, v4, :cond_a

    new-array v1, v15, [I

    .line 67
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 68
    :cond_a
    aget v2, v1, v8

    const/16 v4, 0x9

    if-ne v2, v4, :cond_b

    new-array v1, v15, [I

    .line 69
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 70
    :cond_b
    aget v2, v1, v8

    if-ne v2, v8, :cond_c

    new-array v1, v15, [I

    .line 71
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 72
    :cond_c
    aget v2, v1, v8

    if-ne v2, v3, :cond_d

    new-array v1, v15, [I

    .line 73
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 74
    :cond_d
    aget v2, v1, v8

    if-ne v2, v12, :cond_e

    new-array v1, v15, [I

    .line 75
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 76
    :cond_e
    aget v2, v1, v8

    if-ne v2, v13, :cond_f

    new-array v1, v15, [I

    .line 77
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 78
    :cond_f
    aget v2, v1, v8

    if-ne v2, v14, :cond_10

    new-array v1, v15, [I

    .line 79
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 80
    :cond_10
    aget v2, v1, v8

    if-ne v2, v15, :cond_11

    new-array v1, v15, [I

    .line 81
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 82
    :cond_11
    aget v2, v1, v8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_12

    new-array v1, v15, [I

    .line 83
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 84
    :cond_12
    aget v1, v1, v8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1a

    new-array v1, v15, [I

    .line 85
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 86
    :cond_13
    aget v4, v1, v8

    if-ge v4, v11, :cond_14

    new-array v1, v14, [I

    .line 87
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 88
    :cond_14
    aget v4, v1, v8

    const/16 v5, 0x1c

    if-le v4, v5, :cond_15

    new-array v1, v14, [I

    .line 89
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_15
    new-array v4, v14, [I

    aput v10, v4, v2

    aput v9, v4, v8

    aput v3, v4, v3

    const/16 v2, 0x26

    aput v2, v4, v12

    .line 90
    aget v1, v1, v8

    aput v1, v4, v13

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    .line 91
    :cond_16
    aget v1, v1, v8

    const/16 v4, 0x15

    if-eqz v1, :cond_17

    .line 92
    invoke-virtual {v0, v4, v8}, Lk0/b9;->a3(II)V

    .line 93
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 94
    invoke-virtual {v0, v4, v2}, Lk0/b9;->a3(II)V

    goto :goto_0

    .line 95
    :cond_17
    invoke-virtual {v0, v4, v3}, Lk0/b9;->a3(II)V

    .line 96
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 97
    invoke-virtual {v0, v4, v2}, Lk0/b9;->a3(II)V

    goto :goto_0

    .line 98
    :cond_18
    aget v1, v1, v8

    if-eqz v1, :cond_19

    .line 99
    invoke-virtual {v0, v8, v8}, Lk0/b9;->a3(II)V

    .line 100
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 101
    invoke-virtual {v0, v8, v2}, Lk0/b9;->a3(II)V

    goto :goto_0

    .line 102
    :cond_19
    invoke-virtual {v0, v8, v3}, Lk0/b9;->a3(II)V

    .line 103
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 104
    invoke-virtual {v0, v8, v2}, Lk0/b9;->a3(II)V

    :cond_1a
    :goto_0
    return-void

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
        -0x3a
        0x3
        0x9
        0x1
        0xa
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x4
        0x2
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x4
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x3
        0x3
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x5
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x9
        0x5
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x76
        0x2
        0x26
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x76
        0x2
        0x26
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/b9;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/b9;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v3, 0x0

    .line 8
    iput v3, v0, Lk0/mt;->o:I

    .line 9
    iget-object v0, p0, Lk0/b9;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v2, v0, Lk0/mt;->e:I

    .line 13
    iput v2, v0, Lk0/mt;->f:I

    .line 14
    iput v2, v0, Lk0/mt;->g:I

    .line 15
    iput v3, v0, Lk0/mt;->i:I

    goto/16 :goto_0

    .line 16
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v2, v0, Lk0/mt;->e:I

    .line 18
    iput v3, v0, Lk0/mt;->f:I

    .line 19
    iput v2, v0, Lk0/mt;->g:I

    .line 20
    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 22
    iput v2, v0, Lk0/mt;->e:I

    .line 23
    iput v2, v0, Lk0/mt;->f:I

    .line 24
    iput v2, v0, Lk0/mt;->g:I

    .line 25
    iput v2, v0, Lk0/mt;->i:I

    .line 26
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 27
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 28
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 29
    iput v2, v0, Lk0/mt;->e:I

    .line 30
    iput v2, v0, Lk0/mt;->f:I

    .line 31
    iput v2, v0, Lk0/mt;->g:I

    .line 32
    iput v2, v0, Lk0/mt;->i:I

    .line 33
    iput v2, v0, Lk0/mt;->l:I

    .line 34
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 35
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 36
    :pswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 37
    iput v2, v0, Lk0/mt;->e:I

    .line 38
    iput v2, v0, Lk0/mt;->f:I

    .line 39
    iput v3, v0, Lk0/mt;->g:I

    .line 40
    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 41
    :pswitch_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 42
    iput v2, v0, Lk0/mt;->e:I

    .line 43
    iput v2, v0, Lk0/mt;->f:I

    .line 44
    iput v2, v0, Lk0/mt;->g:I

    .line 45
    iput v3, v0, Lk0/mt;->i:I

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x11

    const/16 v4, 0xf

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_5d

    const/16 v3, 0x27

    const/16 v12, 0x7f

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x29

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x39

    const/4 v15, 0x3

    const/4 v11, 0x4

    if-eq v2, v3, :cond_45

    const/16 v3, 0x70

    const v17, 0xff00

    const/16 v5, 0x8

    if-eq v2, v3, :cond_44

    const/16 v3, 0x7d

    const/4 v13, 0x0

    if-eq v2, v3, :cond_3c

    if-eq v2, v12, :cond_3b

    const/16 v3, 0x12

    const/16 v12, 0x10

    const/16 v14, 0xc

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_15

    :pswitch_0
    move v2, v9

    :goto_0
    const/16 v3, 0x32

    if-ge v2, v3, :cond_61

    .line 2
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0xbd

    new-array v5, v8, [I

    aput v2, v5, v9

    add-int v6, p2, v2

    add-int/2addr v6, v8

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v10

    invoke-static {v3, v4, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    move v2, v9

    :goto_1
    const/16 v3, 0x32

    if-ge v2, v3, :cond_61

    .line 3
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0xbc

    new-array v5, v8, [I

    aput v2, v5, v9

    add-int v6, p2, v2

    add-int/2addr v6, v8

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v10

    invoke-static {v3, v4, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    const/16 v2, 0xba

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 5
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3
    const/16 v2, 0xb9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 6
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_4
    const/16 v2, 0xb3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 7
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 8
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 9
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 10
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 11
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 12
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v1, v1, v2

    add-int/2addr v1, v10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xb2

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    add-int/2addr v2, v10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xb0

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 17
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 21
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_7
    const/16 v2, 0xa8

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 22
    aget-byte v6, v1, v5

    shr-int/2addr v6, v11

    and-int/2addr v6, v4

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v10, [I

    .line 23
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 24
    aget-byte v6, v1, v5

    shr-int/2addr v6, v11

    and-int/2addr v6, v4

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v10, [I

    .line 25
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 26
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 27
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 28
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 29
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 30
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 31
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 32
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 33
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 34
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    add-int v3, p2, p3

    sub-int/2addr v3, v10

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_0

    .line 35
    aget-byte v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_0
    const/16 v3, 0x6f

    .line 36
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v4, v1, v2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3, v4}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_15

    :pswitch_9
    const/16 v2, 0x90

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 37
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    .line 38
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v15

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 39
    sget v2, Lk0/nt;->c:I

    if-ne v2, v12, :cond_61

    const/16 v3, 0x11

    if-ne v2, v3, :cond_61

    const/16 v3, 0x16

    if-ne v2, v3, :cond_61

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_1

    goto/16 :goto_15

    .line 40
    :cond_1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_61

    .line 41
    aget-byte v2, v1, v4

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_2

    .line 42
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_15

    .line 43
    :cond_2
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    if-nez v1, :cond_61

    .line 44
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_15

    .line 45
    :pswitch_a
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v2, v3, :cond_3

    const/16 v3, 0x24

    if-eq v2, v3, :cond_3

    goto/16 :goto_15

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 47
    aget-byte v3, v1, v3

    const/16 v4, 0x75

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 48
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x76

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 49
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x77

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 50
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x78

    new-array v5, v10, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 51
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v10, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v10

    aput v3, v4, v9

    .line 52
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :pswitch_b
    const/16 v2, 0x8f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 53
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 54
    :pswitch_c
    sget v2, Lk0/nt;->a:I

    const v3, 0x220111

    if-ne v2, v3, :cond_4

    goto/16 :goto_15

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 56
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 57
    aget-byte v5, v1, v5

    const/16 v12, 0x74

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 58
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x73

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 59
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x72

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v15

    aput v14, v13, v9

    .line 60
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x65

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 61
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x66

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x2

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 62
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v10, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v10

    aput v13, v12, v9

    const/16 v13, 0x81

    .line 63
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x95

    new-array v13, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v13, v9

    .line 64
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v12, v10, [I

    shr-int/lit8 v13, v3, 0x7

    and-int/2addr v13, v10

    aput v13, v12, v9

    .line 65
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v12, v10, [I

    shr-int/lit8 v13, v3, 0x5

    and-int/2addr v13, v15

    aput v13, v12, v9

    .line 66
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v12, v10, [I

    shr-int/2addr v3, v15

    and-int/2addr v3, v15

    aput v3, v12, v9

    .line 67
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    shr-int/lit8 v12, v5, 0x7

    and-int/2addr v12, v10

    aput v12, v3, v9

    .line 68
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    shr-int/lit8 v12, v5, 0x6

    and-int/2addr v12, v10

    aput v12, v3, v9

    .line 69
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0x82

    .line 70
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    shr-int/2addr v5, v11

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 72
    aget-byte v12, v1, v5

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    .line 73
    aget-byte v12, v1, v5

    const/4 v13, 0x6

    shr-int/2addr v12, v13

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    .line 74
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x7

    .line 75
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v9

    const/16 v3, 0x7f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 76
    aget-byte v12, v1, v5

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    .line 77
    aget-byte v12, v1, v5

    shr-int/2addr v12, v6

    and-int/2addr v12, v15

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    .line 78
    aget-byte v12, v1, v5

    shr-int/2addr v12, v11

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    .line 79
    aget-byte v12, v1, v5

    shr-int/2addr v12, v8

    and-int/2addr v12, v15

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    .line 80
    aget-byte v12, v1, v5

    shr-int/2addr v12, v10

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    .line 81
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x9

    .line 82
    aget-byte v12, v1, v5

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    .line 83
    aget-byte v12, v1, v5

    const/4 v13, 0x6

    shr-int/2addr v12, v13

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    .line 84
    aget-byte v12, v1, v5

    shr-int/lit8 v11, v12, 0x4

    and-int/2addr v11, v15

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    .line 85
    aget-byte v11, v1, v5

    shr-int/2addr v11, v15

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    .line 86
    aget-byte v11, v1, v5

    shr-int/2addr v11, v8

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v10, [I

    .line 87
    aget-byte v11, v1, v5

    shr-int/2addr v11, v10

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v10, [I

    .line 88
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 89
    aget-byte v11, v1, v5

    shr-int/2addr v11, v7

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 90
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_5

    const/16 v3, 0x15

    if-eq v2, v3, :cond_5

    const/16 v3, 0x16

    if-ne v2, v3, :cond_6

    :cond_5
    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 91
    aget-byte v11, v1, v5

    shr-int/2addr v11, v6

    and-int/2addr v11, v15

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 92
    :cond_6
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    if-eq v2, v4, :cond_7

    const/16 v3, 0x14

    if-eq v2, v3, :cond_7

    const/16 v3, 0x15

    if-eq v2, v3, :cond_7

    const/16 v3, 0x16

    if-ne v2, v3, :cond_8

    :cond_7
    const/16 v2, 0x8d

    new-array v3, v10, [I

    .line 93
    aget-byte v4, v1, v5

    shr-int/2addr v4, v15

    and-int/2addr v4, v15

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_8
    const/16 v2, 0x9b

    new-array v3, v10, [I

    .line 94
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v15

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 95
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 96
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v10, [I

    .line 97
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v15

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v10, [I

    .line 98
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v15

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v10, [I

    .line 99
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 100
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 101
    :pswitch_d
    sget v2, Lk0/nt;->a:I

    const v3, 0x220111

    if-ne v2, v3, :cond_9

    goto/16 :goto_15

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 103
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 104
    aget-byte v1, v1, v4

    const/16 v4, 0x63

    new-array v5, v10, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 105
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x64

    new-array v5, v10, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 106
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x65

    new-array v5, v10, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 107
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x66

    new-array v5, v10, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 108
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v3, 0xf

    .line 109
    iput v2, v0, Lk0/b9;->b:I

    const/16 v4, 0x67

    new-array v5, v10, [I

    shr-int/lit8 v7, v3, 0x7

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 110
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x68

    new-array v5, v10, [I

    shr-int/lit8 v7, v3, 0x6

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 111
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v5, v10, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v10

    aput v3, v5, v9

    .line 112
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 113
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v1, 0xf

    .line 114
    iput v2, v0, Lk0/b9;->c:I

    const/16 v3, 0x6b

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 115
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 116
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v10, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v4, v9

    .line 117
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v3, v10, [I

    aput v2, v3, v9

    .line 118
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_e
    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 120
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 121
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 122
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 123
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 124
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 125
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 126
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 127
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 128
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x3

    .line 129
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, p2, 0x4

    .line 130
    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v6, p2, 0x5

    .line 131
    aget-byte v12, v1, v6

    and-int/lit16 v12, v12, 0xff

    if-nez v3, :cond_b

    if-nez v5, :cond_b

    if-nez v8, :cond_b

    if-nez v12, :cond_b

    .line 132
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 133
    :cond_b
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_c

    sget v9, Ll0/c0;->h:I

    if-ne v9, v5, :cond_c

    sget v9, Ll0/c0;->i:I

    if-ne v9, v8, :cond_c

    sget v9, Ll0/c0;->j:I

    if-eq v9, v12, :cond_d

    .line 134
    :cond_c
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_d

    .line 135
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 136
    sput v11, Ll0/c0;->k:I

    .line 137
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 138
    :cond_d
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 139
    sput v5, Ll0/c0;->h:I

    .line 140
    sput v8, Ll0/c0;->i:I

    .line 141
    sput v12, Ll0/c0;->j:I

    .line 142
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 143
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 144
    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 145
    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->Q0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_15

    .line 146
    :pswitch_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_61

    add-int/lit8 v2, p2, 0x2

    .line 147
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 148
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 149
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 150
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->Q0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_15

    :pswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 151
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 152
    aget-byte v5, v1, v5

    new-array v6, v10, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v10

    aput v13, v6, v9

    const/16 v13, 0xa

    .line 153
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v10

    aput v13, v6, v9

    const/16 v13, 0xb

    .line 154
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v13, v10, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v9

    .line 155
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v13, v10, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v9

    .line 156
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    .line 157
    sget v6, Lk0/b9;->s:I

    if-ne v6, v10, :cond_e

    new-array v6, v10, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v10

    aput v13, v6, v9

    .line 158
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v15

    if-nez v6, :cond_f

    new-array v6, v10, [I

    aput v10, v6, v9

    .line 159
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    if-ne v6, v10, :cond_10

    new-array v6, v10, [I

    aput v9, v6, v9

    .line 160
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v6, v10, [I

    aput v8, v6, v9

    .line 161
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v6, 0xbe

    new-array v13, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v13, v9

    .line 162
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v5, 0x4

    and-int/2addr v2, v4

    if-eqz v2, :cond_16

    if-eq v2, v10, :cond_15

    if-eq v2, v8, :cond_14

    if-eq v2, v15, :cond_13

    if-eq v2, v11, :cond_12

    if-eq v2, v4, :cond_11

    move v2, v9

    move v6, v2

    move v8, v6

    :goto_6
    move v11, v8

    goto :goto_7

    :cond_11
    move v6, v9

    move v8, v6

    move v11, v8

    move v2, v10

    goto :goto_7

    :cond_12
    move v2, v9

    move v8, v2

    move v11, v8

    move v6, v10

    goto :goto_7

    :cond_13
    move v2, v9

    move v8, v2

    move v6, v10

    move v11, v6

    goto :goto_7

    :cond_14
    move v2, v9

    move v6, v2

    move v8, v6

    move v11, v10

    goto :goto_7

    :cond_15
    move v2, v9

    move v6, v2

    move v8, v10

    goto :goto_6

    :cond_16
    move v2, v9

    move v6, v2

    move v11, v6

    move v8, v10

    :goto_7
    const/16 v13, 0x31

    new-array v7, v10, [I

    aput v2, v7, v9

    .line 163
    invoke-static {v13, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v6, v2, v9

    .line 164
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v10, [I

    aput v8, v3, v9

    .line 165
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v11, v3, v9

    .line 166
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit8 v3, v5, 0xf

    aput v3, v2, v9

    const/16 v3, 0x15

    .line 167
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 168
    aget-byte v3, v1, v2

    add-int/lit8 v5, p2, 0x5

    .line 169
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 170
    aget-byte v7, v1, v6

    const-string v8, "persist.fyt.reversetemp"

    .line 171
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 172
    aget-byte v3, v1, v6

    .line 173
    aget-byte v7, v1, v2

    :cond_17
    if-eqz v3, :cond_1a

    if-eq v3, v4, :cond_19

    if-lt v3, v10, :cond_18

    if-gt v3, v14, :cond_18

    const/16 v2, 0x1b

    new-array v6, v10, [I

    and-int/lit8 v8, v3, 0xf

    add-int/2addr v8, v12

    aput v8, v6, v9

    .line 174
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :cond_18
    if-ne v3, v12, :cond_1b

    const/16 v2, 0x1b

    new-array v3, v10, [I

    aput v12, v3, v9

    .line 175
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_19
    const/16 v2, 0x1b

    new-array v3, v10, [I

    const/4 v6, -0x3

    aput v6, v3, v9

    .line 176
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1a
    const/16 v2, 0x1b

    new-array v3, v10, [I

    const/4 v6, -0x2

    aput v6, v3, v9

    .line 177
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1b
    :goto_8
    const/16 v2, 0x41

    new-array v3, v10, [I

    shr-int/lit8 v6, v5, 0x7

    and-int/2addr v6, v10

    aput v6, v3, v9

    .line 178
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 179
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v10, [I

    shr-int/lit8 v6, v5, 0x5

    and-int/2addr v6, v10

    aput v6, v3, v9

    .line 180
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v10, [I

    shr-int/lit8 v6, v5, 0x3

    and-int/2addr v6, v15

    aput v6, v3, v9

    .line 181
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v10, [I

    shr-int/2addr v5, v10

    and-int/2addr v5, v15

    aput v5, v3, v9

    .line 182
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eqz v7, :cond_1e

    if-eq v7, v4, :cond_1d

    if-lt v7, v10, :cond_1c

    if-gt v7, v14, :cond_1c

    const/16 v2, 0x1c

    new-array v3, v10, [I

    and-int/lit8 v4, v7, 0xf

    add-int/2addr v4, v12

    aput v4, v3, v9

    .line 183
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1c
    if-ne v7, v12, :cond_1f

    const/16 v2, 0x1c

    new-array v3, v10, [I

    aput v12, v3, v9

    .line 184
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1d
    const/16 v2, 0x1c

    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 185
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1e
    const/16 v2, 0x1c

    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 186
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1f
    :goto_9
    const/16 v2, 0x3e

    new-array v3, v10, [I

    const/4 v4, 0x7

    add-int/lit8 v5, p2, 0x7

    .line 187
    aget-byte v6, v1, v5

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v10, [I

    .line 188
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 189
    :pswitch_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_61

    add-int/lit8 v2, p2, 0x2

    .line 190
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 191
    aget-byte v1, v1, v4

    and-int/lit16 v2, v2, 0xff

    .line 192
    iput v2, v0, Lk0/b9;->e:I

    .line 193
    sget v2, Lk0/b9;->r:I

    if-ne v2, v10, :cond_2c

    move v2, v9

    .line 194
    :goto_a
    iget-object v4, v0, Lk0/b9;->g:[[I

    array-length v7, v4

    if-ge v2, v7, :cond_21

    .line 195
    iget v7, v0, Lk0/b9;->e:I

    aget-object v8, v4, v2

    aget v8, v8, v9

    if-ne v7, v8, :cond_20

    if-eqz v7, :cond_21

    .line 196
    iput v2, v0, Lk0/b9;->d:I

    goto :goto_b

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 197
    :cond_21
    :goto_b
    iget v7, v0, Lk0/b9;->e:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_29

    const/16 v3, 0x17

    if-eq v7, v3, :cond_26

    const/16 v3, 0x7f

    if-eq v7, v3, :cond_26

    const/16 v3, 0x20

    if-eq v7, v3, :cond_24

    const/16 v3, 0x21

    if-eq v7, v3, :cond_22

    const/16 v3, 0x81

    if-eq v7, v3, :cond_22

    const/16 v3, 0x82

    if-eq v7, v3, :cond_24

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 198
    array-length v1, v4

    if-ge v2, v1, :cond_61

    .line 199
    iget v1, v0, Lk0/b9;->d:I

    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 200
    iget-object v1, v0, Lk0/b9;->g:[[I

    iget v2, v0, Lk0/b9;->d:I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_22
    move v2, v9

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_23

    const/4 v3, 0x7

    .line 201
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    const/4 v3, 0x7

    .line 202
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_24
    move v2, v9

    :goto_d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_25

    .line 203
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 204
    :cond_25
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 205
    :cond_26
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_27

    goto/16 :goto_15

    :cond_27
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 206
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_28

    new-array v1, v11, [I

    .line 207
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 208
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_15

    :cond_28
    if-ne v1, v10, :cond_61

    .line 209
    invoke-static {v9}, Lk0/qt;->a(I)V

    new-array v1, v11, [I

    .line 210
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_29
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 211
    sget v1, Lh0/c;->E:I

    if-eq v1, v15, :cond_2b

    if-eq v1, v11, :cond_2a

    if-eq v1, v6, :cond_2b

    .line 212
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    .line 213
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 214
    :cond_2a
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 215
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_2b
    const/16 v1, 0x1a

    .line 216
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 217
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_2c
    move v2, v9

    .line 218
    :goto_e
    iget-object v4, v0, Lk0/b9;->f:[[I

    array-length v7, v4

    if-ge v2, v7, :cond_2e

    .line 219
    iget v7, v0, Lk0/b9;->e:I

    aget-object v12, v4, v2

    aget v12, v12, v9

    if-ne v7, v12, :cond_2d

    if-eqz v7, :cond_2e

    .line 220
    iput v2, v0, Lk0/b9;->d:I

    goto :goto_f

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 221
    :cond_2e
    :goto_f
    iget v7, v0, Lk0/b9;->e:I

    const/4 v12, 0x6

    if-eq v7, v12, :cond_38

    const/16 v3, 0x17

    if-eq v7, v3, :cond_35

    const/16 v3, 0x7f

    if-eq v7, v3, :cond_35

    const/16 v3, 0x81

    if-eq v7, v3, :cond_33

    const/16 v3, 0x82

    if-eq v7, v3, :cond_31

    packed-switch v7, :pswitch_data_4

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 222
    array-length v1, v4

    if-ge v2, v1, :cond_61

    .line 223
    iget v1, v0, Lk0/b9;->d:I

    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 224
    iget-object v1, v0, Lk0/b9;->f:[[I

    iget v2, v0, Lk0/b9;->d:I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :pswitch_13
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 225
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "com.syu.fourcamera2"

    .line 226
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 227
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    .line 228
    :cond_2f
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    .line 229
    :cond_30
    invoke-static {v8, v9}, Ll0/b0;->l0(II)V

    .line 230
    invoke-static {v8, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_31
    :pswitch_14
    move v2, v9

    :goto_10
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_32

    .line 231
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 232
    :cond_32
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_33
    :pswitch_15
    move v2, v9

    :goto_11
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_34

    const/4 v3, 0x7

    .line 233
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_34
    const/4 v3, 0x7

    .line 234
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 235
    :cond_35
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_36

    goto/16 :goto_15

    :cond_36
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 236
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_37

    new-array v1, v11, [I

    .line 237
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 238
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_15

    :cond_37
    if-ne v1, v10, :cond_61

    .line 239
    invoke-static {v9}, Lk0/qt;->a(I)V

    new-array v1, v11, [I

    .line 240
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_38
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_61

    .line 241
    sget v1, Lh0/c;->E:I

    if-eq v1, v15, :cond_3a

    if-eq v1, v11, :cond_39

    if-eq v1, v6, :cond_3a

    .line 242
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    .line 243
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 244
    :cond_39
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 245
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3a
    const/16 v1, 0x1a

    .line 246
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 247
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 248
    :cond_3b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_3c
    add-int/lit8 v2, p2, 0x2

    .line 249
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v10, :cond_42

    if-eq v2, v15, :cond_41

    if-eq v2, v5, :cond_40

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_3f

    const/16 v3, 0xf1

    if-eq v2, v3, :cond_3d

    goto/16 :goto_15

    :cond_3d
    add-int/lit8 v2, p2, 0x3

    .line 250
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 251
    iget v2, v0, Lk0/b9;->i:I

    if-eq v2, v1, :cond_61

    .line 252
    iput v1, v0, Lk0/b9;->i:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3e

    .line 253
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_61

    .line 254
    iput-boolean v10, v0, Lk0/b9;->j:Z

    .line 255
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_15

    :cond_3e
    if-ne v1, v10, :cond_61

    .line 256
    iget-boolean v1, v0, Lk0/b9;->j:Z

    if-eqz v1, :cond_61

    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x6

    .line 257
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 258
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3f
    const/16 v2, 0xda

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 259
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 260
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 261
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 262
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 263
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 264
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_40
    add-int/lit8 v2, p2, 0x3

    .line 265
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 266
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 267
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 268
    iput-boolean v10, v0, Lk0/b9;->h:Z

    goto/16 :goto_15

    :cond_41
    add-int/lit8 v2, p2, 0x4

    .line 269
    aget-byte v2, v1, v2

    shl-int/2addr v2, v5

    and-int v2, v2, v17

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 270
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 271
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v8, [I

    aput v10, v4, v9

    aput v1, v4, v10

    invoke-static {v2, v3, v4, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_42
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 272
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_43

    add-int/lit8 v2, p2, 0x3

    .line 273
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_15

    :cond_43
    add-int/lit8 v2, p2, 0x3

    .line 274
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_15

    :cond_44
    const/16 v2, 0xc8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 275
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_45
    add-int/lit8 v2, p2, 0x2

    .line 276
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_5

    :pswitch_16
    goto/16 :goto_15

    :pswitch_17
    add-int/lit8 v2, p2, 0x3

    .line 277
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_15

    :pswitch_18
    const/16 v2, 0xd8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 278
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_19
    const/16 v2, 0xd7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 279
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1a
    const/16 v2, 0xd6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 280
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1b
    const/16 v2, 0xd5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 281
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1c
    const/16 v2, 0xd4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 282
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1d
    const/16 v2, 0xd3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 283
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1e
    const/16 v2, 0xd2

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 284
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1f
    const/16 v2, 0xd1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 285
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_20
    const/16 v2, 0xd0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 286
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_21
    const/16 v2, 0xcf

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 287
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_22
    const/16 v2, 0xce

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 288
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_23
    const/16 v2, 0xcd

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 289
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_24
    const/16 v2, 0xe0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 290
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_25
    const/16 v2, 0xb0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 291
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 292
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_26
    add-int/lit8 v2, p2, 0x3

    .line 293
    aget-byte v2, v1, v2

    if-eq v2, v10, :cond_46

    goto/16 :goto_15

    :cond_46
    const/16 v2, 0xc9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 294
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_27
    add-int/lit8 v2, p2, 0x3

    .line 295
    aget-byte v2, v1, v2

    if-eq v2, v10, :cond_49

    const/4 v3, 0x6

    if-eq v2, v3, :cond_48

    const/4 v3, 0x7

    if-eq v2, v3, :cond_47

    goto/16 :goto_15

    :cond_47
    const/16 v2, 0xc4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 296
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_48
    const/16 v2, 0xaf

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 297
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_49
    const/16 v2, 0x8e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 298
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_28
    add-int/lit8 v2, p2, 0x3

    .line 299
    aget-byte v2, v1, v2

    if-eq v2, v10, :cond_4b

    if-eq v2, v8, :cond_4a

    goto/16 :goto_15

    :cond_4a
    const/16 v2, 0xc5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 300
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_4b
    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x4

    .line 301
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v9

    const/16 v1, 0x81

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_29
    add-int/lit8 v2, p2, 0x3

    .line 302
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_7

    :pswitch_2a
    goto/16 :goto_15

    :pswitch_2b
    const/16 v2, 0xcc

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 303
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2c
    const/16 v2, 0xae

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 304
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2d
    const/16 v2, 0xad

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 305
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2e
    const/16 v2, 0x9f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 306
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2f
    const/16 v2, 0x9e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 307
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_30
    const/16 v2, 0x9d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 308
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_31
    const/16 v2, 0x9c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 309
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_32
    const/16 v2, 0x9a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 310
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_33
    const/16 v2, 0x99

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 311
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_34
    const/16 v2, 0x98

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 312
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_35
    const/16 v2, 0x97

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 313
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_36
    const/16 v2, 0x96

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 314
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_37
    const/16 v2, 0x8a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 315
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_38
    const/16 v2, 0x89

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 316
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_39
    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 317
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3a
    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 318
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3b
    const/16 v2, 0x84

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 319
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3c
    const/16 v2, 0x83

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 320
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3d
    add-int/lit8 v2, p2, 0x3

    .line 321
    aget-byte v2, v1, v2

    if-eq v2, v11, :cond_4e

    if-eq v2, v6, :cond_4d

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4c

    goto/16 :goto_15

    :cond_4c
    const/16 v2, 0xcb

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 322
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_4d
    const/16 v2, 0xca

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 323
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_4e
    const/16 v2, 0xc3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 324
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3e
    add-int/lit8 v2, p2, 0x3

    .line 325
    aget-byte v2, v1, v2

    if-eq v2, v8, :cond_52

    if-eq v2, v15, :cond_51

    if-eq v2, v11, :cond_50

    if-eq v2, v6, :cond_4f

    goto/16 :goto_15

    :cond_4f
    const/16 v2, 0xc6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 326
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_50
    const/16 v2, 0x92

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 327
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_51
    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x4

    .line 328
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v9

    const/16 v1, 0x82

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_52
    const/16 v2, 0x7d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 329
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3f
    add-int/lit8 v2, p2, 0x3

    .line 330
    aget-byte v2, v1, v2

    if-eq v2, v10, :cond_55

    if-eq v2, v8, :cond_54

    if-eq v2, v11, :cond_53

    goto/16 :goto_15

    :cond_53
    const/16 v2, 0x8c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 331
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_54
    const/16 v2, 0x73

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 332
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_55
    const/16 v2, 0x8d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 333
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_40
    add-int/lit8 v2, p2, 0x3

    .line 334
    aget-byte v2, v1, v2

    if-eq v2, v11, :cond_56

    goto/16 :goto_15

    :cond_56
    const/16 v2, 0x9b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 335
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_41
    add-int/lit8 v2, p2, 0x3

    .line 336
    aget-byte v2, v1, v2

    if-eq v2, v8, :cond_59

    if-eq v2, v15, :cond_58

    if-eq v2, v11, :cond_57

    goto/16 :goto_15

    :cond_57
    const/16 v2, 0x66

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 337
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_58
    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 338
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_59
    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 339
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 340
    :cond_5a
    iget-boolean v2, v0, Lk0/b9;->h:Z

    if-nez v2, :cond_61

    add-int/lit8 v2, p2, 0x3

    .line 341
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const v3, 0x8000

    const/16 v4, 0x1e53

    invoke-static {v2, v1, v3, v9, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_15

    .line 342
    :cond_5b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_61

    add-int/lit8 v2, p2, 0x2

    .line 343
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_5c

    const/16 v2, 0x7f

    and-int/2addr v1, v2

    const/16 v3, 0xa

    mul-int/2addr v1, v3

    rsub-int v1, v1, 0x3e8

    goto :goto_12

    :cond_5c
    const/16 v2, 0x7f

    const/16 v3, 0xa

    and-int/2addr v1, v2

    mul-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x3e8

    .line 344
    :goto_12
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_15

    :cond_5d
    const/16 v2, 0x2c

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 345
    aget-byte v5, v1, v5

    and-int/2addr v5, v4

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 346
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 347
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_60

    if-eq v2, v10, :cond_5f

    if-eq v2, v8, :cond_5e

    move v2, v9

    :goto_13
    move v3, v2

    goto :goto_14

    :cond_5e
    move v2, v9

    move v3, v10

    goto :goto_14

    :cond_5f
    move v2, v10

    goto :goto_13

    :cond_60
    move v3, v9

    move v2, v10

    :goto_14
    const/16 v4, 0x2e

    new-array v5, v10, [I

    aput v2, v5, v9

    .line 348
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v10, [I

    aput v3, v4, v9

    .line 349
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 350
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v10, [I

    .line 351
    aget-byte v1, v1, v4

    const/4 v4, 0x6

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_61
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_29
        :pswitch_16
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_3b
        :pswitch_2a
        :pswitch_2a
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_2a
        :pswitch_2a
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/b9;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/b9;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/b9;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xe1

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

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x31

    const/16 v5, 0x7d

    const/16 v6, 0xef

    const/16 v7, 0xb

    const/16 v8, 0xe3

    const/4 v9, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v4, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eq v1, v3, :cond_19

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_17

    const/16 v3, 0x3ed

    if-eq v1, v3, :cond_16

    const/16 v3, -0x70

    const/16 v16, -0x1d

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 v1, 0xe

    new-array v1, v1, [I

    aput v8, v1, v11

    aput v6, v1, v10

    aput v7, v1, v15

    aput v5, v1, v14

    const/16 v3, 0xf2

    aput v3, v1, v4

    .line 1
    aget v3, v2, v11

    aput v3, v1, v13

    aget v3, v2, v10

    aput v3, v1, v12

    aget v3, v2, v15

    aput v3, v1, v9

    aget v3, v2, v14

    const/16 v5, 0x8

    aput v3, v1, v5

    aget v2, v2, v4

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0xa

    aput v11, v1, v2

    aput v11, v1, v7

    const/16 v2, 0xc

    aput v11, v1, v2

    const/16 v2, 0xd

    aput v11, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_1
    new-array v1, v12, [I

    aput v16, v1, v11

    aput v3, v1, v10

    aput v14, v1, v15

    .line 2
    aget v3, v2, v11

    int-to-byte v3, v3

    aput v3, v1, v14

    aget v3, v2, v10

    int-to-byte v3, v3

    aput v3, v1, v4

    aget v2, v2, v15

    int-to-byte v2, v2

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_2
    new-array v1, v4, [I

    aput v16, v1, v11

    const/16 v3, -0x7e

    aput v3, v1, v10

    aput v10, v1, v15

    .line 3
    aget v2, v2, v11

    int-to-byte v2, v2

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_3
    new-array v1, v13, [I

    aput v16, v1, v11

    const/16 v3, -0x76

    aput v3, v1, v10

    aput v15, v1, v15

    .line 4
    aget v3, v2, v11

    int-to-byte v3, v3

    aput v3, v1, v14

    aget v2, v2, v10

    int-to-byte v2, v2

    aput v2, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 5
    :pswitch_4
    aget v1, v2, v11

    const/16 v5, 0xff

    if-ne v1, v5, :cond_0

    .line 6
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/b9;->j3(I)V

    goto/16 :goto_3

    .line 7
    :cond_0
    aget v1, v2, v11

    const/16 v6, 0xfe

    if-ne v1, v6, :cond_1

    .line 8
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/b9;->i3(I)V

    goto/16 :goto_3

    :cond_1
    new-array v1, v12, [I

    aput v16, v1, v11

    const/16 v6, -0x3a

    aput v6, v1, v10

    aput v14, v1, v15

    .line 9
    aget v6, v2, v11

    int-to-byte v6, v6

    aput v6, v1, v14

    aget v6, v2, v10

    int-to-byte v6, v6

    aput v6, v1, v4

    aget v6, v2, v15

    int-to-byte v6, v6

    aput v6, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v6, 0x64

    .line 10
    invoke-static {v6, v7}, La/i;->a0(J)V

    new-array v1, v12, [I

    aput v8, v1, v11

    aput v3, v1, v10

    aput v14, v1, v15

    const/16 v3, 0x39

    aput v3, v1, v14

    .line 11
    aget v2, v2, v11

    aput v2, v1, v4

    aput v5, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 12
    :pswitch_5
    invoke-virtual {v0, v2, v14}, Lk0/b9;->h3([II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 13
    aget v1, v2, v15

    .line 14
    aget v3, v2, v11

    if-ne v3, v10, :cond_2

    .line 15
    aget v1, v2, v10

    aget v2, v2, v15

    invoke-virtual {v0, v10, v1, v2}, Lk0/b9;->g3(III)V

    goto/16 :goto_3

    .line 16
    :cond_2
    aget v3, v2, v11

    if-ne v3, v15, :cond_14

    .line 17
    aget v3, v2, v10

    if-eq v3, v15, :cond_11

    aget v3, v2, v10

    if-ne v3, v4, :cond_3

    goto/16 :goto_0

    .line 18
    :cond_3
    array-length v3, v2

    if-lt v3, v4, :cond_13

    .line 19
    aget v3, v2, v10

    if-ne v3, v10, :cond_a

    if-eq v1, v10, :cond_8

    if-eq v1, v15, :cond_6

    if-eq v1, v14, :cond_4

    goto/16 :goto_1

    .line 20
    :cond_4
    aget v1, v2, v14

    if-nez v1, :cond_5

    .line 21
    iget v1, v0, Lk0/b9;->b:I

    and-int/lit16 v1, v1, 0xd0

    goto/16 :goto_1

    .line 22
    :cond_5
    iget v1, v0, Lk0/b9;->b:I

    or-int/lit8 v1, v1, 0x20

    goto/16 :goto_1

    .line 23
    :cond_6
    aget v1, v2, v14

    if-nez v1, :cond_7

    .line 24
    iget v1, v0, Lk0/b9;->b:I

    and-int/lit16 v1, v1, 0xb0

    goto :goto_1

    .line 25
    :cond_7
    iget v1, v0, Lk0/b9;->b:I

    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    .line 26
    :cond_8
    aget v1, v2, v14

    if-nez v1, :cond_9

    .line 27
    iget v1, v0, Lk0/b9;->b:I

    and-int/lit8 v1, v1, 0x70

    goto :goto_1

    .line 28
    :cond_9
    iget v1, v0, Lk0/b9;->b:I

    or-int/lit16 v1, v1, 0x80

    goto :goto_1

    .line 29
    :cond_a
    aget v3, v2, v10

    if-ne v3, v14, :cond_13

    if-eq v1, v10, :cond_f

    if-eq v1, v15, :cond_d

    if-eq v1, v14, :cond_b

    goto :goto_1

    .line 30
    :cond_b
    aget v1, v2, v14

    if-nez v1, :cond_c

    .line 31
    iget v1, v0, Lk0/b9;->c:I

    and-int/lit16 v11, v1, 0xd0

    goto :goto_2

    .line 32
    :cond_c
    iget v1, v0, Lk0/b9;->c:I

    or-int/lit8 v11, v1, 0x20

    goto :goto_2

    .line 33
    :cond_d
    aget v1, v2, v14

    if-nez v1, :cond_e

    .line 34
    iget v1, v0, Lk0/b9;->c:I

    and-int/lit16 v11, v1, 0xb0

    goto :goto_2

    .line 35
    :cond_e
    iget v1, v0, Lk0/b9;->c:I

    or-int/lit8 v11, v1, 0x40

    goto :goto_2

    .line 36
    :cond_f
    aget v1, v2, v14

    if-nez v1, :cond_10

    .line 37
    iget v1, v0, Lk0/b9;->c:I

    and-int/lit8 v11, v1, 0x70

    goto :goto_2

    .line 38
    :cond_10
    iget v1, v0, Lk0/b9;->c:I

    or-int/lit16 v11, v1, 0x80

    goto :goto_2

    :cond_11
    :goto_0
    if-gtz v1, :cond_12

    goto :goto_2

    :cond_12
    const/16 v3, 0x9

    if-lt v1, v3, :cond_13

    const/16 v11, 0x9

    goto :goto_2

    :cond_13
    :goto_1
    move v11, v1

    .line 39
    :goto_2
    aget v1, v2, v10

    invoke-virtual {v0, v15, v1, v11}, Lk0/b9;->g3(III)V

    goto/16 :goto_3

    .line 40
    :cond_14
    aget v1, v2, v11

    aget v3, v2, v10

    aget v2, v2, v15

    invoke-virtual {v0, v1, v3, v2}, Lk0/b9;->g3(III)V

    goto/16 :goto_3

    .line 41
    :pswitch_6
    invoke-virtual {v0, v2, v10}, Lk0/b9;->h3([II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 42
    aget v1, v2, v11

    const/16 v3, 0x15

    const-wide/16 v5, 0x32

    if-eq v1, v3, :cond_15

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_7
    const/16 v1, 0x9

    .line 43
    invoke-virtual {v0, v1, v10}, Lk0/b9;->f3(II)V

    .line 44
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 45
    invoke-virtual {v0, v1, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    :pswitch_8
    const/16 v1, 0x8

    .line 46
    invoke-virtual {v0, v1, v10}, Lk0/b9;->f3(II)V

    .line 47
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 48
    invoke-virtual {v0, v1, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 49
    :pswitch_9
    invoke-virtual {v0, v9, v10}, Lk0/b9;->f3(II)V

    .line 50
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 51
    invoke-virtual {v0, v9, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 52
    :pswitch_a
    invoke-virtual {v0, v12, v10}, Lk0/b9;->f3(II)V

    .line 53
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 54
    invoke-virtual {v0, v12, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 55
    :pswitch_b
    invoke-virtual {v0, v13, v10}, Lk0/b9;->f3(II)V

    .line 56
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 57
    invoke-virtual {v0, v13, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 58
    :pswitch_c
    array-length v1, v2

    if-lt v1, v15, :cond_1a

    .line 59
    aget v1, v2, v10

    invoke-virtual {v0, v4, v1}, Lk0/b9;->f3(II)V

    .line 60
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 61
    invoke-virtual {v0, v4, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 62
    :pswitch_d
    invoke-virtual {v0, v14, v10}, Lk0/b9;->f3(II)V

    .line 63
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 64
    invoke-virtual {v0, v14, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 65
    :pswitch_e
    invoke-virtual {v0, v15, v10}, Lk0/b9;->f3(II)V

    .line 66
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 67
    invoke-virtual {v0, v15, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 68
    :pswitch_f
    array-length v1, v2

    if-lt v1, v15, :cond_1a

    .line 69
    aget v1, v2, v10

    invoke-virtual {v0, v10, v1}, Lk0/b9;->f3(II)V

    .line 70
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 71
    invoke-virtual {v0, v10, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    .line 72
    :cond_15
    aget v1, v2, v10

    invoke-virtual {v0, v3, v1}, Lk0/b9;->f3(II)V

    .line 73
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 74
    invoke-virtual {v0, v3, v11}, Lk0/b9;->f3(II)V

    goto/16 :goto_3

    :cond_16
    if-eqz v2, :cond_1a

    .line 75
    array-length v1, v2

    if-lez v1, :cond_1a

    .line 76
    aget v1, v2, v11

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_10
    new-array v1, v4, [I

    .line 77
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_11
    new-array v1, v4, [I

    .line 78
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_12
    new-array v1, v4, [I

    .line 79
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_13
    new-array v1, v4, [I

    .line 80
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_14
    new-array v1, v4, [I

    .line 81
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_15
    new-array v1, v4, [I

    .line 82
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_16
    new-array v1, v4, [I

    .line 83
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_17
    new-array v1, v4, [I

    .line 84
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_18
    new-array v1, v4, [I

    .line 85
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_19
    new-array v1, v4, [I

    .line 86
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_1a
    new-array v1, v4, [I

    .line 87
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_1b
    new-array v1, v4, [I

    .line 88
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_3

    :pswitch_1c
    new-array v1, v4, [I

    .line 89
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_3

    :pswitch_1d
    new-array v1, v4, [I

    .line 90
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_3

    :cond_17
    if-eqz v2, :cond_1a

    .line 91
    array-length v1, v2

    if-lez v1, :cond_1a

    .line 92
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_18

    new-array v1, v4, [I

    .line 93
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    .line 94
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto :goto_3

    :cond_18
    new-array v1, v4, [I

    .line 95
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    .line 96
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto :goto_3

    .line 97
    :cond_19
    invoke-virtual {v0, v2, v15}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-array v1, v7, [I

    aput v8, v1, v11

    aput v6, v1, v10

    const/16 v3, 0x8

    aput v3, v1, v15

    aput v5, v1, v14

    const/16 v5, 0xf0

    aput v5, v1, v4

    .line 98
    aget v5, v2, v11

    aput v5, v1, v13

    aget v5, v2, v10

    aput v5, v1, v12

    aget v5, v2, v15

    aput v5, v1, v9

    aget v5, v2, v14

    aput v5, v1, v3

    aget v3, v2, v4

    const/16 v4, 0x9

    aput v3, v1, v4

    aget v2, v2, v13

    const/16 v3, 0xa

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_1a
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
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
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x9
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7e
        0x1
        0xb
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x7
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x5
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x7e
        0x1
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x6
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x8
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x7e
        0x1
        0xa
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x8
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x4
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x76

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x76

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3(III)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x3a

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    int-to-byte p1, p1

    aput p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x5

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/b9;->s:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xd9

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/b9;->k:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/b9;->s:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/b9;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final j3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/b9;->r:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xc7

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/b9;->k:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/b9;->r:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/b9;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
