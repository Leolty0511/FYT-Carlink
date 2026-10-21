.class public Lk0/hi;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:Ljava/lang/Runnable;

.field public j:B

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hi;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

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

    iput-object v2, p0, Lk0/hi;->d:[[I

    .line 4
    iput v0, p0, Lk0/hi;->f:I

    const/16 v2, 0x3e

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_a

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x1b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    const/16 v4, 0x1c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    const/16 v4, 0x1d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    const/16 v4, 0x1e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    const/16 v4, 0x1f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    const/16 v4, 0x20

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    const/16 v4, 0x21

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    const/16 v4, 0x22

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    const/16 v4, 0x23

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    const/16 v4, 0x24

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    const/16 v4, 0x25

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    const/16 v4, 0x26

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    const/16 v4, 0x27

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    const/16 v4, 0x28

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    const/16 v4, 0x29

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    const/16 v4, 0x2a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_35

    const/16 v4, 0x2b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    const/16 v4, 0x2c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    const/16 v4, 0x2d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    const/16 v4, 0x2e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_39

    const/16 v4, 0x2f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3a

    const/16 v4, 0x30

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3b

    const/16 v4, 0x31

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3c

    const/16 v4, 0x32

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3d

    const/16 v4, 0x33

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3e

    const/16 v4, 0x34

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3f

    const/16 v4, 0x35

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_40

    const/16 v4, 0x36

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_41

    const/16 v4, 0x37

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_42

    const/16 v4, 0x38

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_43

    const/16 v4, 0x39

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_44

    const/16 v4, 0x3a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_45

    const/16 v4, 0x3b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_46

    const/16 v4, 0x3c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_47

    const/16 v3, 0x3d

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/hi;->g:[[I

    .line 6
    iput-boolean v0, p0, Lk0/hi;->h:Z

    .line 7
    new-instance v0, Lk0/hi$a;

    invoke-direct {v0, p0}, Lk0/hi$a;-><init>(Lk0/hi;)V

    iput-object v0, p0, Lk0/hi;->i:Ljava/lang/Runnable;

    .line 8
    iput-byte v8, p0, Lk0/hi;->j:B

    .line 9
    new-instance v0, Lk0/hi$b;

    invoke-direct {v0, p0}, Lk0/hi$b;-><init>(Lk0/hi;)V

    iput-object v0, p0, Lk0/hi;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/hi$c;

    invoke-direct {v0, p0}, Lk0/hi$c;-><init>(Lk0/hi;)V

    iput-object v0, p0, Lk0/hi;->l:Ljava/lang/Runnable;

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
        0x12
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
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x5
        0x40
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1c
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x1b
    .end array-data

    :array_11
    .array-data 4
        0x8
        0x26
    .end array-data

    :array_12
    .array-data 4
        0x9
        0x21
    .end array-data

    :array_13
    .array-data 4
        0xa
        0x20
    .end array-data

    :array_14
    .array-data 4
        0xb
        0x28
    .end array-data

    :array_15
    .array-data 4
        0xc
        0x29
    .end array-data

    :array_16
    .array-data 4
        0xd
        0x2a
    .end array-data

    :array_17
    .array-data 4
        0xe
        0x2b
    .end array-data

    :array_18
    .array-data 4
        0xf
        0x2c
    .end array-data

    :array_19
    .array-data 4
        0x10
        0x2d
    .end array-data

    :array_1a
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_1b
    .array-data 4
        0x41
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x42
        0x40
    .end array-data

    :array_1d
    .array-data 4
        0x43
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x44
        0x19
    .end array-data

    :array_1f
    .array-data 4
        0x45
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x46
        0x1f
    .end array-data

    :array_21
    .array-data 4
        0x47
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x48
        0x1e
    .end array-data

    :array_23
    .array-data 4
        0x49
        0xf
    .end array-data

    :array_24
    .array-data 4
        0x4a
        0x48
    .end array-data

    :array_25
    .array-data 4
        0x4b
        0x3a
    .end array-data

    :array_26
    .array-data 4
        0x4c
        0xe
    .end array-data

    :array_27
    .array-data 4
        0x4d
        0x37
    .end array-data

    :array_28
    .array-data 4
        0x4e
        0x47
    .end array-data

    :array_29
    .array-data 4
        0x4f
        0xd
    .end array-data

    :array_2a
    .array-data 4
        0x50
        0x36
    .end array-data

    :array_2b
    .array-data 4
        0x51
        0xb
    .end array-data

    :array_2c
    .array-data 4
        0x52
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x53
        0x18
    .end array-data

    :array_2e
    .array-data 4
        0x54
        0x35
    .end array-data

    :array_2f
    .array-data 4
        0x55
        0x41
    .end array-data

    :array_30
    .array-data 4
        0x56
        0x3f
    .end array-data

    :array_31
    .array-data 4
        0x57
        0x12
    .end array-data

    :array_32
    .array-data 4
        0x58
        0x36
    .end array-data

    :array_33
    .array-data 4
        0x59
        0x15
    .end array-data

    :array_34
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_35
    .array-data 4
        0x5b
        -0x1
    .end array-data

    :array_36
    .array-data 4
        0x5c
        0x4e
    .end array-data

    :array_37
    .array-data 4
        0x5d
        0xf
    .end array-data

    :array_38
    .array-data 4
        0x5e
        0x3f
    .end array-data

    :array_39
    .array-data 4
        0x5f
        0x3e
    .end array-data

    :array_3a
    .array-data 4
        0x60
        0x22
    .end array-data

    :array_3b
    .array-data 4
        0x61
        0x22
    .end array-data

    :array_3c
    .array-data 4
        0x62
        0x21
    .end array-data

    :array_3d
    .array-data 4
        0x63
        0x21
    .end array-data

    :array_3e
    .array-data 4
        0x64
        0x23
    .end array-data

    :array_3f
    .array-data 4
        0x65
        0x23
    .end array-data

    :array_40
    .array-data 4
        0x66
        0x20
    .end array-data

    :array_41
    .array-data 4
        0x67
        0x20
    .end array-data

    :array_42
    .array-data 4
        0x70
        0x1d
    .end array-data

    :array_43
    .array-data 4
        0x71
        0x6
    .end array-data

    :array_44
    .array-data 4
        0x72
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x73
        0x9
    .end array-data

    :array_46
    .array-data 4
        0x74
        0x1f
    .end array-data

    :array_47
    .array-data 4
        0x75
        0x1e
    .end array-data
.end method

.method public static synthetic a3(Lk0/hi;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/hi;->l:Ljava/lang/Runnable;

    return-object p0
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v2, v0, Lk0/mt;->h:I

    .line 8
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x2

    .line 9
    iput v2, v0, Lk0/mt;->h:I

    .line 10
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/hi;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lk0/hi;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x8001c6 -> :sswitch_0
        0x8601c7 -> :sswitch_0
        0x9c01c6 -> :sswitch_0
        0x9d01c6 -> :sswitch_0
        0x9e01c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6d

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_32

    const/16 v3, 0x30

    const/4 v7, 0x3

    if-eq v2, v3, :cond_31

    const/16 v3, 0x40

    const/4 v8, 0x7

    if-eq v2, v3, :cond_30

    const/16 v9, 0x7d

    const v10, 0xff00

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eq v2, v9, :cond_2b

    const/16 v9, 0x7f

    if-eq v2, v9, :cond_2a

    const/16 v9, 0x1e

    const/16 v14, 0xa

    const/4 v15, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_13

    :pswitch_0
    const/16 v2, 0x86

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 2
    aget-byte v9, v1, v8

    shr-int/2addr v9, v12

    and-int/2addr v9, v7

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v6, [I

    .line 3
    aget-byte v9, v1, v8

    shr-int/2addr v9, v13

    and-int/2addr v9, v7

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    .line 4
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 5
    aget-byte v8, v1, v8

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x4

    .line 6
    aget-byte v8, v1, v8

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x5

    .line 7
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 8
    aget-byte v1, v1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_1
    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 9
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 10
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 11
    aget-byte v7, v1, v7

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 12
    aget-byte v7, v1, v4

    shr-int/2addr v7, v13

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    .line 13
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v6, [I

    .line 14
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_2
    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 15
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x3

    .line 16
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_3
    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 17
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 18
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x4

    .line 19
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_4
    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 20
    aget-byte v9, v1, v8

    shr-int/2addr v9, v13

    and-int/2addr v9, v7

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    .line 21
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 22
    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    and-int/2addr v7, v10

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 23
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    and-int/2addr v6, v10

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 26
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 27
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 28
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 29
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 30
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 31
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 32
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 33
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_6
    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 34
    aget-byte v9, v1, v7

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 35
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 36
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v7, v9

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x10

    const/high16 v12, 0xff0000

    and-int/2addr v9, v12

    or-int/2addr v7, v9

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    shl-int/2addr v9, v11

    and-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v7, v9

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x8

    .line 37
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    and-int/2addr v6, v10

    add-int/lit8 v7, p2, 0x7

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 38
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 39
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 40
    iput v2, v0, Lk0/hi;->f:I

    move v2, v5

    .line 41
    :goto_1
    iget-object v3, v0, Lk0/hi;->g:[[I

    array-length v10, v3

    if-ge v2, v10, :cond_2

    .line 42
    iget v10, v0, Lk0/hi;->f:I

    aget-object v12, v3, v2

    aget v12, v12, v5

    if-ne v10, v12, :cond_1

    if-eqz v10, :cond_2

    .line 43
    iput v2, v0, Lk0/hi;->e:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    :cond_2
    :goto_2
    iget v10, v0, Lk0/hi;->f:I

    if-eq v10, v13, :cond_b

    if-eq v10, v7, :cond_9

    const/16 v7, 0x9

    if-eq v10, v7, :cond_7

    if-eq v10, v14, :cond_5

    const/16 v7, 0x74

    if-eq v10, v7, :cond_7

    const/16 v7, 0x75

    if-eq v10, v7, :cond_5

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_3

    .line 45
    array-length v1, v3

    if-ge v2, v1, :cond_33

    .line 46
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_3
    if-nez v1, :cond_33

    .line 47
    iget v1, v0, Lk0/hi;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_4

    if-eq v1, v4, :cond_4

    .line 48
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 49
    :cond_4
    iput v4, v0, Lk0/hi;->e:I

    goto/16 :goto_13

    :cond_5
    move v2, v5

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_6

    .line 50
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 51
    :cond_6
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_7
    move v2, v5

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_8

    const/16 v3, 0x1f

    .line 52
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    const/16 v1, 0x1f

    .line 53
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_9
    move v2, v5

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_a

    .line 54
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 55
    :cond_a
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_b
    move v2, v5

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_c

    .line 56
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 57
    :cond_c
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x3

    .line 59
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x4

    .line 60
    aget-byte v10, v1, v9

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x5

    .line 61
    aget-byte v13, v1, v11

    and-int/2addr v13, v4

    if-nez v3, :cond_d

    if-nez v8, :cond_d

    if-nez v10, :cond_d

    if-nez v13, :cond_d

    .line 62
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 63
    :cond_d
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_e

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_e

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_e

    sget v5, Ll0/c0;->j:I

    if-eq v5, v13, :cond_f

    .line 64
    :cond_e
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_f

    .line 65
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 66
    sput v12, Ll0/c0;->k:I

    .line 67
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 68
    :cond_f
    :goto_7
    sput v3, Ll0/c0;->g:I

    .line 69
    sput v8, Ll0/c0;->h:I

    .line 70
    sput v10, Ll0/c0;->i:I

    .line 71
    sput v13, Ll0/c0;->j:I

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 73
    aget-byte v2, v1, v7

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 74
    aget-byte v2, v1, v9

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 75
    aget-byte v1, v1, v11

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 76
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 77
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 78
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 79
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 81
    aget-byte v8, v1, v8

    add-int/lit8 v10, p2, 0x4

    .line 82
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x5

    .line 83
    aget-byte v16, v1, v11

    add-int/lit8 v17, p2, 0x6

    .line 84
    aget-byte v18, v1, v17

    const/16 v9, 0x48

    new-array v14, v6, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v14, v5

    .line 85
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v14, v6, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v14, v5

    .line 86
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xc

    new-array v14, v6, [I

    shr-int/lit8 v19, v2, 0x4

    and-int/lit8 v19, v19, 0x3

    aput v19, v14, v5

    .line 87
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v14, v6, [I

    shr-int/lit8 v19, v2, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v14, v5

    .line 88
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xe

    new-array v14, v6, [I

    shr-int/lit8 v19, v2, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v14, v5

    .line 89
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x10

    new-array v14, v6, [I

    shr-int/lit8 v19, v2, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v14, v5

    .line 90
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x21

    new-array v14, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v14, v5

    .line 91
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v8, 0xf

    if-eq v2, v6, :cond_14

    if-eq v2, v13, :cond_13

    if-eq v2, v7, :cond_12

    if-eq v2, v12, :cond_11

    if-eq v2, v15, :cond_10

    move v9, v5

    move v14, v9

    :goto_8
    move/from16 v19, v14

    goto :goto_9

    :cond_10
    move v14, v5

    move/from16 v19, v14

    move v9, v6

    goto :goto_9

    :cond_11
    move v14, v5

    move v9, v6

    move/from16 v19, v9

    goto :goto_9

    :cond_12
    move v9, v5

    move v14, v9

    move/from16 v19, v6

    goto :goto_9

    :cond_13
    move v9, v5

    move v14, v6

    goto :goto_8

    :cond_14
    move v9, v5

    move/from16 v19, v9

    move v14, v6

    :goto_9
    const/16 v3, 0x41

    new-array v4, v6, [I

    aput v9, v4, v5

    .line 92
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v4, v6, [I

    aput v9, v4, v5

    .line 93
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v6, [I

    aput v14, v4, v5

    .line 94
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v6, [I

    aput v19, v4, v5

    .line 95
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 96
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v8, 0x4

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v6, :cond_19

    if-eq v2, v13, :cond_18

    if-eq v2, v7, :cond_17

    if-eq v2, v12, :cond_16

    if-eq v2, v15, :cond_15

    move v3, v5

    move v4, v3

    :goto_a
    move v8, v4

    goto :goto_b

    :cond_15
    move v4, v5

    move v8, v4

    move v3, v6

    goto :goto_b

    :cond_16
    move v4, v5

    move v3, v6

    move v8, v3

    goto :goto_b

    :cond_17
    move v3, v5

    move v4, v3

    move v8, v6

    goto :goto_b

    :cond_18
    move v3, v5

    move v4, v6

    goto :goto_a

    :cond_19
    move v3, v5

    move v8, v3

    move v4, v6

    :goto_b
    const/16 v9, 0x16

    new-array v14, v6, [I

    aput v3, v14, v5

    .line 97
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x17

    new-array v9, v6, [I

    aput v4, v9, v5

    .line 98
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v4, v6, [I

    aput v8, v4, v5

    .line 99
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x57

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 100
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    const/16 v4, 0xff

    and-int/lit16 v8, v10, 0xff

    aput v8, v3, v5

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 102
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 103
    aget-byte v16, v1, v17

    .line 104
    aget-byte v18, v1, v11

    :cond_1a
    move/from16 v2, v16

    move/from16 v3, v18

    const/4 v4, -0x3

    const/4 v8, -0x2

    const/16 v9, 0x1b

    const/16 v10, 0x20

    if-gt v2, v10, :cond_1b

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 105
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1b
    const/16 v11, 0x40

    if-lt v2, v11, :cond_1c

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 106
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1c
    new-array v11, v6, [I

    const/16 v14, 0xff

    and-int/2addr v2, v14

    aput v2, v11, v5

    .line 107
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v2, 0x1c

    if-gt v3, v10, :cond_1d

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1d
    const/16 v9, 0x40

    if-lt v3, v9, :cond_1e

    new-array v3, v6, [I

    aput v4, v3, v5

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1e
    new-array v9, v6, [I

    const/16 v11, 0xff

    and-int/2addr v3, v11

    aput v3, v9, v5

    .line 110
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    :goto_d
    const/16 v2, 0x50

    new-array v3, v6, [I

    add-int/lit8 v9, p2, 0x7

    .line 111
    aget-byte v11, v1, v9

    shr-int/2addr v11, v13

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v6, [I

    .line 112
    aget-byte v11, v1, v9

    shr-int/2addr v11, v6

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v6, [I

    .line 113
    aget-byte v9, v1, v9

    shr-int/2addr v9, v5

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 114
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v6, :cond_22

    if-eq v3, v13, :cond_21

    if-eq v3, v7, :cond_20

    if-eq v3, v12, :cond_1f

    move v3, v5

    move v7, v3

    move v9, v7

    goto :goto_e

    :cond_1f
    move v3, v5

    move v7, v3

    move v9, v6

    goto :goto_e

    :cond_20
    move v3, v5

    move v9, v3

    move v7, v6

    goto :goto_e

    :cond_21
    move v9, v5

    move v3, v6

    move v7, v3

    goto :goto_e

    :cond_22
    move v7, v5

    move v9, v7

    move v3, v6

    :goto_e
    const/16 v11, 0x2e

    new-array v13, v6, [I

    aput v3, v13, v5

    .line 115
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v11, v6, [I

    aput v7, v11, v5

    .line 116
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x31

    new-array v7, v6, [I

    aput v9, v7, v5

    .line 117
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v7, v6, [I

    .line 118
    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    aput v2, v7, v5

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 119
    aget-byte v3, v1, v2

    const/16 v7, 0xff

    and-int/2addr v3, v7

    const/16 v9, 0x28

    if-gt v3, v10, :cond_23

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 120
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    .line 121
    :cond_23
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    const/16 v8, 0x40

    if-lt v3, v8, :cond_24

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 122
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_24
    new-array v3, v6, [I

    .line 123
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v3, v5

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_f
    const/16 v2, 0x1d

    new-array v3, v6, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 124
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 125
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0xf

    aput v1, v2, v5

    const/16 v1, 0x1e

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 126
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 127
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 128
    iput v2, v0, Lk0/hi;->c:I

    move v2, v5

    .line 129
    :goto_10
    iget-object v3, v0, Lk0/hi;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_26

    .line 130
    iget v4, v0, Lk0/hi;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_25

    if-eqz v4, :cond_26

    .line 131
    iput v2, v0, Lk0/hi;->b:I

    goto :goto_11

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_26
    :goto_11
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_27

    .line 132
    array-length v1, v3

    if-ge v2, v1, :cond_33

    .line 133
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_27
    if-nez v1, :cond_33

    .line 134
    iget v1, v0, Lk0/hi;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_28

    const/16 v2, 0xff

    if-eq v1, v2, :cond_29

    .line 135
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_12

    :cond_28
    const/16 v2, 0xff

    .line 136
    :cond_29
    :goto_12
    iput v2, v0, Lk0/hi;->b:I

    goto/16 :goto_13

    .line 137
    :cond_2a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_2b
    add-int/lit8 v2, p2, 0x2

    .line 138
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v6, :cond_2e

    if-eq v2, v7, :cond_2d

    if-eq v2, v11, :cond_2c

    goto/16 :goto_13

    :cond_2c
    add-int/lit8 v2, p2, 0x3

    .line 139
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 140
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 141
    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    .line 142
    iput-boolean v6, v0, Lk0/hi;->h:Z

    goto/16 :goto_13

    :cond_2d
    add-int/lit8 v2, p2, 0x4

    .line 143
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    and-int/2addr v2, v10

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 145
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v13, [I

    aput v6, v4, v5

    aput v1, v4, v6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_2e
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 146
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2f

    add-int/lit8 v2, p2, 0x3

    .line 147
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v6

    invoke-static {v3, v1, v5}, Ll0/c0;->b(III)V

    goto/16 :goto_13

    :cond_2f
    add-int/lit8 v2, p2, 0x3

    .line 148
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v6

    invoke-static {v3, v1, v5}, Ll0/c0;->a(III)V

    goto/16 :goto_13

    :cond_30
    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 149
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 150
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 151
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 152
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 153
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_31
    add-int/lit8 v2, p2, 0x2

    .line 154
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 155
    aget-byte v1, v1, v3

    .line 156
    iget-boolean v3, v0, Lk0/hi;->h:Z

    if-nez v3, :cond_33

    const/16 v3, 0x21c

    .line 157
    invoke-static {v1, v2, v5, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_13

    :cond_32
    const/16 v2, 0x7b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 158
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 159
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 160
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 161
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 162
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 163
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 164
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 165
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 166
    aget-byte v4, v1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 167
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 168
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_33
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x71
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hi;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hi;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hi;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8d

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

    const/4 p4, 0x3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p3, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, p4

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p3, p1, v2

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, p4

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, 0xe1

    aput p3, p1, v4

    aput v0, p1, v3

    .line 5
    aget p3, p2, v2

    aput p3, p1, p4

    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, v0

    const/4 p3, 0x6

    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method
