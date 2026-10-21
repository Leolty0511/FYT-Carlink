.class public Lk0/v;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[[Ljava/lang/String;

.field public d:[[Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lk0/v;->b:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lk0/v;->c:[[Ljava/lang/String;

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lk0/v;->d:[[Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lk0/v;->f:I

    const/16 v2, 0x35

    new-array v2, v2, [[I

    new-array v3, v1, [I

    .line 6
    fill-array-data v3, :array_2

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    aput-object v0, v2, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x3

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x4

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x5

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    const/16 v3, 0x8

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    const/16 v3, 0x9

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xa

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xb

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xc

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xd

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    const/16 v3, 0xe

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    const/16 v3, 0xf

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x10

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x11

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x12

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x13

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x14

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x15

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x16

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x17

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    const/16 v3, 0x18

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_1b

    const/16 v3, 0x19

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_1d

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_20

    const/16 v3, 0x1e

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_21

    const/16 v3, 0x1f

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_22

    const/16 v3, 0x20

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_23

    const/16 v3, 0x21

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_24

    const/16 v3, 0x22

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_25

    const/16 v3, 0x23

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_26

    const/16 v3, 0x24

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_27

    const/16 v3, 0x25

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_28

    const/16 v3, 0x26

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_29

    const/16 v3, 0x27

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    const/16 v3, 0x28

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_2b

    const/16 v3, 0x29

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    const/16 v3, 0x2a

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_2d

    const/16 v3, 0x2b

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    const/16 v3, 0x2c

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_2f

    const/16 v3, 0x2d

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_30

    const/16 v3, 0x2e

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_31

    const/16 v3, 0x2f

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_32

    const/16 v3, 0x30

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_33

    const/16 v3, 0x31

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_34

    const/16 v3, 0x32

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_35

    const/16 v3, 0x33

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_36

    const/16 v3, 0x34

    aput-object v0, v2, v3

    iput-object v2, p0, Lk0/v;->g:[[I

    .line 7
    new-instance v0, Lk0/v$a;

    invoke-direct {v0, p0}, Lk0/v$a;-><init>(Lk0/v;)V

    iput-object v0, p0, Lk0/v;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/v$b;

    invoke-direct {v0, p0}, Lk0/v$b;-><init>(Lk0/v;)V

    iput-object v0, p0, Lk0/v;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/v$c;

    invoke-direct {v0, p0}, Lk0/v$c;-><init>(Lk0/v;)V

    iput-object v0, p0, Lk0/v;->j:Ljava/lang/Runnable;

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_37

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lk0/v;->k:[[I

    return-void

    :array_0
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_8
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_b
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x20
        0x31
    .end array-data

    :array_e
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_f
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_10
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_11
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_13
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_14
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_15
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_16
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_17
    .array-data 4
        0x2a
        0x32
    .end array-data

    :array_18
    .array-data 4
        0x2b
        0x33
    .end array-data

    :array_19
    .array-data 4
        0x31
        0x9
    .end array-data

    :array_1a
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0xd
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x15
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_1e
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_1f
    .array-data 4
        0x37
        0x5
    .end array-data

    :array_20
    .array-data 4
        0x38
        0x26
    .end array-data

    :array_21
    .array-data 4
        0x39
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x3d
        0x38
    .end array-data

    :array_23
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x48
        0x1d
    .end array-data

    :array_25
    .array-data 4
        0x49
        0x20
    .end array-data

    :array_26
    .array-data 4
        0x4a
        0x21
    .end array-data

    :array_27
    .array-data 4
        0x4b
        0x22
    .end array-data

    :array_28
    .array-data 4
        0x4c
        0x23
    .end array-data

    :array_29
    .array-data 4
        0x52
        0x12
    .end array-data

    :array_2a
    .array-data 4
        0x53
        0x1a
    .end array-data

    :array_2b
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_2c
    .array-data 4
        0x56
        0x4e
    .end array-data

    :array_2d
    .array-data 4
        0x57
        0x3a
    .end array-data

    :array_2e
    .array-data 4
        0x59
        0x26
    .end array-data

    :array_2f
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_30
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_31
    .array-data 4
        0x68
        0x6
    .end array-data

    :array_32
    .array-data 4
        0x69
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x6a
        0x37
    .end array-data

    :array_34
    .array-data 4
        0x6b
        0x36
    .end array-data

    :array_35
    .array-data 4
        0x6f
        0x36
    .end array-data

    :array_36
    .array-data 4
        0x86
        0x10
    .end array-data

    :array_37
    .array-data 4
        0x10
        0x8
    .end array-data
.end method

.method public static synthetic b3(Lk0/v;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/v;->f3(III)V

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
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lz/c;->e:Lo1/y;

    iget-object v2, p0, Lk0/v;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v2, p0, Lk0/v;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0x14

    const/16 v4, 0xff

    const/4 v5, 0x2

    if-eq v2, v3, :cond_fb

    const/16 v3, 0x2a

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x7

    const/4 v10, 0x4

    const/4 v7, 0x5

    const/16 v16, -0x1

    const/4 v6, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_53

    const/16 v3, 0x30

    if-eq v2, v3, :cond_52

    const/16 v3, 0x35

    if-eq v2, v3, :cond_51

    const/16 v3, 0x40

    if-eq v2, v3, :cond_50

    const/16 v3, 0x68

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x6a

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x27

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x28

    if-eq v2, v3, :cond_4c

    const/16 v3, 0x78

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x79

    if-eq v2, v3, :cond_49

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_76

    :pswitch_0
    const/16 v2, 0x6a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 2
    aget-byte v4, v0, v4

    mul-int/lit8 v4, v4, 0x3c

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v0, v2

    and-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v0, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    add-int/2addr v2, v0

    const/16 v0, 0x65

    new-array v3, v11, [I

    aput v2, v3, v12

    .line 4
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    .line 5
    :pswitch_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x63

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    aget-byte v9, v0, v8

    and-int/2addr v9, v4

    aput v9, v7, v12

    add-int/lit8 v9, p2, 0x4

    aget-byte v10, v0, v9

    and-int/2addr v10, v4

    aput v10, v7, v11

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v0, v10

    and-int/2addr v10, v4

    aput v10, v7, v5

    invoke-static {v2, v3, v7}, Lo1/x;->B([Lo1/x;I[I)V

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x6

    add-int v7, p2, p3

    sub-int/2addr v7, v11

    :goto_0
    if-ge v3, v7, :cond_0

    add-int/lit8 v10, v3, 0x1

    .line 7
    aget-byte v10, v0, v10

    and-int/2addr v10, v4

    aget-byte v14, v0, v3

    shl-int/2addr v14, v13

    or-int/2addr v10, v14

    int-to-char v10, v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    new-array v7, v6, [I

    .line 8
    aget-byte v8, v0, v8

    and-int/2addr v8, v4

    aput v8, v7, v12

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v0, v6

    and-int/2addr v6, v4

    aput v6, v7, v11

    aget-byte v0, v0, v9

    and-int/2addr v0, v4

    aput v0, v7, v5

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v3, v7, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_76

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_76

    :pswitch_3
    new-array v2, v14, [I

    :goto_1
    if-ge v12, v14, :cond_1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v12

    .line 12
    aget-byte v3, v0, v3

    aput v3, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x69

    invoke-static {v0, v3, v2}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_76

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x4

    .line 15
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x5

    .line 16
    aget-byte v4, v0, v4

    add-int/lit8 v8, p2, 0x7

    .line 17
    aget-byte v8, v0, v8

    const-string v9, "persist.syu.reversefrontdoor"

    .line 18
    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    new-array v9, v11, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v11

    aput v13, v9, v12

    .line 19
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v11, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v11

    aput v13, v9, v12

    .line 20
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v9, v11, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v11

    aput v13, v9, v12

    .line 21
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v11, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v11

    aput v13, v9, v12

    .line 22
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v11

    aput v9, v5, v12

    .line 23
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v11

    aput v9, v5, v12

    .line 24
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v11, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v11

    aput v2, v5, v12

    .line 25
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v5, v11, [I

    add-int/lit8 v6, p2, 0x3

    .line 26
    aget-byte v7, v0, v6

    shr-int/2addr v7, v14

    and-int/2addr v7, v11

    aput v7, v5, v12

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v5, v11, [I

    .line 27
    aget-byte v0, v0, v6

    shr-int/2addr v0, v15

    and-int/2addr v0, v11

    aput v0, v5, v12

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v2, v11, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v11

    aput v5, v2, v12

    .line 28
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x78

    new-array v2, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v15

    aput v5, v2, v12

    .line 29
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x75

    new-array v2, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v2, v12

    .line 30
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x74

    new-array v2, v11, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v11

    aput v5, v2, v12

    .line 31
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x79

    new-array v2, v11, [I

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v11

    aput v5, v2, v12

    .line 32
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x73

    new-array v2, v11, [I

    shr-int/2addr v3, v12

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 33
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v2, v11, [I

    shr-int/lit8 v3, v4, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 34
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7f

    new-array v2, v11, [I

    shr-int/lit8 v3, v4, 0x3

    and-int/2addr v3, v15

    aput v3, v2, v12

    .line 35
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x80

    new-array v2, v11, [I

    shr-int/lit8 v3, v4, 0x0

    and-int/2addr v3, v15

    aput v3, v2, v12

    .line 36
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 37
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x7b

    new-array v3, v11, [I

    shr-int/2addr v4, v14

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v0, v2, v3}, Lo1/x;->B([Lo1/x;I[I)V

    const/16 v0, 0x7c

    new-array v2, v11, [I

    shr-int/lit8 v3, v8, 0x0

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 38
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7a

    new-array v2, v11, [I

    shr-int/lit8 v3, v8, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 39
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x81

    new-array v2, v11, [I

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 40
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x82

    new-array v2, v11, [I

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 41
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x83

    new-array v2, v11, [I

    shr-int/lit8 v3, v8, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 42
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x84

    new-array v2, v11, [I

    shr-int/lit8 v3, v8, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v12

    .line 43
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    .line 44
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_fc

    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v3, v0, v2

    and-int/2addr v3, v4

    add-int/lit8 v6, p2, 0x3

    .line 46
    aget-byte v8, v0, v6

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x4

    .line 47
    aget-byte v10, v0, v9

    and-int/2addr v10, v4

    add-int/lit8 v7, p2, 0x5

    .line 48
    aget-byte v12, v0, v7

    and-int/2addr v12, v4

    .line 49
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_3

    sget v13, Ll0/c0;->h:I

    if-ne v13, v8, :cond_3

    sget v13, Ll0/c0;->i:I

    if-ne v13, v10, :cond_3

    sget v13, Ll0/c0;->j:I

    if-eq v13, v12, :cond_5

    .line 50
    :cond_3
    sget v13, Lu0/b;->o:I

    if-nez v13, :cond_5

    if-nez v3, :cond_4

    if-nez v8, :cond_4

    if-nez v10, :cond_4

    if-nez v12, :cond_4

    .line 51
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v13

    sget-object v14, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataMain.sRadar  = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->p:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 52
    sget v4, Lu0/b;->p:I

    if-ne v4, v11, :cond_5

    .line 53
    sput v5, Ll0/c0;->k:I

    .line 54
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 55
    :cond_4
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 56
    :cond_5
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 57
    sput v8, Ll0/c0;->h:I

    .line 58
    sput v10, Ll0/c0;->i:I

    .line 59
    sput v12, Ll0/c0;->j:I

    .line 60
    aget-byte v2, v0, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk0/v;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 61
    aget-byte v2, v0, v6

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk0/v;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 62
    aget-byte v2, v0, v9

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk0/v;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 63
    aget-byte v0, v0, v7

    and-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lk0/v;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_76

    .line 64
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_fc

    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v0, v2

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk0/v;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v0, v2

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk0/v;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 67
    aget-byte v2, v0, v2

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk0/v;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 68
    aget-byte v0, v0, v2

    and-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lk0/v;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_76

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v0, v2

    and-int/2addr v2, v4

    add-int/lit8 v6, p2, 0x3

    .line 70
    aget-byte v6, v0, v6

    and-int/2addr v6, v4

    add-int/lit8 v10, p2, 0x4

    .line 71
    aget-byte v13, v0, v10

    and-int/2addr v13, v4

    add-int/lit8 v14, p2, 0x5

    .line 72
    aget-byte v15, v0, v14

    and-int/2addr v15, v4

    add-int/lit8 v18, p2, 0x6

    .line 73
    aget-byte v7, v0, v18

    and-int/2addr v7, v4

    new-array v4, v11, [I

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_6

    move v3, v12

    goto :goto_4

    :cond_6
    move v3, v11

    :goto_4
    aput v3, v4, v12

    .line 74
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_7

    move v4, v12

    goto :goto_5

    :cond_7
    move v4, v11

    :goto_5
    aput v4, v3, v12

    .line 75
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_8

    move v4, v12

    goto :goto_6

    :cond_8
    move v4, v11

    :goto_6
    aput v4, v3, v12

    const/16 v4, 0xc

    .line 76
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_9

    move v4, v12

    goto :goto_7

    :cond_9
    move v4, v11

    :goto_7
    aput v4, v3, v12

    const/16 v4, 0xd

    .line 77
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_a

    move v4, v12

    goto :goto_8

    :cond_a
    move v4, v11

    :goto_8
    aput v4, v3, v12

    const/16 v4, 0xe

    .line 78
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v4, v11, [I

    and-int/lit8 v8, v2, 0x10

    if-nez v8, :cond_b

    move v8, v12

    goto :goto_9

    :cond_b
    move v8, v11

    :goto_9
    aput v8, v4, v12

    .line 79
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v4, v11, [I

    and-int/2addr v2, v5

    if-nez v2, :cond_c

    move v2, v12

    goto :goto_a

    :cond_c
    move v2, v11

    :goto_a
    aput v2, v4, v12

    .line 80
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    and-int/lit16 v3, v6, 0x80

    if-nez v3, :cond_d

    move v3, v12

    goto :goto_b

    :cond_d
    move v3, v11

    :goto_b
    aput v3, v2, v12

    const/16 v3, 0x12

    .line 81
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v11, [I

    and-int/lit8 v4, v6, 0x40

    if-nez v4, :cond_e

    move v4, v12

    goto :goto_c

    :cond_e
    move v4, v11

    :goto_c
    aput v4, v3, v12

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    and-int/lit8 v4, v6, 0x20

    if-nez v4, :cond_f

    move v4, v12

    goto :goto_d

    :cond_f
    move v4, v11

    :goto_d
    aput v4, v3, v12

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    const/16 v4, 0xf

    and-int/2addr v4, v6

    aput v4, v3, v12

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 85
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 86
    aget-byte v2, v0, v14

    const/16 v3, 0xff

    and-int/lit16 v13, v2, 0xff

    .line 87
    aget-byte v2, v0, v10

    and-int/lit16 v15, v2, 0xff

    :cond_10
    shr-int/lit8 v2, v7, 0x6

    and-int/2addr v2, v11

    if-nez v13, :cond_11

    const/16 v3, 0x1b

    new-array v4, v11, [I

    const/high16 v5, 0x100000

    aput v5, v4, v12

    .line 88
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_11
    const/16 v3, 0x7f

    if-eq v13, v3, :cond_14

    const/16 v3, 0xff

    if-ne v13, v3, :cond_12

    goto :goto_e

    :cond_12
    const/16 v3, 0x1f

    if-lt v13, v3, :cond_15

    const/16 v3, 0x3b

    if-gt v13, v3, :cond_15

    if-eqz v2, :cond_13

    const/16 v3, 0x1b

    new-array v4, v11, [I

    const/16 v5, 0x9

    mul-int/2addr v13, v5

    .line 89
    div-int/2addr v13, v9

    const/16 v5, 0x20

    add-int/2addr v13, v5

    aput v13, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_13
    const/16 v3, 0x1b

    new-array v4, v11, [I

    const/4 v5, 0x5

    mul-int/2addr v13, v5

    aput v13, v4, v12

    .line 90
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_14
    :goto_e
    const/16 v3, 0x1b

    new-array v4, v11, [I

    const v5, 0x100001

    aput v5, v4, v12

    .line 91
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_15
    :goto_f
    if-nez v15, :cond_16

    const/16 v2, 0x1c

    new-array v3, v11, [I

    const/high16 v4, 0x100000

    aput v4, v3, v12

    .line 92
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_16
    const/16 v3, 0x7f

    if-eq v15, v3, :cond_19

    const/16 v3, 0xff

    if-ne v15, v3, :cond_17

    goto :goto_10

    :cond_17
    const/16 v3, 0x1f

    if-lt v15, v3, :cond_1a

    const/16 v3, 0x3b

    if-gt v15, v3, :cond_1a

    if-eqz v2, :cond_18

    const/16 v2, 0x1c

    new-array v3, v11, [I

    const/16 v4, 0x9

    mul-int/2addr v15, v4

    .line 93
    div-int/2addr v15, v9

    const/16 v4, 0x20

    add-int/2addr v15, v4

    aput v15, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_18
    const/16 v2, 0x1c

    new-array v3, v11, [I

    const/4 v4, 0x5

    mul-int/2addr v15, v4

    aput v15, v3, v12

    .line 94
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_19
    :goto_10
    const/16 v2, 0x1c

    new-array v3, v11, [I

    const v4, 0x100001

    aput v4, v3, v12

    .line 95
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1a
    :goto_11
    const/16 v2, 0x35

    new-array v3, v11, [I

    and-int/lit8 v4, v7, 0x4

    if-nez v4, :cond_1b

    move v4, v12

    goto :goto_12

    :cond_1b
    move v4, v11

    :goto_12
    aput v4, v3, v12

    .line 96
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v11, [I

    and-int/lit8 v4, v7, 0x40

    if-nez v4, :cond_1c

    move v5, v12

    goto :goto_13

    :cond_1c
    move v5, v11

    :goto_13
    aput v5, v3, v12

    .line 97
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 98
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_fc

    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 99
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1d

    move v12, v11

    :cond_1d
    if-eqz v4, :cond_1f

    if-eqz v12, :cond_1e

    rsub-int v0, v0, 0x100

    const/16 v2, 0x12

    mul-int/2addr v0, v2

    rsub-int v0, v0, 0x528

    goto :goto_14

    :cond_1e
    const/16 v2, 0x12

    const/16 v3, 0xff

    and-int/2addr v0, v3

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x528

    :goto_14
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    and-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_1f
    if-eqz v12, :cond_20

    rsub-int v0, v0, 0x100

    mul-int/2addr v0, v9

    rsub-int v0, v0, 0x3e8

    goto :goto_15

    :cond_20
    const/16 v2, 0xff

    and-int/2addr v0, v2

    mul-int/2addr v0, v9

    add-int/lit16 v0, v0, 0x3e8

    .line 100
    :goto_15
    invoke-static {v0}, Lu0/d;->B3(I)V

    goto/16 :goto_76

    :pswitch_8
    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v3, v0, v2

    add-int/lit8 v4, p2, 0x2

    .line 102
    aget-byte v7, v0, v4

    const/16 v8, 0x52

    if-eq v7, v8, :cond_45

    const/16 v8, 0x53

    if-eq v7, v8, :cond_41

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    const/16 v8, 0xc6

    packed-switch v7, :pswitch_data_4

    packed-switch v7, :pswitch_data_5

    packed-switch v7, :pswitch_data_6

    packed-switch v7, :pswitch_data_7

    .line 103
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 104
    aget-byte v3, v0, v4

    .line 105
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v3, v2

    .line 106
    iput v3, v1, Lk0/v;->f:I

    .line 107
    sget v2, Lk0/nt;->a:I

    const v3, 0x30016

    if-ne v2, v3, :cond_2a

    move v2, v12

    .line 108
    :goto_16
    iget-object v3, v1, Lk0/v;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_22

    .line 109
    iget v4, v1, Lk0/v;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_21

    if-eqz v4, :cond_22

    .line 110
    iput v2, v1, Lk0/v;->e:I

    goto :goto_17

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 111
    :cond_22
    :goto_17
    iget v4, v1, Lk0/v;->f:I

    if-eq v4, v6, :cond_28

    if-eq v4, v10, :cond_26

    const/16 v4, 0xff

    and-int/2addr v0, v4

    if-ne v0, v11, :cond_23

    .line 112
    array-length v0, v3

    if-ge v2, v0, :cond_fc

    .line 113
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_23
    if-nez v0, :cond_fc

    .line 114
    iget v0, v1, Lk0/v;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_24

    const/16 v2, 0xff

    if-eq v0, v2, :cond_25

    .line 115
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_18

    :cond_24
    const/16 v2, 0xff

    .line 116
    :cond_25
    :goto_18
    iput v2, v1, Lk0/v;->e:I

    goto/16 :goto_76

    :cond_26
    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v11, :cond_fc

    .line 117
    sget v0, Lh0/c;->E:I

    if-eq v0, v10, :cond_27

    .line 118
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    .line 119
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_27
    const/16 v0, 0x12

    .line 120
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 121
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_28
    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v11, :cond_fc

    .line 122
    sget v0, Lh0/c;->E:I

    if-eq v0, v6, :cond_29

    const/4 v2, 0x5

    if-eq v0, v2, :cond_29

    .line 123
    invoke-static {v10, v12}, Ll0/b0;->l0(II)V

    .line 124
    invoke-static {v10, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_29
    const/16 v0, 0x1a

    .line 125
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 126
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_2a
    move v2, v12

    .line 127
    :goto_19
    iget-object v3, v1, Lk0/v;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2c

    .line 128
    iget v4, v1, Lk0/v;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_2b

    if-eqz v4, :cond_2c

    .line 129
    iput v2, v1, Lk0/v;->e:I

    goto :goto_1a

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2c
    :goto_1a
    const/16 v4, 0xff

    and-int/2addr v0, v4

    if-ne v0, v11, :cond_2d

    .line 130
    array-length v0, v3

    if-ge v2, v0, :cond_fc

    .line 131
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_2d
    if-nez v0, :cond_fc

    .line 132
    iget v0, v1, Lk0/v;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_2e

    const/16 v2, 0xff

    if-eq v0, v2, :cond_2f

    .line 133
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_1b

    :cond_2e
    const/16 v2, 0xff

    .line 134
    :cond_2f
    :goto_1b
    iput v2, v1, Lk0/v;->e:I

    goto/16 :goto_76

    :pswitch_9
    if-ne v3, v11, :cond_fc

    .line 135
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/16 v0, 0xa1

    const/16 v2, 0x1f

    .line 136
    invoke-virtual {v1, v8, v0, v2}, Lk0/v;->f3(III)V

    goto/16 :goto_76

    :pswitch_a
    if-ne v3, v11, :cond_fc

    .line 137
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/16 v0, 0xa1

    const/16 v2, 0x1e

    .line 138
    invoke-virtual {v1, v8, v0, v2}, Lk0/v;->f3(III)V

    goto/16 :goto_76

    :pswitch_b
    if-ne v3, v11, :cond_fc

    .line 139
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/16 v0, 0xa1

    const/16 v2, 0x1d

    .line 140
    invoke-virtual {v1, v8, v0, v2}, Lk0/v;->f3(III)V

    goto/16 :goto_76

    :pswitch_c
    if-ne v3, v11, :cond_fc

    .line 141
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/16 v0, 0xa1

    const/16 v2, 0x1c

    .line 142
    invoke-virtual {v1, v8, v0, v2}, Lk0/v;->f3(III)V

    goto/16 :goto_76

    :pswitch_d
    const/16 v2, 0xff

    goto/16 :goto_23

    :pswitch_e
    if-ne v3, v11, :cond_fc

    .line 143
    sget v0, Lu0/b;->D:I

    if-ne v0, v5, :cond_30

    .line 144
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_76

    :cond_30
    const/16 v2, 0xc

    if-eq v0, v2, :cond_31

    const/16 v2, 0xd

    if-ne v0, v2, :cond_fc

    :cond_31
    const/16 v0, 0xa1

    const/16 v2, 0x18

    .line 145
    invoke-virtual {v1, v8, v0, v2}, Lk0/v;->f3(III)V

    goto/16 :goto_76

    :pswitch_f
    if-ne v3, v11, :cond_fc

    .line 146
    sget v0, Lu0/b;->D:I

    if-ne v0, v5, :cond_32

    .line 147
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_76

    :cond_32
    const/16 v2, 0xd

    const/16 v3, 0xc

    if-eq v0, v3, :cond_33

    if-ne v0, v2, :cond_fc

    :cond_33
    const/16 v0, 0xa1

    const/16 v2, 0x17

    .line 148
    invoke-virtual {v1, v8, v0, v2}, Lk0/v;->f3(III)V

    goto/16 :goto_76

    :pswitch_10
    if-ne v3, v11, :cond_fc

    .line 149
    aget-byte v0, v0, v4

    const/16 v2, 0xff

    and-int/2addr v0, v2

    const/16 v2, 0x20

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lk0/v;->d3(I)V

    goto/16 :goto_76

    .line 150
    :pswitch_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 151
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_34

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 152
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    :cond_34
    const/16 v0, 0x1d

    .line 153
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 154
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    .line 155
    :pswitch_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 156
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_36

    const/16 v2, 0xd

    if-ne v0, v2, :cond_35

    goto :goto_1c

    :cond_35
    const/16 v0, 0x21

    .line 157
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 158
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_36
    :goto_1c
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 159
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    .line 160
    :pswitch_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 161
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_38

    const/16 v2, 0xd

    if-ne v0, v2, :cond_37

    goto :goto_1d

    :cond_37
    const/16 v0, 0x20

    .line 162
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 163
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_38
    :goto_1d
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 164
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    .line 165
    :pswitch_14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 166
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3a

    const/16 v2, 0xd

    if-ne v0, v2, :cond_39

    goto :goto_1e

    :cond_39
    const/16 v0, 0x23

    .line 167
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 168
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_3a
    :goto_1e
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 169
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    .line 170
    :pswitch_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 171
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3c

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3b

    goto :goto_1f

    :cond_3b
    const/16 v0, 0x22

    .line 172
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 173
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_3c
    :goto_1f
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 174
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    :pswitch_16
    move v0, v12

    :goto_20
    const/16 v2, 0xff

    and-int/lit16 v4, v3, 0xff

    if-ge v0, v4, :cond_3d

    const/16 v2, 0x1e

    .line 175
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3d
    const/16 v0, 0x1e

    .line 176
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :pswitch_17
    move v0, v12

    :goto_21
    const/16 v2, 0xff

    and-int/lit16 v4, v3, 0xff

    if-ge v0, v4, :cond_3e

    const/16 v2, 0x1f

    .line 177
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3e
    const/16 v0, 0x1f

    .line 178
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :pswitch_18
    move v0, v12

    const/16 v2, 0xff

    :goto_22
    and-int/lit16 v4, v3, 0xff

    if-ge v0, v4, :cond_3f

    .line 179
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 180
    :cond_3f
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :goto_23
    move v0, v12

    :goto_24
    and-int/lit16 v4, v3, 0xff

    if-ge v0, v4, :cond_40

    const/4 v2, 0x7

    .line 181
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xff

    goto :goto_24

    :cond_40
    const/4 v2, 0x7

    .line 182
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    .line 183
    :cond_41
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 184
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_44

    const/16 v2, 0xd

    if-ne v0, v2, :cond_42

    goto :goto_25

    .line 185
    :cond_42
    sget v0, Lh0/c;->E:I

    if-eq v0, v6, :cond_43

    if-eq v0, v10, :cond_43

    const/4 v2, 0x5

    if-eq v0, v2, :cond_43

    .line 186
    invoke-static {v10, v12}, Ll0/b0;->l0(II)V

    .line 187
    invoke-static {v10, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_43
    const/16 v0, 0x1a

    .line 188
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 189
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_44
    :goto_25
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 190
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    .line 191
    :cond_45
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    if-ne v3, v11, :cond_fc

    .line 192
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_48

    const/16 v2, 0xd

    if-ne v0, v2, :cond_46

    goto :goto_26

    .line 193
    :cond_46
    sget v0, Lh0/c;->E:I

    if-eq v0, v10, :cond_47

    .line 194
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    .line 195
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_47
    const/16 v0, 0x12

    .line 196
    invoke-static {v0, v12}, Ll0/b0;->l0(II)V

    .line 197
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_76

    :cond_48
    :goto_26
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 198
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_76

    .line 199
    :cond_49
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_4a

    goto/16 :goto_76

    :cond_4a
    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 200
    aget-byte v5, v0, v4

    aput v5, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 201
    aget-byte v0, v0, v4

    invoke-virtual {v1, v0}, Lk0/v;->e3(B)V

    goto/16 :goto_76

    :cond_4b
    const/16 v2, 0x6b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 202
    aget-byte v4, v0, v4

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 203
    aget-byte v4, v0, v4

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 204
    aget-byte v0, v0, v4

    aput v0, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    :cond_4c
    add-int/lit8 v2, p2, 0x2

    .line 205
    aget-byte v2, v0, v2

    if-ne v2, v11, :cond_fc

    const/16 v2, 0x68

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 206
    aget-byte v0, v0, v4

    const/16 v4, 0xff

    and-int/2addr v0, v4

    aput v0, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    :cond_4d
    const/16 v2, 0x85

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 207
    aget-byte v0, v0, v5

    and-int/2addr v0, v4

    aput v0, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    :cond_4e
    const/16 v2, 0x71

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 208
    aget-byte v5, v0, v5

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v0, v0, v5

    shl-int/2addr v0, v13

    const v5, 0xff00

    and-int/2addr v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    :cond_4f
    const/16 v2, 0x72

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 209
    aget-byte v4, v0, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v0, v0, v5

    shl-int/2addr v0, v13

    const v5, 0xff00

    and-int/2addr v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_76

    .line 210
    :cond_50
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 211
    :cond_51
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_fc

    add-int/lit8 v2, p2, 0x2

    .line 212
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 213
    aget-byte v0, v0, v3

    const/16 v3, 0x3138

    .line 214
    invoke-static {v2, v0, v11, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_76

    .line 215
    :cond_52
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_76

    :cond_53
    add-int/lit8 v2, p2, 0x2

    .line 216
    aget-byte v2, v0, v2

    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 217
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    aget v7, v7, v11

    const/16 v15, 0x6f

    if-eq v7, v3, :cond_55

    .line 218
    aget-object v4, v4, v12

    aput v3, v4, v11

    .line 219
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v12, v7, v12

    if-nez v3, :cond_54

    move/from16 v3, v16

    goto :goto_27

    :cond_54
    move v3, v11

    :goto_27
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_55
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 220
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    aget v7, v7, v5

    if-eq v7, v3, :cond_57

    .line 221
    aget-object v4, v4, v12

    aput v3, v4, v5

    .line 222
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v12, v7, v12

    if-nez v3, :cond_56

    move/from16 v3, v16

    goto :goto_28

    :cond_56
    move v3, v5

    :goto_28
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_57
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 223
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    aget v7, v7, v6

    if-eq v7, v3, :cond_59

    .line 224
    aget-object v4, v4, v12

    aput v3, v4, v6

    .line 225
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v12, v7, v12

    if-nez v3, :cond_58

    move/from16 v3, v16

    goto :goto_29

    :cond_58
    move v3, v6

    :goto_29
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_59
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 226
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    aget v7, v7, v10

    if-eq v7, v3, :cond_5b

    .line 227
    aget-object v4, v4, v12

    aput v3, v4, v10

    .line 228
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v12, v7, v12

    if-nez v3, :cond_5a

    move/from16 v3, v16

    goto :goto_2a

    :cond_5a
    move v3, v10

    :goto_2a
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_5b
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 229
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    const/16 v17, 0x5

    aget v7, v7, v17

    if-eq v7, v3, :cond_5d

    .line 230
    aget-object v4, v4, v12

    aput v3, v4, v17

    .line 231
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v12, v7, v12

    if-nez v3, :cond_5c

    move/from16 v3, v16

    goto :goto_2b

    :cond_5c
    const/4 v3, 0x5

    :goto_2b
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_5d
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 232
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    aget v7, v7, v14

    if-eq v7, v3, :cond_5f

    .line 233
    aget-object v4, v4, v12

    aput v3, v4, v14

    .line 234
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v12, v7, v12

    if-nez v3, :cond_5e

    move/from16 v3, v16

    goto :goto_2c

    :cond_5e
    move v3, v14

    :goto_2c
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_5f
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 235
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v12

    aget v7, v7, v3

    if-eq v7, v2, :cond_61

    .line 236
    aget-object v4, v4, v12

    aput v2, v4, v3

    .line 237
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v12, v4, v12

    if-nez v2, :cond_60

    move/from16 v2, v16

    goto :goto_2d

    :cond_60
    const/4 v2, 0x7

    :goto_2d
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_61
    add-int/lit8 v2, p2, 0x3

    .line 238
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 239
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v11

    aget v7, v7, v12

    if-eq v7, v3, :cond_63

    .line 240
    aget-object v4, v4, v11

    aput v3, v4, v12

    .line 241
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v11, v7, v12

    if-nez v3, :cond_62

    move/from16 v3, v16

    goto :goto_2e

    :cond_62
    move v3, v12

    :goto_2e
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_63
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 242
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v11

    aget v7, v7, v11

    if-eq v7, v3, :cond_65

    .line 243
    aget-object v4, v4, v11

    aput v3, v4, v11

    .line 244
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v11, v7, v12

    if-nez v3, :cond_64

    move/from16 v3, v16

    goto :goto_2f

    :cond_64
    move v3, v11

    :goto_2f
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_65
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 245
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v11

    aget v7, v7, v5

    if-eq v7, v3, :cond_67

    .line 246
    aget-object v4, v4, v11

    aput v3, v4, v5

    .line 247
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v11, v7, v12

    if-nez v3, :cond_66

    move/from16 v3, v16

    goto :goto_30

    :cond_66
    move v3, v5

    :goto_30
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_67
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 248
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v11

    aget v7, v7, v6

    if-eq v7, v3, :cond_69

    .line 249
    aget-object v4, v4, v11

    aput v3, v4, v6

    .line 250
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v11, v7, v12

    if-nez v3, :cond_68

    move/from16 v3, v16

    goto :goto_31

    :cond_68
    move v3, v6

    :goto_31
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_69
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 251
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v11

    aget v7, v7, v10

    if-eq v7, v3, :cond_6b

    .line 252
    aget-object v4, v4, v11

    aput v3, v4, v10

    .line 253
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v11, v7, v12

    if-nez v3, :cond_6a

    move/from16 v3, v16

    goto :goto_32

    :cond_6a
    move v3, v10

    :goto_32
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_6b
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 254
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v11

    const/16 v17, 0x5

    aget v7, v7, v17

    if-eq v7, v3, :cond_6d

    .line 255
    aget-object v4, v4, v11

    aput v3, v4, v17

    .line 256
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v11, v7, v12

    if-nez v3, :cond_6c

    move/from16 v3, v16

    goto :goto_33

    :cond_6c
    const/4 v3, 0x5

    :goto_33
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_6d
    shr-int/2addr v2, v14

    and-int/2addr v2, v11

    .line 257
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v4, v3, v11

    aget v4, v4, v14

    if-eq v4, v2, :cond_6f

    .line 258
    aget-object v3, v3, v11

    aput v2, v3, v14

    .line 259
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v11, v4, v12

    if-nez v2, :cond_6e

    move/from16 v2, v16

    goto :goto_34

    :cond_6e
    move v2, v14

    :goto_34
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_6f
    add-int/lit8 v2, p2, 0x4

    .line 260
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 261
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    aget v7, v7, v12

    if-eq v7, v3, :cond_71

    .line 262
    aget-object v4, v4, v5

    aput v3, v4, v12

    .line 263
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v5, v7, v12

    if-nez v3, :cond_70

    move/from16 v3, v16

    goto :goto_35

    :cond_70
    move v3, v12

    :goto_35
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_71
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 264
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    aget v7, v7, v11

    if-eq v7, v3, :cond_73

    .line 265
    aget-object v4, v4, v5

    aput v3, v4, v11

    .line 266
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v5, v7, v12

    if-nez v3, :cond_72

    move/from16 v3, v16

    goto :goto_36

    :cond_72
    move v3, v11

    :goto_36
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_73
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 267
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    aget v7, v7, v5

    if-eq v7, v3, :cond_75

    .line 268
    aget-object v4, v4, v5

    aput v3, v4, v5

    .line 269
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v5, v7, v12

    if-nez v3, :cond_74

    move/from16 v3, v16

    goto :goto_37

    :cond_74
    move v3, v5

    :goto_37
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_75
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 270
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    aget v7, v7, v6

    if-eq v7, v3, :cond_77

    .line 271
    aget-object v4, v4, v5

    aput v3, v4, v6

    .line 272
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v5, v7, v12

    if-nez v3, :cond_76

    move/from16 v3, v16

    goto :goto_38

    :cond_76
    move v3, v6

    :goto_38
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_77
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 273
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    aget v7, v7, v10

    if-eq v7, v3, :cond_79

    .line 274
    aget-object v4, v4, v5

    aput v3, v4, v10

    .line 275
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v5, v7, v12

    if-nez v3, :cond_78

    move/from16 v3, v16

    goto :goto_39

    :cond_78
    move v3, v10

    :goto_39
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_79
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 276
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    const/16 v17, 0x5

    aget v7, v7, v17

    if-eq v7, v3, :cond_7b

    .line 277
    aget-object v4, v4, v5

    aput v3, v4, v17

    .line 278
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v5, v7, v12

    if-nez v3, :cond_7a

    move/from16 v3, v16

    goto :goto_3a

    :cond_7a
    const/4 v3, 0x5

    :goto_3a
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_7b
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 279
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v5

    aget v7, v7, v3

    if-eq v7, v2, :cond_7d

    .line 280
    aget-object v4, v4, v5

    aput v2, v4, v3

    .line 281
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v5, v4, v12

    if-nez v2, :cond_7c

    move/from16 v2, v16

    goto :goto_3b

    :cond_7c
    const/4 v2, 0x7

    :goto_3b
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_7d
    add-int/lit8 v2, p2, 0x5

    .line 282
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 283
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v12

    if-eq v7, v3, :cond_7f

    .line 284
    aget-object v4, v4, v6

    aput v3, v4, v12

    .line 285
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_7e

    move/from16 v3, v16

    goto :goto_3c

    :cond_7e
    move v3, v12

    :goto_3c
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_7f
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 286
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v11

    if-eq v7, v3, :cond_81

    .line 287
    aget-object v4, v4, v6

    aput v3, v4, v11

    .line 288
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_80

    move/from16 v3, v16

    goto :goto_3d

    :cond_80
    move v3, v11

    :goto_3d
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_81
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 289
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v5

    if-eq v7, v3, :cond_83

    .line 290
    aget-object v4, v4, v6

    aput v3, v4, v5

    .line 291
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_82

    move/from16 v3, v16

    goto :goto_3e

    :cond_82
    move v3, v5

    :goto_3e
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_83
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 292
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v6

    if-eq v7, v3, :cond_85

    .line 293
    aget-object v4, v4, v6

    aput v3, v4, v6

    .line 294
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_84

    move/from16 v3, v16

    goto :goto_3f

    :cond_84
    move v3, v6

    :goto_3f
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_85
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 295
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v10

    if-eq v7, v3, :cond_87

    .line 296
    aget-object v4, v4, v6

    aput v3, v4, v10

    .line 297
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_86

    move/from16 v3, v16

    goto :goto_40

    :cond_86
    move v3, v10

    :goto_40
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_87
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 298
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    const/16 v17, 0x5

    aget v7, v7, v17

    if-eq v7, v3, :cond_89

    .line 299
    aget-object v4, v4, v6

    aput v3, v4, v17

    .line 300
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_88

    move/from16 v3, v16

    goto :goto_41

    :cond_88
    const/4 v3, 0x5

    :goto_41
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_89
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 301
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v14

    if-eq v7, v3, :cond_8b

    .line 302
    aget-object v4, v4, v6

    aput v3, v4, v14

    .line 303
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_8a

    move/from16 v3, v16

    goto :goto_42

    :cond_8a
    move v3, v14

    :goto_42
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_8b
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 304
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v3

    if-eq v7, v2, :cond_8d

    .line 305
    aget-object v4, v4, v6

    aput v2, v4, v3

    .line 306
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v6, v4, v12

    if-nez v2, :cond_8c

    move/from16 v2, v16

    goto :goto_43

    :cond_8c
    const/4 v2, 0x7

    :goto_43
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_8d
    add-int/lit8 v2, p2, 0x6

    .line 307
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 308
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v12

    if-eq v7, v3, :cond_8f

    .line 309
    aget-object v4, v4, v10

    aput v3, v4, v12

    .line 310
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_8e

    move/from16 v3, v16

    goto :goto_44

    :cond_8e
    move v3, v12

    :goto_44
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_8f
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 311
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v11

    if-eq v7, v3, :cond_91

    .line 312
    aget-object v4, v4, v10

    aput v3, v4, v11

    .line 313
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_90

    move/from16 v3, v16

    goto :goto_45

    :cond_90
    move v3, v11

    :goto_45
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_91
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 314
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v5

    if-eq v7, v3, :cond_93

    .line 315
    aget-object v4, v4, v10

    aput v3, v4, v5

    .line 316
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_92

    move/from16 v3, v16

    goto :goto_46

    :cond_92
    move v3, v5

    :goto_46
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_93
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 317
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v6

    if-eq v7, v3, :cond_95

    .line 318
    aget-object v4, v4, v10

    aput v3, v4, v6

    .line 319
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_94

    move/from16 v3, v16

    goto :goto_47

    :cond_94
    move v3, v6

    :goto_47
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_95
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 320
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v10

    if-eq v7, v3, :cond_97

    .line 321
    aget-object v4, v4, v10

    aput v3, v4, v10

    .line 322
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_96

    move/from16 v3, v16

    goto :goto_48

    :cond_96
    move v3, v10

    :goto_48
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_97
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 323
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    const/16 v17, 0x5

    aget v7, v7, v17

    if-eq v7, v3, :cond_99

    .line 324
    aget-object v4, v4, v10

    aput v3, v4, v17

    .line 325
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_98

    move/from16 v3, v16

    goto :goto_49

    :cond_98
    const/4 v3, 0x5

    :goto_49
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_99
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 326
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v14

    if-eq v7, v3, :cond_9b

    .line 327
    aget-object v4, v4, v10

    aput v3, v4, v14

    .line 328
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v10, v7, v12

    if-nez v3, :cond_9a

    move/from16 v3, v16

    goto :goto_4a

    :cond_9a
    move v3, v14

    :goto_4a
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_9b
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 329
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v10

    aget v7, v7, v3

    if-eq v7, v2, :cond_9d

    .line 330
    aget-object v4, v4, v10

    aput v2, v4, v3

    .line 331
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v10, v4, v12

    if-nez v2, :cond_9c

    move/from16 v2, v16

    goto :goto_4b

    :cond_9c
    const/4 v2, 0x7

    :goto_4b
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_9d
    add-int/lit8 v2, p2, 0x7

    .line 332
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 333
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v17, v4, v7

    aget v8, v17, v12

    if-eq v8, v3, :cond_9f

    .line 334
    aget-object v4, v4, v7

    aput v3, v4, v12

    .line 335
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_9e

    move/from16 v3, v16

    goto :goto_4c

    :cond_9e
    move v3, v12

    :goto_4c
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_9f
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 336
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v8, v4, v7

    aget v8, v8, v11

    if-eq v8, v3, :cond_a1

    .line 337
    aget-object v4, v4, v7

    aput v3, v4, v11

    .line 338
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_a0

    move/from16 v3, v16

    goto :goto_4d

    :cond_a0
    move v3, v11

    :goto_4d
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_a1
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 339
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v8, v4, v7

    aget v8, v8, v5

    if-eq v8, v3, :cond_a3

    .line 340
    aget-object v4, v4, v7

    aput v3, v4, v5

    .line 341
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_a2

    move/from16 v3, v16

    goto :goto_4e

    :cond_a2
    move v3, v5

    :goto_4e
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_a3
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 342
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v8, v4, v7

    aget v8, v8, v6

    if-eq v8, v3, :cond_a5

    .line 343
    aget-object v4, v4, v7

    aput v3, v4, v6

    .line 344
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_a4

    move/from16 v3, v16

    goto :goto_4f

    :cond_a4
    move v3, v6

    :goto_4f
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_a5
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 345
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v8, v4, v7

    aget v8, v8, v10

    if-eq v8, v3, :cond_a7

    .line 346
    aget-object v4, v4, v7

    aput v3, v4, v10

    .line 347
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_a6

    move/from16 v3, v16

    goto :goto_50

    :cond_a6
    move v3, v10

    :goto_50
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_a7
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 348
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v8, v4, v7

    aget v8, v8, v7

    if-eq v8, v3, :cond_a9

    .line 349
    aget-object v4, v4, v7

    aput v3, v4, v7

    .line 350
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_a8

    move/from16 v3, v16

    goto :goto_51

    :cond_a8
    const/4 v3, 0x5

    :goto_51
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_a9
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 351
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x5

    aget-object v8, v4, v7

    aget v8, v8, v14

    if-eq v8, v3, :cond_ab

    .line 352
    aget-object v4, v4, v7

    aput v3, v4, v14

    .line 353
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_aa

    move/from16 v3, v16

    goto :goto_52

    :cond_aa
    move v3, v14

    :goto_52
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_ab
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 354
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v8, v4, v7

    aget v8, v8, v3

    if-eq v8, v2, :cond_ad

    .line 355
    aget-object v4, v4, v7

    aput v2, v4, v3

    .line 356
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v7, v4, v12

    if-nez v2, :cond_ac

    move/from16 v2, v16

    goto :goto_53

    :cond_ac
    const/4 v2, 0x7

    :goto_53
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_ad
    add-int/lit8 v2, p2, 0x8

    .line 357
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 358
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v12

    if-eq v7, v3, :cond_af

    .line 359
    aget-object v4, v4, v14

    aput v3, v4, v12

    .line 360
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_ae

    move/from16 v3, v16

    goto :goto_54

    :cond_ae
    move v3, v12

    :goto_54
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_af
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 361
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v11

    if-eq v7, v3, :cond_b1

    .line 362
    aget-object v4, v4, v14

    aput v3, v4, v11

    .line 363
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_b0

    move/from16 v3, v16

    goto :goto_55

    :cond_b0
    move v3, v11

    :goto_55
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_b1
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 364
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v5

    if-eq v7, v3, :cond_b3

    .line 365
    aget-object v4, v4, v14

    aput v3, v4, v5

    .line 366
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_b2

    move/from16 v3, v16

    goto :goto_56

    :cond_b2
    move v3, v5

    :goto_56
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_b3
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 367
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v6

    if-eq v7, v3, :cond_b5

    .line 368
    aget-object v4, v4, v14

    aput v3, v4, v6

    .line 369
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_b4

    move/from16 v3, v16

    goto :goto_57

    :cond_b4
    move v3, v6

    :goto_57
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_b5
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 370
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v10

    if-eq v7, v3, :cond_b7

    .line 371
    aget-object v4, v4, v14

    aput v3, v4, v10

    .line 372
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_b6

    move/from16 v3, v16

    goto :goto_58

    :cond_b6
    move v3, v10

    :goto_58
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_b7
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 373
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    const/4 v8, 0x5

    aget v7, v7, v8

    if-eq v7, v3, :cond_b9

    .line 374
    aget-object v4, v4, v14

    aput v3, v4, v8

    .line 375
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_b8

    move/from16 v3, v16

    goto :goto_59

    :cond_b8
    const/4 v3, 0x5

    :goto_59
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_b9
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 376
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v14

    if-eq v7, v3, :cond_bb

    .line 377
    aget-object v4, v4, v14

    aput v3, v4, v14

    .line 378
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v14, v7, v12

    if-nez v3, :cond_ba

    move/from16 v3, v16

    goto :goto_5a

    :cond_ba
    move v3, v14

    :goto_5a
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_bb
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 379
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v14

    aget v7, v7, v3

    if-eq v7, v2, :cond_bd

    .line 380
    aget-object v4, v4, v14

    aput v2, v4, v3

    .line 381
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v14, v4, v12

    if-nez v2, :cond_bc

    move/from16 v2, v16

    goto :goto_5b

    :cond_bc
    const/4 v2, 0x7

    :goto_5b
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_bd
    add-int/lit8 v2, p2, 0x9

    .line 382
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 383
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    aget v8, v8, v12

    if-eq v8, v3, :cond_bf

    .line 384
    aget-object v4, v4, v7

    aput v3, v4, v12

    .line 385
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_be

    move/from16 v3, v16

    goto :goto_5c

    :cond_be
    move v3, v12

    :goto_5c
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_bf
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 386
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    aget v8, v8, v11

    if-eq v8, v3, :cond_c1

    .line 387
    aget-object v4, v4, v7

    aput v3, v4, v11

    .line 388
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_c0

    move/from16 v3, v16

    goto :goto_5d

    :cond_c0
    move v3, v11

    :goto_5d
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_c1
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 389
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    aget v8, v8, v5

    if-eq v8, v3, :cond_c3

    .line 390
    aget-object v4, v4, v7

    aput v3, v4, v5

    .line 391
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_c2

    move/from16 v3, v16

    goto :goto_5e

    :cond_c2
    move v3, v5

    :goto_5e
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_c3
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 392
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    aget v8, v8, v6

    if-eq v8, v3, :cond_c5

    .line 393
    aget-object v4, v4, v7

    aput v3, v4, v6

    .line 394
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_c4

    move/from16 v3, v16

    goto :goto_5f

    :cond_c4
    move v3, v6

    :goto_5f
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_c5
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 395
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    aget v8, v8, v10

    if-eq v8, v3, :cond_c7

    .line 396
    aget-object v4, v4, v7

    aput v3, v4, v10

    .line 397
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_c6

    move/from16 v3, v16

    goto :goto_60

    :cond_c6
    move v3, v10

    :goto_60
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_c7
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 398
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    const/16 v17, 0x5

    aget v8, v8, v17

    if-eq v8, v3, :cond_c9

    .line 399
    aget-object v4, v4, v7

    aput v3, v4, v17

    .line 400
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_c8

    move/from16 v3, v16

    goto :goto_61

    :cond_c8
    const/4 v3, 0x5

    :goto_61
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_c9
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 401
    iget-object v4, v1, Lk0/v;->k:[[I

    const/4 v7, 0x7

    aget-object v8, v4, v7

    aget v8, v8, v14

    if-eq v8, v3, :cond_cb

    .line 402
    aget-object v4, v4, v7

    aput v3, v4, v14

    .line 403
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_ca

    move/from16 v3, v16

    goto :goto_62

    :cond_ca
    move v3, v14

    :goto_62
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_cb
    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    .line 404
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v4, v3, v7

    aget v4, v4, v7

    if-eq v4, v2, :cond_cd

    .line 405
    aget-object v3, v3, v7

    aput v2, v3, v7

    .line 406
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v7, v4, v12

    if-nez v2, :cond_cc

    move/from16 v2, v16

    goto :goto_63

    :cond_cc
    const/4 v2, 0x7

    :goto_63
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_cd
    add-int/lit8 v2, p2, 0xa

    .line 407
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 408
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v12

    if-eq v7, v3, :cond_cf

    .line 409
    aget-object v4, v4, v13

    aput v3, v4, v12

    .line 410
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_ce

    move/from16 v3, v16

    goto :goto_64

    :cond_ce
    move v3, v12

    :goto_64
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_cf
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 411
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v11

    if-eq v7, v3, :cond_d1

    .line 412
    aget-object v4, v4, v13

    aput v3, v4, v11

    .line 413
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_d0

    move/from16 v3, v16

    goto :goto_65

    :cond_d0
    move v3, v11

    :goto_65
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_d1
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 414
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v5

    if-eq v7, v3, :cond_d3

    .line 415
    aget-object v4, v4, v13

    aput v3, v4, v5

    .line 416
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_d2

    move/from16 v3, v16

    goto :goto_66

    :cond_d2
    move v3, v5

    :goto_66
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_d3
    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 417
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v6

    if-eq v7, v3, :cond_d5

    .line 418
    aget-object v4, v4, v13

    aput v3, v4, v6

    .line 419
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_d4

    move/from16 v3, v16

    goto :goto_67

    :cond_d4
    move v3, v6

    :goto_67
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_d5
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v11

    .line 420
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v10

    if-eq v7, v3, :cond_d7

    .line 421
    aget-object v4, v4, v13

    aput v3, v4, v10

    .line 422
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_d6

    move/from16 v10, v16

    :cond_d6
    aput v10, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_d7
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v11

    .line 423
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    const/4 v8, 0x5

    aget v7, v7, v8

    if-eq v7, v3, :cond_d9

    .line 424
    aget-object v4, v4, v13

    aput v3, v4, v8

    .line 425
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_d8

    move/from16 v3, v16

    goto :goto_68

    :cond_d8
    const/4 v3, 0x5

    :goto_68
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_d9
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 426
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v14

    if-eq v7, v3, :cond_db

    .line 427
    aget-object v4, v4, v13

    aput v3, v4, v14

    .line 428
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v13, v7, v12

    if-nez v3, :cond_da

    move/from16 v3, v16

    goto :goto_69

    :cond_da
    move v3, v14

    :goto_69
    aput v3, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_db
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 429
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v13

    aget v7, v7, v3

    if-eq v7, v2, :cond_dd

    .line 430
    aget-object v4, v4, v13

    aput v2, v4, v3

    .line 431
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v13, v4, v12

    if-nez v2, :cond_dc

    move/from16 v2, v16

    goto :goto_6a

    :cond_dc
    const/4 v2, 0x7

    :goto_6a
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_dd
    add-int/lit8 v2, p2, 0xb

    .line 432
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 433
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v7, 0x9

    aget-object v8, v4, v7

    aget v8, v8, v12

    if-eq v8, v3, :cond_df

    .line 434
    aget-object v4, v4, v7

    aput v3, v4, v12

    .line 435
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_de

    move/from16 v3, v16

    goto :goto_6b

    :cond_de
    move v3, v12

    :goto_6b
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_df
    shr-int/lit8 v3, v2, 0x1

    and-int/2addr v3, v11

    .line 436
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v7, 0x9

    aget-object v8, v4, v7

    aget v8, v8, v11

    if-eq v8, v3, :cond_e1

    .line 437
    aget-object v4, v4, v7

    aput v3, v4, v11

    .line 438
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_e0

    move/from16 v3, v16

    goto :goto_6c

    :cond_e0
    move v3, v11

    :goto_6c
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_e1
    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v11

    .line 439
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v7, 0x9

    aget-object v8, v4, v7

    aget v8, v8, v5

    if-eq v8, v3, :cond_e3

    .line 440
    aget-object v4, v4, v7

    aput v3, v4, v5

    .line 441
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_e2

    move/from16 v3, v16

    goto :goto_6d

    :cond_e2
    move v3, v5

    :goto_6d
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_e3
    shr-int/2addr v2, v6

    and-int/2addr v2, v11

    .line 442
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v4, v3, v7

    aget v4, v4, v6

    if-eq v4, v2, :cond_e5

    .line 443
    aget-object v3, v3, v7

    aput v2, v3, v6

    .line 444
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v7, v4, v12

    if-nez v2, :cond_e4

    move/from16 v2, v16

    goto :goto_6e

    :cond_e4
    move v2, v6

    :goto_6e
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_e5
    add-int/lit8 v2, p2, 0xc

    .line 445
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    .line 446
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v4, v3, v9

    aget v4, v4, v12

    if-eq v4, v2, :cond_e7

    .line 447
    aget-object v3, v3, v9

    aput v2, v3, v12

    .line 448
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v9, v4, v12

    if-nez v2, :cond_e6

    move/from16 v2, v16

    goto :goto_6f

    :cond_e6
    move v2, v12

    :goto_6f
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_e7
    add-int/lit8 v2, p2, 0xd

    .line 449
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 450
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v7, 0xb

    aget-object v8, v4, v7

    aget v8, v8, v12

    if-eq v8, v3, :cond_e9

    .line 451
    aget-object v4, v4, v7

    aput v3, v4, v12

    .line 452
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_e8

    move/from16 v3, v16

    goto :goto_70

    :cond_e8
    move v3, v12

    :goto_70
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_e9
    shr-int/2addr v2, v11

    and-int/2addr v2, v11

    .line 453
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v4, v3, v7

    aget v4, v4, v11

    if-eq v4, v2, :cond_eb

    .line 454
    aget-object v3, v3, v7

    aput v2, v3, v11

    .line 455
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v7, v4, v12

    if-nez v2, :cond_ea

    move/from16 v2, v16

    goto :goto_71

    :cond_ea
    move v2, v11

    :goto_71
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_eb
    add-int/lit8 v2, p2, 0xe

    .line 456
    aget-byte v2, v0, v2

    and-int/lit8 v3, v2, 0x1

    .line 457
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v7, 0xc

    aget-object v8, v4, v7

    aget v8, v8, v12

    if-eq v8, v3, :cond_ed

    .line 458
    aget-object v4, v4, v7

    aput v3, v4, v12

    .line 459
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_ec

    move/from16 v3, v16

    goto :goto_72

    :cond_ec
    move v3, v12

    :goto_72
    aput v3, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_ed
    shr-int/2addr v2, v11

    and-int/2addr v2, v11

    .line 460
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v4, v3, v7

    aget v4, v4, v11

    if-eq v4, v2, :cond_ef

    .line 461
    aget-object v3, v3, v7

    aput v2, v3, v11

    .line 462
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v7, v4, v12

    if-nez v2, :cond_ee

    move/from16 v2, v16

    goto :goto_73

    :cond_ee
    move v2, v11

    :goto_73
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_ef
    add-int/lit8 v2, p2, 0xf

    .line 463
    aget-byte v2, v0, v2

    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v11

    .line 464
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v7, 0xd

    aget-object v8, v4, v7

    aget v8, v8, v6

    if-eq v8, v3, :cond_f1

    .line 465
    aget-object v4, v4, v7

    aput v3, v4, v6

    .line 466
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v5, [I

    aput v7, v8, v12

    if-nez v3, :cond_f0

    move/from16 v6, v16

    :cond_f0
    aput v6, v8, v11

    invoke-static {v4, v15, v8}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_f1
    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v11

    .line 467
    iget-object v4, v1, Lk0/v;->k:[[I

    const/16 v6, 0xd

    aget-object v7, v4, v6

    aget v7, v7, v14

    if-eq v7, v3, :cond_f3

    .line 468
    aget-object v4, v4, v6

    aput v3, v4, v14

    .line 469
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput v6, v7, v12

    if-nez v3, :cond_f2

    move/from16 v14, v16

    :cond_f2
    aput v14, v7, v11

    invoke-static {v4, v15, v7}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_f3
    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v11

    .line 470
    iget-object v4, v1, Lk0/v;->k:[[I

    aget-object v7, v4, v6

    aget v7, v7, v3

    if-eq v7, v2, :cond_f5

    .line 471
    aget-object v4, v4, v6

    aput v2, v4, v3

    .line 472
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v5, [I

    aput v6, v4, v12

    if-nez v2, :cond_f4

    move/from16 v2, v16

    goto :goto_74

    :cond_f4
    const/4 v2, 0x7

    :goto_74
    aput v2, v4, v11

    invoke-static {v3, v15, v4}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_f5
    add-int/lit8 v2, p2, 0x10

    .line 473
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    .line 474
    iget-object v3, v1, Lk0/v;->k:[[I

    const/16 v4, 0xe

    aget-object v6, v3, v4

    aget v6, v6, v12

    if-eq v6, v2, :cond_f7

    .line 475
    aget-object v3, v3, v4

    aput v2, v3, v12

    .line 476
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v6, v5, [I

    aput v4, v6, v12

    if-nez v2, :cond_f6

    move/from16 v2, v16

    goto :goto_75

    :cond_f6
    move v2, v12

    :goto_75
    aput v2, v6, v11

    invoke-static {v3, v15, v6}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_f7
    add-int/lit8 v2, p2, 0x11

    .line 477
    aget-byte v0, v0, v2

    shr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v11

    .line 478
    iget-object v3, v1, Lk0/v;->k:[[I

    const/16 v4, 0xf

    aget-object v6, v3, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    if-eq v6, v2, :cond_f9

    .line 479
    aget-object v3, v3, v4

    aput v2, v3, v7

    .line 480
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v6, v5, [I

    aput v4, v6, v12

    if-nez v2, :cond_f8

    move/from16 v7, v16

    :cond_f8
    aput v7, v6, v11

    invoke-static {v3, v15, v6}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_f9
    const/4 v2, 0x7

    shr-int/2addr v0, v2

    and-int/2addr v0, v11

    .line 481
    iget-object v3, v1, Lk0/v;->k:[[I

    aget-object v6, v3, v4

    aget v6, v6, v2

    if-eq v6, v0, :cond_fc

    .line 482
    aget-object v3, v3, v4

    aput v0, v3, v2

    .line 483
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v5, v5, [I

    aput v4, v5, v12

    if-nez v0, :cond_fa

    move/from16 v2, v16

    :cond_fa
    aput v2, v5, v11

    invoke-static {v3, v15, v5}, Lo1/x;->B([Lo1/x;I[I)V

    goto :goto_76

    :cond_fb
    add-int/lit8 v2, p2, 0x2

    .line 484
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x64

    .line 485
    div-int/2addr v0, v2

    invoke-static {v0}, Lu0/d;->Q(I)V

    :cond_fc
    :goto_76
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x10
        :pswitch_d
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x20
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x41
        :pswitch_18
        :pswitch_d
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x48
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x5c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xc
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x1a
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x19
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xb
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xa
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lz/c;->e:Lo1/y;

    iget-object v1, p0, Lk0/v;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/v;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x70

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
    .locals 0

    const/4 p3, 0x2

    .line 1
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc6

    .line 2
    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lk0/v;->f3(III)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x90

    .line 3
    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lk0/v;->f3(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    .line 1
    div-int/lit8 p1, p1, 0x1e

    :goto_0
    return p1
.end method

.method public c3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d3(I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    if-lez p1, :cond_1

    .line 2
    sget-object v0, Lo0/e;->b:Lo0/h;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lo0/h;->D(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v7, 0x7

    if-ne v0, v3, :cond_2

    if-lez p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 3
    invoke-static {p1}, Lw0/f;->f(I)V

    goto/16 :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v5}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v4}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v7}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_6
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v6}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_8
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v1}, Lh0/f;->h(I)V

    goto :goto_1

    .line 13
    :pswitch_9
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    const/16 v2, 0xd

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_6

    :cond_4
    const/16 v0, 0xa1

    const/16 v1, 0xc6

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x16

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x15

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x14

    .line 16
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x13

    .line 17
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x12

    .line 18
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_f
    const/16 p1, 0x11

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_10
    const/16 p1, 0x10

    .line 20
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_11
    const/16 p1, 0xf

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    :pswitch_12
    const/16 p1, 0xe

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lk0/v;->f3(III)V

    goto :goto_1

    .line 23
    :pswitch_13
    invoke-virtual {p0, v1, v0, v2}, Lk0/v;->f3(III)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v5, 0x25

    new-array v1, v1, [I

    const/4 v6, 0x0

    aput v0, v1, v6

    aput v4, v1, v3

    aput p1, v1, v2

    .line 24
    invoke-static {v5, v1}, Lu0/d;->I3(I[I)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
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
.end method

.method public final e3(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lu0/b;->D:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    .line 2
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lk0/v;->c3()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.syu.carinfo.focus.FocusSyncBtActi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.syu.canbus.sync"

    .line 4
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final f3(III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p1, v0, p1

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
