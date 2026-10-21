.class public Lk0/ki;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static C:I = 0x0

.field public static D:I = 0x1

.field public static E:I = 0x3e8

.field public static F:I = 0x0

.field public static G:I = 0x3e8

.field public static H:I = 0x0

.field public static I:I = 0x3e8

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I


# instance fields
.field public final A:I

.field public final B:I

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Lo1/g0;

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/ki;->c:I

    const/16 v2, 0x11

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

    const/16 v15, 0xf

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v18, 0x10

    aput-object v4, v2, v18

    iput-object v2, v0, Lk0/ki;->d:[[I

    .line 4
    iput v1, v0, Lk0/ki;->f:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_11

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    aput-object v4, v2, v17

    iput-object v2, v0, Lk0/ki;->g:[[I

    .line 6
    iput-boolean v1, v0, Lk0/ki;->h:Z

    .line 7
    iput v1, v0, Lk0/ki;->i:I

    .line 8
    iput v1, v0, Lk0/ki;->j:I

    .line 9
    iput-boolean v1, v0, Lk0/ki;->k:Z

    .line 10
    new-instance v2, Lk0/ki$a;

    invoke-direct {v2, v0}, Lk0/ki$a;-><init>(Lk0/ki;)V

    iput-object v2, v0, Lk0/ki;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v2, Lk0/ki$b;

    invoke-direct {v2, v0}, Lk0/ki$b;-><init>(Lk0/ki;)V

    iput-object v2, v0, Lk0/ki;->m:Ljava/lang/Runnable;

    .line 12
    iput v1, v0, Lk0/ki;->n:I

    .line 13
    new-instance v1, Lk0/ki$c;

    invoke-direct {v1, v0}, Lk0/ki$c;-><init>(Lk0/ki;)V

    iput-object v1, v0, Lk0/ki;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/ki$d;

    invoke-direct {v1, v0}, Lk0/ki$d;-><init>(Lk0/ki;)V

    iput-object v1, v0, Lk0/ki;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    invoke-direct {v1, v2, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/ki;->q:Lo1/g0;

    .line 16
    iput v5, v0, Lk0/ki;->r:I

    .line 17
    iput v3, v0, Lk0/ki;->s:I

    .line 18
    iput v6, v0, Lk0/ki;->t:I

    .line 19
    iput v7, v0, Lk0/ki;->u:I

    .line 20
    iput v8, v0, Lk0/ki;->v:I

    .line 21
    iput v9, v0, Lk0/ki;->w:I

    .line 22
    iput v10, v0, Lk0/ki;->x:I

    .line 23
    iput v11, v0, Lk0/ki;->y:I

    .line 24
    iput v12, v0, Lk0/ki;->z:I

    .line 25
    iput v13, v0, Lk0/ki;->A:I

    .line 26
    iput v14, v0, Lk0/ki;->B:I

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
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
        0x10
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x15
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x1f
    .end array-data

    :array_10
    .array-data 4
        0x18
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x3
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x5
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_18
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x9
        0x22
    .end array-data

    :array_1a
    .array-data 4
        0xa
        0x23
    .end array-data

    :array_1b
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_1c
    .array-data 4
        0xc
        0x21
    .end array-data

    :array_1d
    .array-data 4
        0xd
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0xf
        0x1d
    .end array-data
.end method

.method public static synthetic i3(Lk0/ki;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ki;->q:Lo1/g0;

    return-object p0
.end method

.method public static synthetic j3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->e3(I)V

    return-void
.end method

.method public static synthetic k3()I
    .locals 1

    .line 1
    sget v0, Lk0/ki;->D:I

    return v0
.end method

.method public static synthetic l3(Lk0/ki;III)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/ki;->h3(III)Z

    move-result p0

    return p0
.end method

.method public static synthetic m3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->c3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->d3(I)V

    return-void
.end method

.method public static synthetic o3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->g3(I)V

    return-void
.end method

.method public static synthetic p3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->f3(I)V

    return-void
.end method

.method public static synthetic q3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->b3(I)V

    return-void
.end method

.method public static synthetic r3(Lk0/ki;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ki;->a3(I)V

    return-void
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lk0/ki;->C:I

    return v0
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lk0/ki;->K:I

    return v0
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
    iget-object v0, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ki;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/ki;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v1, p0, Lk0/ki;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->g:I

    .line 9
    iput v1, v0, Lk0/mt;->j:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->i:I

    .line 12
    sget v0, Lk0/nt;->a:I

    const v1, 0xe701b7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/ki;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0x26

    const/4 v4, 0x5

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_35

    const/16 v3, 0x74

    const/16 v8, 0xf

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x7

    const/4 v12, 0x3

    if-eq v2, v3, :cond_34

    const/16 v3, 0x7d

    const v14, 0xff00

    const/16 v15, 0x8

    if-eq v2, v3, :cond_28

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_27

    const/16 v3, 0x28

    if-eq v2, v3, :cond_25

    const/16 v3, 0x29

    if-eq v2, v3, :cond_24

    const/16 v3, 0x40

    if-eq v2, v3, :cond_23

    const/16 v3, 0x41

    const/16 v13, 0x1e

    if-eq v2, v3, :cond_22

    const/16 v3, 0x70

    if-eq v2, v3, :cond_21

    const/16 v3, 0x71

    if-eq v2, v3, :cond_20

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_10

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x1

    .line 3
    aget-byte v3, v0, v3

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 4
    aget-byte v4, v0, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-eq v4, v10, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x4

    sub-int/2addr v3, v10

    const-string v8, "UTF-16LE"

    invoke-direct {v4, v0, v5, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x4

    sub-int/2addr v3, v10

    const-string v8, "UTF-16BE"

    invoke-direct {v4, v0, v5, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x4

    sub-int/2addr v3, v10

    const-string v8, "GB2312"

    invoke-direct {v4, v0, v5, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const-string v4, ""

    :goto_1
    if-eq v2, v7, :cond_5

    if-eq v2, v10, :cond_4

    if-eq v2, v12, :cond_3

    goto/16 :goto_10

    :cond_3
    const/16 v0, 0x59

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 11
    invoke-static {v0, v3, v4}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_10

    :cond_4
    const/16 v0, 0x5b

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 12
    invoke-static {v0, v3, v4}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_10

    :cond_5
    const/16 v0, 0x5a

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 13
    invoke-static {v0, v3, v4}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_10

    :pswitch_1
    const/16 v2, 0x4f

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 14
    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 15
    aget-byte v10, v0, v8

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x51

    new-array v3, v7, [I

    .line 16
    aget-byte v10, v0, v8

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x52

    new-array v3, v7, [I

    .line 17
    aget-byte v10, v0, v8

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x53

    new-array v3, v7, [I

    .line 18
    aget-byte v4, v0, v8

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x54

    new-array v3, v7, [I

    .line 19
    aget-byte v4, v0, v8

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x55

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 20
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x56

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 21
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x57

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 22
    aget-byte v4, v0, v4

    const/16 v8, 0x10

    shl-int/2addr v4, v8

    const/high16 v8, 0xff0000

    and-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v0, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v14

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x58

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 23
    aget-byte v4, v0, v4

    const/16 v7, 0x10

    shl-int/2addr v4, v7

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, v0, v7

    shl-int/2addr v7, v15

    and-int/2addr v7, v14

    or-int/2addr v4, v7

    const/16 v7, 0xd

    add-int/lit8 v7, p2, 0xd

    aget-byte v0, v0, v7

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_2
    const/16 v2, 0x4e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 24
    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 25
    iget v2, v1, Lk0/ki;->j:I

    aget-byte v3, v0, v4

    shr-int/2addr v3, v11

    and-int/2addr v3, v7

    if-eq v2, v3, :cond_36

    .line 26
    aget-byte v0, v0, v4

    shr-int/2addr v0, v11

    and-int/2addr v0, v7

    iput v0, v1, Lk0/ki;->j:I

    if-ne v0, v7, :cond_36

    .line 27
    invoke-virtual/range {p0 .. p0}, Lk0/ki;->u3()V

    goto/16 :goto_10

    :pswitch_3
    const/16 v2, 0x42

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 28
    aget-byte v10, v0, v8

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v7, [I

    .line 29
    aget-byte v10, v0, v8

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x44

    new-array v3, v7, [I

    .line 30
    aget-byte v10, v0, v8

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x45

    new-array v3, v7, [I

    .line 31
    aget-byte v4, v0, v8

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x46

    new-array v3, v7, [I

    .line 32
    aget-byte v4, v0, v8

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x47

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 33
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 34
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x49

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 35
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 36
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 37
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 38
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 39
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    const/16 v7, 0xe

    add-int/lit8 v7, p2, 0xe

    aget-byte v0, v0, v7

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_4
    const/16 v2, 0x33

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 40
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 41
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 42
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 43
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 44
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 45
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xd

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 46
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xf

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x10

    .line 47
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x11

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x12

    .line 48
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x13

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x14

    .line 49
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x15

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x16

    .line 50
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x17

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x18

    .line 51
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x19

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x1a

    .line 52
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x1b

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x40

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x1c

    .line 53
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x1d

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x1e

    .line 54
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    const/16 v7, 0x1f

    add-int/lit8 v7, p2, 0x1f

    aget-byte v0, v0, v7

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_5
    const/16 v2, 0x2c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 55
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 56
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 57
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 58
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x30

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 59
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 60
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v8, p2, 0xd

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x10

    .line 61
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v7, p2, 0x11

    aget-byte v0, v0, v7

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v3, v0, v2

    and-int/2addr v3, v5

    add-int/lit8 v8, p2, 0x3

    .line 63
    aget-byte v10, v0, v8

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x4

    .line 64
    aget-byte v12, v0, v11

    and-int/2addr v12, v5

    add-int/lit8 v4, p2, 0x5

    .line 65
    aget-byte v13, v0, v4

    and-int/2addr v13, v5

    if-nez v3, :cond_6

    if-nez v10, :cond_6

    if-nez v12, :cond_6

    if-nez v13, :cond_6

    .line 66
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 67
    :cond_6
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_7

    sget v6, Ll0/c0;->h:I

    if-ne v6, v10, :cond_7

    sget v6, Ll0/c0;->i:I

    if-ne v6, v12, :cond_7

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_8

    .line 68
    :cond_7
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_8

    .line 69
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 70
    sput v9, Ll0/c0;->k:I

    .line 71
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 72
    :cond_8
    :goto_2
    sput v3, Ll0/c0;->g:I

    .line 73
    sput v10, Ll0/c0;->h:I

    .line 74
    sput v12, Ll0/c0;->i:I

    .line 75
    sput v13, Ll0/c0;->j:I

    .line 76
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 77
    aget-byte v2, v0, v8

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 78
    aget-byte v2, v0, v11

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 79
    aget-byte v0, v0, v4

    and-int/2addr v0, v5

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 81
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 82
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 83
    aget-byte v0, v0, v2

    and-int/2addr v0, v5

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_10

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 85
    aget-byte v0, v0, v3

    and-int/2addr v2, v5

    .line 86
    iput v2, v1, Lk0/ki;->f:I

    move v2, v6

    .line 87
    :goto_3
    iget-object v3, v1, Lk0/ki;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 88
    iget v4, v1, Lk0/ki;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_9

    if-eqz v4, :cond_a

    .line 89
    iput v2, v1, Lk0/ki;->e:I

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 90
    :cond_a
    :goto_4
    iget v4, v1, Lk0/ki;->f:I

    if-eq v4, v10, :cond_13

    if-eq v4, v12, :cond_11

    const/16 v8, 0xd

    if-eq v4, v8, :cond_f

    const/16 v8, 0xe

    if-eq v4, v8, :cond_d

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    .line 91
    array-length v0, v3

    if-ge v2, v0, :cond_36

    .line 92
    aget-object v0, v3, v2

    aget v0, v0, v7

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 93
    :cond_b
    iget v0, v1, Lk0/ki;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_c

    if-eq v0, v5, :cond_c

    .line 94
    aget-object v0, v3, v0

    aget v0, v0, v7

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 95
    :cond_c
    iput v5, v1, Lk0/ki;->e:I

    goto/16 :goto_10

    :cond_d
    move v2, v6

    :goto_5
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_e

    const/16 v3, 0x1f

    .line 96
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    const/16 v3, 0x1f

    .line 97
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_f
    move v2, v6

    :goto_6
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_10

    .line 98
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 99
    :cond_10
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_11
    move v2, v6

    :goto_7
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_12

    .line 100
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 101
    :cond_12
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_13
    move v2, v6

    :goto_8
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_14

    .line 102
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 103
    :cond_14
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 104
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 105
    aget-byte v0, v0, v3

    and-int/2addr v2, v5

    .line 106
    iput v2, v1, Lk0/ki;->c:I

    move v2, v6

    .line 107
    :goto_9
    iget-object v3, v1, Lk0/ki;->d:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_16

    .line 108
    iget v8, v1, Lk0/ki;->c:I

    aget-object v10, v3, v2

    aget v10, v10, v6

    if-ne v8, v10, :cond_15

    if-eqz v8, :cond_16

    .line 109
    iput v2, v1, Lk0/ki;->b:I

    goto :goto_a

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 110
    :cond_16
    :goto_a
    iget v8, v1, Lk0/ki;->c:I

    const/16 v10, 0x10

    if-eq v8, v10, :cond_1d

    const/16 v4, 0x17

    if-eq v8, v4, :cond_1b

    const/16 v4, 0x18

    if-eq v8, v4, :cond_19

    and-int/2addr v0, v5

    if-ne v0, v7, :cond_17

    .line 111
    array-length v0, v3

    if-ge v2, v0, :cond_36

    .line 112
    aget-object v0, v3, v2

    aget v0, v0, v7

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_17
    if-nez v0, :cond_36

    .line 113
    iget v0, v1, Lk0/ki;->b:I

    array-length v2, v3

    if-ge v0, v2, :cond_18

    if-eq v0, v5, :cond_18

    .line 114
    aget-object v0, v3, v0

    aget v0, v0, v7

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 115
    :cond_18
    iput v5, v1, Lk0/ki;->b:I

    goto/16 :goto_10

    :cond_19
    move v2, v6

    :goto_b
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_1a

    .line 116
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 117
    :cond_1a
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1b
    move v2, v6

    :goto_c
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_1c

    const/16 v3, 0x1f

    .line 118
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    const/16 v3, 0x1f

    .line 119
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1d
    and-int/2addr v0, v5

    if-ne v0, v7, :cond_36

    .line 120
    sget v0, Lh0/c;->E:I

    if-eq v0, v12, :cond_1f

    if-eq v0, v9, :cond_1e

    if-eq v0, v4, :cond_1f

    const/16 v0, 0xd

    .line 121
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 122
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1e
    const/16 v0, 0x12

    .line 123
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 124
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1f
    const/16 v0, 0x1a

    .line 125
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 126
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_20
    const/16 v2, 0x8a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 127
    aget-byte v8, v0, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 128
    aget-byte v8, v0, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    .line 129
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 130
    aget-byte v0, v0, v4

    and-int/2addr v0, v5

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_21
    const/16 v2, 0x5c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 131
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 132
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 133
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 134
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x60

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 135
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x61

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 136
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 137
    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    .line 138
    aget-byte v0, v0, v4

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v7

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_22
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 139
    aget-byte v14, v0, v3

    shr-int/2addr v14, v4

    and-int/2addr v14, v11

    aput v14, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 140
    aget-byte v8, v0, v3

    shr-int/2addr v8, v12

    and-int/2addr v8, v12

    aput v8, v2, v6

    const/16 v8, 0x10

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v8, v7, [I

    .line 141
    aget-byte v14, v0, v3

    shr-int/2addr v14, v10

    and-int/2addr v14, v7

    aput v14, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 142
    aget-byte v3, v0, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v12

    aput v3, v2, v6

    const/16 v3, 0x12

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 143
    aget-byte v8, v0, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 144
    aget-byte v14, v0, v8

    shr-int/2addr v14, v11

    and-int/2addr v14, v7

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    .line 145
    aget-byte v8, v0, v8

    shr-int/2addr v8, v4

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 146
    aget-byte v14, v0, v8

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v12

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v7, [I

    .line 147
    aget-byte v14, v0, v8

    shr-int/2addr v14, v9

    and-int/2addr v14, v12

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v7, [I

    .line 148
    aget-byte v14, v0, v8

    shr-int/2addr v14, v10

    and-int/2addr v14, v12

    aput v14, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v7, [I

    .line 149
    aget-byte v8, v0, v8

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 150
    aget-byte v14, v0, v8

    shr-int/lit8 v4, v14, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v7, [I

    .line 151
    aget-byte v4, v0, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 152
    aget-byte v8, v0, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 153
    aget-byte v3, v0, v4

    shr-int/2addr v3, v9

    and-int/2addr v3, v12

    aput v3, v2, v6

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 154
    aget-byte v3, v0, v4

    shr-int/2addr v3, v12

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v7, [I

    .line 155
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 156
    aget-byte v8, v0, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v3, v7, [I

    .line 157
    aget-byte v8, v0, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v7, [I

    .line 158
    aget-byte v8, v0, v4

    shr-int/2addr v8, v9

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v3, v7, [I

    .line 159
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 160
    aget-byte v8, v0, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v3, v7, [I

    .line 161
    aget-byte v8, v0, v4

    shr-int/2addr v8, v9

    and-int/2addr v8, v11

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x27

    new-array v3, v7, [I

    .line 162
    aget-byte v8, v0, v4

    shr-int/2addr v8, v12

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v7, [I

    .line 163
    aget-byte v8, v0, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x29

    new-array v3, v7, [I

    .line 164
    aget-byte v8, v0, v4

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v7, [I

    .line 165
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 166
    aget-byte v4, v0, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    const/16 v4, 0xb

    add-int/lit8 v4, p2, 0xb

    .line 167
    aget-byte v0, v0, v4

    and-int/2addr v0, v5

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_23
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 168
    aget-byte v3, v0, v3

    and-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 169
    aget-byte v3, v0, v3

    and-int/2addr v3, v5

    aput v3, v2, v6

    const/16 v3, 0x9

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x4

    .line 170
    aget-byte v3, v0, v3

    and-int/2addr v3, v5

    aput v3, v2, v6

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 171
    aget-byte v4, v0, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 172
    aget-byte v3, v0, v3

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0x7f

    aput v3, v2, v6

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x6

    .line 173
    aget-byte v4, v0, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 174
    aget-byte v0, v0, v3

    shr-int/2addr v0, v12

    and-int/2addr v0, v8

    aput v0, v2, v6

    const/16 v0, 0xe

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 175
    :cond_24
    iget-boolean v2, v1, Lk0/ki;->k:Z

    if-nez v2, :cond_36

    add-int/lit8 v2, p2, 0x3

    .line 176
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x2

    aget-byte v0, v0, v3

    and-int/2addr v0, v5

    const/16 v3, 0x21c

    invoke-static {v2, v0, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_10

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 177
    aget-byte v0, v0, v2

    and-int/2addr v0, v5

    const-string v2, "persist.syu.reversefrontdoor"

    .line 178
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 179
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 180
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_26
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 181
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 182
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_d
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 183
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 184
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 185
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v0, v10

    and-int/2addr v0, v7

    aput v0, v2, v6

    .line 186
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 187
    :cond_27
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 188
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    if-eq v2, v7, :cond_32

    if-eq v2, v15, :cond_31

    if-eq v2, v12, :cond_30

    if-eq v2, v9, :cond_29

    goto/16 :goto_10

    :cond_29
    const/16 v2, 0xa2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 189
    aget-byte v4, v0, v4

    const/16 v8, 0x10

    shl-int/2addr v4, v8

    const/high16 v8, 0xff0000

    and-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v0, v8

    shl-int/2addr v8, v15

    and-int/2addr v8, v14

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v0, v0, v8

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 190
    sget v0, Lk0/ki;->C:I

    if-ne v0, v7, :cond_2b

    .line 191
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0xa2

    aget v0, v0, v2

    sget v2, Lk0/ki;->J:I

    sget v3, Lk0/ki;->E:I

    add-int/2addr v3, v2

    if-le v0, v3, :cond_2a

    if-eqz v2, :cond_2a

    const/16 v0, 0xaa

    new-array v2, v7, [I

    aput v7, v2, v6

    .line 192
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_2a
    const/16 v0, 0xaa

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 193
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_2b
    const/16 v0, 0xaa

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 194
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 195
    :goto_e
    sget v0, Lk0/ki;->F:I

    if-ne v0, v7, :cond_2d

    .line 196
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0xa2

    aget v0, v0, v2

    sget v2, Lk0/ki;->L:I

    sget v3, Lk0/ki;->G:I

    add-int/2addr v3, v2

    if-le v0, v3, :cond_2c

    if-eqz v2, :cond_2c

    const/16 v0, 0xac

    new-array v2, v7, [I

    aput v7, v2, v6

    .line 197
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2c
    const/16 v0, 0xac

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 198
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2d
    const/16 v0, 0xac

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 199
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 200
    :goto_f
    sget v0, Lk0/ki;->H:I

    if-ne v0, v7, :cond_2f

    .line 201
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0xa2

    aget v0, v0, v2

    sget v2, Lk0/ki;->M:I

    sget v3, Lk0/ki;->I:I

    add-int/2addr v3, v2

    if-le v0, v3, :cond_2e

    if-eqz v2, :cond_2e

    const/16 v0, 0xad

    new-array v2, v7, [I

    aput v7, v2, v6

    .line 202
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_2e
    const/16 v0, 0xad

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 203
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_2f
    const/16 v0, 0xad

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 204
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_30
    add-int/lit8 v2, p2, 0x4

    .line 205
    aget-byte v2, v0, v2

    shl-int/2addr v2, v15

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    and-int/2addr v0, v5

    or-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v0, v3, v6

    .line 206
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 207
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v10, [I

    aput v7, v4, v6

    aput v0, v4, v7

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_31
    add-int/lit8 v2, p2, 0x3

    .line 208
    aget-byte v2, v0, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    and-int/2addr v0, v5

    const/16 v3, 0x21c

    invoke-static {v2, v0, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 209
    iput-boolean v7, v1, Lk0/ki;->k:Z

    goto/16 :goto_10

    :cond_32
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 210
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_33

    add-int/lit8 v2, p2, 0x3

    .line 211
    aget-byte v3, v0, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v7

    aget-byte v0, v0, v2

    shr-int/2addr v0, v9

    and-int/2addr v0, v7

    invoke-static {v3, v0, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_10

    :cond_33
    add-int/lit8 v2, p2, 0x3

    .line 212
    aget-byte v3, v0, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v7

    aget-byte v0, v0, v2

    shr-int/2addr v0, v9

    and-int/2addr v0, v7

    invoke-static {v3, v0, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_10

    :cond_34
    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 213
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    .line 214
    aget-byte v13, v0, v5

    shr-int/2addr v13, v4

    and-int/2addr v13, v12

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 215
    aget-byte v13, v0, v5

    shr-int/2addr v13, v12

    and-int/2addr v13, v12

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 216
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 217
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 218
    aget-byte v5, v0, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 219
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 220
    aget-byte v13, v0, v5

    shr-int/2addr v13, v4

    and-int/2addr v13, v12

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 221
    aget-byte v5, v0, v5

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 222
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 223
    aget-byte v5, v0, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 224
    aget-byte v13, v0, v5

    shr-int/2addr v13, v4

    and-int/2addr v13, v11

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 225
    aget-byte v13, v0, v5

    shr-int/2addr v13, v12

    and-int/2addr v13, v12

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 226
    aget-byte v13, v0, v5

    shr-int/2addr v13, v10

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 227
    aget-byte v5, v0, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 228
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 229
    aget-byte v13, v0, v5

    shr-int/2addr v13, v4

    and-int/2addr v13, v12

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 230
    aget-byte v5, v0, v5

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 231
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 232
    aget-byte v13, v0, v5

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 233
    aget-byte v5, v0, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 234
    aget-byte v13, v0, v5

    shr-int/2addr v13, v11

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 235
    aget-byte v13, v0, v5

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v7

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    .line 236
    aget-byte v13, v0, v5

    shr-int/2addr v13, v12

    and-int/2addr v13, v11

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 237
    aget-byte v13, v0, v5

    shr-int/lit8 v10, v13, 0x2

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 238
    aget-byte v5, v0, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 239
    aget-byte v10, v0, v5

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    .line 240
    aget-byte v10, v0, v5

    shr-int/2addr v10, v4

    and-int/2addr v10, v12

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    .line 241
    aget-byte v10, v0, v5

    shr-int/2addr v10, v12

    and-int/2addr v10, v12

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 242
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xb

    .line 243
    aget-byte v10, v0, v5

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 244
    aget-byte v10, v0, v5

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    .line 245
    aget-byte v5, v0, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xc

    .line 246
    aget-byte v10, v0, v5

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v12

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 247
    aget-byte v5, v0, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xd

    .line 248
    aget-byte v5, v0, v5

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 249
    aget-byte v4, v0, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xf

    .line 250
    aget-byte v0, v0, v4

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v12

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_35
    const/16 v2, 0x8e

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 251
    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 252
    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 253
    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 254
    aget-byte v0, v0, v4

    and-int/2addr v0, v5

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_36
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ki;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/ki;->p:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ki;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lk0/ki;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/ki;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb2

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

    const/4 p3, 0x6

    const/16 p4, 0x8

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, p4, :cond_1

    const/16 p4, 0x3eb

    const/4 v4, 0x5

    if-eq p1, p4, :cond_0

    const/4 p4, 0x4

    const/16 v5, 0xe3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v4, [I

    aput v5, p1, v2

    const/16 p3, 0xa1

    aput p3, p1, v3

    aput v1, p1, v1

    .line 1
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, p3, [I

    aput v5, p1, v2

    const/16 p3, 0xa4

    aput p3, p1, v3

    aput v0, p1, v1

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    aget p2, p2, v1

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v4, [I

    aput v5, p1, v2

    const/16 p3, 0xa0

    aput p3, p1, v3

    aput v1, p1, v1

    .line 3
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, p3, [I

    aput v5, p1, v2

    const/16 p3, 0x82

    aput p3, p1, v3

    aput v0, p1, v1

    .line 4
    aget p3, p2, v2

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    aget p2, p2, v1

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, p4, [I

    aput v5, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v3, p1, v1

    .line 5
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v4, [I

    aput v5, p1, v2

    const/16 p3, 0x83

    aput p3, p1, v3

    aput v1, p1, v1

    .line 6
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v4, [I

    aput v5, p1, v2

    const/16 p3, 0x84

    aput p3, p1, v3

    aput v1, p1, v1

    .line 7
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_a

    .line 8
    array-length p1, p2

    if-lez p1, :cond_a

    new-array p1, v4, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :cond_1
    aget p1, p2, v2

    const/16 v4, 0xff

    if-eq p1, v4, :cond_2

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 11
    :pswitch_7
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_8
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->b3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_9
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->f3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_a
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->g3(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_b
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->d3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_c
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->c3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_d
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ki;->e3(I)V

    goto/16 :goto_0

    .line 18
    :cond_2
    aget p1, p2, v3

    const/16 p2, 0xa2

    const/16 v5, 0x2710

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v5}, Lk0/ki;->a3(I)V

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    sput p1, Lk0/ki;->M:I

    .line 21
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/ki;->M:I

    if-eq p1, p3, :cond_4

    .line 22
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_4
    const/16 p1, 0xb1

    new-array p2, v3, [I

    .line 23
    sget p3, Lk0/ki;->M:I

    aput p3, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-virtual {p0, v5}, Lk0/ki;->f3(I)V

    .line 25
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    sput p1, Lk0/ki;->L:I

    .line 26
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/ki;->L:I

    if-eq p1, p3, :cond_6

    .line 27
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_6
    const/16 p1, 0xb0

    new-array p2, v3, [I

    .line 28
    sget p3, Lk0/ki;->L:I

    aput p3, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 29
    :cond_7
    invoke-virtual {p0, p3}, Lk0/ki;->c3(I)V

    .line 30
    invoke-virtual {p0, v5}, Lk0/ki;->d3(I)V

    .line 31
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    sput p1, Lk0/ki;->J:I

    .line 32
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, p4, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/ki;->J:I

    if-eq p1, p2, :cond_8

    .line 33
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, p4, p2}, Lo1/g0;->g(II)V

    :cond_8
    const/16 p1, 0xae

    new-array p2, v3, [I

    .line 34
    sget p3, Lk0/ki;->J:I

    aput p3, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 35
    new-instance p1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/text/format/Time;->setToNow()V

    .line 37
    iget p2, p1, Landroid/text/format/Time;->year:I

    add-int/lit16 p2, p2, -0x7d0

    int-to-byte p2, p2

    .line 38
    iget p3, p1, Landroid/text/format/Time;->month:I

    add-int/2addr p3, v3

    int-to-byte p3, p3

    .line 39
    iget p1, p1, Landroid/text/format/Time;->monthDay:I

    int-to-byte p1, p1

    shl-int/lit8 p2, p2, 0x10

    const/high16 v0, 0xff0000

    and-int/2addr p2, v0

    shl-int/2addr p3, p4

    const p4, 0xff00

    and-int/2addr p3, p4

    or-int/2addr p2, p3

    and-int/2addr p1, v4

    or-int/2addr p1, p2

    .line 40
    sput p1, Lk0/ki;->K:I

    .line 41
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/ki;->K:I

    if-eq p1, p3, :cond_9

    .line 42
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_9
    const/16 p1, 0xaf

    new-array p2, v3, [I

    .line 43
    sget p3, Lk0/ki;->K:I

    aput p3, p2, v2

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public final a3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/ki;->I:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa6

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/4 v0, 0x7

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ki;->I:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final b3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/ki;->H:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa9

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ki;->H:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/ki;->D:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xa4

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ki;->D:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/ki;->E:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa3

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/4 v0, 0x3

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ki;->E:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/ki;->C:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xa7

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ki;->C:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/ki;->G:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa5

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/4 v0, 0x5

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ki;->G:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final g3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/ki;->F:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa8

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ki;->F:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ki;->q:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(III)Z
    .locals 5

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p2, p2, 0xff

    const/4 v4, 0x1

    if-le v2, v0, :cond_1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v3, v2

    add-int/2addr v1, p3

    if-le v3, v1, :cond_0

    return v4

    :cond_0
    if-ne v3, v1, :cond_3

    if-le p2, p1, :cond_3

    return v4

    :cond_1
    if-ne v2, v0, :cond_3

    add-int/2addr v1, p3

    if-le v3, v1, :cond_2

    return v4

    :cond_2
    if-ne v3, v1, :cond_3

    if-le p2, p1, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final u3()V
    .locals 3

    const-string v0, "com.syu.carinfo.rzc.mazda.Rzc_Mazda_CarCD"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
