.class public Lk0/yn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/yn;->c:I

    const/16 v2, 0x29

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

    const/16 v15, 0x12

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v21, 0x13

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v21, 0x14

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v21, 0x15

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v21, 0x16

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v21, 0x17

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    const/16 v21, 0x18

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    const/16 v21, 0x19

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    const/16 v21, 0x1a

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    const/16 v21, 0x1b

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    const/16 v21, 0x1c

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v21, 0x1d

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    const/16 v21, 0x1e

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v21, 0x1f

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    const/16 v21, 0x20

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    const/16 v21, 0x21

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    const/16 v21, 0x22

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    const/16 v21, 0x23

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    const/16 v21, 0x24

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    const/16 v21, 0x25

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_26

    const/16 v21, 0x26

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_27

    const/16 v21, 0x27

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_28

    const/16 v21, 0x28

    aput-object v4, v2, v21

    iput-object v2, v0, Lk0/yn;->d:[[I

    .line 4
    iput v1, v0, Lk0/yn;->f:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_29

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    const/16 v5, 0xc

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    aput-object v4, v2, v19

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    aput-object v3, v2, v20

    iput-object v2, v0, Lk0/yn;->g:[[I

    .line 6
    new-instance v2, Lk0/yn$a;

    invoke-direct {v2, v0}, Lk0/yn$a;-><init>(Lk0/yn;)V

    iput-object v2, v0, Lk0/yn;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v2, Lk0/yn$b;

    invoke-direct {v2, v0}, Lk0/yn$b;-><init>(Lk0/yn;)V

    iput-object v2, v0, Lk0/yn;->i:Ljava/lang/Runnable;

    .line 8
    iput v1, v0, Lk0/yn;->j:I

    .line 9
    new-instance v2, Lk0/yn$c;

    invoke-direct {v2, v0}, Lk0/yn$c;-><init>(Lk0/yn;)V

    iput-object v2, v0, Lk0/yn;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Lk0/yn$d;

    invoke-direct {v2, v0}, Lk0/yn$d;-><init>(Lk0/yn;)V

    iput-object v2, v0, Lk0/yn;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v2, Lk0/yn$e;

    invoke-direct {v2, v0}, Lk0/yn$e;-><init>(Lk0/yn;)V

    iput-object v2, v0, Lk0/yn;->m:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 12
    iput v2, v0, Lk0/yn;->n:I

    .line 13
    iput-boolean v1, v0, Lk0/yn;->o:Z

    const-string v2, ""

    .line 14
    iput-object v2, v0, Lk0/yn;->p:Ljava/lang/String;

    .line 15
    iput v1, v0, Lk0/yn;->q:I

    .line 16
    new-instance v1, Lk0/yn$f;

    invoke-direct {v1, v0}, Lk0/yn$f;-><init>(Lk0/yn;)V

    iput-object v1, v0, Lk0/yn;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lk0/yn$g;

    invoke-direct {v1, v0}, Lk0/yn$g;-><init>(Lk0/yn;)V

    iput-object v1, v0, Lk0/yn;->s:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x60
        0x22
    .end array-data

    :array_c
    .array-data 4
        0x61
        0x22
    .end array-data

    :array_d
    .array-data 4
        0x62
        0x21
    .end array-data

    :array_e
    .array-data 4
        0x63
        0x23
    .end array-data

    :array_f
    .array-data 4
        0x64
        0x23
    .end array-data

    :array_10
    .array-data 4
        0x65
        0x23
    .end array-data

    :array_11
    .array-data 4
        0x66
        0x20
    .end array-data

    :array_12
    .array-data 4
        0x67
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x70
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x71
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x72
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x73
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x74
        0x1e
    .end array-data

    :array_18
    .array-data 4
        0x75
        0x1f
    .end array-data

    :array_19
    .array-data 4
        0x76
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0x77
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0x7a
        0x28
    .end array-data

    :array_1c
    .array-data 4
        0x7b
        0x29
    .end array-data

    :array_1d
    .array-data 4
        0x7c
        0x2a
    .end array-data

    :array_1e
    .array-data 4
        0x7d
        0x2b
    .end array-data

    :array_1f
    .array-data 4
        0x7e
        0x2c
    .end array-data

    :array_20
    .array-data 4
        0x7f
        0x2d
    .end array-data

    :array_21
    .array-data 4
        0x80
        0x18
    .end array-data

    :array_22
    .array-data 4
        0x81
        0x36
    .end array-data

    :array_23
    .array-data 4
        0x82
        0x15
    .end array-data

    :array_24
    .array-data 4
        0x83
        0x27
    .end array-data

    :array_25
    .array-data 4
        0x84
        0x4e
    .end array-data

    :array_26
    .array-data 4
        0x85
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x88
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x89
        0x36
    .end array-data

    :array_29
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_2a
    .array-data 4
        0x2
        0x4a
    .end array-data

    :array_2b
    .array-data 4
        0x3
        0x4a
    .end array-data

    :array_2c
    .array-data 4
        0x4
        0x16
    .end array-data

    :array_2d
    .array-data 4
        0x5
        0x36
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x36
    .end array-data

    :array_2f
    .array-data 4
        0x7
        0x4c
    .end array-data

    :array_30
    .array-data 4
        0x8
        0x35
    .end array-data

    :array_31
    .array-data 4
        0x9
        0x4a
    .end array-data

    :array_32
    .array-data 4
        0xa
        0x36
    .end array-data

    :array_33
    .array-data 4
        0xb
        0x15
    .end array-data

    :array_34
    .array-data 4
        0xc
        0x15
    .end array-data

    :array_35
    .array-data 4
        0xd
        0x15
    .end array-data

    :array_36
    .array-data 4
        0xe
        0x34
    .end array-data

    :array_37
    .array-data 4
        0xf
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_39
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_3a
    .array-data 4
        0x12
        0x1a
    .end array-data
.end method

.method public static synthetic d3(Lk0/yn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yn;->n:I

    return p0
.end method

.method public static synthetic e3(Lk0/yn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yn;->n:I

    return p1
.end method

.method public static synthetic f3(Lk0/yn;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/yn;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g3(Lk0/yn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yn;->p:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h3(Lk0/yn;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/yn;->m3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic i3(Lk0/yn;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/yn;->o:Z

    return p0
.end method

.method public static synthetic j3(Lk0/yn;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/yn;->o:Z

    return p1
.end method

.method public static synthetic k3(Lk0/yn;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/yn;->a3()V

    return-void
.end method

.method public static synthetic l3(Lk0/yn;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/yn;->c3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    .line 2
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->l:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->h:I

    .line 7
    sget v3, Lk0/nt;->a:I

    const-string v4, "com.syu.canbus"

    sparse-switch v3, :sswitch_data_0

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v3, p0, Lk0/yn;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/yn;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/yn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/yn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v3, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 16
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 17
    :sswitch_0
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v1, v0, Lk0/mt;->i:I

    const/4 v3, 0x2

    .line 19
    iput v3, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 20
    :sswitch_1
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 21
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 22
    :sswitch_2
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 23
    iput v1, v0, Lk0/mt;->i:I

    .line 24
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v3, p0, Lk0/yn;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/yn;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    iget-object v0, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 27
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/yn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/yn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v3, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 33
    iput v2, v0, Lk0/mt;->i:I

    .line 34
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/yn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    iget-object v0, p0, Lk0/yn;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 36
    iget-object v0, p0, Lk0/yn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1a01c7 -> :sswitch_2
        0x1b01c7 -> :sswitch_1
        0x1c01c7 -> :sswitch_1
        0x1d01c7 -> :sswitch_1
        0x1e01c7 -> :sswitch_1
        0x1f01c7 -> :sswitch_1
        0x2001c7 -> :sswitch_1
        0x4101c7 -> :sswitch_1
        0x9c01c7 -> :sswitch_1
        0xd201c6 -> :sswitch_1
        0xd301c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6d

    const/16 v4, 0x69

    const/16 v5, 0xa

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x29

    const/4 v9, 0x3

    if-eq v2, v3, :cond_19

    const/16 v3, 0x32

    const/4 v10, 0x2

    if-eq v2, v3, :cond_17

    if-eq v2, v4, :cond_16

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_13

    const/16 v3, 0x30

    if-eq v2, v3, :cond_12

    const/16 v3, 0x10

    const/16 v4, 0xb

    const/16 v11, 0x7f

    const/4 v12, 0x5

    const/4 v13, 0x4

    packed-switch v2, :pswitch_data_0

    const v5, 0xff00

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_0
    const/16 v2, 0x94

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    .line 3
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    .line 4
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    .line 5
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v9

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    const/16 v2, 0x93

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 6
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    const/16 v2, 0x82

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 7
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 8
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 9
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    .line 10
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 11
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    .line 13
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    .line 14
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 15
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    .line 16
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    .line 17
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 18
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 19
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    .line 20
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 21
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    .line 22
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    .line 23
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 24
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    .line 25
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    .line 26
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    .line 27
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    .line 28
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 29
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    .line 30
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 31
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    .line 32
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    .line 33
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    .line 34
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    .line 35
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v9

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_3
    const/16 v2, 0x80

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 36
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 37
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    const/16 v2, 0x7d

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 38
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x2

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x5

    .line 39
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x4

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 40
    aget-byte v4, v1, v4

    shl-int/lit8 v3, v4, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    aput v1, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_5
    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v11, p2, 0x2

    .line 41
    aget-byte v14, v1, v11

    shr-int/lit8 v14, v14, 0x7

    and-int/2addr v14, v8

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 42
    aget-byte v14, v1, v11

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v8

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 43
    aget-byte v14, v1, v11

    shr-int/2addr v14, v12

    and-int/2addr v14, v8

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 44
    aget-byte v14, v1, v11

    shr-int/2addr v14, v13

    and-int/2addr v14, v8

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 45
    aget-byte v14, v1, v11

    shr-int/lit8 v9, v14, 0x3

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 46
    aget-byte v9, v1, v11

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 47
    aget-byte v9, v1, v11

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 48
    aget-byte v9, v1, v11

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 49
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x6

    .line 50
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x8

    .line 51
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0xa

    .line 52
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v5, v9

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 53
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 54
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    .line 55
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 56
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 58
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 59
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 60
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 61
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 62
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 63
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 64
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    aput v2, v3, v7

    .line 65
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 67
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 68
    :cond_1
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x3

    .line 70
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x4

    .line 71
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x5

    .line 72
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    if-nez v10, :cond_2

    if-nez v12, :cond_2

    .line 73
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 74
    :cond_2
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_3

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_3

    sget v7, Ll0/c0;->i:I

    if-ne v7, v10, :cond_3

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_4

    .line 75
    :cond_3
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_4

    .line 76
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 77
    sput v13, Ll0/c0;->k:I

    .line 78
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 79
    :cond_4
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 80
    sput v5, Ll0/c0;->h:I

    .line 81
    sput v10, Ll0/c0;->i:I

    .line 82
    sput v12, Ll0/c0;->j:I

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 84
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 85
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 86
    aget-byte v1, v1, v11

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 90
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_9
    new-array v2, v8, [I

    add-int/lit8 v14, p2, 0x2

    .line 91
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v8

    aput v15, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 92
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v8

    aput v15, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v4, v8, [I

    .line 93
    aget-byte v15, v1, v14

    shr-int/2addr v15, v12

    and-int/2addr v15, v8

    aput v15, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 94
    aget-byte v4, v1, v14

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v8, [I

    .line 95
    aget-byte v4, v1, v14

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v8, [I

    .line 96
    aget-byte v4, v1, v14

    shr-int/2addr v4, v10

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    .line 97
    aget-byte v4, v1, v14

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 98
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    .line 99
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    .line 100
    aget-byte v9, v1, v4

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    .line 101
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 102
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x5

    .line 103
    aget-byte v9, v1, v4

    and-int/2addr v9, v6

    const-string v12, "persist.fyt.reversetemp"

    .line 104
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 105
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    .line 106
    aget-byte v2, v1, v4

    and-int/lit16 v3, v2, 0xff

    :cond_5
    const/4 v2, -0x3

    const/4 v4, -0x2

    const/16 v12, 0x1b

    if-nez v3, :cond_6

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 107
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    if-ne v3, v11, :cond_7

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 108
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v14, v8, [I

    aput v3, v14, v7

    .line 109
    invoke-static {v12, v14}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v3, 0x1c

    if-nez v9, :cond_8

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 110
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    if-ne v9, v11, :cond_9

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 111
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v12, v8, [I

    aput v9, v12, v7

    .line 112
    invoke-static {v3, v12}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x26

    new-array v9, v8, [I

    add-int/lit8 v12, p2, 0x6

    .line 113
    aget-byte v14, v1, v12

    shr-int/2addr v14, v7

    and-int/2addr v14, v8

    aput v14, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x21

    new-array v9, v8, [I

    .line 114
    aget-byte v14, v1, v12

    shr-int/2addr v14, v8

    and-int/2addr v14, v8

    aput v14, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v9, v8, [I

    .line 115
    aget-byte v14, v1, v12

    shr-int/lit8 v10, v14, 0x2

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x11

    new-array v9, v8, [I

    .line 116
    aget-byte v10, v1, v12

    shr-int/2addr v10, v13

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v9, v8, [I

    .line 117
    aget-byte v10, v1, v12

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x8

    .line 118
    aget-byte v9, v1, v3

    and-int/2addr v9, v6

    const/16 v10, 0x28

    if-nez v9, :cond_a

    new-array v2, v8, [I

    aput v4, v2, v7

    .line 119
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 120
    :cond_a
    aget-byte v4, v1, v3

    and-int/2addr v4, v6

    if-ne v4, v11, :cond_b

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 121
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v2, v8, [I

    .line 122
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    aput v3, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x56

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 123
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v8, [I

    .line 124
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    .line 125
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 126
    aget-byte v1, v1, v2

    mul-int/2addr v1, v5

    add-int/lit16 v1, v1, 0x3e8

    .line 127
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 128
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 129
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 130
    iput v2, v0, Lk0/yn;->c:I

    move v2, v7

    .line 131
    :goto_5
    iget-object v3, v0, Lk0/yn;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 132
    iget v4, v0, Lk0/yn;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 133
    iput v2, v0, Lk0/yn;->b:I

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 134
    :cond_d
    :goto_6
    iget v4, v0, Lk0/yn;->c:I

    const/16 v5, 0x88

    if-eq v4, v5, :cond_10

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_e

    .line 135
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 136
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_e
    if-nez v1, :cond_1c

    .line 137
    iget v1, v0, Lk0/yn;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v6, :cond_f

    .line 138
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 139
    :cond_f
    iput v6, v0, Lk0/yn;->b:I

    goto/16 :goto_9

    :cond_10
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_1c

    .line 140
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_11

    .line 141
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 142
    :cond_11
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 143
    :cond_12
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 144
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v2, p2, 0x2

    .line 145
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    .line 146
    iput v1, v0, Lk0/yn;->f:I

    move v1, v7

    .line 147
    :goto_7
    iget-object v2, v0, Lk0/yn;->g:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 148
    iget v3, v0, Lk0/yn;->f:I

    aget-object v4, v2, v1

    aget v4, v4, v7

    if-ne v3, v4, :cond_14

    if-eqz v3, :cond_15

    .line 149
    iput v1, v0, Lk0/yn;->e:I

    goto :goto_8

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 150
    :cond_15
    :goto_8
    iget v1, v0, Lk0/yn;->f:I

    if-eqz v1, :cond_1c

    iget v1, v0, Lk0/yn;->e:I

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    .line 151
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 152
    iget-object v1, v0, Lk0/yn;->g:[[I

    iget v2, v0, Lk0/yn;->e:I

    aget-object v1, v1, v2

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_16
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 153
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    .line 154
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 155
    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_18

    .line 156
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 157
    :cond_18
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 158
    :cond_19
    sget v2, Lk0/nt;->a:I

    const v3, 0x4101c7

    if-eq v2, v3, :cond_1a

    const v3, 0x9c01c7

    if-eq v2, v3, :cond_1a

    const v3, 0xd201c6

    if-eq v2, v3, :cond_1a

    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x1640

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 160
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x189f

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    :cond_1b
    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 161
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 162
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 163
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x5

    .line 164
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x6

    .line 165
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x7

    .line 166
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    aput v3, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 167
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 168
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 169
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1c
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/yn;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/yn;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/yn;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/yn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/yn;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/yn;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/yn;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/yn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa4

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p4, :cond_1

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_7

    .line 1
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, p4, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x8d

    aput p3, p1, v4

    aput v2, p1, v2

    .line 3
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p3, p1, v3

    const/16 p3, 0xe5

    aput p3, p1, v4

    aput v4, p1, v2

    .line 4
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 5
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xe4

    aput p3, p1, v4

    aput v2, p1, v2

    .line 6
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v0, [I

    aput p3, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v2

    .line 7
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xe0

    aput p3, p1, v4

    aput v2, p1, v2

    .line 8
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x1c
        0x2
        0x24
        0x1
    .end array-data
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/yn;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v9, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 4
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto/16 :goto_1

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 9
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v6

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 13
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 14
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 15
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v12, 0x2

    aput v12, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    const/16 v13, 0x10

    if-nez v12, :cond_7

    aput v13, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    aput v13, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v10, v5, 0xff

    aput v10, v1, v7

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    .line 20
    rem-int/2addr v11, v8

    add-int/2addr v11, v2

    aput v11, v1, v6

    aput v3, v1, v4

    aput v3, v1, v9

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 22
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x10

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v6, p1, v7

    .line 4
    aput v6, p1, v1

    goto :goto_0

    .line 5
    :pswitch_1
    aput v4, p1, v7

    .line 6
    aput v2, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_3
    aput v1, p1, v7

    .line 10
    aput v6, p1, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    const/16 v0, 0x30

    .line 12
    aput v0, p1, v1

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v2, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    if-ne v0, v7, :cond_2

    .line 16
    aput v4, p1, v7

    .line 17
    aput v2, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p1, v7

    .line 19
    aput v2, p1, v1

    goto :goto_0

    .line 20
    :pswitch_6
    aput v3, p1, v7

    .line 21
    aput v6, p1, v1

    goto :goto_0

    .line 22
    :pswitch_7
    aput v3, p1, v7

    .line 23
    aput v6, p1, v1

    goto :goto_0

    .line 24
    :pswitch_8
    aput v5, p1, v7

    .line 25
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
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

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    int-to-byte p1, p1

    .line 6
    aput p1, v1, v3

    const/4 p1, 0x4

    .line 7
    aput v5, v1, p1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
