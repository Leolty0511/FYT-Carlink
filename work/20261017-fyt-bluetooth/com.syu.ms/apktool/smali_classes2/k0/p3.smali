.class public Lk0/p3;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static m:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


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

    iput-object v0, p0, Lk0/p3;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/p3;->c:I

    const/16 v1, 0xff

    .line 4
    iput v1, p0, Lk0/p3;->g:I

    const/16 v1, 0x2c

    new-array v1, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v1, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x3

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x4

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v4, 0x5

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xf

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    const/16 v4, 0x10

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v4, 0x11

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v4, 0x12

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v4, 0x13

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v4, 0x14

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v4, 0x15

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v4, 0x16

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v4, 0x17

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v4, 0x18

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v4, 0x19

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v4, 0x1a

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v4, 0x1b

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v4, 0x1c

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v4, 0x1d

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v4, 0x1e

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    const/16 v4, 0x1f

    aput-object v0, v1, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_21

    const/16 v2, 0x21

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    const/16 v2, 0x22

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_23

    const/16 v2, 0x23

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_24

    const/16 v2, 0x24

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_25

    const/16 v2, 0x25

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_26

    const/16 v2, 0x26

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_27

    const/16 v2, 0x27

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_28

    const/16 v2, 0x28

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_29

    const/16 v2, 0x29

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_2a

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_2b

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/p3;->h:[[I

    .line 6
    iput v5, p0, Lk0/p3;->i:I

    .line 7
    iput v5, p0, Lk0/p3;->j:I

    .line 8
    new-instance v0, Lk0/p3$a;

    invoke-direct {v0, p0}, Lk0/p3$a;-><init>(Lk0/p3;)V

    iput-object v0, p0, Lk0/p3;->k:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/p3$b;

    invoke-direct {v0, p0}, Lk0/p3$b;-><init>(Lk0/p3;)V

    iput-object v0, p0, Lk0/p3;->l:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
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
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x87
        0x15
    .end array-data

    :array_13
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x97
        0x22
    .end array-data

    :array_15
    .array-data 4
        0x98
        0x23
    .end array-data

    :array_16
    .array-data 4
        0x99
        0x20
    .end array-data

    :array_17
    .array-data 4
        0x9a
        0x21
    .end array-data

    :array_18
    .array-data 4
        0xa0
        0x1
    .end array-data

    :array_19
    .array-data 4
        0xa4
        0x36
    .end array-data

    :array_1a
    .array-data 4
        0xa8
        0x12
    .end array-data

    :array_1b
    .array-data 4
        0xaa
        0x1d
    .end array-data

    :array_1c
    .array-data 4
        0xac
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0xaf
        0x5
    .end array-data

    :array_1e
    .array-data 4
        0xb3
        0x18
    .end array-data

    :array_1f
    .array-data 4
        0xb4
        0x12
    .end array-data

    :array_20
    .array-data 4
        0xb5
        0x1a
    .end array-data

    :array_21
    .array-data 4
        0xb7
        0x37
    .end array-data

    :array_22
    .array-data 4
        0xbf
        0x5
    .end array-data

    :array_23
    .array-data 4
        0xc2
        0x26
    .end array-data

    :array_24
    .array-data 4
        0xc3
        0xc
    .end array-data

    :array_25
    .array-data 4
        0xc5
        0x7
    .end array-data

    :array_26
    .array-data 4
        0xc6
        0x8
    .end array-data

    :array_27
    .array-data 4
        0xc7
        0x12
    .end array-data

    :array_28
    .array-data 4
        0xc8
        0x1a
    .end array-data

    :array_29
    .array-data 4
        0xc9
        0x15
    .end array-data

    :array_2a
    .array-data 4
        0xca
        0x37
    .end array-data

    :array_2b
    .array-data 4
        0xcb
        0x1
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b3(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static c3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d3(I)V
    .locals 3

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_2

    .line 1
    div-int/lit8 v0, p0, 0x2

    .line 2
    rem-int/lit8 v1, p0, 0x2

    const/16 v2, 0x28

    if-ge p0, v2, :cond_1

    if-lez v1, :cond_0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v0

    :goto_0
    mul-int/lit8 v2, v2, 0xa

    rsub-int p0, v2, 0x3e8

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr p0, v1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, v1, 0x5

    add-int p0, v0, v1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0x258

    if-le p0, v0, :cond_3

    .line 3
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_3
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

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/p3;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 7
    iget-object v0, p0, Lk0/p3;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/p3;->b:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/p3;->e3(I)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/p3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_22

    const/16 v1, -0x10

    if-eq v0, v1, :cond_21

    const/16 p3, 0x31

    const/16 v1, 0x12

    const/16 v7, 0x41

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eq v0, p3, :cond_16

    if-eq v0, v7, :cond_13

    const/16 p3, 0x11

    if-eq v0, p3, :cond_d

    if-eq v0, v1, :cond_b

    const/16 p3, 0x21

    if-eq v0, p3, :cond_6

    const/16 p3, 0x22

    if-eq v0, p3, :cond_0

    goto/16 :goto_14

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_27

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 4
    aget-byte p1, p1, p2

    if-eq p3, v6, :cond_1

    goto/16 :goto_14

    .line 5
    :cond_1
    iget p2, p0, Lk0/p3;->i:I

    if-eq p1, p2, :cond_27

    if-le p1, p2, :cond_3

    move p2, v5

    .line 6
    :goto_0
    iget p3, p0, Lk0/p3;->i:I

    sub-int p3, p1, p3

    const/4 v0, 0x7

    if-ge p2, p3, :cond_2

    .line 7
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge p1, p2, :cond_5

    move p2, v5

    .line 9
    :goto_1
    iget p3, p0, Lk0/p3;->i:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_4

    .line 10
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput p1, p0, Lk0/p3;->i:I

    goto/16 :goto_14

    .line 13
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_27

    add-int/lit8 p3, p2, 0x3

    .line 14
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 15
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lk0/p3;->f:I

    move p1, v5

    .line 16
    :goto_3
    iget-object p2, p0, Lk0/p3;->h:[[I

    array-length v0, p2

    if-ge p1, v0, :cond_8

    .line 17
    iget v0, p0, Lk0/p3;->f:I

    aget-object v1, p2, p1

    aget v1, v1, v5

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 18
    iput p1, p0, Lk0/p3;->g:I

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    and-int/2addr p3, v4

    if-eqz p3, :cond_9

    .line 19
    array-length p3, p2

    if-ge p1, p3, :cond_27

    .line 20
    aget-object p1, p2, p1

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 21
    :cond_9
    iget p1, p0, Lk0/p3;->g:I

    array-length p3, p2

    if-ge p1, p3, :cond_a

    if-eq p1, v4, :cond_a

    .line 22
    aget-object p1, p2, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 23
    :cond_a
    iput v4, p0, Lk0/p3;->g:I

    goto/16 :goto_14

    :cond_b
    add-int/2addr p2, v9

    .line 24
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_c

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 26
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 27
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 28
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 29
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 30
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 31
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v6

    aput p1, p2, v5

    const/4 p1, 0x5

    .line 32
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 33
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_27

    add-int/lit8 p3, p2, 0x4

    .line 34
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 35
    aget-byte v0, p1, v0

    and-int/2addr p3, v4

    .line 36
    iput p3, p0, Lk0/p3;->e:I

    move p3, v5

    .line 37
    :goto_6
    iget-object v1, p0, Lk0/p3;->h:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_f

    .line 38
    iget v2, p0, Lk0/p3;->e:I

    aget-object v3, v1, p3

    aget v3, v3, v5

    if-ne v2, v3, :cond_e

    if-eqz v2, :cond_f

    .line 39
    iput p3, p0, Lk0/p3;->d:I

    goto :goto_7

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    and-int/2addr v0, v4

    if-eqz v0, :cond_10

    .line 40
    array-length v0, v1

    if-ge p3, v0, :cond_12

    .line 41
    aget-object p3, v1, p3

    aget p3, p3, v6

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 42
    :cond_10
    iget p3, p0, Lk0/p3;->d:I

    array-length v0, v1

    if-ge p3, v0, :cond_11

    if-eq p3, v4, :cond_11

    .line 43
    aget-object p3, v1, p3

    aget p3, p3, v6

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 44
    :cond_11
    iput v4, p0, Lk0/p3;->d:I

    :cond_12
    :goto_8
    add-int/lit8 p3, p2, 0x9

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_14

    :cond_13
    add-int/lit8 p3, p2, 0x2

    .line 46
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/p3;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 47
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/p3;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/p3;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/p3;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 50
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    invoke-static {v0}, Lk0/p3;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x7

    .line 51
    aget-byte v1, p1, v0

    and-int/2addr v1, v4

    invoke-static {v1}, Lk0/p3;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x8

    .line 52
    aget-byte v2, p1, v1

    and-int/2addr v2, v4

    invoke-static {v2}, Lk0/p3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 53
    aget-byte v2, p1, p2

    and-int/2addr v2, v4

    invoke-static {v2}, Lk0/p3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    .line 54
    aget-byte p3, p1, p3

    if-nez p3, :cond_15

    aget-byte p3, p1, v0

    if-nez p3, :cond_15

    aget-byte p3, p1, v1

    if-nez p3, :cond_15

    aget-byte p1, p1, p2

    if-eqz p1, :cond_14

    goto :goto_9

    .line 55
    :cond_14
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto/16 :goto_14

    .line 56
    :cond_15
    :goto_9
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_27

    .line 57
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 58
    sput v9, Ll0/c0;->k:I

    .line 59
    sget-object p1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_14

    :cond_16
    add-int/lit8 p3, p2, 0x2

    .line 60
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_17

    move v0, v5

    goto :goto_a

    :cond_17
    move v0, v6

    :goto_a
    new-array v3, v6, [I

    aput v0, v3, v5

    const/16 v0, 0xa

    .line 61
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v10, v6, [I

    shr-int/lit8 v11, p3, 0x2

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 62
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v10, v6, [I

    and-int/2addr p3, v2

    if-nez p3, :cond_18

    move p3, v5

    goto :goto_b

    :cond_18
    move p3, v6

    :goto_b
    aput p3, v10, v5

    .line 63
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 64
    aget-byte p3, p1, p3

    const/16 v3, 0xc

    new-array v10, v6, [I

    and-int/lit8 v11, p3, 0x10

    if-nez v11, :cond_19

    move v11, v6

    goto :goto_c

    :cond_19
    move v11, v5

    :goto_c
    aput v11, v10, v5

    .line 65
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v6

    aput p3, v3, v5

    const/16 p3, 0xd

    .line 66
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 67
    aget-byte v2, p1, v2

    new-array v3, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v3, v5

    const/16 v10, 0x10

    .line 68
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    aput v2, v3, v5

    .line 69
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 70
    aget-byte v2, p1, v2

    if-eq v2, v0, :cond_1a

    packed-switch v2, :pswitch_data_0

    move v0, v5

    :goto_d
    move v2, v0

    :goto_e
    move v3, v2

    goto :goto_f

    :pswitch_0
    move v3, v5

    move v0, v6

    move v2, v0

    goto :goto_f

    :pswitch_1
    move v0, v5

    move v3, v0

    move v2, v6

    goto :goto_f

    :pswitch_2
    move v0, v5

    move v2, v6

    goto :goto_e

    :pswitch_3
    move v2, v5

    move v0, v6

    move v3, v0

    goto :goto_f

    :pswitch_4
    move v0, v5

    move v2, v0

    move v3, v6

    goto :goto_f

    :pswitch_5
    move v2, v5

    move v3, v2

    move v0, v6

    goto :goto_f

    :cond_1a
    move v0, v6

    goto :goto_d

    :goto_f
    new-array v7, v6, [I

    aput v0, v7, v5

    .line 71
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 72
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 73
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x7

    .line 74
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    if-le v0, v8, :cond_1b

    goto :goto_10

    :cond_1b
    move v8, v0

    :goto_10
    const/16 v0, 0x15

    new-array v1, v6, [I

    aput v8, v1, v5

    .line 75
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x8

    .line 76
    aget-byte v1, p1, v0

    add-int/lit8 v2, p2, 0x9

    .line 77
    aget-byte v3, p1, v2

    const-string v7, "persist.fyt.reversetemp"

    .line 78
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 79
    aget-byte v1, p1, v2

    .line 80
    aget-byte v3, p1, v0

    :cond_1c
    const/4 v0, -0x2

    const/4 v2, -0x3

    const/4 v7, -0x1

    const/16 v8, 0x1b

    if-eq v1, v7, :cond_1e

    if-eqz v1, :cond_1d

    new-array v9, v6, [I

    and-int/2addr v1, v4

    aput v1, v9, v5

    .line 81
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_1d
    new-array v1, v6, [I

    aput v0, v1, v5

    .line 82
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_1e
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 83
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_11
    const/16 v1, 0x1c

    if-eq v3, v7, :cond_20

    if-eqz v3, :cond_1f

    new-array v0, v6, [I

    and-int/lit16 v2, v3, 0xff

    aput v2, v0, v5

    .line 84
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_1f
    new-array v2, v6, [I

    aput v0, v2, v5

    .line 85
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_20
    new-array v0, v6, [I

    aput v2, v0, v5

    .line 86
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 87
    :goto_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/2addr p2, p3

    .line 88
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    .line 89
    invoke-static {p1}, Lk0/p3;->d3(I)V

    goto :goto_14

    .line 90
    :cond_21
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_14

    .line 91
    :cond_22
    sget p3, Lk0/nt;->c:I

    if-ne p3, v2, :cond_23

    goto :goto_14

    :cond_23
    add-int/lit8 p3, p2, 0x3

    .line 92
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    sub-int/2addr p3, v6

    if-gez p3, :cond_24

    move p3, v5

    goto :goto_13

    :cond_24
    if-le p3, v3, :cond_25

    move p3, v3

    :cond_25
    :goto_13
    const/16 v0, 0x3f5

    new-array v1, v6, [I

    aput p3, v1, v5

    .line 93
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v3

    .line 94
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-eqz p1, :cond_26

    .line 95
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 96
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_14

    .line 97
    :cond_26
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 98
    invoke-static {}, Lk0/qt;->f()V

    :cond_27
    :goto_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/p3;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/p3;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/p3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 2
    aget p3, p2, p1

    if-gez p3, :cond_1

    .line 3
    aput p1, p2, p1

    goto :goto_0

    .line 4
    :cond_1
    aget p3, p2, p1

    const/4 p4, 0x2

    if-le p3, p4, :cond_2

    .line 5
    aput p4, p2, p1

    .line 6
    :cond_2
    :goto_0
    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    .line 7
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/p3;->e3(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final e3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/p3;->m:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    const/4 v3, 0x3

    const/16 v4, 0xa

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/p3;->b:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/p3;->m:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/p3;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
