.class public Lk0/k9;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static n:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:[[I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


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

    iput-object v1, v0, Lk0/k9;->b:Lo1/g0;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/k9;->c:I

    const/16 v2, 0xff

    .line 4
    iput v2, v0, Lk0/k9;->g:I

    const/16 v2, 0x15

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v1

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

    const/16 v15, 0x10

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v19, 0x11

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v19, 0x12

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v19, 0x13

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v19, 0x14

    aput-object v4, v2, v19

    iput-object v2, v0, Lk0/k9;->h:[[I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_15

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v2, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v2, v8

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v2, v9

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v2, v10

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v2, v11

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v2, v12

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v2, v13

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v2, v14

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v2, v16

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v2, v17

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v2, v18

    iput-object v2, v0, Lk0/k9;->i:[[I

    .line 7
    iput v5, v0, Lk0/k9;->j:I

    .line 8
    iput v5, v0, Lk0/k9;->k:I

    .line 9
    new-instance v1, Lk0/k9$a;

    invoke-direct {v1, v0}, Lk0/k9$a;-><init>(Lk0/k9;)V

    iput-object v1, v0, Lk0/k9;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/k9$b;

    invoke-direct {v1, v0}, Lk0/k9$b;-><init>(Lk0/k9;)V

    iput-object v1, v0, Lk0/k9;->m:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x40
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_d
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_11
    .array-data 4
        0xa0
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xab
        0x5
    .end array-data

    :array_13
    .array-data 4
        0xac
        0x2
    .end array-data

    :array_14
    .array-data 4
        0xaf
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_18
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_19
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_1b
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_1d
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_1e
    .array-data 4
        0x18
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_20
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_21
    .array-data 4
        0x90
        0x10
    .end array-data

    :array_22
    .array-data 4
        0xa0
        0x1
    .end array-data

    :array_23
    .array-data 4
        0xab
        0x5
    .end array-data

    :array_24
    .array-data 4
        0xcb
        0x15
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/16 v0, 0xa

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x0

    :goto_0
    :pswitch_7
    return v0

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
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    const/16 v0, 0x24

    const/4 v1, 0x7

    const/16 v2, 0xd

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lk0/k9;->c3(III)V

    .line 2
    iget-object v0, p0, Lk0/k9;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/k9;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    :cond_0
    sget v0, Lk0/nt;->c:I

    const-string v2, "com.syu.canbus"

    if-eq v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v1, v0, Lk0/mt;->e:I

    .line 8
    iput v1, v0, Lk0/mt;->f:I

    .line 9
    iput v1, v0, Lk0/mt;->i:I

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v1, v0, Lk0/mt;->e:I

    .line 13
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 14
    iput v2, v0, Lk0/mt;->i:I

    .line 15
    iput v2, v0, Lk0/mt;->g:I

    .line 16
    iget-object v0, p0, Lk0/k9;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 17
    iget-object v0, p0, Lk0/k9;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/k9;->e3(I)V

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x3f

    const/4 v11, 0x5

    const/4 v12, 0x7

    if-eq v2, v3, :cond_39

    const/16 v3, 0x41

    if-eq v2, v3, :cond_38

    const/16 v3, 0x70

    if-eq v2, v3, :cond_37

    const/16 v3, 0x11

    const/16 v13, 0x8

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x21

    if-eq v2, v3, :cond_20

    const/16 v3, 0x22

    if-eq v2, v3, :cond_15

    const/16 v3, 0x77

    if-eq v2, v3, :cond_14

    const/16 v3, 0x78

    if-eq v2, v3, :cond_13

    const/16 v3, 0x10

    const/16 v14, 0xa

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_19

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x6b

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 4
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 5
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 6
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 7
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 8
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x70

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x0

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 9
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x71

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 10
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x72

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x73

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 12
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x74

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 13
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x1

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 14
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x0

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 15
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa8

    new-array v4, v10, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa9

    new-array v4, v10, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v10

    aput v1, v4, v9

    .line 17
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xad

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 18
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xae

    new-array v3, v10, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 19
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x5

    .line 21
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x69

    new-array v4, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 22
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 25
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x63

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 26
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 27
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 28
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 33
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x84

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 34
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x85

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 35
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x86

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 36
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x87

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 37
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x88

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 38
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x89

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 39
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8a

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 40
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8b

    new-array v4, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 41
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_4
    add-int/lit8 v2, p2, 0x18

    .line 45
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    and-int/lit8 v4, v2, 0x3

    const/16 v5, 0x99

    new-array v6, v10, [I

    add-int/lit8 v11, p2, 0x6

    .line 46
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    shl-int/lit8 v3, v11, 0x10

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    shl-int/2addr v11, v13

    or-int/2addr v3, v11

    add-int/lit8 v11, p2, 0x8

    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    or-int/2addr v3, v11

    aput v3, v6, v9

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9a

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x9

    .line 47
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    shl-int/2addr v6, v13

    add-int/lit8 v11, p2, 0xa

    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    or-int/2addr v6, v11

    aput v6, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9b

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0xe

    .line 48
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    shl-int/2addr v6, v13

    add-int/lit8 v11, p2, 0xf

    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    or-int/2addr v6, v11

    aput v6, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9c

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x13

    .line 49
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    shl-int/2addr v6, v13

    add-int/lit8 v11, p2, 0x14

    aget-byte v1, v1, v11

    and-int/2addr v1, v8

    or-int/2addr v1, v6

    aput v1, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9d

    new-array v3, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 50
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9e

    new-array v2, v10, [I

    aput v4, v2, v9

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_5
    add-int/lit8 v2, p2, 0x5

    .line 52
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    const/16 v2, 0x80

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_6
    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    .line 58
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    shl-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x8

    .line 59
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x9

    .line 60
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0xa

    .line 61
    aget-byte v1, v1, v6

    and-int/2addr v1, v8

    const/16 v6, 0x7b

    new-array v7, v10, [I

    aput v2, v7, v9

    .line 62
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 63
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v15, p2, 0x3

    .line 68
    aget-byte v15, v1, v15

    and-int/2addr v15, v8

    new-array v12, v10, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v12, v9

    .line 69
    invoke-static {v14, v12}, Lk0/qt;->y0(I[I)V

    .line 70
    sget v12, Lk0/nt;->c:I

    if-ne v12, v10, :cond_0

    const/16 v2, 0xb

    new-array v12, v10, [I

    shr-int/lit8 v14, v15, 0x6

    and-int/2addr v14, v10

    aput v14, v12, v9

    .line 71
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    const/16 v12, 0xb

    new-array v14, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v14, v9

    .line 72
    invoke-static {v12, v14}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v2, 0xc

    new-array v12, v10, [I

    shr-int/lit8 v14, v15, 0x4

    and-int/2addr v14, v10

    aput v14, v12, v9

    .line 73
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v12, v10, [I

    shr-int/lit8 v14, v15, 0x3

    and-int/2addr v14, v10

    aput v14, v12, v9

    .line 74
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v12, v10, [I

    shr-int/lit8 v14, v15, 0x2

    and-int/2addr v14, v10

    aput v14, v12, v9

    .line 75
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 76
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    new-array v12, v10, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v10

    aput v14, v12, v9

    .line 77
    invoke-static {v3, v12}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v12, v10, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aput v2, v12, v9

    .line 78
    invoke-static {v3, v12}, Lk0/qt;->y0(I[I)V

    .line 79
    sget v2, Lk0/nt;->c:I

    const/4 v3, -0x3

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const/4 v5, -0x2

    const/16 v12, 0xfe

    if-nez v2, :cond_3

    add-int/lit8 v2, p2, 0x5

    .line 80
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const/16 v13, 0xba

    if-ne v2, v12, :cond_1

    new-array v2, v10, [I

    aput v5, v2, v9

    .line 81
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    if-ne v2, v8, :cond_2

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 82
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    int-to-double v3, v2

    mul-double v3, v3, v16

    const-wide/high16 v18, 0x4044000000000000L    # 40.0

    sub-double v3, v3, v18

    mul-double/2addr v3, v14

    double-to-int v2, v3

    new-array v3, v10, [I

    aput v2, v3, v9

    .line 83
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    :cond_3
    :goto_1
    add-int/lit8 v2, p2, 0x6

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-eq v2, v10, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v11, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_2

    move v2, v9

    move v3, v2

    :goto_2
    move v4, v3

    :goto_3
    move v6, v4

    goto :goto_4

    :pswitch_8
    move v2, v9

    move v3, v10

    goto :goto_2

    :pswitch_9
    move v2, v9

    move v4, v2

    move v3, v10

    move v6, v3

    goto :goto_4

    :pswitch_a
    move v2, v9

    move v3, v2

    move v4, v10

    goto :goto_3

    :cond_4
    move v2, v9

    move v4, v2

    move v6, v4

    move v3, v10

    goto :goto_4

    :cond_5
    move v2, v9

    move v6, v2

    move v3, v10

    move v4, v3

    goto :goto_4

    :cond_6
    move v2, v9

    move v3, v2

    move v6, v3

    move v4, v10

    goto :goto_4

    :cond_7
    :pswitch_b
    move v2, v9

    move v3, v2

    move v4, v3

    move v6, v10

    goto :goto_4

    :cond_8
    move v3, v9

    move v4, v3

    move v6, v4

    move v2, v10

    :goto_4
    const/16 v7, 0x31

    new-array v11, v10, [I

    aput v2, v11, v9

    .line 85
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v10, [I

    aput v3, v7, v9

    .line 86
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v10, [I

    aput v6, v3, v9

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    .line 90
    sget v3, Lk0/nt;->a:I

    const v4, 0x2011a

    if-ne v3, v4, :cond_a

    if-gez v2, :cond_9

    goto :goto_5

    :cond_9
    const/16 v3, 0x8

    if-le v2, v3, :cond_c

    const/16 v2, 0x8

    goto :goto_6

    :cond_a
    if-gez v2, :cond_b

    :goto_5
    move v2, v9

    goto :goto_6

    :cond_b
    const/4 v3, 0x7

    if-le v2, v3, :cond_c

    const/4 v2, 0x7

    :cond_c
    :goto_6
    const/16 v3, 0x15

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 91
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 92
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x9

    .line 93
    aget-byte v6, v1, v4

    and-int/2addr v6, v8

    .line 94
    sget v7, Lk0/nt;->c:I

    const/16 v11, 0x1b

    if-ne v7, v10, :cond_d

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 95
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_d
    const-string v7, "persist.fyt.reversetemp"

    .line 96
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 97
    aget-byte v3, v1, v4

    and-int/2addr v3, v8

    .line 98
    aget-byte v2, v1, v2

    and-int/lit16 v6, v2, 0xff

    :cond_e
    if-ne v3, v12, :cond_f

    new-array v2, v10, [I

    aput v5, v2, v9

    .line 99
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_f
    if-ne v3, v8, :cond_10

    new-array v2, v10, [I

    const/4 v3, -0x3

    aput v3, v2, v9

    .line 100
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_10
    int-to-double v2, v3

    mul-double v2, v2, v16

    mul-double/2addr v2, v14

    double-to-int v2, v2

    new-array v3, v10, [I

    aput v2, v3, v9

    .line 101
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x1c

    if-ne v6, v12, :cond_11

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    if-ne v6, v8, :cond_12

    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    int-to-double v3, v6

    mul-double v3, v3, v16

    mul-double/2addr v3, v14

    double-to-int v3, v3

    new-array v4, v10, [I

    aput v3, v4, v9

    .line 104
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 105
    :goto_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    add-int/lit8 v2, p2, 0xd

    .line 106
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    .line 107
    invoke-static {v1}, Ll0/h0;->u(I)V

    goto/16 :goto_19

    :cond_13
    add-int/lit8 v2, p2, 0x4

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x9

    .line 109
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0xa7

    new-array v4, v10, [I

    and-int/lit8 v7, v2, 0x4

    const/4 v8, 0x6

    shl-int/2addr v7, v8

    shr-int/lit8 v8, v1, 0x2

    and-int/2addr v8, v6

    or-int/2addr v7, v8

    aput v7, v4, v9

    .line 110
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa8

    new-array v4, v10, [I

    and-int/lit8 v7, v2, 0x2

    const/4 v8, 0x7

    shl-int/2addr v7, v8

    shr-int/lit8 v8, v1, 0x1

    and-int/2addr v8, v10

    or-int/2addr v7, v8

    aput v7, v4, v9

    .line 111
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa9

    new-array v4, v10, [I

    and-int/lit8 v7, v2, 0x1

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    and-int/lit8 v8, v1, 0x1

    or-int/2addr v7, v8

    aput v7, v4, v9

    .line 112
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb6

    new-array v4, v10, [I

    and-int/lit8 v7, v2, 0x20

    shl-int/2addr v7, v6

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    aput v6, v4, v9

    .line 113
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb7

    new-array v4, v10, [I

    and-int/lit8 v6, v2, 0x10

    shl-int/2addr v6, v5

    shr-int/lit8 v7, v1, 0x5

    and-int/2addr v7, v10

    or-int/2addr v6, v7

    aput v6, v4, v9

    .line 114
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb8

    new-array v4, v10, [I

    const/16 v6, 0x8

    and-int/2addr v2, v6

    shl-int/2addr v2, v11

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    or-int/2addr v1, v2

    aput v1, v4, v9

    .line 115
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 117
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x4

    .line 118
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x5

    .line 119
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0x6

    .line 120
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    add-int/lit8 v7, p2, 0x7

    .line 121
    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    add-int/lit8 v11, p2, 0x8

    .line 122
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    add-int/lit8 v12, p2, 0x9

    .line 123
    aget-byte v1, v1, v12

    and-int/2addr v1, v8

    const/16 v8, 0x9f

    new-array v12, v10, [I

    aput v2, v12, v9

    .line 124
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v8, v10, [I

    aput v3, v8, v9

    .line 125
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 126
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 127
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v10, [I

    aput v6, v3, v9

    .line 128
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v10, [I

    aput v7, v3, v9

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v10, [I

    aput v11, v3, v9

    .line 130
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 131
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 132
    :cond_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 134
    aget-byte v1, v1, v3

    if-eq v2, v10, :cond_1b

    if-eq v2, v7, :cond_16

    goto/16 :goto_19

    .line 135
    :cond_16
    iget v2, v0, Lk0/k9;->k:I

    if-eq v1, v2, :cond_3b

    if-le v1, v2, :cond_18

    move v2, v9

    .line 136
    :goto_9
    iget v3, v0, Lk0/k9;->k:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_17

    const/16 v3, 0x1f

    .line 137
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const/16 v2, 0x1f

    .line 138
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_18
    if-ge v1, v2, :cond_1a

    move v2, v9

    .line 139
    :goto_a
    iget v3, v0, Lk0/k9;->k:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_19

    const/16 v3, 0x1e

    .line 140
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    const/16 v2, 0x1e

    .line 141
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 142
    :cond_1a
    :goto_b
    iput v1, v0, Lk0/k9;->k:I

    goto/16 :goto_19

    .line 143
    :cond_1b
    iget v2, v0, Lk0/k9;->j:I

    if-eq v1, v2, :cond_3b

    if-le v1, v2, :cond_1d

    move v2, v9

    .line 144
    :goto_c
    iget v3, v0, Lk0/k9;->j:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1c

    const/4 v3, 0x7

    .line 145
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    const/4 v3, 0x7

    .line 146
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1d
    if-ge v1, v2, :cond_1f

    move v2, v9

    .line 147
    :goto_d
    iget v3, v0, Lk0/k9;->j:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1e

    const/16 v3, 0x8

    .line 148
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    const/16 v3, 0x8

    .line 149
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 150
    :cond_1f
    :goto_e
    iput v1, v0, Lk0/k9;->j:I

    goto/16 :goto_19

    .line 151
    :cond_20
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    add-int/lit8 v2, p2, 0x3

    .line 152
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    .line 153
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lk0/k9;->f:I

    .line 154
    sget v1, Lk0/nt;->c:I

    if-ne v1, v10, :cond_25

    move v1, v9

    .line 155
    :goto_f
    iget-object v3, v0, Lk0/k9;->i:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_22

    .line 156
    iget v4, v0, Lk0/k9;->f:I

    aget-object v5, v3, v1

    aget v5, v5, v9

    if-ne v4, v5, :cond_21

    if-eqz v4, :cond_22

    .line 157
    iput v1, v0, Lk0/k9;->g:I

    goto :goto_10

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    :goto_10
    and-int/2addr v2, v8

    if-eqz v2, :cond_23

    .line 158
    array-length v2, v3

    if-ge v1, v2, :cond_3b

    .line 159
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 160
    :cond_23
    iget v1, v0, Lk0/k9;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_24

    if-eq v1, v8, :cond_24

    .line 161
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 162
    :cond_24
    iput v8, v0, Lk0/k9;->g:I

    goto/16 :goto_19

    :cond_25
    move v1, v9

    .line 163
    :goto_11
    iget-object v3, v0, Lk0/k9;->h:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_27

    .line 164
    iget v4, v0, Lk0/k9;->f:I

    aget-object v5, v3, v1

    aget v5, v5, v9

    if-ne v4, v5, :cond_26

    if-eqz v4, :cond_27

    .line 165
    iput v1, v0, Lk0/k9;->g:I

    goto :goto_12

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    :goto_12
    and-int/2addr v2, v8

    if-eqz v2, :cond_28

    .line 166
    array-length v2, v3

    if-ge v1, v2, :cond_3b

    .line 167
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 168
    :cond_28
    iget v1, v0, Lk0/k9;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_29

    if-eq v1, v8, :cond_29

    .line 169
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 170
    :cond_29
    iput v8, v0, Lk0/k9;->g:I

    goto/16 :goto_19

    :cond_2a
    add-int/lit8 v2, p2, 0x4

    .line 171
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 172
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2b

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 173
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 174
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_2b
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 175
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 176
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_13
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 177
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 178
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 179
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 180
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 181
    :cond_2c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    add-int/lit8 v2, p2, 0x4

    .line 182
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 183
    aget-byte v3, v1, v3

    and-int/2addr v2, v8

    .line 184
    iput v2, v0, Lk0/k9;->e:I

    .line 185
    sget v2, Lk0/nt;->c:I

    if-ne v2, v10, :cond_31

    move v2, v9

    .line 186
    :goto_14
    iget-object v4, v0, Lk0/k9;->i:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_2e

    .line 187
    iget v5, v0, Lk0/k9;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_2d

    if-eqz v5, :cond_2e

    .line 188
    iput v2, v0, Lk0/k9;->d:I

    goto :goto_15

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2e
    :goto_15
    and-int/2addr v3, v8

    if-eqz v3, :cond_2f

    .line 189
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 190
    aget-object v2, v4, v2

    aget v2, v2, v10

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_18

    .line 191
    :cond_2f
    iget v2, v0, Lk0/k9;->d:I

    iget-object v3, v0, Lk0/k9;->h:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_30

    if-eq v2, v8, :cond_30

    .line 192
    aget-object v2, v3, v2

    aget v2, v2, v10

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 193
    :cond_30
    iput v8, v0, Lk0/k9;->d:I

    goto :goto_18

    :cond_31
    move v2, v9

    .line 194
    :goto_16
    iget-object v4, v0, Lk0/k9;->h:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_33

    .line 195
    iget v5, v0, Lk0/k9;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_32

    if-eqz v5, :cond_33

    .line 196
    iput v2, v0, Lk0/k9;->d:I

    goto :goto_17

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_33
    :goto_17
    and-int/2addr v3, v8

    if-eqz v3, :cond_34

    .line 197
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 198
    aget-object v2, v4, v2

    aget v2, v2, v10

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_18

    .line 199
    :cond_34
    iget v2, v0, Lk0/k9;->d:I

    array-length v3, v4

    if-ge v2, v3, :cond_35

    if-eq v2, v8, :cond_35

    .line 200
    aget-object v2, v4, v2

    aget v2, v2, v10

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 201
    :cond_35
    iput v8, v0, Lk0/k9;->d:I

    :cond_36
    :goto_18
    add-int/lit8 v2, p2, 0x9

    .line 202
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_19

    :cond_37
    add-int/lit8 v2, p2, 0x2

    .line 203
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 204
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    and-int/lit8 v1, v1, 0xf

    const/16 v4, 0x77

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 205
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x78

    new-array v5, v10, [I

    const/4 v6, 0x6

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 206
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v10, [I

    aput v3, v4, v9

    .line 207
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 208
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 209
    :cond_38
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    add-int/lit8 v2, p2, 0x2

    .line 210
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Lk0/k9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 211
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Lk0/k9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 212
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Lk0/k9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 213
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Lk0/k9;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_19

    :cond_39
    add-int/lit8 v2, p2, 0x2

    .line 214
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 215
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x4

    .line 216
    aget-byte v6, v1, v4

    and-int/2addr v6, v8

    add-int/lit8 v11, p2, 0x5

    .line 217
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    .line 218
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    const/16 v4, 0x8f

    new-array v8, v10, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v10

    aput v12, v8, v9

    .line 219
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x90

    new-array v8, v10, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v10

    aput v12, v8, v9

    .line 220
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x91

    new-array v8, v10, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v10

    aput v12, v8, v9

    .line 221
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x92

    new-array v8, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v8, v9

    .line 222
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v10, [I

    shr-int/2addr v3, v5

    and-int/2addr v3, v10

    aput v3, v4, v9

    .line 223
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 224
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 225
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    shr-int/lit8 v4, v11, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 226
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    const/4 v4, 0x6

    shr-int/lit8 v4, v11, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 227
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 228
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    .line 229
    :cond_3a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 230
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 231
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x4

    .line 232
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    const/4 v7, 0x6

    add-int/lit8 v7, p2, 0x6

    .line 233
    aget-byte v1, v1, v7

    and-int/2addr v1, v8

    const/16 v7, 0xb2

    new-array v8, v10, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v10

    aput v11, v8, v9

    .line 234
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xaf

    new-array v8, v10, [I

    shr-int/lit8 v11, v4, 0x6

    and-int/2addr v11, v6

    aput v11, v8, v9

    .line 235
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb3

    new-array v8, v10, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aput v2, v8, v9

    .line 236
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v5, v10, [I

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v5, v9

    .line 237
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v4, v10, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aput v3, v4, v9

    .line 238
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v10, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 239
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_3b
    :goto_19
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/k9;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/k9;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/k9;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xbb

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

    move-object/from16 v1, p2

    const/16 v2, 0x8

    const/16 v3, 0xe3

    const/16 v4, 0xff

    const/16 v5, 0x6a

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/16 v13, 0x6c

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_12

    .line 1
    array-length v2, v1

    if-lez v2, :cond_12

    new-array v2, v11, [I

    aput v3, v2, v16

    aput v14, v2, v15

    const/16 v3, 0x3b

    aput v3, v2, v14

    .line 2
    aget v3, v1, v16

    aput v3, v2, v10

    aget v1, v1, v15

    aput v1, v2, v12

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz v1, :cond_12

    .line 3
    array-length v2, v1

    if-lez v2, :cond_12

    new-array v2, v11, [I

    aput v3, v2, v16

    aput v14, v2, v15

    const/16 v3, 0x3a

    aput v3, v2, v14

    .line 4
    aget v3, v1, v16

    aput v3, v2, v10

    aget v1, v1, v15

    aput v1, v2, v12

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz v1, :cond_12

    .line 5
    array-length v2, v1

    if-lez v2, :cond_12

    .line 6
    aget v1, v1, v16

    invoke-virtual {v0, v13, v8, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v1, :cond_12

    .line 7
    array-length v2, v1

    if-lez v2, :cond_12

    .line 8
    aget v1, v1, v16

    invoke-virtual {v0, v13, v9, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v1, :cond_12

    .line 9
    array-length v2, v1

    if-le v2, v14, :cond_12

    .line 10
    aget v2, v1, v15

    if-ne v2, v12, :cond_0

    .line 11
    aget v1, v1, v14

    invoke-virtual {v0, v1}, Lk0/k9;->e3(I)V

    goto/16 :goto_0

    .line 12
    :cond_0
    aget v2, v1, v16

    aget v3, v1, v15

    aget v1, v1, v14

    invoke-virtual {v0, v2, v3, v1}, Lk0/k9;->d3(III)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz v1, :cond_12

    .line 13
    array-length v2, v1

    if-lez v2, :cond_12

    const/16 v2, 0xa

    .line 14
    aget v1, v1, v16

    invoke-virtual {v0, v13, v2, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz v1, :cond_12

    .line 15
    array-length v2, v1

    if-lez v2, :cond_12

    const/16 v2, 0x9

    .line 16
    aget v1, v1, v16

    invoke-virtual {v0, v13, v2, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_7
    if-eqz v1, :cond_12

    .line 17
    array-length v3, v1

    if-lez v3, :cond_12

    .line 18
    aget v3, v1, v16

    if-eqz v3, :cond_1

    .line 19
    aput v15, v1, v16

    .line 20
    :cond_1
    aget v1, v1, v16

    invoke-virtual {v0, v13, v2, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_8
    if-eqz v1, :cond_12

    .line 21
    array-length v2, v1

    if-lez v2, :cond_12

    .line 22
    aget v2, v1, v16

    if-eqz v2, :cond_2

    .line 23
    aput v15, v1, v16

    .line 24
    :cond_2
    aget v1, v1, v16

    invoke-virtual {v0, v13, v6, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_9
    if-eqz v1, :cond_12

    .line 25
    array-length v2, v1

    if-lez v2, :cond_12

    .line 26
    aget v2, v1, v16

    if-eqz v2, :cond_3

    .line 27
    aput v15, v1, v16

    .line 28
    :cond_3
    aget v1, v1, v16

    invoke-virtual {v0, v13, v7, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_a
    if-eqz v1, :cond_12

    .line 29
    array-length v2, v1

    if-lez v2, :cond_12

    .line 30
    aget v2, v1, v16

    if-eqz v2, :cond_4

    .line 31
    aput v15, v1, v16

    .line 32
    :cond_4
    aget v1, v1, v16

    invoke-virtual {v0, v13, v11, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_b
    if-eqz v1, :cond_12

    .line 33
    array-length v2, v1

    if-lez v2, :cond_12

    .line 34
    aget v2, v1, v16

    if-eqz v2, :cond_5

    .line 35
    aput v15, v1, v16

    .line 36
    :cond_5
    aget v1, v1, v16

    invoke-virtual {v0, v13, v12, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_c
    if-eqz v1, :cond_12

    .line 37
    array-length v2, v1

    if-lez v2, :cond_12

    .line 38
    aget v2, v1, v16

    if-eqz v2, :cond_6

    .line 39
    aput v15, v1, v16

    .line 40
    :cond_6
    aget v1, v1, v16

    invoke-virtual {v0, v13, v10, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_d
    if-eqz v1, :cond_12

    .line 41
    array-length v3, v1

    if-lez v3, :cond_12

    .line 42
    aget v3, v1, v16

    if-eqz v3, :cond_7

    .line 43
    aput v15, v1, v16

    :cond_7
    const/16 v3, 0x6b

    .line 44
    aget v1, v1, v16

    invoke-virtual {v0, v3, v2, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_e
    if-eqz v1, :cond_12

    .line 45
    array-length v2, v1

    if-lez v2, :cond_12

    .line 46
    aget v2, v1, v16

    if-eqz v2, :cond_8

    .line 47
    aput v15, v1, v16

    .line 48
    :cond_8
    aget v1, v1, v16

    invoke-virtual {v0, v5, v6, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_f
    if-eqz v1, :cond_12

    .line 49
    array-length v2, v1

    if-lez v2, :cond_12

    .line 50
    aget v2, v1, v16

    if-eqz v2, :cond_9

    .line 51
    aput v15, v1, v16

    .line 52
    :cond_9
    aget v1, v1, v16

    invoke-virtual {v0, v5, v10, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_10
    if-eqz v1, :cond_12

    .line 53
    array-length v2, v1

    if-lez v2, :cond_12

    .line 54
    aget v2, v1, v16

    if-eqz v2, :cond_a

    .line 55
    aput v15, v1, v16

    .line 56
    :cond_a
    aget v1, v1, v16

    invoke-virtual {v0, v5, v7, v1}, Lk0/k9;->c3(III)V

    goto/16 :goto_0

    :pswitch_11
    if-eqz v1, :cond_12

    .line 57
    array-length v2, v1

    if-lez v2, :cond_12

    .line 58
    aget v1, v1, v16

    if-nez v1, :cond_b

    .line 59
    invoke-virtual {v0, v8, v15}, Lk0/k9;->b3(II)V

    goto/16 :goto_0

    .line 60
    :cond_b
    invoke-virtual {v0, v8, v14}, Lk0/k9;->b3(II)V

    goto/16 :goto_0

    :pswitch_12
    if-eqz v1, :cond_12

    .line 61
    array-length v2, v1

    if-lez v2, :cond_12

    .line 62
    aget v1, v1, v16

    if-nez v1, :cond_c

    .line 63
    invoke-virtual {v0, v9, v15}, Lk0/k9;->b3(II)V

    goto/16 :goto_0

    .line 64
    :cond_c
    invoke-virtual {v0, v9, v14}, Lk0/k9;->b3(II)V

    goto/16 :goto_0

    :pswitch_13
    if-eqz v1, :cond_12

    .line 65
    array-length v1, v1

    if-lez v1, :cond_12

    const/16 v1, 0xf

    .line 66
    invoke-virtual {v0, v1, v4}, Lk0/k9;->b3(II)V

    goto :goto_0

    :pswitch_14
    if-eqz v1, :cond_12

    .line 67
    array-length v2, v1

    if-lez v2, :cond_12

    .line 68
    aget v2, v1, v16

    if-eqz v2, :cond_d

    .line 69
    aput v15, v1, v16

    .line 70
    :cond_d
    aget v1, v1, v16

    invoke-virtual {v0, v6, v1}, Lk0/k9;->b3(II)V

    goto :goto_0

    :pswitch_15
    if-eqz v1, :cond_12

    .line 71
    array-length v2, v1

    if-lez v2, :cond_12

    .line 72
    aget v2, v1, v16

    if-eqz v2, :cond_e

    .line 73
    aput v15, v1, v16

    .line 74
    :cond_e
    aget v1, v1, v16

    invoke-virtual {v0, v7, v1}, Lk0/k9;->b3(II)V

    goto :goto_0

    :pswitch_16
    if-eqz v1, :cond_12

    .line 75
    array-length v2, v1

    if-lez v2, :cond_12

    .line 76
    aget v2, v1, v16

    if-eqz v2, :cond_f

    .line 77
    aput v15, v1, v16

    .line 78
    :cond_f
    aget v1, v1, v16

    invoke-virtual {v0, v11, v1}, Lk0/k9;->b3(II)V

    goto :goto_0

    :pswitch_17
    if-eqz v1, :cond_12

    .line 79
    array-length v2, v1

    if-lez v2, :cond_12

    .line 80
    aget v2, v1, v16

    if-eqz v2, :cond_10

    .line 81
    aput v15, v1, v16

    .line 82
    :cond_10
    aget v1, v1, v16

    invoke-virtual {v0, v12, v1}, Lk0/k9;->b3(II)V

    goto :goto_0

    :pswitch_18
    if-eqz v1, :cond_12

    .line 83
    array-length v1, v1

    if-lez v1, :cond_12

    .line 84
    invoke-virtual {v0, v14, v4}, Lk0/k9;->b3(II)V

    goto :goto_0

    :pswitch_19
    if-eqz v1, :cond_12

    .line 85
    array-length v2, v1

    if-lez v2, :cond_12

    .line 86
    aget v2, v1, v16

    if-eqz v2, :cond_11

    .line 87
    aput v15, v1, v16

    .line 88
    :cond_11
    aget v1, v1, v16

    invoke-virtual {v0, v14, v1}, Lk0/k9;->b3(II)V

    :cond_12
    :goto_0
    return-void

    :pswitch_data_0
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v1, v0, v2

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

.method public final c3(III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    int-to-byte p1, p1

    aput p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(III)V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x4

    aput v3, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x3

    const/16 v1, 0xd

    aput v1, v0, p1

    aput v2, v0, v3

    int-to-byte p1, p2

    const/4 p2, 0x5

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x6

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final e3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/k9;->n:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xb9

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7e

    const/4 v3, 0x4

    .line 3
    invoke-virtual {p0, v1, v3, p1}, Lk0/k9;->d3(III)V

    .line 4
    iget-object p1, p0, Lk0/k9;->b:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/k9;->n:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/k9;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
