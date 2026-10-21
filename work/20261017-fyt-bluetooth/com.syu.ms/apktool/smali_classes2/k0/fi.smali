.class public Lk0/fi;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/fi;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/fi;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/fi;->d:I

    .line 5
    iput v1, p0, Lk0/fi;->f:I

    const/16 v3, 0x21

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 6
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    aput-object v0, v3, v4

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    const/4 v5, 0x3

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_4

    const/4 v5, 0x4

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_5

    const/4 v5, 0x5

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    const/4 v5, 0x6

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v5, 0x7

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v5, 0x8

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v5, 0x9

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v5, 0xa

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v5, 0xb

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_c

    const/16 v5, 0xc

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    const/16 v5, 0xd

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    const/16 v5, 0xe

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_f

    const/16 v5, 0xf

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_10

    const/16 v5, 0x10

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    const/16 v5, 0x11

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_12

    const/16 v5, 0x12

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_13

    const/16 v5, 0x13

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    const/16 v5, 0x14

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_15

    const/16 v5, 0x15

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_16

    const/16 v5, 0x16

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_17

    const/16 v5, 0x17

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_18

    const/16 v5, 0x18

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_19

    const/16 v5, 0x19

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1a

    const/16 v5, 0x1a

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1b

    const/16 v5, 0x1b

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1c

    const/16 v5, 0x1c

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1d

    const/16 v5, 0x1d

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1e

    const/16 v5, 0x1e

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1f

    const/16 v5, 0x1f

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_20

    aput-object v0, v3, v2

    iput-object v3, p0, Lk0/fi;->g:[[I

    .line 7
    iput-boolean v1, p0, Lk0/fi;->h:Z

    .line 8
    iput v1, p0, Lk0/fi;->i:I

    .line 9
    new-instance v0, Lk0/fi$a;

    invoke-direct {v0, p0}, Lk0/fi$a;-><init>(Lk0/fi;)V

    iput-object v0, p0, Lk0/fi;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/fi$b;

    invoke-direct {v0, p0}, Lk0/fi$b;-><init>(Lk0/fi;)V

    iput-object v0, p0, Lk0/fi;->k:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x15
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x13
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x14
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x21
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x22
        0x8
    .end array-data

    :array_11
    .array-data 4
        0x23
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x24
        0x21
    .end array-data

    :array_13
    .array-data 4
        0x25
        0x20
    .end array-data

    :array_14
    .array-data 4
        0x26
        0x3
    .end array-data

    :array_15
    .array-data 4
        0x27
        0x4
    .end array-data

    :array_16
    .array-data 4
        0x28
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x29
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x2a
        0x19
    .end array-data

    :array_19
    .array-data 4
        0x2b
        0x40
    .end array-data

    :array_1a
    .array-data 4
        0x2c
        0x9
    .end array-data

    :array_1b
    .array-data 4
        0x2d
        0x12
    .end array-data

    :array_1c
    .array-data 4
        0x2e
        0x3a
    .end array-data

    :array_1d
    .array-data 4
        0x2f
        0x26
    .end array-data

    :array_1e
    .array-data 4
        0x30
        0x9
    .end array-data

    :array_1f
    .array-data 4
        0x31
        0x1d
    .end array-data

    :array_20
    .array-data 4
        0x88
        0xd
    .end array-data
.end method


# virtual methods
.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/fi;->b:Lo1/g0;

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

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/fi;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/fi;->b3(I)V

    .line 8
    iget-object v0, p0, Lk0/fi;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/fi;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x29

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x52

    const/16 v8, 0x9

    const/16 v13, 0x15

    const/16 v14, 0x7d

    const/16 v7, 0xf

    const/16 v6, 0x8

    const/4 v15, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v2, v3, :cond_22

    const/16 v3, 0x64

    const/16 v12, 0xff

    if-eq v2, v14, :cond_1c

    const/16 v14, 0x30

    if-eq v2, v14, :cond_19

    const/16 v14, 0x31

    if-eq v2, v14, :cond_16

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1a

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v11, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v11

    aput v7, v3, v5

    .line 4
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v11

    aput v7, v3, v5

    .line 5
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v11, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v11

    aput v7, v3, v5

    .line 6
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v11

    aput v7, v3, v5

    .line 7
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v11

    aput v4, v3, v5

    .line 8
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v11

    aput v4, v3, v5

    .line 9
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v5

    .line 10
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v11

    aput v2, v3, v5

    .line 11
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    const/16 v2, 0x8b

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_1
    const/16 v2, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 16
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 17
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_2
    const/16 v2, 0x68

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x2

    .line 18
    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    aput v6, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x3

    .line 19
    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    aput v6, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 20
    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    aput v6, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v11, [I

    add-int/lit8 v6, p2, 0x5

    .line 21
    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    aput v6, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 25
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lk0/fi;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lk0/fi;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lk0/fi;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 29
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lk0/fi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1a

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lk0/fi;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lk0/fi;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lk0/fi;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lk0/fi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1a

    :pswitch_5
    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x3

    .line 34
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    aput v3, v2, v5

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    const/16 v3, 0x35

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v11

    aput v7, v6, v5

    .line 36
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v11

    aput v6, v3, v5

    const/16 v6, 0xd

    .line 37
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v11

    aput v6, v3, v5

    const/16 v6, 0xb

    .line 38
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v11

    aput v6, v3, v5

    const/16 v6, 0xc

    .line 39
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x1

    and-int/2addr v7, v11

    aput v7, v6, v5

    .line 40
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v11

    aput v2, v3, v5

    const/16 v2, 0x10

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-eqz v2, :cond_5

    if-eq v2, v11, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_1

    move v2, v5

    move v3, v2

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_1
    move v3, v5

    move v2, v11

    move v4, v2

    goto :goto_2

    :cond_2
    move v3, v5

    move v4, v3

    move v2, v11

    goto :goto_2

    :cond_3
    move v2, v5

    move v3, v2

    move v4, v11

    goto :goto_2

    :cond_4
    move v2, v5

    move v3, v11

    goto :goto_1

    :cond_5
    move v2, v5

    move v4, v2

    move v3, v11

    :goto_2
    new-array v6, v11, [I

    aput v2, v6, v5

    const/16 v2, 0x12

    .line 43
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v3, v2, v5

    const/16 v3, 0x13

    .line 44
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v5

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 46
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    const/16 v2, 0x1b

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 47
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 49
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 50
    iput v2, v0, Lk0/fi;->f:I

    move v2, v5

    .line 51
    :goto_3
    iget-object v3, v0, Lk0/fi;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 52
    iget v4, v0, Lk0/fi;->f:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_6

    if-eqz v4, :cond_7

    .line 53
    iput v2, v0, Lk0/fi;->e:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 54
    :cond_7
    :goto_4
    iget v4, v0, Lk0/fi;->f:I

    if-eq v4, v10, :cond_14

    if-eq v4, v9, :cond_12

    const/16 v7, 0x21

    if-eq v4, v7, :cond_10

    const/16 v7, 0x22

    if-eq v4, v7, :cond_e

    const/16 v6, 0x24

    if-eq v4, v6, :cond_c

    const/16 v6, 0x25

    if-eq v4, v6, :cond_a

    and-int/2addr v1, v12

    if-ne v1, v11, :cond_8

    .line 55
    array-length v1, v3

    if-ge v2, v1, :cond_4f

    .line 56
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_8
    if-nez v1, :cond_4f

    .line 57
    iget v1, v0, Lk0/fi;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_9

    if-eq v1, v12, :cond_9

    .line 58
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 59
    :cond_9
    iput v12, v0, Lk0/fi;->e:I

    goto/16 :goto_1a

    :cond_a
    move v2, v5

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_b

    const/16 v3, 0x1e

    .line 60
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const/16 v1, 0x1e

    .line 61
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_c
    move v2, v5

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_d

    const/16 v3, 0x1f

    .line 62
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/16 v1, 0x1f

    .line 63
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_e
    move v2, v5

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_f

    .line 64
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 65
    :cond_f
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_10
    move v2, v5

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_11

    const/4 v3, 0x7

    .line 66
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x7

    .line 67
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_12
    and-int/2addr v1, v12

    if-ne v1, v11, :cond_4f

    .line 68
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_13

    .line 69
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_13
    const/16 v1, 0x12

    .line 71
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 72
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_14
    and-int/2addr v1, v12

    if-ne v1, v11, :cond_4f

    .line 73
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_15

    if-eq v1, v9, :cond_15

    if-eq v1, v15, :cond_15

    .line 74
    invoke-static {v10, v5}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v10, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_15
    const/16 v1, 0x1a

    .line 76
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 78
    :cond_16
    sget v2, Lk0/nt;->a:I

    const v3, 0x2b01b7

    if-eq v2, v3, :cond_4f

    const v3, 0x2c01b7

    if-eq v2, v3, :cond_4f

    const v3, 0x2d01b7

    if-eq v2, v3, :cond_4f

    const v3, 0x2e01b7

    if-ne v2, v3, :cond_17

    goto/16 :goto_1a

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_18

    .line 80
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_1a

    :cond_18
    if-nez v1, :cond_4f

    .line 81
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_1a

    .line 82
    :cond_19
    sget v2, Lk0/fi;->l:I

    if-nez v2, :cond_1a

    goto/16 :goto_1a

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v1, v1, v2

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    .line 84
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_4f

    if-eqz v1, :cond_1b

    .line 85
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 86
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_1a

    .line 87
    :cond_1b
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 88
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_1a

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-eq v2, v11, :cond_20

    if-eq v2, v10, :cond_1f

    if-eq v2, v6, :cond_1e

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1d

    goto/16 :goto_1a

    :cond_1d
    const/16 v2, 0x408

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 90
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v12

    or-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_1e
    add-int/lit8 v2, p2, 0x3

    .line 91
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 92
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 93
    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    .line 94
    iput-boolean v11, v0, Lk0/fi;->h:Z

    goto/16 :goto_1a

    :cond_1f
    add-int/lit8 v2, p2, 0x4

    .line 95
    aget-byte v2, v1, v2

    shl-int/2addr v2, v6

    const v6, 0xff00

    and-int/2addr v2, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    div-int/2addr v1, v3

    const/16 v2, 0x407

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 96
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 97
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v4, [I

    aput v11, v4, v5

    aput v1, v4, v11

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_20
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 98
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_21

    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v11

    invoke-static {v3, v1, v5}, Ll0/c0;->b(III)V

    goto/16 :goto_1a

    :cond_21
    add-int/lit8 v2, p2, 0x3

    .line 100
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v11

    invoke-static {v3, v1, v5}, Ll0/c0;->a(III)V

    goto/16 :goto_1a

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 102
    aget-byte v1, v1, v3

    if-ne v2, v11, :cond_24

    const/16 v2, 0x62

    new-array v3, v11, [I

    if-ne v1, v11, :cond_23

    goto :goto_9

    :cond_23
    move v11, v5

    :goto_9
    aput v11, v3, v5

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_24
    if-nez v2, :cond_26

    const/16 v2, 0x70

    new-array v3, v11, [I

    if-ne v1, v11, :cond_25

    goto :goto_a

    :cond_25
    move v11, v5

    :goto_a
    aput v11, v3, v5

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_26
    if-ne v2, v4, :cond_28

    const/16 v2, 0x71

    new-array v3, v11, [I

    if-ne v1, v11, :cond_27

    goto :goto_b

    :cond_27
    move v11, v5

    :goto_b
    aput v11, v3, v5

    .line 105
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_28
    if-ne v2, v10, :cond_2a

    const/16 v2, 0x72

    new-array v3, v11, [I

    if-ne v1, v11, :cond_29

    goto :goto_c

    :cond_29
    move v11, v5

    :goto_c
    aput v11, v3, v5

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_2a
    if-ne v2, v9, :cond_2c

    const/16 v2, 0x73

    new-array v3, v11, [I

    if-ne v1, v11, :cond_2b

    goto :goto_d

    :cond_2b
    move v11, v5

    :goto_d
    aput v11, v3, v5

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_2c
    if-ne v2, v15, :cond_2e

    const/16 v2, 0x74

    new-array v3, v11, [I

    if-ne v1, v11, :cond_2d

    goto :goto_e

    :cond_2d
    move v11, v5

    :goto_e
    aput v11, v3, v5

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_2e
    const/4 v3, 0x6

    if-ne v2, v3, :cond_30

    const/16 v2, 0x75

    new-array v3, v11, [I

    if-ne v1, v11, :cond_2f

    goto :goto_f

    :cond_2f
    move v11, v5

    :goto_f
    aput v11, v3, v5

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_30
    const/4 v3, 0x7

    if-ne v2, v3, :cond_32

    const/16 v2, 0x76

    new-array v3, v11, [I

    if-ne v1, v11, :cond_31

    goto :goto_10

    :cond_31
    move v11, v5

    :goto_10
    aput v11, v3, v5

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_32
    if-ne v2, v6, :cond_34

    const/16 v2, 0x77

    new-array v3, v11, [I

    if-ne v1, v11, :cond_33

    goto :goto_11

    :cond_33
    move v11, v5

    :goto_11
    aput v11, v3, v5

    .line 111
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_34
    if-ne v2, v8, :cond_36

    const/16 v2, 0x78

    new-array v3, v11, [I

    if-ne v1, v11, :cond_35

    goto :goto_12

    :cond_35
    move v11, v5

    :goto_12
    aput v11, v3, v5

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_36
    const/16 v3, 0xa

    if-ne v2, v3, :cond_37

    const/16 v2, 0x79

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_37
    const/16 v3, 0xb

    if-ne v2, v3, :cond_38

    const/16 v2, 0x7a

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_38
    const/16 v3, 0xc

    if-ne v2, v3, :cond_39

    const/16 v2, 0x7b

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_39
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3a

    const/16 v2, 0x7c

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 116
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_3a
    const/16 v3, 0xe

    if-ne v2, v3, :cond_3b

    new-array v2, v11, [I

    aput v1, v2, v5

    .line 117
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_3b
    if-ne v2, v7, :cond_3c

    const/16 v2, 0x7e

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 118
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_3c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_3e

    const/16 v2, 0x7f

    new-array v3, v11, [I

    if-ne v1, v11, :cond_3d

    goto :goto_13

    :cond_3d
    move v11, v5

    :goto_13
    aput v11, v3, v5

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_3e
    const/16 v3, 0x11

    if-ne v2, v3, :cond_40

    const/16 v2, 0x80

    new-array v3, v11, [I

    if-ne v1, v11, :cond_3f

    goto :goto_14

    :cond_3f
    move v11, v5

    :goto_14
    aput v11, v3, v5

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_40
    const/16 v3, 0x12

    if-ne v2, v3, :cond_41

    const/16 v2, 0x81

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_41
    const/16 v3, 0x13

    if-ne v2, v3, :cond_43

    const/16 v2, 0x82

    new-array v3, v11, [I

    if-ne v1, v11, :cond_42

    goto :goto_15

    :cond_42
    move v11, v5

    :goto_15
    aput v11, v3, v5

    .line 122
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_43
    const/16 v3, 0x14

    if-ne v2, v3, :cond_45

    const/16 v2, 0x83

    new-array v3, v11, [I

    if-ne v1, v11, :cond_44

    goto :goto_16

    :cond_44
    move v11, v5

    :goto_16
    aput v11, v3, v5

    .line 123
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_45
    if-ne v2, v13, :cond_46

    const/16 v2, 0x84

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_46
    const/16 v3, 0x16

    if-ne v2, v3, :cond_47

    const/16 v2, 0x85

    new-array v3, v11, [I

    aput v1, v3, v5

    .line 125
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_47
    const/16 v3, 0x17

    if-ne v2, v3, :cond_49

    const/16 v2, 0x86

    new-array v3, v11, [I

    if-ne v1, v11, :cond_48

    goto :goto_17

    :cond_48
    move v11, v5

    :goto_17
    aput v11, v3, v5

    .line 126
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_49
    const/16 v3, 0x18

    if-ne v2, v3, :cond_4b

    const/16 v2, 0x87

    new-array v3, v11, [I

    if-ne v1, v11, :cond_4a

    goto :goto_18

    :cond_4a
    move v11, v5

    :goto_18
    aput v11, v3, v5

    .line 127
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_4b
    const/16 v3, 0x19

    if-ne v2, v3, :cond_4f

    const/16 v2, 0x88

    new-array v3, v11, [I

    if-ne v1, v11, :cond_4c

    goto :goto_19

    :cond_4c
    move v11, v5

    :goto_19
    aput v11, v3, v5

    .line 128
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    .line 129
    :cond_4d
    iget-boolean v2, v0, Lk0/fi;->h:Z

    if-nez v2, :cond_4f

    add-int/lit8 v2, p2, 0x3

    .line 130
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x157c

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_1a

    .line 131
    :cond_4e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_4f
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fi;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/fi;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/fi;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8c

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

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0xe3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/16 v5, 0x405

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget p1, p2, v4

    mul-int/lit16 p1, p1, 0x320

    invoke-static {}, La/f;->w()I

    move-result v5

    div-int/2addr p1, v5

    .line 3
    aget p2, p2, v3

    mul-int/lit16 p2, p2, 0x1e0

    invoke-static {}, La/f;->i()I

    move-result v5

    div-int/2addr p2, v5

    const/4 v5, 0x7

    new-array v5, v5, [I

    aput v2, v5, p3

    aput v2, v5, v4

    aput v1, v5, v3

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, v5, v0

    and-int/lit16 p1, p1, 0xff

    aput p1, v5, p4

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v5, v1

    const/4 p1, 0x6

    and-int/lit16 p2, p2, 0xff

    aput p2, v5, p1

    .line 4
    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v2, p1, p3

    const/16 v1, 0x83

    aput v1, p1, v4

    aput v3, p1, v3

    .line 6
    aget p3, p2, p3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    array-length p1, p2

    if-lez p1, :cond_3

    .line 8
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/fi;->b3(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :cond_2
    :goto_0
    return v0
.end method

.method public final b3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/fi;->l:I

    const/16 v2, 0x63

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/fi;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/fi;->l:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/fi;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
