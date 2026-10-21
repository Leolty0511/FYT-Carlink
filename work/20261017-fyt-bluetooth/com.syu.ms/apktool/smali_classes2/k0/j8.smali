.class public Lk0/j8;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/j8$f;
    }
.end annotation


# static fields
.field public static A:[I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Z

.field public l:Ljava/lang/Runnable;

.field public m:Lk0/j8$f;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public final y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/j8;->A:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x2
        0x3
        0x4
        0x5
        0x8
        0x9
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 26

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

    iput-object v1, v0, Lk0/j8;->b:Lo1/g0;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/j8;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/j8;->e:I

    const/16 v4, 0x1d

    new-array v5, v4, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 5
    fill-array-data v7, :array_0

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    const/4 v8, 0x3

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const/4 v9, 0x4

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    const/4 v10, 0x5

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    const/4 v11, 0x6

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_7

    const/4 v12, 0x7

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_8

    const/16 v13, 0x8

    aput-object v7, v5, v13

    new-array v7, v6, [I

    fill-array-data v7, :array_9

    const/16 v14, 0x9

    aput-object v7, v5, v14

    new-array v7, v6, [I

    fill-array-data v7, :array_a

    const/16 v15, 0xa

    aput-object v7, v5, v15

    new-array v7, v6, [I

    fill-array-data v7, :array_b

    const/16 v16, 0xb

    aput-object v7, v5, v16

    new-array v7, v6, [I

    fill-array-data v7, :array_c

    const/16 v17, 0xc

    aput-object v7, v5, v17

    new-array v7, v6, [I

    fill-array-data v7, :array_d

    const/16 v18, 0xd

    aput-object v7, v5, v18

    new-array v7, v6, [I

    fill-array-data v7, :array_e

    const/16 v19, 0xe

    aput-object v7, v5, v19

    new-array v7, v6, [I

    fill-array-data v7, :array_f

    const/16 v20, 0xf

    aput-object v7, v5, v20

    new-array v7, v6, [I

    fill-array-data v7, :array_10

    const/16 v21, 0x10

    aput-object v7, v5, v21

    new-array v7, v6, [I

    fill-array-data v7, :array_11

    const/16 v22, 0x11

    aput-object v7, v5, v22

    new-array v7, v6, [I

    fill-array-data v7, :array_12

    const/16 v23, 0x12

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_13

    const/16 v24, 0x13

    aput-object v7, v5, v24

    new-array v7, v6, [I

    fill-array-data v7, :array_14

    const/16 v25, 0x14

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_15

    const/16 v25, 0x15

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_16

    const/16 v25, 0x16

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_17

    const/16 v25, 0x17

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_18

    const/16 v25, 0x18

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_19

    const/16 v25, 0x19

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_1a

    const/16 v25, 0x1a

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_1b

    const/16 v25, 0x1b

    aput-object v7, v5, v25

    new-array v7, v6, [I

    fill-array-data v7, :array_1c

    const/16 v25, 0x1c

    aput-object v7, v5, v25

    iput-object v5, v0, Lk0/j8;->f:[[I

    new-array v3, v3, [[I

    new-array v5, v6, [I

    .line 6
    fill-array-data v5, :array_1d

    aput-object v5, v3, v2

    new-array v5, v6, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_1f

    aput-object v1, v3, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_20

    aput-object v1, v3, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_21

    aput-object v1, v3, v9

    new-array v1, v6, [I

    fill-array-data v1, :array_22

    aput-object v1, v3, v10

    new-array v1, v6, [I

    fill-array-data v1, :array_23

    aput-object v1, v3, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_24

    aput-object v1, v3, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_25

    aput-object v1, v3, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_26

    aput-object v1, v3, v14

    new-array v1, v6, [I

    fill-array-data v1, :array_27

    aput-object v1, v3, v15

    new-array v1, v6, [I

    fill-array-data v1, :array_28

    aput-object v1, v3, v16

    new-array v1, v6, [I

    fill-array-data v1, :array_29

    aput-object v1, v3, v17

    new-array v1, v6, [I

    fill-array-data v1, :array_2a

    aput-object v1, v3, v18

    new-array v1, v6, [I

    fill-array-data v1, :array_2b

    aput-object v1, v3, v19

    new-array v1, v6, [I

    fill-array-data v1, :array_2c

    aput-object v1, v3, v20

    new-array v1, v6, [I

    fill-array-data v1, :array_2d

    aput-object v1, v3, v21

    new-array v1, v6, [I

    fill-array-data v1, :array_2e

    aput-object v1, v3, v22

    new-array v1, v6, [I

    fill-array-data v1, :array_2f

    aput-object v1, v3, v23

    new-array v1, v6, [I

    fill-array-data v1, :array_30

    aput-object v1, v3, v24

    new-array v1, v6, [I

    fill-array-data v1, :array_31

    const/16 v5, 0x14

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_32

    const/16 v5, 0x15

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_33

    const/16 v5, 0x16

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_34

    const/16 v5, 0x17

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_35

    const/16 v5, 0x18

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_36

    const/16 v5, 0x19

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_37

    const/16 v5, 0x1a

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_38

    const/16 v5, 0x1b

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_39

    const/16 v5, 0x1c

    aput-object v1, v3, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_3a

    aput-object v1, v3, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3b

    const/16 v4, 0x1e

    aput-object v1, v3, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3c

    const/16 v4, 0x1f

    aput-object v1, v3, v4

    iput-object v3, v0, Lk0/j8;->g:[[I

    .line 7
    iput v2, v0, Lk0/j8;->h:I

    .line 8
    new-instance v1, Lk0/j8$a;

    invoke-direct {v1, v0}, Lk0/j8$a;-><init>(Lk0/j8;)V

    iput-object v1, v0, Lk0/j8;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/j8$b;

    invoke-direct {v1, v0}, Lk0/j8$b;-><init>(Lk0/j8;)V

    iput-object v1, v0, Lk0/j8;->j:Ljava/lang/Runnable;

    .line 10
    iput-boolean v2, v0, Lk0/j8;->k:Z

    .line 11
    new-instance v1, Lk0/j8$c;

    invoke-direct {v1, v0}, Lk0/j8$c;-><init>(Lk0/j8;)V

    iput-object v1, v0, Lk0/j8;->l:Ljava/lang/Runnable;

    const-string v1, ""

    .line 12
    iput-object v1, v0, Lk0/j8;->n:Ljava/lang/String;

    const-string v1, ""

    .line 13
    iput-object v1, v0, Lk0/j8;->o:Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/j8;->p:I

    .line 15
    iput v2, v0, Lk0/j8;->q:I

    .line 16
    iput v2, v0, Lk0/j8;->r:I

    .line 17
    iput v2, v0, Lk0/j8;->s:I

    .line 18
    iput v2, v0, Lk0/j8;->t:I

    .line 19
    iput v2, v0, Lk0/j8;->u:I

    .line 20
    iput v2, v0, Lk0/j8;->v:I

    .line 21
    iput v2, v0, Lk0/j8;->w:I

    const/16 v1, 0xff

    .line 22
    iput v1, v0, Lk0/j8;->x:I

    .line 23
    new-instance v1, Lk0/j8$d;

    invoke-direct {v1, v0}, Lk0/j8$d;-><init>(Lk0/j8;)V

    iput-object v1, v0, Lk0/j8;->y:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/j8$e;

    invoke-direct {v1, v0}, Lk0/j8$e;-><init>(Lk0/j8;)V

    iput-object v1, v0, Lk0/j8;->z:Ljava/lang/Runnable;

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
        0x20
        0x40
    .end array-data

    :array_7
    .array-data 4
        0x21
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x22
        0x27
    .end array-data

    :array_9
    .array-data 4
        0x23
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x24
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x2b
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x2c
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x2d
        0x19
    .end array-data

    :array_e
    .array-data 4
        0x2f
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x30
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x33
        0x36
    .end array-data

    :array_12
    .array-data 4
        0x34
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x35
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_15
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_18
    .array-data 4
        0x87
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x88
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x8b
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x8c
        0x4
    .end array-data

    :array_1c
    .array-data 4
        0x8d
        0xd
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_20
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_21
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_22
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_23
    .array-data 4
        0x20
        0x40
    .end array-data

    :array_24
    .array-data 4
        0x21
        0x15
    .end array-data

    :array_25
    .array-data 4
        0x22
        0x27
    .end array-data

    :array_26
    .array-data 4
        0x23
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x24
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x2b
        0x7
    .end array-data

    :array_29
    .array-data 4
        0x2c
        0x8
    .end array-data

    :array_2a
    .array-data 4
        0x2d
        0x19
    .end array-data

    :array_2b
    .array-data 4
        0x2f
        0x26
    .end array-data

    :array_2c
    .array-data 4
        0x30
        0x37
    .end array-data

    :array_2d
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_2e
    .array-data 4
        0x33
        0x36
    .end array-data

    :array_2f
    .array-data 4
        0x34
        0x6
    .end array-data

    :array_30
    .array-data 4
        0x35
        0x5
    .end array-data

    :array_31
    .array-data 4
        0x36
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x37
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x38
        0x5
    .end array-data

    :array_34
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_35
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_36
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_37
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_38
    .array-data 4
        0x87
        0x2
    .end array-data

    :array_39
    .array-data 4
        0x88
        0x5
    .end array-data

    :array_3a
    .array-data 4
        0x8b
        0x3
    .end array-data

    :array_3b
    .array-data 4
        0x8c
        0x4
    .end array-data

    :array_3c
    .array-data 4
        0x8d
        0xd
    .end array-data
.end method

.method public static synthetic c3(Lk0/j8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/j8;->b3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/j8;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/j8;->y:Ljava/lang/Runnable;

    return-object p0
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

    if-eqz v1, :cond_23

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_2

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

    if-eq v4, v5, :cond_21

    const/16 v5, 0x2a

    const/4 v7, 0x4

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x3b

    const/16 v10, 0x80

    const/4 v11, 0x7

    const/16 v12, 0x20

    const/4 v13, 0x5

    if-eq v4, v5, :cond_17

    const/16 v5, 0x44

    const/16 v14, 0x8

    const/16 v15, 0xc

    const/16 v9, 0xb

    const/16 v6, 0xa

    if-eq v4, v5, :cond_b

    const/16 v5, 0x46

    if-eq v4, v5, :cond_a

    const/16 v5, 0x10

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    aget v2, v1, v8

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 5
    invoke-virtual {v0, v3, v8}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 6
    :cond_1
    aget v2, v1, v8

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 7
    invoke-virtual {v0, v8, v8}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 8
    :cond_2
    aget v2, v1, v8

    .line 9
    aget v1, v1, v8

    if-lt v1, v11, :cond_3

    goto :goto_0

    :cond_3
    move v11, v2

    :goto_0
    shl-int/lit8 v1, v11, 0x4

    and-int/lit16 v1, v1, 0xf0

    .line 10
    invoke-virtual {v0, v1, v8}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 11
    :pswitch_1
    aget v1, v1, v8

    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_23

    .line 13
    invoke-virtual {v0, v7, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 14
    :cond_4
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v8, :cond_23

    .line 15
    invoke-virtual {v0, v14, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-nez v1, :cond_23

    .line 18
    invoke-virtual {v0, v7, v8}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 19
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-ne v1, v8, :cond_23

    .line 20
    invoke-virtual {v0, v7, v8}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 21
    :pswitch_3
    aget v1, v1, v8

    const/16 v3, 0x41

    if-eqz v1, :cond_6

    .line 22
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_23

    .line 23
    invoke-virtual {v0, v5, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 24
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_23

    .line 25
    invoke-virtual {v0, v5, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 26
    :pswitch_4
    aget v1, v1, v8

    const/16 v3, 0xd

    if-eqz v1, :cond_7

    .line 27
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_23

    .line 28
    invoke-virtual {v0, v12, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 29
    :cond_7
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_23

    .line 30
    invoke-virtual {v0, v12, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 31
    :pswitch_5
    aget v1, v1, v8

    if-eqz v1, :cond_8

    .line 32
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v9

    if-nez v1, :cond_23

    .line 33
    invoke-virtual {v0, v3, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 34
    :cond_8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v9

    if-ne v1, v8, :cond_23

    .line 35
    invoke-virtual {v0, v3, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 36
    :pswitch_6
    aget v1, v1, v8

    if-eqz v1, :cond_9

    .line 37
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v6

    if-nez v1, :cond_23

    .line 38
    invoke-virtual {v0, v12, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    .line 39
    :cond_9
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v6

    if-ne v1, v8, :cond_23

    .line 40
    invoke-virtual {v0, v10, v2}, Lk0/j8;->a3(II)V

    goto/16 :goto_2

    :cond_a
    new-array v4, v13, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    const/16 v2, -0xd

    aput v2, v4, v8

    aput v3, v4, v3

    const/16 v2, 0x11

    const/4 v3, 0x3

    aput v2, v4, v3

    .line 41
    aget v1, v1, v8

    aput v1, v4, v7

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 42
    :cond_b
    aget v2, v1, v8

    if-ne v2, v8, :cond_c

    new-array v1, v13, [I

    .line 43
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 44
    :cond_c
    aget v2, v1, v8

    if-ne v2, v3, :cond_d

    new-array v1, v13, [I

    .line 45
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 46
    :cond_d
    aget v2, v1, v8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    new-array v1, v13, [I

    .line 47
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 48
    :cond_e
    aget v2, v1, v8

    if-ne v2, v7, :cond_f

    new-array v1, v13, [I

    .line 49
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 50
    :cond_f
    aget v2, v1, v8

    if-ne v2, v13, :cond_10

    new-array v1, v13, [I

    .line 51
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 52
    :cond_10
    aget v2, v1, v8

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    new-array v1, v13, [I

    .line 53
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 54
    :cond_11
    aget v2, v1, v8

    if-ne v2, v11, :cond_12

    new-array v1, v13, [I

    .line 55
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 56
    :cond_12
    aget v2, v1, v8

    if-ne v2, v14, :cond_13

    new-array v1, v13, [I

    .line 57
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 58
    :cond_13
    aget v2, v1, v8

    const/16 v3, 0x9

    if-ne v2, v3, :cond_14

    new-array v1, v13, [I

    .line 59
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 60
    :cond_14
    aget v2, v1, v8

    if-ne v2, v6, :cond_15

    new-array v1, v13, [I

    .line 61
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 62
    :cond_15
    aget v2, v1, v8

    if-ne v2, v9, :cond_16

    new-array v1, v13, [I

    .line 63
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 64
    :cond_16
    aget v1, v1, v8

    if-ne v1, v15, :cond_23

    new-array v1, v13, [I

    .line 65
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 66
    :cond_17
    aget v1, v1, v8

    if-eqz v1, :cond_23

    .line 67
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0x12

    aget v4, v1, v4

    const/16 v5, 0x13

    .line 68
    aget v5, v1, v5

    const/16 v6, 0x14

    .line 69
    aget v1, v1, v6

    shl-int/2addr v4, v3

    and-int/2addr v4, v7

    shl-int/2addr v5, v8

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    shl-int/2addr v1, v2

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    const/16 v2, 0xe0

    if-ne v1, v8, :cond_18

    goto :goto_1

    :cond_18
    if-ne v1, v3, :cond_19

    const/16 v10, 0x40

    goto :goto_1

    :cond_19
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1a

    const/16 v10, 0x60

    goto :goto_1

    :cond_1a
    if-ne v1, v7, :cond_1b

    const/16 v10, 0xc0

    goto :goto_1

    :cond_1b
    if-ne v1, v13, :cond_1c

    const/16 v10, 0xa0

    goto :goto_1

    :cond_1c
    const/4 v4, 0x6

    if-ne v1, v4, :cond_1d

    move v10, v12

    goto :goto_1

    :cond_1d
    if-ne v1, v11, :cond_1e

    move v10, v2

    :cond_1e
    :goto_1
    shl-int/lit8 v1, v10, 0x5

    and-int/2addr v1, v2

    .line 70
    invoke-virtual {v0, v1, v3}, Lk0/j8;->a3(II)V

    goto :goto_2

    .line 71
    :cond_1f
    aget v1, v1, v8

    if-eqz v1, :cond_20

    .line 72
    invoke-virtual {v0, v3, v7}, Lk0/j8;->a3(II)V

    goto :goto_2

    .line 73
    :cond_20
    invoke-virtual {v0, v8, v7}, Lk0/j8;->a3(II)V

    goto :goto_2

    .line 74
    :cond_21
    aget v1, v1, v8

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    .line 75
    invoke-virtual {v0, v3, v1}, Lk0/j8;->a3(II)V

    goto :goto_2

    :cond_22
    const/4 v1, 0x3

    .line 76
    invoke-virtual {v0, v8, v1}, Lk0/j8;->a3(II)V

    :cond_23
    :goto_2
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
        0x7e
        0x2
        0x51
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x7e
        0x2
        0x51
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x7e
        0x2
        0x52
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x7e
        0x2
        0x52
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x7e
        0x2
        0x53
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x7e
        0x2
        0x53
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x7e
        0x2
        0x54
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x7e
        0x2
        0x54
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x7e
        0x2
        0x50
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x7e
        0x2
        0x50
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x7e
        0x2
        0x55
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x7e
        0x2
        0x55
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 6

    .line 1
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/j8;->j:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/j8;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/j8;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v2, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->f:I

    .line 13
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lk0/mt;->i:I

    .line 15
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v5, 0x5

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 16
    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lk0/j8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 19
    :pswitch_1
    iget-object v0, p0, Lk0/j8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :pswitch_2
    iput v1, v0, Lk0/mt;->f:I

    .line 21
    iput v1, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 22
    :pswitch_3
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 23
    :pswitch_4
    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 24
    iput v1, v0, Lk0/mt;->g:I

    .line 25
    new-instance v0, Lk0/j8$f;

    invoke-direct {v0, p0, v4}, Lk0/j8$f;-><init>(Lk0/j8;Lk0/j8$a;)V

    iput-object v0, p0, Lk0/j8;->m:Lk0/j8$f;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lk0/j8;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 27
    iget-object v0, p0, Lk0/j8;->b:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/j8;->e3(I)V

    .line 28
    :cond_1
    :goto_0
    :pswitch_5
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_3

    goto :goto_1

    .line 29
    :cond_2
    :pswitch_6
    new-instance v0, Lk0/j8$f;

    invoke-direct {v0, p0, v4}, Lk0/j8$f;-><init>(Lk0/j8;Lk0/j8$a;)V

    iput-object v0, p0, Lk0/j8;->m:Lk0/j8$f;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/j8;->m:Lk0/j8$f;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
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

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x20

    const/16 v5, 0x80

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v4, :cond_23

    const/16 v4, 0x21

    if-eq v2, v4, :cond_18

    const/16 v4, 0x30

    if-eq v2, v4, :cond_17

    const/16 v4, 0x68

    if-eq v2, v4, :cond_16

    const/16 v4, 0x6a

    if-eq v2, v4, :cond_15

    const/16 v4, 0x7d

    const/16 v13, 0xa

    const/4 v15, 0x2

    if-eq v2, v4, :cond_f

    const/16 v4, 0x7f

    if-eq v2, v4, :cond_e

    const/16 v12, 0x36

    if-eq v2, v12, :cond_c

    const/16 v12, 0x37

    if-eq v2, v12, :cond_9

    const/16 v12, 0x40

    const/16 v11, 0xb

    if-eq v2, v12, :cond_8

    const/16 v14, 0xc

    const/16 v12, 0x41

    const/16 v16, 0x6

    const/16 v18, 0x7

    if-eq v2, v12, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v11, p2, 0x2

    .line 2
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v8

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 3
    aget-byte v12, v1, v11

    shr-int/2addr v12, v6

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    .line 4
    aget-byte v12, v1, v11

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    .line 5
    aget-byte v12, v1, v11

    shr-int/2addr v12, v8

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 6
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    .line 7
    aget-byte v12, v1, v11

    shr-int/2addr v12, v10

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    .line 8
    aget-byte v11, v1, v11

    shr-int/2addr v11, v9

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v11, p2, 0x3

    .line 9
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 10
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    .line 11
    aget-byte v12, v1, v11

    shr-int/2addr v12, v6

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 12
    aget-byte v12, v1, v11

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    .line 13
    aget-byte v12, v1, v11

    shr-int/2addr v12, v8

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v10, [I

    .line 14
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v10, [I

    .line 15
    aget-byte v11, v1, v11

    shr-int/2addr v11, v9

    and-int/2addr v11, v8

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v11, p2, 0x4

    .line 16
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    .line 17
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    .line 18
    aget-byte v12, v1, v11

    shr-int/2addr v12, v6

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    .line 19
    aget-byte v12, v1, v11

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    .line 20
    aget-byte v12, v1, v11

    shr-int/2addr v12, v8

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    .line 21
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    .line 22
    aget-byte v11, v1, v11

    shr-int/2addr v11, v10

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    add-int/lit8 v11, p2, 0x5

    .line 23
    aget-byte v12, v1, v11

    shr-int/2addr v12, v7

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 24
    aget-byte v3, v1, v11

    shr-int/2addr v3, v9

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v9

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x6

    .line 25
    aget-byte v4, v1, v3

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x7

    aput v4, v2, v9

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v10, [I

    .line 26
    aget-byte v5, v1, v3

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v10, [I

    .line 27
    aget-byte v3, v1, v3

    shr-int/2addr v3, v9

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 28
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 29
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    .line 30
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    .line 31
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    .line 32
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    .line 33
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v10, [I

    .line 34
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 35
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    .line 36
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    .line 37
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 38
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v10, [I

    .line 39
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v10, [I

    .line 40
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v10, [I

    .line 41
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 42
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    .line 43
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    .line 44
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 45
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    .line 46
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 47
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_1

    const/16 v2, 0x90

    new-array v3, v10, [I

    .line 48
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    const/16 v2, 0x90

    new-array v3, v10, [I

    .line 49
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v10, [I

    .line 50
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v10, [I

    .line 51
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 52
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v10, [I

    .line 53
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v10, [I

    .line 54
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v10, [I

    .line 55
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v10, [I

    .line 56
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 57
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v10, [I

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v10, [I

    .line 59
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v10, [I

    .line 60
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v10, [I

    .line 61
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v10, [I

    .line 62
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 63
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 65
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 66
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 67
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 68
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 69
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 70
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 71
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 72
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 73
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_3
    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 74
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    .line 75
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    .line 76
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 77
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x3

    .line 79
    aget-byte v8, v1, v5

    and-int/2addr v8, v3

    add-int/lit8 v11, p2, 0x4

    .line 80
    aget-byte v12, v1, v11

    and-int/2addr v12, v3

    add-int/lit8 v6, p2, 0x5

    .line 81
    aget-byte v13, v1, v6

    and-int/2addr v13, v3

    if-nez v4, :cond_1

    if-nez v8, :cond_1

    if-nez v12, :cond_1

    if-nez v13, :cond_1

    .line 82
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 83
    :cond_1
    sget v9, Ll0/c0;->g:I

    if-ne v9, v4, :cond_2

    sget v9, Ll0/c0;->h:I

    if-ne v9, v8, :cond_2

    sget v9, Ll0/c0;->i:I

    if-ne v9, v12, :cond_2

    sget v9, Ll0/c0;->j:I

    if-eq v9, v13, :cond_3

    .line 84
    :cond_2
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_3

    .line 85
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 86
    sput v7, Ll0/c0;->k:I

    .line 87
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 88
    :cond_3
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 89
    sput v8, Ll0/c0;->h:I

    .line 90
    sput v12, Ll0/c0;->i:I

    .line 91
    sput v13, Ll0/c0;->j:I

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 93
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 94
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 95
    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->N0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    .line 96
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 100
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->N0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    .line 101
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    invoke-static {v4}, Ll0/c0;->N0(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->N0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 105
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->N0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 107
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 108
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 109
    aget-byte v5, v1, v5

    new-array v15, v10, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v9

    .line 110
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    new-array v13, v10, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v10

    aput v15, v13, v9

    .line 111
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    new-array v11, v10, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v10

    aput v13, v11, v9

    .line 112
    invoke-static {v14, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x35

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 113
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xd

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 114
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x10

    new-array v13, v10, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v10

    aput v14, v13, v9

    .line 115
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    new-array v11, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v11, v9

    .line 116
    invoke-static {v12, v11}, Lk0/qt;->y0(I[I)V

    packed-switch v3, :pswitch_data_2

    move v2, v9

    :goto_2
    move v3, v2

    :goto_3
    move v11, v3

    goto :goto_4

    :pswitch_8
    move v11, v9

    move v2, v10

    move v3, v2

    goto :goto_4

    :pswitch_9
    move v2, v10

    goto :goto_2

    :pswitch_a
    move v3, v9

    move v11, v3

    move v2, v10

    goto :goto_4

    :pswitch_b
    move v3, v9

    move v2, v10

    move v11, v2

    goto :goto_4

    :pswitch_c
    move v2, v9

    move v3, v2

    move v11, v10

    goto :goto_4

    :pswitch_d
    move v2, v9

    move v3, v10

    goto :goto_3

    :pswitch_e
    move v2, v9

    move v11, v2

    move v3, v10

    :goto_4
    const/16 v13, 0x12

    new-array v14, v10, [I

    aput v2, v14, v9

    .line 117
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x13

    new-array v14, v10, [I

    aput v3, v14, v9

    .line 118
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v13, v10, [I

    aput v11, v13, v9

    .line 119
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    aput v2, v3, v9

    .line 120
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v9

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    const/16 v3, 0x40

    if-eq v5, v3, :cond_6

    const/16 v4, 0x60

    if-eq v5, v4, :cond_5

    if-lt v5, v12, :cond_4

    const/16 v4, 0x5f

    if-gt v5, v4, :cond_4

    new-array v4, v10, [I

    sub-int/2addr v5, v3

    mul-int/2addr v5, v6

    add-int/lit16 v5, v5, 0xa0

    aput v5, v4, v9

    .line 122
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_4
    new-array v3, v10, [I

    const/4 v4, -0x1

    aput v4, v3, v9

    .line 123
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_5
    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_6
    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 125
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x1e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 126
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v10, [I

    .line 127
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v10, [I

    .line 128
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v10, [I

    .line 129
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5f

    new-array v3, v10, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 130
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5d

    new-array v3, v10, [I

    .line 131
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 132
    :cond_7
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x9a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, v1, v5

    aput v5, v4, v9

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    aput v5, v4, v10

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    const/4 v9, 0x2

    aput v5, v4, v9

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    aput v5, v4, v8

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    aput v5, v4, v7

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    aput v5, v4, v6

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    aput v5, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    aput v5, v4, v18

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    aput v5, v4, v6

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    const/16 v6, 0x9

    aput v5, v4, v6

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    aput v1, v4, v13

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_8
    const/16 v2, 0x93

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 133
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 134
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 135
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 136
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 137
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x9

    .line 138
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 139
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xb

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 140
    :cond_9
    sget v2, Lk0/nt;->a:I

    const v4, 0xf00ff

    if-eq v2, v4, :cond_a

    const v4, 0x1100ff

    if-ne v2, v4, :cond_2c

    :cond_a
    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    iput v4, v0, Lk0/j8;->h:I

    .line 142
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    if-eqz v1, :cond_b

    .line 143
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 144
    :cond_b
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 145
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 146
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_d

    and-int/2addr v1, v4

    mul-int/2addr v1, v13

    rsub-int v1, v1, 0x3e8

    goto :goto_6

    :cond_d
    and-int/2addr v1, v4

    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x3e8

    .line 147
    :goto_6
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    .line 148
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 149
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v10, :cond_13

    if-eq v2, v8, :cond_12

    const/16 v4, 0x8

    if-eq v2, v4, :cond_11

    if-eq v2, v13, :cond_10

    goto/16 :goto_e

    :cond_10
    const/16 v2, 0x408

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x4

    .line 150
    aget-byte v6, v1, v6

    shl-int/lit8 v4, v6, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v4

    aput v1, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 151
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 152
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 153
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 154
    iput-boolean v10, v0, Lk0/j8;->k:Z

    goto/16 :goto_e

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 155
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 156
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 157
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v10, v4, v9

    aput v1, v4, v10

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_13
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 158
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_14

    add-int/lit8 v2, p2, 0x3

    .line 159
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_e

    :cond_14
    add-int/lit8 v2, p2, 0x3

    .line 160
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_e

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 161
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 162
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x407

    new-array v4, v10, [I

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, v2

    aput v1, v4, v9

    .line 163
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 164
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 165
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x408

    new-array v4, v10, [I

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, v2

    aput v1, v4, v9

    .line 166
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 167
    :cond_17
    iget-boolean v2, v0, Lk0/j8;->k:Z

    if-nez v2, :cond_2c

    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x15e0

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    .line 169
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v2, p2, 0x2

    .line 170
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 171
    aget-byte v1, v1, v4

    .line 172
    sget v4, Lk0/nt;->a:I

    const v5, 0xa00ff

    if-eq v4, v5, :cond_1e

    const v5, 0x900ff

    if-ne v4, v5, :cond_19

    goto :goto_9

    :cond_19
    and-int/2addr v2, v3

    .line 173
    iput v2, v0, Lk0/j8;->e:I

    move v2, v9

    .line 174
    :goto_7
    iget-object v4, v0, Lk0/j8;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_1b

    .line 175
    iget v5, v0, Lk0/j8;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_1a

    if-eqz v5, :cond_1b

    .line 176
    iput v2, v0, Lk0/j8;->d:I

    goto :goto_8

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    :goto_8
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_1c

    .line 177
    array-length v1, v4

    if-ge v2, v1, :cond_2c

    .line 178
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1c
    if-nez v1, :cond_2c

    .line 179
    iget v1, v0, Lk0/j8;->d:I

    array-length v2, v4

    if-ge v1, v2, :cond_1d

    if-eq v1, v3, :cond_1d

    .line 180
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 181
    :cond_1d
    iput v3, v0, Lk0/j8;->d:I

    goto/16 :goto_e

    :cond_1e
    :goto_9
    and-int/2addr v2, v3

    .line 182
    iput v2, v0, Lk0/j8;->e:I

    move v2, v9

    .line 183
    :goto_a
    iget-object v4, v0, Lk0/j8;->g:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_20

    .line 184
    iget v5, v0, Lk0/j8;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_1f

    if-eqz v5, :cond_20

    .line 185
    iput v2, v0, Lk0/j8;->d:I

    goto :goto_b

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    :goto_b
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_21

    .line 186
    array-length v1, v4

    if-ge v2, v1, :cond_2c

    .line 187
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_21
    if-nez v1, :cond_2c

    .line 188
    iget v1, v0, Lk0/j8;->d:I

    array-length v2, v4

    if-ge v1, v2, :cond_22

    if-eq v1, v3, :cond_22

    .line 189
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 190
    :cond_22
    iput v3, v0, Lk0/j8;->d:I

    goto/16 :goto_e

    .line 191
    :cond_23
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v2, p2, 0x2

    .line 192
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 193
    aget-byte v1, v1, v4

    or-int/2addr v2, v5

    and-int/2addr v2, v3

    .line 194
    iput v2, v0, Lk0/j8;->e:I

    move v2, v9

    .line 195
    :goto_c
    iget-object v4, v0, Lk0/j8;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_25

    .line 196
    iget v5, v0, Lk0/j8;->e:I

    aget-object v11, v4, v2

    aget v11, v11, v9

    if-ne v5, v11, :cond_24

    if-eqz v5, :cond_25

    .line 197
    iput v2, v0, Lk0/j8;->d:I

    goto :goto_d

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 198
    :cond_25
    :goto_d
    iget v5, v0, Lk0/j8;->e:I

    const/16 v11, 0x8b

    if-eq v5, v11, :cond_2a

    const/16 v11, 0x8c

    if-eq v5, v11, :cond_28

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_26

    .line 199
    array-length v1, v4

    if-ge v2, v1, :cond_2c

    .line 200
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_26
    if-nez v1, :cond_2c

    .line 201
    iget v1, v0, Lk0/j8;->d:I

    array-length v2, v4

    if-ge v1, v2, :cond_27

    if-eq v1, v3, :cond_27

    .line 202
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 203
    :cond_27
    iput v3, v0, Lk0/j8;->d:I

    goto :goto_e

    :cond_28
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_2c

    .line 204
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_29

    if-eq v1, v7, :cond_29

    if-eq v1, v6, :cond_29

    .line 205
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    .line 206
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_29
    const/16 v1, 0x1a

    .line 207
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 208
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_2a
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_2c

    .line 209
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_2b

    .line 210
    invoke-static {v8, v9}, Ll0/b0;->l0(II)V

    .line 211
    invoke-static {v8, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_2b
    const/16 v1, 0x12

    .line 212
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 213
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    :cond_2c
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
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
    iget-object v0, p0, Lk0/j8;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/j8;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/j8;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/j8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/j8;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/j8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xaf

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
    .locals 9

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p1, :cond_10

    if-eq p1, v2, :cond_f

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_d

    if-eq p1, v4, :cond_c

    const/16 p3, 0x3eb

    const/16 p4, 0x20

    const/16 v5, 0x15

    const/16 v6, 0x11

    if-eq p1, p3, :cond_7

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C_CAMERA_MODE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p3, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    array-length p1, p2

    if-lez p1, :cond_11

    .line 3
    sget p1, Lk0/nt;->c:I

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_6

    if-ne p1, p4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget p1, p2, v3

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    new-array p1, v4, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3
    new-array p1, v4, [I

    .line 6
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4
    new-array p1, v4, [I

    .line 7
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_5
    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 9
    :cond_6
    :goto_0
    aget p1, p2, v3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget p1, p0, Lk0/j8;->h:I

    if-ge p1, v6, :cond_11

    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 12
    :pswitch_1
    iget p1, p0, Lk0/j8;->h:I

    if-lt p1, v6, :cond_11

    new-array p1, v4, [I

    .line 13
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_2
    new-array p1, v4, [I

    .line 14
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_3
    new-array p1, v4, [I

    .line 15
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_4
    new-array p1, v4, [I

    .line 16
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_5
    new-array p1, v4, [I

    .line 17
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_6
    new-array p1, v4, [I

    .line 18
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_7
    new-array p1, v4, [I

    .line 19
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_8
    new-array p1, v4, [I

    .line 20
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_9
    new-array p1, v4, [I

    .line 21
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_a
    new-array p1, v4, [I

    .line 22
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_b
    new-array p1, v4, [I

    .line 23
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_c
    new-array p1, v4, [I

    .line 24
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_d
    new-array p1, v4, [I

    .line 25
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 26
    :cond_7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C_CHANGE_PANORAMA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 27
    array-length p1, p2

    if-lez p1, :cond_11

    .line 28
    sget p1, Lk0/nt;->c:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_8

    new-array p1, v4, [I

    .line 29
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_8
    const/16 p2, 0xf

    if-eq p1, p2, :cond_a

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_a

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_a

    if-ne p1, p4, :cond_9

    goto :goto_1

    :cond_9
    new-array p1, v4, [I

    .line 30
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v4, [I

    .line 31
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 32
    :cond_a
    :goto_1
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_b

    .line 33
    invoke-static {v2}, Lk0/qt;->a(I)V

    new-array p1, v4, [I

    .line 34
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 35
    :cond_b
    invoke-static {v3}, Lk0/qt;->a(I)V

    new-array p1, v4, [I

    .line 36
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_c
    if-eqz p2, :cond_11

    .line 37
    array-length p1, p2

    if-lez p1, :cond_11

    new-array p1, v4, [I

    aput p3, p1, v3

    const/16 p3, -0x79

    aput p3, p1, v2

    aput v2, p1, v1

    .line 38
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_d
    if-eqz p2, :cond_11

    .line 39
    array-length p1, p2

    if-lez p1, :cond_11

    .line 40
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/j8;->e3(I)V

    goto :goto_2

    :cond_e
    if-eqz p2, :cond_11

    .line 41
    array-length p1, p2

    if-lez p1, :cond_11

    const/16 p1, 0x19

    .line 42
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 43
    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_f
    if-eqz p2, :cond_11

    .line 44
    array-length p1, p2

    if-lez p1, :cond_11

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, -0x39

    aput p3, p1, v2

    const/4 p3, 0x6

    aput p3, p1, v1

    .line 45
    aget v3, p2, v3

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, v4

    aget v1, p2, v1

    aput v1, p1, p4

    aget v0, p2, v0

    aput v0, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v4

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_10
    if-eqz p2, :cond_11

    .line 46
    array-length p1, p2

    if-lez p1, :cond_11

    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, -0x77

    aput p3, p1, v2

    aput v1, p1, v1

    .line 47
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_11
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
        -0x78
        0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x78
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x78
        0x1
        0x5
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x78
        0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x78
        0x1
        0x8
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x78
        0x1
        0x8
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x78
        0x1
        0x18
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x78
        0x1
        0x16
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x78
        0x1
        0x17
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x78
        0x1
        0x15
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x78
        0x1
        0x14
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x78
        0x1
        0x13
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x78
        0x1
        0x12
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x78
        0x1
        0x11
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x78
        0x1
        0x4
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x78
        0x1
        0x3
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x78
        0x1
        0x5
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x78
        0x1
        0x2
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x7a
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x74
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x74
        0x1
        0x0
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x78
        0x1
        0x1
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x78
        0x1
        0x0
    .end array-data
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x39

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput p1, p2, v1

    aput v11, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput p1, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput p1, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput p1, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput p1, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final b3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/j8;->u:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/j8;->A:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/j8;->q:I

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x94

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    aget v0, v1, v0

    aput v0, v3, v4

    const/4 v0, 0x4

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v5

    const/4 v0, 0x6

    and-int/lit16 v1, v2, 0xff

    aput v1, v3, v0

    const/4 v0, 0x7

    aput p1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e3(I)V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x75

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    iget-object v0, p0, Lk0/j8;->b:Lo1/g0;

    invoke-virtual {v0, v3, v2}, Lo1/g0;->b(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/j8;->b:Lo1/g0;

    invoke-virtual {v0, v3, p1}, Lo1/g0;->g(II)V

    :cond_0
    const/16 v0, 0x66

    new-array v1, v3, [I

    aput p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method
