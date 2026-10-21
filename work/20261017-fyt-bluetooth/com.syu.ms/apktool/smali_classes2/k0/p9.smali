.class public Lk0/p9;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/p9;->c:I

    const/16 v1, 0x31

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xf

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v4, 0x10

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v4, 0x11

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v4, 0x12

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v4, 0x13

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v4, 0x14

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v4, 0x15

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v4, 0x16

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v4, 0x17

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v4, 0x18

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v4, 0x19

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v4, 0x1a

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v4, 0x1b

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    const/16 v4, 0x1c

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_1d

    const/16 v4, 0x1d

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_1e

    const/16 v4, 0x1e

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_1f

    const/16 v4, 0x1f

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_20

    const/16 v4, 0x20

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_21

    const/16 v4, 0x21

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_22

    const/16 v4, 0x22

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_23

    const/16 v4, 0x23

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_24

    const/16 v4, 0x24

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_25

    const/16 v4, 0x25

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_26

    const/16 v4, 0x26

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_27

    const/16 v4, 0x27

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_28

    const/16 v4, 0x28

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_29

    const/16 v4, 0x29

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    const/16 v4, 0x2a

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_2b

    const/16 v4, 0x2b

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_2c

    const/16 v4, 0x2c

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_2d

    const/16 v4, 0x2d

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_2e

    const/16 v4, 0x2e

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_2f

    const/16 v4, 0x2f

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_30

    const/16 v2, 0x30

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/p9;->d:[[I

    .line 4
    new-instance v0, Lk0/p9$a;

    invoke-direct {v0, p0}, Lk0/p9$a;-><init>(Lk0/p9;)V

    iput-object v0, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/p9$b;

    invoke-direct {v0, p0}, Lk0/p9$b;-><init>(Lk0/p9;)V

    iput-object v0, p0, Lk0/p9;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/p9$c;

    invoke-direct {v0, p0}, Lk0/p9$c;-><init>(Lk0/p9;)V

    iput-object v0, p0, Lk0/p9;->g:Ljava/lang/Runnable;

    .line 7
    iput-byte v3, p0, Lk0/p9;->h:B

    .line 8
    new-instance v0, Lk0/p9$d;

    invoke-direct {v0, p0}, Lk0/p9$d;-><init>(Lk0/p9;)V

    iput-object v0, p0, Lk0/p9;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/p9$e;

    invoke-direct {v0, p0}, Lk0/p9$e;-><init>(Lk0/p9;)V

    iput-object v0, p0, Lk0/p9;->j:Ljava/lang/Runnable;

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
        0x5
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
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x10
    .end array-data

    :array_a
    .array-data 4
        0x13
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x19
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x1b
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x20
        0x31
    .end array-data

    :array_10
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_11
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_12
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_13
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_14
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_15
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_16
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_17
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_18
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_19
    .array-data 4
        0x31
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x3a
    .end array-data

    :array_1e
    .array-data 4
        0x36
        0x12
    .end array-data

    :array_1f
    .array-data 4
        0x37
        0x3e
    .end array-data

    :array_20
    .array-data 4
        0x38
        0x6
    .end array-data

    :array_21
    .array-data 4
        0x39
        0x18
    .end array-data

    :array_22
    .array-data 4
        0x3a
        0x36
    .end array-data

    :array_23
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x3c
        0x43
    .end array-data

    :array_25
    .array-data 4
        0x3d
        0x44
    .end array-data

    :array_26
    .array-data 4
        0x3e
        0x15
    .end array-data

    :array_27
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_28
    .array-data 4
        0x40
        0x26
    .end array-data

    :array_29
    .array-data 4
        0x41
        0x8
    .end array-data

    :array_2a
    .array-data 4
        0x42
        0x7
    .end array-data

    :array_2b
    .array-data 4
        0x43
        0x1e
    .end array-data

    :array_2c
    .array-data 4
        0x44
        0x1f
    .end array-data

    :array_2d
    .array-data 4
        0x45
        0x6
    .end array-data

    :array_2e
    .array-data 4
        0x46
        0x5
    .end array-data

    :array_2f
    .array-data 4
        0x47
        0x2
    .end array-data

    :array_30
    .array-data 4
        0x48
        0x10
    .end array-data
.end method

.method public static synthetic a3(Lk0/p9;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p9;->j:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public K2()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/p9;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/p9;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->f:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    .line 10
    iput v1, v0, Lk0/mt;->b:I

    .line 11
    iput v1, v0, Lk0/mt;->c:I

    .line 12
    iput v1, v0, Lk0/mt;->d:I

    .line 13
    sget v1, Lk0/nt;->c:I

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x14

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    iput v2, v0, Lk0/mt;->i:I

    .line 15
    iget-object v0, p0, Lk0/p9;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lk0/p9;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 17
    :goto_0
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 19
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x17

    const/16 v2, 0x8

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x20

    const/16 v6, 0x1e

    const/4 v7, 0x7

    const/4 v8, 0x3

    if-eq v0, v1, :cond_a

    const/16 v1, 0x30

    const/4 v2, 0x2

    if-eq v0, v1, :cond_9

    const/16 p3, 0x28

    const/4 v1, 0x5

    const/4 v9, 0x4

    if-eq v0, p3, :cond_8

    const/16 p3, 0x29

    if-eq v0, p3, :cond_7

    const/16 p3, 0x40

    if-eq v0, p3, :cond_5

    const/16 p3, 0x41

    if-eq v0, p3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const-string v0, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 4
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 5
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 6
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 7
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 8
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 9
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/2addr p3, v8

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 10
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 11
    :cond_1
    sget p3, Lk0/nt;->a:I

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    add-int/2addr p2, v8

    .line 12
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v4, p1, v2

    and-int/2addr v4, v3

    add-int/lit8 v6, p2, 0x4

    .line 15
    aget-byte v7, p1, v6

    and-int/2addr v7, v3

    add-int/2addr p2, v1

    .line 16
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    .line 17
    sget v8, Ll0/c0;->g:I

    if-ne v8, v0, :cond_2

    sget v8, Ll0/c0;->h:I

    if-ne v8, v4, :cond_2

    sget v8, Ll0/c0;->i:I

    if-ne v8, v7, :cond_2

    sget v8, Ll0/c0;->j:I

    if-eq v8, v1, :cond_3

    .line 18
    :cond_2
    sput v0, Ll0/c0;->g:I

    .line 19
    sput v4, Ll0/c0;->h:I

    .line 20
    sput v7, Ll0/c0;->i:I

    .line 21
    sput v1, Ll0/c0;->j:I

    .line 22
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_3

    .line 23
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 24
    sput v9, Ll0/c0;->k:I

    .line 25
    sget-object v0, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 26
    :cond_3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->k1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v2

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->m1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->m1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->k1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->k1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->m1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->m1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->k1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_4
    add-int/2addr p2, v2

    .line 34
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v0, p2, 0x2

    .line 35
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    if-eq v0, p3, :cond_6

    goto/16 :goto_7

    :cond_6
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/2addr p2, v1

    .line 36
    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x3e8

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_8
    const/16 p3, 0x1d

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 38
    aget-byte v3, p1, v2

    shr-int/2addr v3, v9

    and-int/lit8 v3, v3, 0xf

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 39
    aget-byte v0, p1, v2

    shr-int/2addr v0, v4

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x42

    new-array v0, v5, [I

    add-int/2addr p2, v8

    .line 40
    aget-byte v2, p1, p2

    shr-int/2addr v2, v7

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    .line 41
    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v5, [I

    .line 42
    aget-byte v2, p1, p2

    shr-int/lit8 v1, v2, 0x5

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    .line 43
    aget-byte p1, p1, p2

    shr-int/2addr p1, v9

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 44
    :cond_9
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 47
    iput p2, p0, Lk0/p9;->c:I

    move p2, v4

    .line 48
    :goto_1
    iget-object p3, p0, Lk0/p9;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 49
    iget v0, p0, Lk0/p9;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_b

    if-eqz v0, :cond_c

    .line 50
    iput p2, p0, Lk0/p9;->b:I

    goto :goto_2

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 51
    :cond_c
    :goto_2
    iget v0, p0, Lk0/p9;->c:I

    packed-switch v0, :pswitch_data_1

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_11

    .line 52
    array-length p1, p3

    if-ge p2, p1, :cond_14

    .line 53
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :pswitch_3
    move p2, v4

    :goto_3
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_d

    .line 54
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 55
    :cond_d
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :pswitch_4
    move p2, v4

    :goto_4
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_e

    .line 56
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 57
    :cond_e
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :pswitch_5
    move p2, v4

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_f

    .line 58
    invoke-static {v7, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 59
    :cond_f
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :pswitch_6
    move p2, v4

    :goto_6
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_10

    .line 60
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 61
    :cond_10
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_11
    if-nez p1, :cond_14

    .line 62
    iget p1, p0, Lk0/p9;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_12

    if-eq p1, v3, :cond_12

    .line 63
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 64
    :cond_12
    iput v3, p0, Lk0/p9;->b:I

    goto :goto_7

    :cond_13
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 65
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 66
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 67
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 68
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 69
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 70
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 71
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_14
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8011f -> :sswitch_0
        0x9011f -> :sswitch_0
        0xa011f -> :sswitch_0
        0xb011f -> :sswitch_0
        0xc011f -> :sswitch_0
        0xd011f -> :sswitch_0
        0xe011f -> :sswitch_0
        0xf011f -> :sswitch_0
        0x10011f -> :sswitch_0
        0x11011f -> :sswitch_0
        0x12011f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/p9;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/p9;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/p9;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/p9;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/p9;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6d

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v0, p1, v3

    const/16 p3, -0x7b

    aput p3, p1, v4

    aput v4, p1, v2

    .line 1
    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, v3

    const/16 v5, 0x8

    if-ne p1, v5, :cond_2

    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, -0x7c

    aput v0, p1, v4

    aput v2, p1, v2

    .line 4
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, -0x3a

    aput v0, p1, v4

    aput v2, p1, v2

    .line 5
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x8
        0xaa
    .end array-data
.end method
