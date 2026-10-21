.class public Lk0/sk;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x1

.field public static C:I = 0x1

.field public static D:I

.field public static E:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Lo1/g0;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/sk;->c:I

    const/16 v0, 0x1f

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v9, 0x8

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v9, 0x9

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v9, 0xa

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v9, 0xb

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v9, 0xc

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v9, 0xd

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v9, 0xe

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v9, 0xf

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v10, 0x10

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v10, 0x11

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v10, 0x12

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v10, 0x13

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v10, 0x14

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v10, 0x15

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v10, 0x16

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v10, 0x17

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v10, 0x18

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v10, 0x19

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v10, 0x1a

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v10, 0x1b

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v10, 0x1c

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v10, 0x1d

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v10, 0x1e

    aput-object v2, v0, v10

    iput-object v0, p0, Lk0/sk;->d:[[I

    .line 4
    iput v3, p0, Lk0/sk;->e:I

    .line 5
    iput v3, p0, Lk0/sk;->f:I

    .line 6
    iput-boolean v3, p0, Lk0/sk;->g:Z

    .line 7
    iput-boolean v3, p0, Lk0/sk;->h:Z

    .line 8
    iput v3, p0, Lk0/sk;->i:I

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lk0/sk;->j:I

    .line 10
    iput v3, p0, Lk0/sk;->k:I

    .line 11
    new-instance v0, Lk0/sk$a;

    invoke-direct {v0, p0}, Lk0/sk$a;-><init>(Lk0/sk;)V

    iput-object v0, p0, Lk0/sk;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/sk$b;

    invoke-direct {v0, p0}, Lk0/sk$b;-><init>(Lk0/sk;)V

    iput-object v0, p0, Lk0/sk;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x20

    invoke-direct {v0, v2, v10}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/sk;->n:Lo1/g0;

    .line 14
    iput v4, p0, Lk0/sk;->o:I

    .line 15
    iput v1, p0, Lk0/sk;->p:I

    .line 16
    iput v5, p0, Lk0/sk;->q:I

    .line 17
    iput v6, p0, Lk0/sk;->r:I

    .line 18
    iput v7, p0, Lk0/sk;->s:I

    .line 19
    iput v8, p0, Lk0/sk;->t:I

    .line 20
    iput v9, p0, Lk0/sk;->u:I

    .line 21
    iput v3, p0, Lk0/sk;->v:I

    .line 22
    new-instance v0, Lk0/sk$c;

    invoke-direct {v0, p0}, Lk0/sk$c;-><init>(Lk0/sk;)V

    iput-object v0, p0, Lk0/sk;->w:Ljava/lang/Runnable;

    .line 23
    iput v3, p0, Lk0/sk;->x:I

    .line 24
    new-instance v0, Lk0/sk$d;

    invoke-direct {v0, p0}, Lk0/sk$d;-><init>(Lk0/sk;)V

    iput-object v0, p0, Lk0/sk;->y:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x11
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x18
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x15
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x16
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x17
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x3a
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x1a
    .end array-data

    :array_11
    .array-data 4
        0x20
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x21
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x22
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x24
        0x21
    .end array-data

    :array_16
    .array-data 4
        0x25
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0x26
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x27
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x28
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x40
        0x3e
    .end array-data

    :array_1b
    .array-data 4
        0x81
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x82
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x91
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x92
        -0x1
    .end array-data
.end method

.method public static synthetic g3(Lk0/sk;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/sk;->n:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->c3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->e3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->f3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->d3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->b3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->p3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/sk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sk;->o3(I)V

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

    if-eqz v1, :cond_13

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

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-eq v4, v5, :cond_11

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_f

    const/16 v5, 0x37

    const/16 v9, -0x4f

    const/16 v10, 0xe3

    const/16 v11, 0x12

    const/16 v12, 0xf

    const/4 v14, 0x4

    const/4 v13, 0x3

    if-eq v4, v5, :cond_c

    const/16 v5, 0x38

    if-eq v4, v5, :cond_9

    const/16 v5, 0x10

    const/16 v15, 0xb

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v4, v1, v8

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/16 v1, 0x9

    .line 5
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget v4, v1, v8

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 7
    invoke-virtual {v0, v15}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    :cond_2
    new-array v4, v7, [I

    aput v10, v4, v2

    aput v13, v4, v8

    aput v9, v4, v3

    const/16 v3, 0xa2

    aput v3, v4, v13

    aput v2, v4, v14

    .line 8
    aget v1, v1, v8

    aput v1, v4, v6

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_1
    aget v1, v1, v8

    const/16 v2, 0xc

    if-eqz v1, :cond_3

    .line 10
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_13

    const/16 v1, 0x14

    .line 11
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 12
    :cond_3
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_13

    const/16 v1, 0x13

    .line 13
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_4

    .line 15
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-nez v1, :cond_13

    const/16 v1, 0x11

    .line 16
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 17
    :cond_4
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-ne v1, v8, :cond_13

    .line 18
    invoke-virtual {v0, v11}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_3
    aget v1, v1, v8

    const/16 v2, 0x41

    if-eqz v1, :cond_5

    .line 20
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_13

    .line 21
    invoke-virtual {v0, v12}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 22
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_13

    .line 23
    invoke-virtual {v0, v5}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_4
    aget v1, v1, v8

    const/16 v2, 0xd

    if-eqz v1, :cond_6

    .line 25
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_13

    const/16 v1, 0xe

    .line 26
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    .line 27
    sget-object v3, Lk0/nt;->g:[I

    aget v2, v3, v2

    if-ne v2, v8, :cond_13

    .line 28
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_5
    aget v1, v1, v8

    if-eqz v1, :cond_7

    .line 30
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_13

    .line 31
    invoke-virtual {v0, v13}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 32
    :cond_7
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v8, :cond_13

    .line 33
    invoke-virtual {v0, v14}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 34
    :pswitch_6
    aget v1, v1, v8

    const/16 v2, 0xa

    if-eqz v1, :cond_8

    .line 35
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_13

    const/16 v1, 0xe

    .line 36
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 37
    :cond_8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_13

    .line 38
    invoke-virtual {v0, v3}, Lk0/sk;->a3(I)V

    goto/16 :goto_0

    .line 39
    :cond_9
    aget v4, v1, v8

    if-ge v4, v12, :cond_a

    new-array v1, v7, [I

    .line 40
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_a
    aget v4, v1, v8

    if-lt v4, v11, :cond_b

    aget v4, v1, v8

    const/16 v5, 0x20

    if-gt v4, v5, :cond_b

    .line 42
    aget v1, v1, v8

    const/16 v4, 0xe

    sub-int/2addr v1, v4

    mul-int/2addr v1, v3

    sub-int/2addr v1, v8

    new-array v4, v7, [I

    aput v10, v4, v2

    aput v13, v4, v8

    aput v9, v4, v3

    const/16 v3, 0xa1

    aput v3, v4, v13

    aput v2, v4, v14

    aput v1, v4, v6

    .line 43
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 44
    :cond_b
    aget v1, v1, v8

    const/16 v2, 0x20

    if-le v1, v2, :cond_13

    new-array v1, v7, [I

    .line 45
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 46
    :cond_c
    aget v4, v1, v8

    if-ge v4, v12, :cond_d

    new-array v1, v7, [I

    .line 47
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 48
    :cond_d
    aget v4, v1, v8

    if-lt v4, v11, :cond_e

    aget v4, v1, v8

    const/16 v5, 0x20

    if-gt v4, v5, :cond_e

    .line 49
    aget v1, v1, v8

    const/16 v4, 0xe

    sub-int/2addr v1, v4

    mul-int/2addr v1, v3

    sub-int/2addr v1, v8

    new-array v4, v7, [I

    aput v10, v4, v2

    aput v13, v4, v8

    aput v9, v4, v3

    const/16 v3, 0xa0

    aput v3, v4, v13

    aput v2, v4, v14

    aput v1, v4, v6

    .line 50
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    .line 51
    :cond_e
    aget v1, v1, v8

    const/16 v2, 0x20

    if-le v1, v2, :cond_13

    new-array v1, v7, [I

    .line 52
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 53
    :cond_f
    aget v1, v1, v8

    if-eqz v1, :cond_10

    const/4 v1, 0x7

    .line 54
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto :goto_0

    :cond_10
    const/16 v1, 0x8

    .line 55
    invoke-virtual {v0, v1}, Lk0/sk;->a3(I)V

    goto :goto_0

    .line 56
    :cond_11
    aget v1, v1, v8

    if-eqz v1, :cond_12

    .line 57
    invoke-virtual {v0, v6}, Lk0/sk;->a3(I)V

    goto :goto_0

    .line 58
    :cond_12
    invoke-virtual {v0, v7}, Lk0/sk;->a3(I)V

    :cond_13
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
        0x3
        -0x4f
        0xa1
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        -0x4f
        0xa1
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x3
        -0x4f
        0xa0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x3
        -0x4f
        0xa0
        0x0
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->q:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/sk;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lk0/sk;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/sk;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xf

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
        0x3b
        0x46
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4b

    const/16 v8, 0x12

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v2, v8, :cond_3e

    const/16 v8, 0x16

    if-eq v2, v8, :cond_3d

    const/16 v8, 0x22

    const/16 v15, 0x1e

    const/16 v13, 0x1f

    if-eq v2, v8, :cond_26

    const/16 v8, 0x30

    if-eq v2, v8, :cond_25

    const/16 v8, 0x47

    if-eq v2, v8, :cond_24

    const/16 v8, 0x52

    const/16 v12, 0xb

    const/16 v9, 0xa

    const/16 v14, 0xf

    if-eq v2, v8, :cond_1b

    const/16 v8, 0x61

    if-eq v2, v8, :cond_c

    const/16 v8, 0x62

    if-eq v2, v8, :cond_a

    const/16 v8, 0xc

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v8, v1, v5

    shr-int/2addr v8, v10

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 3
    aget-byte v3, v1, v5

    shr-int/2addr v3, v6

    and-int/2addr v3, v4

    aput v3, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v5, v1, v3

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v2, v6

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v5, v7, [I

    .line 5
    aget-byte v1, v1, v3

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1
    new-array v2, v7, [I

    add-int/lit8 v13, p2, 0x2

    .line 6
    aget-byte v15, v1, v13

    shr-int/2addr v15, v4

    and-int/2addr v15, v7

    aput v15, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 7
    aget-byte v15, v1, v13

    shr-int/2addr v15, v5

    and-int/2addr v15, v7

    aput v15, v2, v6

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 8
    aget-byte v12, v1, v13

    shr-int/lit8 v10, v12, 0x4

    and-int/2addr v10, v11

    aput v10, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 9
    aget-byte v8, v1, v13

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v6

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    .line 10
    aget-byte v8, v1, v13

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    .line 11
    aget-byte v8, v1, v13

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 12
    aget-byte v8, v1, v3

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 13
    aget-byte v8, v1, v3

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aput v8, v2, v6

    const/16 v8, 0xe

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v8, v7, [I

    .line 14
    aget-byte v3, v1, v3

    const/4 v10, 0x5

    shr-int/2addr v3, v10

    and-int/2addr v3, v7

    aput v3, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 15
    aget-byte v10, v1, v8

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    .line 16
    aget-byte v10, v1, v8

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    .line 17
    aget-byte v10, v1, v8

    const/4 v11, 0x5

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    .line 18
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v14

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 19
    aget-byte v3, v1, v2

    const/16 v8, 0xff

    and-int/2addr v3, v8

    add-int/lit8 v10, p2, 0x6

    .line 20
    aget-byte v11, v1, v10

    and-int/2addr v11, v8

    const-string v12, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v12, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 22
    aget-byte v3, v1, v10

    and-int/2addr v3, v8

    .line 23
    aget-byte v2, v1, v2

    and-int/lit16 v11, v2, 0xff

    :cond_0
    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_1

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v3, 0x1b

    .line 24
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    const/16 v3, 0x1b

    const/16 v8, 0x80

    if-ne v2, v8, :cond_2

    new-array v2, v7, [I

    const/4 v8, -0x3

    aput v8, v2, v6

    .line 25
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v8, v7, [I

    aput v2, v8, v6

    .line 26
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :goto_1
    and-int/lit16 v3, v11, 0xff

    if-nez v3, :cond_3

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v8, 0x1c

    .line 27
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    const/16 v8, 0x1c

    const/16 v2, 0x80

    if-ne v3, v2, :cond_4

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 28
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v2, v7, [I

    aput v3, v2, v6

    .line 29
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x31

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x8

    .line 30
    aget-byte v10, v1, v8

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v7, [I

    .line 31
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 32
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v3, 0x78

    if-ne v2, v3, :cond_4c

    const/16 v2, 0x16

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xa

    .line 33
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v7, [I

    .line 34
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v7, [I

    .line 35
    aget-byte v4, v1, v8

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v7, [I

    .line 36
    aget-byte v1, v1, v8

    shr-int/2addr v1, v6

    and-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2
    const/16 v2, 0x25

    new-array v13, v7, [I

    add-int/lit8 v17, p2, 0x2

    .line 37
    aget-byte v18, v1, v17

    shr-int/lit8 v18, v18, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v13, v6

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 38
    aget-byte v13, v1, v17

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 39
    aget-byte v3, v1, v17

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v2, v6

    const/16 v3, 0xe

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 40
    aget-byte v3, v1, v2

    const/16 v9, 0xff

    and-int/2addr v3, v9

    add-int/lit8 v13, p2, 0x4

    .line 41
    aget-byte v15, v1, v13

    and-int/2addr v15, v9

    const-string v11, "persist.fyt.reversetemp"

    .line 42
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 43
    aget-byte v3, v1, v13

    and-int/2addr v3, v9

    .line 44
    aget-byte v2, v1, v2

    and-int/lit16 v15, v2, 0xff

    :cond_5
    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_6

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v3, 0x1b

    .line 45
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    const/16 v3, 0x1b

    if-ne v2, v9, :cond_7

    new-array v2, v7, [I

    const/4 v11, -0x3

    aput v11, v2, v6

    .line 46
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v11, v7, [I

    aput v2, v11, v6

    .line 47
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v15, 0xff

    if-nez v2, :cond_8

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v3, 0x1c

    .line 48
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    const/16 v3, 0x1c

    if-ne v2, v9, :cond_9

    new-array v2, v7, [I

    const/4 v9, -0x3

    aput v9, v2, v6

    .line 49
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    new-array v9, v7, [I

    aput v2, v9, v6

    .line 50
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x31

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x5

    .line 51
    aget-byte v11, v1, v9

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    .line 52
    aget-byte v11, v1, v9

    shr-int/2addr v11, v5

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    .line 53
    aget-byte v11, v1, v9

    const/4 v13, 0x5

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    .line 54
    aget-byte v9, v1, v9

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x6

    .line 55
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v14

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    .line 56
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v9, v14

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x7

    .line 57
    aget-byte v9, v1, v3

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 58
    aget-byte v3, v1, v3

    const/4 v8, 0x5

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x8

    .line 59
    aget-byte v9, v1, v8

    shr-int/2addr v9, v10

    const/4 v11, 0x3

    and-int/2addr v9, v11

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 60
    aget-byte v3, v1, v8

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x9

    .line 61
    aget-byte v8, v1, v3

    shr-int/2addr v8, v10

    and-int/2addr v8, v11

    aput v8, v2, v6

    const/16 v8, 0x1f

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v8, v7, [I

    .line 62
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xa

    .line 63
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v7, [I

    .line 64
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v7, [I

    .line 65
    aget-byte v4, v1, v8

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v7, [I

    .line 66
    aget-byte v4, v1, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x57

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 67
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v14

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v7, [I

    .line 68
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 69
    :cond_a
    iget v2, v0, Lk0/sk;->k:I

    if-ne v2, v12, :cond_4c

    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v1, v1, v2

    iput v1, v0, Lk0/sk;->j:I

    if-ne v1, v7, :cond_b

    .line 71
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 72
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_15

    .line 73
    :cond_b
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 74
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 76
    aget-byte v2, v1, v2

    .line 77
    sget v4, Lu0/b;->r0:I

    if-nez v4, :cond_10

    .line 78
    iget v4, v0, Lk0/sk;->e:I

    if-eq v4, v2, :cond_13

    .line 79
    iput v2, v0, Lk0/sk;->e:I

    if-eq v2, v7, :cond_f

    .line 80
    iget v4, v0, Lk0/sk;->f:I

    if-ne v4, v7, :cond_d

    goto :goto_5

    :cond_d
    if-nez v2, :cond_13

    if-nez v4, :cond_13

    const/16 v2, 0xa6

    new-array v4, v7, [I

    aput v6, v4, v6

    .line 81
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 82
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lk0/sk;->g:Z

    if-eqz v2, :cond_e

    const-wide/16 v4, 0x15e

    .line 83
    invoke-static {v4, v5}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v4, "false"

    .line 84
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_e
    iput-boolean v6, v0, Lk0/sk;->g:Z

    goto :goto_6

    :cond_f
    :goto_5
    const/16 v2, 0xa6

    new-array v4, v7, [I

    aput v7, v4, v6

    .line 86
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 87
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 88
    iput-boolean v7, v0, Lk0/sk;->g:Z

    const-string v2, "persist.lesc.video.ignore"

    const-string v4, "true"

    .line 89
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    .line 90
    invoke-static {v4, v5}, La/i;->a0(J)V

    .line 91
    invoke-static {}, Lo1/u;->z()I

    goto :goto_6

    .line 92
    :cond_10
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 93
    iget v4, v0, Lk0/sk;->e:I

    if-eq v4, v2, :cond_13

    .line 94
    iput v2, v0, Lk0/sk;->e:I

    if-ne v2, v7, :cond_11

    .line 95
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_6

    :cond_11
    if-nez v2, :cond_12

    .line 96
    iget v4, v0, Lk0/sk;->f:I

    if-ne v4, v7, :cond_12

    .line 97
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v4, 0x255

    invoke-virtual {v2, v4}, Lc/e;->c(I)Z

    goto :goto_6

    :cond_12
    if-nez v2, :cond_13

    .line 98
    iget v2, v0, Lk0/sk;->f:I

    if-nez v2, :cond_13

    .line 99
    invoke-static {v6}, Lk0/qt;->a(I)V

    .line 100
    :cond_13
    :goto_6
    sget v2, Lu0/b;->r0:I

    if-ne v2, v7, :cond_17

    add-int/lit8 v2, p2, 0x4

    .line 101
    aget-byte v2, v1, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    add-int/lit8 v5, p2, 0x5

    .line 102
    aget-byte v5, v1, v5

    and-int/2addr v5, v4

    add-int/lit8 v8, p2, 0x6

    .line 103
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    add-int/lit8 v11, p2, 0x7

    .line 104
    aget-byte v11, v1, v11

    and-int/2addr v11, v4

    if-lt v2, v9, :cond_14

    if-lt v5, v9, :cond_14

    if-lt v8, v9, :cond_14

    if-lt v11, v9, :cond_14

    .line 105
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 106
    :cond_14
    sget v4, Ll0/c0;->g:I

    if-ne v4, v2, :cond_15

    sget v4, Ll0/c0;->h:I

    if-ne v4, v5, :cond_15

    sget v4, Ll0/c0;->i:I

    if-ne v4, v8, :cond_15

    sget v4, Ll0/c0;->j:I

    if-eq v4, v11, :cond_16

    .line 107
    :cond_15
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_16

    iget v4, v0, Lk0/sk;->e:I

    if-nez v4, :cond_16

    .line 108
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 109
    sput v10, Ll0/c0;->k:I

    .line 110
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 111
    :cond_16
    :goto_7
    sput v2, Ll0/c0;->g:I

    .line 112
    sput v5, Ll0/c0;->h:I

    .line 113
    sput v8, Ll0/c0;->i:I

    .line 114
    sput v11, Ll0/c0;->j:I

    :cond_17
    add-int/lit8 v2, p2, 0x4

    .line 115
    aget-byte v2, v1, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 117
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 118
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 119
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 120
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 121
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xb

    .line 122
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0xd

    .line 123
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0xc

    aget-byte v4, v1, v4

    const/16 v5, 0x30c

    invoke-static {v2, v4, v7, v5}, Lk0/qt;->l(IIZI)V

    const/4 v2, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 124
    aget-byte v5, v1, v4

    if-ne v5, v7, :cond_18

    move v5, v7

    goto :goto_8

    :cond_18
    move v5, v6

    :goto_8
    aget-byte v8, v1, v4

    if-ne v8, v3, :cond_19

    move v3, v7

    goto :goto_9

    :cond_19
    move v3, v6

    :goto_9
    aget-byte v1, v1, v4

    if-ne v1, v2, :cond_1a

    move v6, v7

    :cond_1a
    invoke-static {v5, v3, v6}, Ll0/c0;->N1(III)V

    goto/16 :goto_15

    :cond_1b
    const/16 v2, 0x78

    new-array v8, v7, [I

    add-int/lit8 v11, p2, 0x2

    .line 125
    aget-byte v13, v1, v11

    shr-int/2addr v13, v10

    and-int/2addr v13, v14

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v8, v7, [I

    .line 126
    aget-byte v13, v1, v11

    shr-int/2addr v13, v6

    and-int/2addr v13, v14

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v8, v7, [I

    add-int/lit8 v13, p2, 0x3

    .line 127
    aget-byte v13, v1, v13

    shr-int/2addr v13, v6

    const/16 v15, 0xff

    and-int/2addr v13, v15

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v8, v7, [I

    add-int/lit8 v13, p2, 0x4

    .line 128
    aget-byte v13, v1, v13

    shr-int/2addr v13, v6

    and-int/2addr v13, v15

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v8, v7, [I

    add-int/lit8 v13, p2, 0x5

    .line 129
    aget-byte v15, v1, v13

    shr-int/2addr v15, v5

    const/16 v16, 0x3

    and-int/lit8 v15, v15, 0x3

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v8, v7, [I

    .line 130
    aget-byte v15, v1, v13

    shr-int/2addr v15, v10

    and-int/lit8 v15, v15, 0x3

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v8, v7, [I

    .line 131
    aget-byte v15, v1, v13

    shr-int/2addr v15, v3

    and-int/lit8 v15, v15, 0x3

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v8, v7, [I

    .line 132
    aget-byte v13, v1, v13

    shr-int/2addr v13, v6

    and-int/lit8 v13, v13, 0x3

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v8, v7, [I

    add-int/lit8 v13, p2, 0x6

    .line 133
    aget-byte v15, v1, v13

    shr-int/2addr v15, v5

    and-int/lit8 v15, v15, 0x3

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v8, v7, [I

    .line 134
    aget-byte v15, v1, v13

    shr-int/2addr v15, v10

    and-int/lit8 v15, v15, 0x3

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v8, v7, [I

    .line 135
    aget-byte v13, v1, v13

    shr-int/2addr v13, v3

    and-int/lit8 v13, v13, 0x3

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v8, v7, [I

    add-int/lit8 v13, p2, 0x7

    .line 136
    aget-byte v15, v1, v13

    shr-int/2addr v15, v4

    and-int/2addr v15, v7

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v8, v7, [I

    .line 137
    aget-byte v15, v1, v13

    shr-int/2addr v15, v10

    and-int/2addr v15, v7

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v8, v7, [I

    .line 138
    aget-byte v13, v1, v13

    shr-int/2addr v13, v6

    and-int/2addr v13, v14

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v8, v7, [I

    add-int/lit8 v13, p2, 0x8

    .line 139
    aget-byte v15, v1, v13

    shr-int/2addr v15, v5

    const/4 v9, 0x3

    and-int/2addr v15, v9

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v8, v7, [I

    .line 140
    aget-byte v15, v1, v13

    shr-int/2addr v15, v10

    and-int/2addr v15, v9

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v8, v7, [I

    .line 141
    aget-byte v13, v1, v13

    shr-int/2addr v13, v3

    and-int/2addr v13, v9

    aput v13, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    .line 142
    aget-byte v2, v1, v11

    shr-int/2addr v2, v6

    and-int/2addr v2, v14

    if-eqz v2, :cond_1f

    if-eq v2, v7, :cond_1e

    if-eq v2, v9, :cond_1d

    if-eq v2, v14, :cond_1c

    goto/16 :goto_15

    :cond_1c
    const/16 v2, 0x92

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xa

    .line 143
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    .line 144
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 145
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0xb

    aget-byte v4, v1, v8

    const/16 v5, 0x1f

    and-int/2addr v4, v5

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x94

    .line 146
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_15

    :cond_1d
    const/16 v2, 0x8b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 147
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 148
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 149
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 150
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 151
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xf

    .line 152
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x10

    .line 153
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_1e
    const/16 v5, 0xff

    const/16 v2, 0x89

    new-array v3, v7, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 154
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 155
    :cond_1f
    aget-byte v2, v1, v11

    shr-int/2addr v2, v10

    and-int/2addr v2, v14

    if-eq v2, v7, :cond_23

    if-eq v2, v3, :cond_22

    if-eq v2, v10, :cond_21

    const/4 v3, 0x5

    if-eq v2, v3, :cond_20

    goto/16 :goto_15

    :cond_20
    const/16 v2, 0x9f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 156
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 157
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 158
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xf

    .line 159
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_21
    const/16 v5, 0xff

    const/16 v2, 0x9c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 160
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 161
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xf

    .line 162
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_22
    const/16 v5, 0xff

    const/16 v2, 0x98

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 163
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 164
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 165
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xf

    .line 166
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_23
    const/16 v5, 0xff

    const/16 v2, 0x95

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xa

    .line 167
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xb

    .line 168
    aget-byte v5, v1, v5

    const/16 v8, 0x8

    shl-int/2addr v5, v8

    const v8, 0xff00

    and-int/2addr v5, v8

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v1, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    const/16 v5, 0xd

    add-int/lit8 v5, p2, 0xd

    .line 169
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_24
    const/16 v2, 0x70

    new-array v4, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 170
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    .line 171
    :cond_25
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_26
    add-int/lit8 v2, p2, 0x2

    .line 172
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/sk;->c:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 173
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    move v2, v6

    .line 174
    :goto_a
    iget-object v3, v0, Lk0/sk;->d:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_28

    .line 175
    iget v8, v0, Lk0/sk;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_27

    if-eqz v8, :cond_28

    .line 176
    iput v2, v0, Lk0/sk;->b:I

    goto :goto_b

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 177
    :cond_28
    :goto_b
    iget v8, v0, Lk0/sk;->c:I

    if-eq v8, v10, :cond_3c

    const/4 v9, 0x5

    if-eq v8, v9, :cond_3b

    const/16 v9, 0x81

    if-eq v8, v9, :cond_39

    const/16 v9, 0x82

    if-eq v8, v9, :cond_37

    const/16 v9, 0x91

    if-eq v8, v9, :cond_35

    const/16 v4, 0x92

    if-eq v8, v4, :cond_33

    packed-switch v8, :pswitch_data_1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v7, :cond_29

    .line 178
    array-length v1, v3

    if-ge v2, v1, :cond_4c

    .line 179
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_29
    if-nez v1, :cond_4c

    .line 180
    iget v1, v0, Lk0/sk;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2a

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2b

    .line 181
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_2a
    const/16 v2, 0xff

    .line 182
    :cond_2b
    :goto_c
    iput v2, v0, Lk0/sk;->b:I

    goto/16 :goto_15

    :pswitch_3
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_4c

    .line 183
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_2c

    .line 184
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 185
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_15

    .line 186
    :cond_2c
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x254

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    :pswitch_4
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_4c

    .line 187
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_2d

    .line 188
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 189
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_15

    .line 190
    :cond_2d
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x253

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    :pswitch_5
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_4c

    .line 191
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_2e

    .line 192
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 193
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_15

    .line 194
    :cond_2e
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x250

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    :pswitch_6
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_4c

    .line 195
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_2f

    .line 196
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 197
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_15

    .line 198
    :cond_2f
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    :pswitch_7
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_4c

    .line 199
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_31

    .line 200
    iget v1, v0, Lk0/sk;->f:I

    if-nez v1, :cond_30

    .line 201
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 202
    invoke-static {}, Lo1/u;->z()I

    .line 203
    iput-boolean v7, v0, Lk0/sk;->h:Z

    goto/16 :goto_15

    :cond_30
    if-ne v1, v7, :cond_4c

    .line 204
    iget-boolean v1, v0, Lk0/sk;->h:Z

    if-eqz v1, :cond_4c

    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 205
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 206
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 207
    iput-boolean v6, v0, Lk0/sk;->h:Z

    goto/16 :goto_15

    :cond_31
    const-string v1, "com.syu.fourcamera2"

    .line 208
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 209
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    .line 210
    :cond_32
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_15

    .line 211
    :cond_33
    sget v2, Lk0/sk;->z:I

    if-ne v2, v7, :cond_4c

    move v2, v6

    :goto_d
    const/16 v3, 0xff

    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_34

    const/16 v3, 0x8

    .line 212
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_34
    const/16 v3, 0x8

    .line 213
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 214
    :cond_35
    sget v2, Lk0/sk;->z:I

    if-ne v2, v7, :cond_4c

    move v2, v6

    const/16 v3, 0xff

    :goto_e
    and-int/lit16 v5, v1, 0xff

    if-ge v2, v5, :cond_36

    .line 215
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 216
    :cond_36
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_37
    const/16 v3, 0xff

    move v2, v6

    :goto_f
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_38

    const/16 v4, 0x1e

    .line 217
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_38
    const/16 v4, 0x1e

    .line 218
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_39
    const/16 v3, 0xff

    move v2, v6

    :goto_10
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_3a

    const/16 v4, 0x1f

    .line 219
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_3a
    const/16 v4, 0x1f

    .line 220
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3b
    const/16 v3, 0xff

    .line 221
    sget v2, Lk0/sk;->z:I

    if-ne v2, v7, :cond_4c

    and-int/2addr v1, v3

    if-ne v1, v7, :cond_4c

    .line 222
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 223
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3c
    const/16 v3, 0xff

    .line 224
    sget v2, Lk0/sk;->z:I

    if-ne v2, v7, :cond_4c

    and-int/2addr v1, v3

    if-ne v1, v7, :cond_4c

    const/16 v2, 0x8

    .line 225
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 226
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3d
    const/16 v2, 0x8

    const/16 v4, 0x69

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 227
    aget-byte v9, v1, v8

    shl-int/2addr v9, v2

    const v2, 0xff00

    and-int/2addr v9, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v10, v1, v2

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x407

    new-array v5, v7, [I

    .line 228
    aget-byte v9, v1, v8

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    const v12, 0xff00

    and-int/2addr v9, v12

    aget-byte v13, v1, v2

    and-int/2addr v13, v11

    or-int/2addr v9, v13

    aput v9, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 229
    aget-byte v4, v1, v8

    shl-int/2addr v4, v10

    and-int/2addr v4, v12

    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    or-int/2addr v2, v4

    .line 230
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v3, v3, [I

    aput v7, v3, v6

    aput v2, v3, v7

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v3, v2, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 231
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_3e
    const-string v2, "persist.syu.reversefrontdoor"

    .line 232
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3f

    new-array v2, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 233
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 234
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_3f
    new-array v2, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 235
    aget-byte v9, v1, v8

    shr-int/2addr v9, v5

    and-int/2addr v9, v7

    aput v9, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 236
    aget-byte v8, v1, v8

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_11
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x6

    .line 237
    aget-byte v8, v1, v3

    const/4 v9, 0x5

    shr-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v2, v6

    const/4 v8, 0x3

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 238
    aget-byte v9, v1, v3

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 239
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 240
    aget-byte v8, v1, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 241
    aget-byte v11, v1, v8

    and-int/2addr v11, v9

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x8

    .line 242
    aget-byte v11, v1, v9

    shr-int/2addr v11, v5

    const/4 v12, 0x3

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v11, p2, 0xa

    .line 243
    aget-byte v12, v1, v11

    const/16 v13, 0xff

    and-int/2addr v12, v13

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v12, p2, 0x4

    .line 244
    aget-byte v12, v1, v12

    and-int/2addr v12, v13

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 245
    aget-byte v8, v1, v8

    and-int/2addr v8, v13

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 246
    aget-byte v8, v1, v9

    shr-int/lit8 v5, v8, 0x6

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 247
    aget-byte v5, v1, v9

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 248
    iget v2, v0, Lk0/sk;->f:I

    aget-byte v3, v1, v9

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    if-eq v2, v3, :cond_48

    .line 249
    aget-byte v2, v1, v9

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    iput v2, v0, Lk0/sk;->f:I

    .line 250
    sget v3, Lu0/b;->r0:I

    if-nez v3, :cond_43

    .line 251
    iget v3, v0, Lk0/sk;->e:I

    if-eq v3, v7, :cond_42

    if-ne v2, v7, :cond_40

    goto :goto_12

    :cond_40
    if-nez v3, :cond_48

    if-nez v2, :cond_48

    .line 252
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-boolean v2, v0, Lk0/sk;->g:Z

    if-eqz v2, :cond_41

    const/16 v2, 0xa6

    new-array v3, v7, [I

    aput v6, v3, v6

    .line 253
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-wide/16 v2, 0x15e

    .line 254
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "false"

    .line 255
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_41
    iput-boolean v6, v0, Lk0/sk;->g:Z

    goto/16 :goto_13

    .line 257
    :cond_42
    :goto_12
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    const/16 v2, 0xa6

    new-array v3, v7, [I

    aput v7, v3, v6

    .line 258
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 259
    iput-boolean v7, v0, Lk0/sk;->g:Z

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 260
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 261
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 262
    invoke-static {}, Lo1/u;->z()I

    goto :goto_13

    :cond_43
    if-ne v3, v7, :cond_48

    .line 263
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_48

    add-int/lit8 v2, p2, 0x3

    .line 264
    aget-byte v2, v1, v2

    .line 265
    iget v3, v0, Lk0/sk;->f:I

    if-ne v3, v7, :cond_46

    if-ne v2, v7, :cond_45

    const-string v2, "com.syu.fourcamera2"

    .line 266
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 267
    iput-boolean v7, v0, Lk0/sk;->g:Z

    .line 268
    :cond_44
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_13

    :cond_45
    const-string v2, "com.syu.fourcamera2"

    .line 269
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 270
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x24e

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    .line 271
    iput-boolean v7, v0, Lk0/sk;->g:Z

    goto :goto_13

    .line 272
    :cond_46
    iget v2, v0, Lk0/sk;->e:I

    if-nez v2, :cond_48

    if-nez v3, :cond_48

    .line 273
    iget-boolean v2, v0, Lk0/sk;->g:Z

    if-eqz v2, :cond_47

    const-string v2, "com.syu.fourcamera2"

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 274
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x266

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    .line 275
    :cond_47
    iput-boolean v6, v0, Lk0/sk;->g:Z

    :cond_48
    :goto_13
    add-int/lit8 v2, p2, 0x9

    .line 276
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_49

    .line 277
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    rsub-int v2, v2, 0x3e8

    goto :goto_14

    :cond_49
    const/4 v3, 0x5

    .line 278
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x7f

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x3e8

    .line 279
    :goto_14
    invoke-static {v2}, Lu0/d;->B3(I)V

    .line 280
    sget v2, Lu0/b;->P:I

    if-nez v2, :cond_4c

    .line 281
    aget-byte v1, v1, v11

    if-eqz v1, :cond_4a

    .line 282
    invoke-static {v7}, Lk0/qt;->b(I)V

    goto :goto_15

    .line 283
    :cond_4a
    invoke-static {v6}, Lk0/qt;->b(I)V

    goto :goto_15

    :cond_4b
    const/16 v2, 0x76

    new-array v8, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 284
    aget-byte v9, v1, v3

    shr-int/lit8 v5, v9, 0x6

    and-int/2addr v5, v7

    aput v5, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v5, v7, [I

    .line 285
    aget-byte v1, v1, v3

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    :cond_4c
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sk;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/sk;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/sk;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa8

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
    .locals 7

    const/4 p3, 0x6

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p3, [I

    aput p4, p1, v5

    aput v2, p1, v4

    const/16 p3, -0x4f

    aput p3, p1, v3

    .line 1
    aget p3, p2, v5

    aput p3, p1, v2

    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0xa3

    new-array p3, v4, [I

    aput v5, p3, v5

    .line 2
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xa5

    new-array p3, v4, [I

    .line 3
    aget p2, p2, v5

    aput p2, p3, v5

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x4e

    aput p3, p1, v3

    .line 4
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x3e

    aput p3, p1, v3

    .line 5
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, p3, [I

    aput p4, p1, v5

    aput v2, p1, v4

    const/16 p3, -0x3f

    aput p3, p1, v3

    .line 6
    aget p3, p2, v5

    aput p3, p1, v2

    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    aget p1, p2, v5

    iput p1, p0, Lk0/sk;->v:I

    goto/16 :goto_0

    :pswitch_6
    const/16 p1, 0xd

    new-array p1, p1, [I

    aput p4, p1, v5

    const/16 p4, 0xa

    aput p4, p1, v4

    const/16 v6, -0x50

    aput v6, p1, v3

    .line 8
    aget v6, p2, v5

    aput v6, p1, v2

    aget v4, p2, v4

    aput v4, p1, v1

    aget v3, p2, v3

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p3

    const/4 v2, 0x7

    aput v5, p1, v2

    aget v1, p2, v1

    const/16 v3, 0x8

    aput v1, p1, v3

    const/16 v1, 0x9

    aget v0, p2, v0

    aput v0, p1, v1

    aget p3, p2, p3

    aput p3, p1, p4

    const/16 p3, 0xb

    aget p4, p2, v2

    aput p4, p1, p3

    const/16 p3, 0xc

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_7
    aget p1, p2, v5

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 10
    :pswitch_8
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/sk;->o3(I)V

    goto :goto_0

    .line 11
    :pswitch_9
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/sk;->p3(I)V

    goto :goto_0

    .line 12
    :pswitch_a
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/sk;->b3(I)V

    goto :goto_0

    .line 13
    :pswitch_b
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/sk;->f3(I)V

    goto :goto_0

    .line 14
    :pswitch_c
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/sk;->e3(I)V

    goto :goto_0

    .line 15
    :pswitch_d
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/sk;->c3(I)V

    goto :goto_0

    :pswitch_e
    new-array p1, v1, [I

    aput p4, p1, v5

    aput v4, p1, v4

    const/16 p3, -0x77

    aput p3, p1, v3

    .line 16
    aget p2, p2, v5

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x6d

    aput p3, p1, v3

    .line 17
    aget p2, p2, v5

    aput p2, p1, v2

    aput v5, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array p1, v0, [I

    aput p4, p1, v5

    aput v3, p1, v4

    const/16 p3, -0x6e

    aput p3, p1, v3

    .line 18
    aget p2, p2, v5

    aput p2, p1, v2

    aput v5, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :pswitch_11
    aget p1, p2, v5

    invoke-virtual {p0, p1}, Lk0/sk;->d3(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final a3(I)V
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x3

    aput v5, v1, v4

    const/4 v6, 0x2

    const/16 v7, -0x4f

    aput v7, v1, v6

    aput p1, v1, v5

    const/4 v8, 0x4

    aput v4, v1, v8

    const/4 v9, 0x5

    aput v2, v1, v9

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v10, 0xc8

    .line 2
    invoke-static {v10, v11}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v7, v0, v6

    aput p1, v0, v5

    aput v2, v0, v8

    aput v2, v0, v9

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/sk;->D:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x75

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sk;->D:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3(I)V
    .locals 0

    return-void
.end method

.method public final d3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/sk;->C:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x70

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x4

    new-array v3, v1, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    aput v0, v3, v0

    const/4 v0, 0x2

    const/16 v4, -0x79

    aput v4, v3, v0

    const/4 v0, 0x3

    aput p1, v3, v0

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/sk;->C:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/sk;->A:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x72

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/sk;->A:I

    if-eq p1, v3, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->g(II)V

    .line 5
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lk0/sk;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.splitscreenon"

    .line 6
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/sk;->B:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x73

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    new-array p1, v0, [I

    .line 3
    sget v1, Lk0/sk;->B:I

    aput v1, p1, v2

    const/16 v1, 0x40e

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/sk;->B:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0xa7

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sk;->E:I

    .line 3
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sk;->E:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0xa4

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sk;->z:I

    .line 3
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sk;->z:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sk;->n:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
