.class public Lk0/r9;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:I

.field public static t:I


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

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

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

    iput-object v0, p0, Lk0/r9;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/r9;->c:I

    const/16 v1, 0xff

    .line 4
    iput v1, p0, Lk0/r9;->g:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v0

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

    iput-object v2, p0, Lk0/r9;->h:[[I

    const/16 v2, 0x15

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    aput-object v0, v2, v10

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    aput-object v0, v2, v11

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    aput-object v0, v2, v12

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v1, 0x14

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/r9;->i:[[I

    .line 7
    iput v5, p0, Lk0/r9;->j:I

    .line 8
    iput v5, p0, Lk0/r9;->k:I

    .line 9
    new-instance v0, Lk0/r9$a;

    invoke-direct {v0, p0}, Lk0/r9$a;-><init>(Lk0/r9;)V

    iput-object v0, p0, Lk0/r9;->l:Ljava/lang/Runnable;

    .line 10
    iput v5, p0, Lk0/r9;->m:I

    .line 11
    iput v5, p0, Lk0/r9;->n:I

    .line 12
    new-instance v0, Lk0/r9$b;

    invoke-direct {v0, p0}, Lk0/r9$b;-><init>(Lk0/r9;)V

    iput-object v0, p0, Lk0/r9;->o:Ljava/lang/Runnable;

    .line 13
    iput v5, p0, Lk0/r9;->p:I

    .line 14
    new-instance v0, Lk0/r9$c;

    invoke-direct {v0, p0}, Lk0/r9$c;-><init>(Lk0/r9;)V

    iput-object v0, p0, Lk0/r9;->q:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/r9$d;

    invoke-direct {v0, p0}, Lk0/r9$d;-><init>(Lk0/r9;)V

    iput-object v0, p0, Lk0/r9;->r:Ljava/lang/Runnable;

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
        -0x1
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
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x1b
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_f
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_10
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_11
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_13
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_14
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_15
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_16
    .array-data 4
        0x15
        0x27
    .end array-data

    :array_17
    .array-data 4
        0x16
        0x26
    .end array-data

    :array_18
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_1a
    .array-data 4
        0x2d
        0x9
    .end array-data

    :array_1b
    .array-data 4
        0x36
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x38
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x39
        0x40
    .end array-data

    :array_1e
    .array-data 4
        0x3f
        0xd
    .end array-data
.end method

.method public static a3(I)I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0xff

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x19

    .line 1
    div-int/lit8 v0, p0, 0xa

    :goto_0
    return v0
.end method

.method public static synthetic b3(Lk0/r9;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/r9;->m:I

    return p0
.end method

.method public static synthetic c3(Lk0/r9;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/r9;->m:I

    return p1
.end method

.method public static synthetic d3(Lk0/r9;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/r9;->n:I

    return p0
.end method

.method public static synthetic e3(Lk0/r9;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/r9;->n:I

    return p1
.end method

.method public static synthetic f3(Lk0/r9;I[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/r9;->l3(I[I)V

    return-void
.end method

.method public static synthetic g3(Lk0/r9;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/r9;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/r9;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/r9;->j3(I)V

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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->r:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iget-object v0, p0, Lk0/r9;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/r9;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 11
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 12
    iput v1, v0, Lk0/mt;->r:I

    .line 13
    iget-object v0, p0, Lk0/r9;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 14
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 15
    iget-object v0, p0, Lk0/r9;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 17
    iget-object v0, p0, Lk0/r9;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 18
    :sswitch_3
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/r9;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v0, p0, Lk0/r9;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :sswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x121 -> :sswitch_4
        0x10121 -> :sswitch_4
        0x20121 -> :sswitch_4
        0x30121 -> :sswitch_4
        0x40121 -> :sswitch_4
        0x70121 -> :sswitch_3
        0x90121 -> :sswitch_2
        0xa0121 -> :sswitch_1
        0xb0121 -> :sswitch_2
        0xc0121 -> :sswitch_1
        0xd0121 -> :sswitch_1
        0xe0121 -> :sswitch_1
        0xf0121 -> :sswitch_0
        0x100121 -> :sswitch_1
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x6a

    const/16 v4, 0xa

    const/4 v5, 0x7

    const/4 v9, 0x3

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v3, :cond_3c

    const/16 v3, -0x18

    const/16 v13, 0x8

    if-eq v2, v3, :cond_35

    const/16 v3, -0x10

    if-eq v2, v3, :cond_34

    const/16 v3, 0x25

    if-eq v2, v3, :cond_33

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_32

    const/16 v3, 0x61

    if-eq v2, v3, :cond_31

    const/16 v3, 0x67

    if-eq v2, v3, :cond_30

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x12

    if-eq v2, v3, :cond_28

    const/16 v3, 0x21

    if-eq v2, v3, :cond_22

    const/16 v3, 0x22

    const/16 v14, 0x1e

    if-eq v2, v3, :cond_17

    const/16 v3, 0x31

    if-eq v2, v3, :cond_3

    const/16 v3, 0x32

    if-eq v2, v3, :cond_2

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    goto/16 :goto_16

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->O2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->Q2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->P2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->N2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->I2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->K2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->J2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 9
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-static {v1}, Lk0/r9;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->H2(I)V

    goto/16 :goto_16

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 15
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/r9;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 17
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-static {v1}, Lk0/r9;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_16

    :cond_2
    add-int/lit8 v2, p2, 0x4

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    add-int/lit8 v3, p2, 0x5

    .line 19
    aget-byte v3, v1, v3

    and-int/2addr v3, v10

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x7

    .line 21
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    const/16 v5, 0x7b

    new-array v6, v12, [I

    shl-int/2addr v2, v13

    or-int/2addr v2, v3

    aput v2, v6, v11

    .line 22
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v12, [I

    shl-int/2addr v4, v13

    or-int/2addr v1, v4

    aput v1, v3, v11

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    add-int/lit8 v3, p2, 0x3

    .line 25
    aget-byte v3, v1, v3

    and-int/2addr v3, v10

    add-int/lit8 v5, p2, 0x4

    .line 26
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    add-int/lit8 v13, p2, 0x5

    .line 27
    aget-byte v13, v1, v13

    and-int/2addr v13, v10

    add-int/lit8 v16, p2, 0x6

    .line 28
    aget-byte v7, v1, v16

    and-int/2addr v7, v10

    add-int/lit8 v16, p2, 0x7

    .line 29
    aget-byte v6, v1, v16

    and-int/2addr v6, v10

    add-int/lit8 v16, p2, 0x8

    .line 30
    aget-byte v15, v1, v16

    and-int/2addr v15, v10

    add-int/lit8 v17, p2, 0x9

    .line 31
    aget-byte v8, v1, v17

    and-int/2addr v8, v10

    new-array v10, v12, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v11

    .line 32
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x35

    new-array v10, v12, [I

    shr-int/lit8 v18, v2, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v11

    .line 33
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v10, v12, [I

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v11

    .line 34
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v12, [I

    and-int/2addr v2, v9

    aput v2, v4, v11

    const/16 v2, 0xb

    .line 35
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v4, v12, [I

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v12

    aput v10, v4, v11

    .line 36
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v9

    if-nez v4, :cond_4

    move v4, v12

    goto :goto_0

    :cond_4
    move v4, v11

    :goto_0
    aput v4, v2, v11

    const/16 v4, 0xc

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v10, v12, [I

    shr-int/2addr v3, v9

    and-int/2addr v3, v12

    aput v3, v10, v11

    .line 38
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v12, [I

    shr-int/lit8 v10, v5, 0x5

    and-int/2addr v10, v12

    aput v10, v3, v11

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v12, [I

    shr-int/lit8 v10, v5, 0x4

    and-int/2addr v10, v12

    aput v10, v3, v11

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v5, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v11

    .line 41
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v12, [I

    and-int/2addr v5, v9

    aput v5, v3, v11

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v12, [I

    shr-int/lit8 v5, v13, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v11

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    const/4 v3, 0x4

    shr-int/lit8 v5, v13, 0x4

    and-int/lit8 v3, v5, 0x3

    aput v3, v2, v11

    const/16 v3, 0x1f

    .line 44
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v7, 0xff

    if-eq v3, v9, :cond_8

    if-eq v3, v4, :cond_7

    const/4 v2, 0x5

    if-eq v3, v2, :cond_6

    const/4 v2, 0x6

    if-eq v3, v2, :cond_5

    move v2, v11

    move v3, v2

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_5
    move v2, v11

    move v5, v2

    move v3, v12

    goto :goto_2

    :cond_6
    move v2, v11

    move v3, v12

    goto :goto_1

    :cond_7
    move v3, v11

    move v2, v12

    move v5, v2

    goto :goto_2

    :cond_8
    move v2, v11

    move v3, v2

    move v5, v12

    :goto_2
    const/16 v7, 0x12

    new-array v10, v12, [I

    aput v2, v10, v11

    .line 45
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v12, [I

    aput v3, v7, v11

    .line 46
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v12, [I

    aput v5, v3, v11

    .line 47
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v12, [I

    const/16 v5, 0xff

    and-int/2addr v6, v5

    aput v6, v3, v11

    .line 48
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 49
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0x104

    const/16 v5, 0xfe

    const/4 v6, -0x3

    const/4 v7, -0x2

    const/16 v10, 0x1c

    const/16 v13, 0x1b

    if-eq v2, v3, :cond_c

    const v3, 0x10104

    if-eq v2, v3, :cond_c

    const v3, 0x20104

    if-eq v2, v3, :cond_c

    const v3, 0x90121

    if-eq v2, v3, :cond_c

    const v3, 0xa0121

    if-eq v2, v3, :cond_c

    const v3, 0xb0121

    if-eq v2, v3, :cond_c

    const v3, 0xc0121

    if-eq v2, v3, :cond_c

    const v3, 0xd0121

    if-eq v2, v3, :cond_c

    const v3, 0x100121

    if-ne v2, v3, :cond_9

    goto :goto_3

    :cond_9
    const/16 v2, 0xff

    and-int/lit16 v3, v15, 0xff

    if-eq v3, v5, :cond_b

    if-eq v3, v2, :cond_a

    new-array v2, v12, [I

    const/4 v8, 0x5

    mul-int/2addr v3, v8

    aput v3, v2, v11

    .line 50
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v3, v2, v11

    .line 51
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_a
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 52
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v6, v2, v11

    .line 53
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    new-array v2, v12, [I

    aput v7, v2, v11

    .line 54
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v7, v2, v11

    .line 55
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    :goto_3
    const-string v2, "persist.fyt.reversetemp"

    .line 56
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 57
    aget-byte v15, v1, v17

    .line 58
    aget-byte v8, v1, v16

    :cond_d
    const/16 v2, 0xff

    and-int/lit16 v3, v15, 0xff

    if-eq v3, v5, :cond_f

    if-eq v3, v2, :cond_e

    new-array v2, v12, [I

    const/4 v14, 0x5

    mul-int/2addr v3, v14

    aput v3, v2, v11

    .line 59
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 60
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v2, v12, [I

    aput v7, v2, v11

    .line 61
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0xff

    and-int/lit16 v3, v8, 0xff

    if-eq v3, v5, :cond_11

    if-eq v3, v2, :cond_10

    new-array v2, v12, [I

    const/4 v8, 0x5

    mul-int/2addr v3, v8

    aput v3, v2, v11

    .line 62
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v2, v12, [I

    aput v6, v2, v11

    .line 63
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v2, v12, [I

    aput v7, v2, v11

    .line 64
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    .line 65
    :goto_5
    sget v2, Lk0/nt;->a:I

    const v3, 0xb0121

    if-ne v2, v3, :cond_3d

    const/16 v2, 0x2a

    new-array v3, v12, [I

    add-int/lit8 v8, p2, 0xa

    .line 66
    aget-byte v10, v1, v8

    const/4 v13, 0x6

    shr-int/2addr v10, v13

    and-int/2addr v10, v12

    aput v10, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v12, [I

    .line 67
    aget-byte v10, v1, v8

    const/4 v13, 0x4

    shr-int/2addr v10, v13

    and-int/2addr v10, v12

    aput v10, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 68
    aget-byte v2, v1, v8

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v12, :cond_14

    const/4 v3, 0x2

    if-eq v2, v3, :cond_13

    if-eq v2, v9, :cond_12

    move v2, v11

    :goto_6
    move v3, v2

    goto :goto_7

    :cond_12
    move v2, v12

    goto :goto_6

    :cond_13
    move v3, v11

    move v2, v12

    goto :goto_7

    :cond_14
    move v2, v11

    move v3, v12

    :goto_7
    const/16 v8, 0x2e

    new-array v9, v12, [I

    aput v2, v9, v11

    .line 69
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v8, v12, [I

    aput v3, v8, v11

    .line 70
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v12, [I

    add-int/lit8 v8, p2, 0xb

    .line 71
    aget-byte v8, v1, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 72
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    if-eq v3, v5, :cond_16

    if-eq v3, v9, :cond_15

    const/16 v3, 0x28

    new-array v4, v12, [I

    .line 73
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    aput v1, v4, v11

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_15
    const/16 v1, 0x28

    new-array v2, v12, [I

    aput v6, v2, v11

    .line 74
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_16
    const/16 v1, 0x28

    new-array v2, v12, [I

    aput v7, v2, v11

    .line 75
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 76
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 77
    aget-byte v1, v1, v3

    if-eq v2, v12, :cond_1d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    goto/16 :goto_16

    .line 78
    :cond_18
    iget v2, v0, Lk0/r9;->k:I

    if-eq v1, v2, :cond_3d

    if-le v1, v2, :cond_1a

    move v2, v11

    .line 79
    :goto_8
    iget v3, v0, Lk0/r9;->k:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_19

    const/16 v3, 0x1f

    .line 80
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    const/16 v3, 0x1f

    .line 81
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_1a
    if-ge v1, v2, :cond_1c

    move v2, v11

    .line 82
    :goto_9
    iget v3, v0, Lk0/r9;->k:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1b

    .line 83
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 84
    :cond_1b
    invoke-static {v14, v12}, Ll0/b0;->l0(II)V

    .line 85
    :cond_1c
    :goto_a
    iput v1, v0, Lk0/r9;->k:I

    goto/16 :goto_16

    .line 86
    :cond_1d
    iget v2, v0, Lk0/r9;->j:I

    if-eq v1, v2, :cond_3d

    if-le v1, v2, :cond_1f

    move v2, v11

    .line 87
    :goto_b
    iget v3, v0, Lk0/r9;->j:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1e

    .line 88
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 89
    :cond_1e
    invoke-static {v5, v12}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_1f
    if-ge v1, v2, :cond_21

    move v2, v11

    .line 90
    :goto_c
    iget v3, v0, Lk0/r9;->j:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_20

    .line 91
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 92
    :cond_20
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    .line 93
    :cond_21
    :goto_d
    iput v1, v0, Lk0/r9;->j:I

    goto/16 :goto_16

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lk0/r9;->f:I

    add-int/lit8 v2, p2, 0x3

    .line 95
    aget-byte v1, v1, v2

    move v2, v11

    .line 96
    :goto_e
    iget-object v3, v0, Lk0/r9;->i:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_24

    .line 97
    iget v4, v0, Lk0/r9;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v11

    if-ne v4, v5, :cond_23

    if-eqz v4, :cond_24

    .line 98
    iput v2, v0, Lk0/r9;->g:I

    goto :goto_f

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    :goto_f
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_25

    .line 99
    array-length v1, v3

    if-ge v2, v1, :cond_3d

    .line 100
    aget-object v1, v3, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 101
    :cond_25
    iget v1, v0, Lk0/r9;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_26

    const/16 v2, 0xff

    if-eq v1, v2, :cond_27

    .line 102
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_26
    const/16 v2, 0xff

    .line 103
    :cond_27
    :goto_10
    iput v2, v0, Lk0/r9;->g:I

    goto/16 :goto_16

    :cond_28
    move v2, v10

    const/4 v3, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 104
    aget-byte v1, v1, v4

    and-int/2addr v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 105
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_29

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 106
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    const/4 v3, 0x2

    .line 107
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_29
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 108
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    const/4 v3, 0x2

    .line 109
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_11
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 110
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    const/4 v3, 0x4

    .line 111
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v12

    aput v3, v2, v11

    const/4 v3, 0x5

    .line 112
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 113
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_2a
    add-int/lit8 v2, p2, 0x4

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 115
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 116
    iput v2, v0, Lk0/r9;->e:I

    move v2, v11

    .line 117
    :goto_12
    iget-object v4, v0, Lk0/r9;->h:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_2c

    .line 118
    iget v5, v0, Lk0/r9;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v11

    if-ne v5, v6, :cond_2b

    if-eqz v5, :cond_2c

    .line 119
    iput v2, v0, Lk0/r9;->d:I

    goto :goto_13

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    :goto_13
    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-eqz v3, :cond_2d

    .line 120
    array-length v3, v4

    if-ge v2, v3, :cond_2f

    .line 121
    aget-object v2, v4, v2

    aget v2, v2, v12

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_14

    .line 122
    :cond_2d
    iget v2, v0, Lk0/r9;->d:I

    array-length v3, v4

    if-ge v2, v3, :cond_2e

    .line 123
    aget-object v2, v4, v2

    aget v2, v2, v12

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    :cond_2e
    const/16 v2, 0xff

    .line 124
    iput v2, v0, Lk0/r9;->d:I

    :cond_2f
    :goto_14
    add-int/lit8 v2, p2, 0x9

    .line 125
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x157c

    invoke-static {v2, v1, v12, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_16

    :cond_30
    const/16 v2, 0x82

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 126
    aget-byte v4, v1, v4

    const/16 v6, 0xff

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 127
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 128
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 129
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 130
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 131
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v12, [I

    .line 132
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v12, [I

    .line 133
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v12, [I

    .line 134
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v12, [I

    .line 135
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v12, [I

    .line 136
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v12, [I

    .line 137
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v12, [I

    .line 138
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v12

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_31
    const/16 v2, 0x9c

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 139
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v12, [I

    .line 140
    aget-byte v6, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v12, [I

    .line 141
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v12, [I

    .line 142
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v12, [I

    .line 143
    aget-byte v6, v1, v4

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v12, [I

    .line 144
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v12, [I

    .line 145
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 146
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v12, [I

    .line 147
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v5

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v12, [I

    .line 148
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 149
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v12, [I

    .line 150
    aget-byte v6, v1, v4

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v12, [I

    .line 151
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v12, [I

    .line 152
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 153
    aget-byte v6, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v12, [I

    .line 154
    aget-byte v6, v1, v4

    const/4 v7, 0x5

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v12, [I

    .line 155
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v12, [I

    .line 156
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v12, [I

    .line 157
    aget-byte v6, v1, v4

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v12, [I

    .line 158
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v12, [I

    .line 159
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 160
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v12, [I

    .line 161
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v12, [I

    .line 162
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v12, [I

    .line 163
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v12, [I

    .line 164
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v12, [I

    .line 165
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 166
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v12, [I

    .line 167
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 168
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v12, [I

    .line 169
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v9

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_32
    const/16 v2, 0x81

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 170
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_33
    move v4, v10

    const/16 v2, 0x7e

    new-array v3, v12, [I

    const/4 v5, 0x2

    add-int/lit8 v5, p2, 0x2

    .line 171
    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_34
    const/4 v5, 0x2

    .line 172
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_35
    add-int/lit8 v2, p2, 0x3

    .line 173
    aget-byte v2, v1, v2

    const/16 v3, 0x3f5

    if-eq v2, v12, :cond_39

    if-eq v2, v9, :cond_38

    if-eq v2, v5, :cond_37

    if-eq v2, v13, :cond_36

    goto :goto_15

    :cond_36
    new-array v2, v12, [I

    aput v9, v2, v11

    .line 174
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_37
    new-array v2, v12, [I

    const/4 v4, 0x2

    aput v4, v2, v11

    .line 175
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_38
    new-array v2, v12, [I

    aput v12, v2, v11

    .line 176
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_39
    new-array v2, v12, [I

    aput v11, v2, v11

    .line 177
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    .line 178
    :goto_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 179
    sget v2, Lk0/nt;->a:I

    const v3, 0x30121

    if-eq v2, v3, :cond_3a

    goto/16 :goto_16

    :cond_3a
    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 180
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v12, :cond_3b

    .line 181
    invoke-static {v12}, Lk0/qt;->a(I)V

    goto/16 :goto_16

    .line 182
    :cond_3b
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_16

    :cond_3c
    add-int/lit8 v2, p2, 0x3

    .line 183
    aget-byte v2, v1, v2

    const/16 v3, 0x62

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 184
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x63

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 185
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v9

    aput v7, v6, v11

    .line 186
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 187
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x90

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 188
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x91

    new-array v6, v12, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    aput v2, v6, v11

    .line 189
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 190
    aget-byte v2, v1, v2

    const/16 v3, 0x66

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 191
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 192
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v6, v12, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v12

    aput v7, v6, v11

    .line 193
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v6, v12, [I

    const/4 v7, 0x4

    shr-int/2addr v2, v7

    and-int/2addr v2, v12

    aput v2, v6, v11

    .line 194
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 195
    aget-byte v2, v1, v2

    const/16 v3, 0x6a

    new-array v6, v12, [I

    const/16 v7, 0xff

    and-int/2addr v2, v7

    mul-int/2addr v2, v4

    aput v2, v6, v11

    .line 196
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 197
    aget-byte v2, v1, v2

    const/16 v3, 0x6b

    new-array v4, v12, [I

    and-int/2addr v2, v7

    aput v2, v4, v11

    .line 198
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 199
    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    new-array v4, v12, [I

    and-int/2addr v2, v7

    aput v2, v4, v11

    .line 200
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 201
    aget-byte v2, v1, v2

    const/16 v3, 0x6d

    new-array v4, v12, [I

    and-int/2addr v2, v7

    aput v2, v4, v11

    .line 202
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 203
    aget-byte v2, v1, v2

    const/16 v3, 0x6e

    new-array v4, v12, [I

    and-int/2addr v2, v7

    aput v2, v4, v11

    .line 204
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 205
    aget-byte v2, v1, v2

    const/16 v3, 0x6f

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 206
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x70

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 207
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x71

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 208
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x72

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 209
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x73

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 210
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x74

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 211
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v4, v12, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v12

    aput v2, v4, v11

    .line 212
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 213
    aget-byte v2, v1, v2

    const/16 v3, 0x76

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v4, v11

    .line 214
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x77

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 215
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 216
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x79

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v9

    aput v6, v4, v11

    .line 217
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7f

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 218
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v12, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v12

    aput v2, v4, v11

    .line 219
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 220
    aget-byte v2, v1, v2

    const/16 v3, 0x93

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v4, v11

    .line 221
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x94

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/lit8 v7, v6, 0x3

    aput v7, v4, v11

    .line 222
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x95

    new-array v4, v12, [I

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 223
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x96

    new-array v4, v12, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v12

    aput v6, v4, v11

    .line 224
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7a

    new-array v4, v12, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v12

    aput v2, v4, v11

    .line 225
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xd

    .line 226
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v12, [I

    .line 227
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v12, [I

    .line 228
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v12, [I

    .line 229
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v12, [I

    .line 230
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_3d
    :goto_16
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/r9;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/r9;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/r9;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/r9;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/r9;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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
    .locals 11

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    if-eq p1, p3, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v2, 0x9

    const/16 v3, 0xe3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x3

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_5

    const/16 v9, 0x3ed

    if-eq p1, v9, :cond_1

    const/16 v9, 0x405

    if-eq p1, v9, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v0

    mul-int/lit16 p1, p1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v9

    div-int/2addr p1, v9

    .line 2
    aget v9, p2, p3

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v10

    div-int/2addr v9, v10

    .line 3
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4
    aget p2, p2, p4

    if-nez p2, :cond_a

    new-array p2, v2, [I

    aput v3, p2, p4

    aput v5, p2, v0

    const/16 v2, 0x2c

    aput v2, p2, p3

    aput v0, p2, v8

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v6

    shr-int/lit8 p1, v9, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v5

    and-int/lit16 p1, v9, 0xff

    aput p1, p2, v4

    aput p4, p2, v7

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_a

    .line 6
    array-length p1, p2

    if-lez p1, :cond_a

    .line 7
    aget p1, p2, p4

    if-eq p1, v0, :cond_4

    if-eq p1, p3, :cond_3

    if-eq p1, v8, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lk0/r9;->i3(I)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v7}, Lk0/r9;->i3(I)V

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v4}, Lk0/r9;->i3(I)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v8}, Lk0/r9;->i3(I)V

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_a

    .line 12
    array-length p1, p2

    if-le p1, v0, :cond_a

    .line 13
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/r9;->j3(I)V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_a

    .line 14
    array-length p1, p2

    if-le p1, v0, :cond_a

    const/16 p1, 0xd

    new-array p1, p1, [I

    aput v3, p1, p4

    const/16 v3, 0xa

    aput v3, p1, v0

    const/16 v9, 0x6e

    aput v9, p1, p3

    .line 15
    aget v9, p2, p4

    aput v9, p1, v8

    aget v0, p2, v0

    aput v0, p1, v1

    aget p3, p2, p3

    aput p3, p1, v6

    aget p3, p2, v8

    aput p3, p1, v5

    aget p3, p2, v1

    aput p3, p1, v4

    aget p2, p2, v6

    aput p2, p1, v7

    aput p4, p1, v2

    aput p4, p1, v3

    const/16 p2, 0xb

    aput p4, p1, p2

    const/16 p2, 0xc

    aput p4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_a

    .line 16
    array-length p1, p2

    if-le p1, v0, :cond_a

    const/16 p1, 0x3d

    new-array p3, p3, [I

    .line 17
    aget v1, p2, p4

    aput v1, p3, p4

    aget p2, p2, v0

    aput p2, p3, v0

    invoke-virtual {p0, p1, p3}, Lk0/r9;->l3(I[I)V

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_a

    .line 18
    array-length p1, p2

    if-le p1, v0, :cond_a

    const/16 p1, 0x9b

    new-array p3, p3, [I

    .line 19
    aget v1, p2, p4

    aput v1, p3, p4

    aget p2, p2, v0

    aput p2, p3, v0

    invoke-virtual {p0, p1, p3}, Lk0/r9;->l3(I[I)V

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_a

    .line 20
    array-length p1, p2

    if-le p1, v0, :cond_a

    const/16 p1, 0x3b

    new-array p3, p3, [I

    .line 21
    aget v1, p2, p4

    aput v1, p3, p4

    aget p2, p2, v0

    aput p2, p3, v0

    invoke-virtual {p0, p1, p3}, Lk0/r9;->l3(I[I)V

    :cond_a
    :goto_0
    return-void
.end method

.method public final i3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/r9;->s:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0xe

    aput v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x7

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/r9;->t:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0x6d

    aput v4, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lk0/r9;->t:I

    aput v0, p1, v2

    const/16 v0, 0x8f

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/r9;->b:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/r9;->t:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/r9;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final varargs k3(IB[I)V
    .locals 4

    and-int/lit16 v0, p2, 0xff

    .line 1
    array-length v1, p3

    if-lt v0, v1, :cond_1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 2
    new-array v0, v0, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    .line 3
    aput v2, v0, v3

    const/4 v2, 0x1

    .line 4
    aput p2, v0, v2

    const/4 p2, 0x2

    int-to-byte p1, p1

    .line 5
    aput p1, v0, p2

    .line 6
    array-length p1, p3

    :goto_0
    if-ge v3, p1, :cond_0

    add-int p2, v1, v3

    .line 7
    aget v2, p3, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput v2, v0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params data length > size!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs l3(I[I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    array-length v3, p2

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 2
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0, p2}, Lk0/r9;->k3(IB[I)V

    :cond_2
    return-void
.end method
