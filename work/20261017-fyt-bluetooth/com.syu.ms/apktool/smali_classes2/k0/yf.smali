.class public Lk0/yf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/yf;->c:I

    const/16 v2, 0x18

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

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v19, 0x15

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v19, 0x16

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v19, 0x17

    aput-object v4, v2, v19

    iput-object v2, v0, Lk0/yf;->d:[[I

    .line 4
    iput v1, v0, Lk0/yf;->f:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_18

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v2, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v2, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v2, v8

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v2, v9

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v2, v10

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v2, v11

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v2, v12

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v2, v13

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v2, v14

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v2, v16

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v2, v17

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v2, v18

    iput-object v2, v0, Lk0/yf;->g:[[I

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
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x10
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x40
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x19
        0x37
    .end array-data

    :array_12
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x22
        0x26
    .end array-data

    :array_15
    .array-data 4
        0x23
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x25
        0x18
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_19
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_20
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_21
    .array-data 4
        0xa
        0x15
    .end array-data

    :array_22
    .array-data 4
        0xb
        0xb
    .end array-data

    :array_23
    .array-data 4
        0xc
        0x26
    .end array-data

    :array_24
    .array-data 4
        0xd
        0x40
    .end array-data

    :array_25
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_26
    .array-data 4
        0x11
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x12
        0x37
    .end array-data
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

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->n:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v3, :cond_1b

    const/16 v8, 0x10

    if-eq v0, v8, :cond_16

    const/16 v8, 0x20

    if-eq v0, v8, :cond_d

    const/16 v1, 0x22

    const/4 v8, 0x5

    if-eq v0, v1, :cond_c

    const/16 v1, 0x24

    const/4 v5, 0x4

    if-eq v0, v1, :cond_a

    const/16 v1, 0x29

    if-eq v0, v1, :cond_9

    const/16 v1, 0x30

    if-eq v0, v1, :cond_8

    const/16 p3, 0x40

    if-eq v0, p3, :cond_0

    goto/16 :goto_b

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    if-nez v0, :cond_1

    const/16 p3, 0x63

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 3
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 4
    :cond_1
    aget-byte v0, p1, p3

    if-ne v0, v7, :cond_2

    const/16 p3, 0x64

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 5
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 6
    :cond_2
    aget-byte v0, p1, p3

    if-ne v0, v3, :cond_3

    const/16 p3, 0x65

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 7
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 8
    :cond_3
    aget-byte v0, p1, p3

    if-ne v0, v4, :cond_4

    const/16 p3, 0x66

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 9
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 10
    :cond_4
    aget-byte v0, p1, p3

    if-ne v0, v5, :cond_5

    const/16 p3, 0x67

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 11
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 12
    :cond_5
    aget-byte v0, p1, p3

    if-ne v0, v8, :cond_6

    const/16 p3, 0x68

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 13
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 14
    :cond_6
    aget-byte v0, p1, p3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/16 p3, 0x69

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 15
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 16
    :cond_7
    aget-byte p3, p1, p3

    if-ne p3, v2, :cond_24

    const/16 p3, 0x6a

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 17
    aget-byte p1, p1, p2

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 18
    :cond_8
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 19
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const p2, 0x8000

    const/16 v0, 0x20a8

    invoke-static {p3, p1, p2, v6, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_b

    :cond_a
    add-int/2addr p2, v3

    .line 20
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 21
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_b

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 22
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 23
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_b
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 24
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 25
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 26
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 27
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 28
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_c
    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 30
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 31
    aget-byte v1, p1, v1

    add-int/2addr p2, v8

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 33
    invoke-static {p2}, Ll0/c0;->L0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->R2(I)V

    and-int/lit16 p2, v0, 0xff

    .line 34
    invoke-static {p2}, Ll0/c0;->L0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->S2(I)V

    and-int/lit16 p2, v1, 0xff

    .line 35
    invoke-static {p2}, Ll0/c0;->L0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    and-int/2addr p1, v5

    .line 36
    invoke-static {p1}, Ll0/c0;->L0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 38
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 39
    iput p2, p0, Lk0/yf;->c:I

    move p2, v6

    .line 40
    :goto_1
    iget-object p3, p0, Lk0/yf;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_f

    .line 41
    iget v0, p0, Lk0/yf;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v6

    if-ne v0, v3, :cond_e

    if-eqz v0, :cond_f

    .line 42
    iput p2, p0, Lk0/yf;->b:I

    goto :goto_2

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 43
    :cond_f
    :goto_2
    iget v0, p0, Lk0/yf;->c:I

    if-eq v0, v8, :cond_14

    const/16 v2, 0x21

    if-eq v0, v2, :cond_12

    and-int/2addr p1, v5

    if-ne p1, v7, :cond_10

    .line 44
    array-length p1, p3

    if-ge p2, p1, :cond_24

    .line 45
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_10
    if-nez p1, :cond_24

    .line 46
    iget p1, p0, Lk0/yf;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_11

    if-eq p1, v5, :cond_11

    .line 47
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 48
    :cond_11
    iput v5, p0, Lk0/yf;->b:I

    goto/16 :goto_b

    :cond_12
    move p2, v6

    :goto_3
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_13

    .line 49
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 50
    :cond_13
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_14
    move p2, v6

    :goto_4
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_15

    .line 51
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 52
    :cond_15
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_16
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 54
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 55
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 56
    aget-byte v2, p1, v2

    const/16 v3, 0x4b

    new-array v4, v7, [I

    and-int/2addr p3, v5

    aput p3, v4, v6

    .line 57
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 58
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 59
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v7

    aput v3, p3, v6

    .line 60
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 61
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 62
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 63
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    shr-int/lit8 v3, v0, 0x1

    and-int/2addr v3, v7

    aput v3, p3, v6

    const/16 v3, 0xa

    .line 64
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v4, v7, [I

    shr-int/2addr v0, v6

    and-int/2addr v0, v7

    aput v0, v4, v6

    .line 65
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v7, [I

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v6

    .line 66
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p3, v2, 0xff

    const/16 v0, 0x1b

    if-eq p3, v7, :cond_18

    const/16 v1, 0x3d

    if-eq p3, v1, :cond_17

    new-array v1, v7, [I

    aput p3, v1, v6

    .line 67
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    new-array p3, v7, [I

    const/4 v1, -0x3

    aput v1, p3, v6

    .line 68
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_18
    new-array p3, v7, [I

    const/4 v1, -0x2

    aput v1, p3, v6

    .line 69
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 p2, p2, 0x9

    .line 70
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0xff

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_19

    rsub-int p2, p2, 0x100

    move v6, v7

    :cond_19
    if-eqz v6, :cond_1a

    mul-int/2addr p2, v3

    rsub-int p1, p2, 0x3e8

    goto :goto_6

    :cond_1a
    mul-int/2addr p2, v3

    add-int/lit16 p1, p2, 0x3e8

    .line 71
    :goto_6
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    :cond_1b
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 73
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 74
    iput p2, p0, Lk0/yf;->f:I

    move p2, v6

    .line 75
    :goto_7
    iget-object p3, p0, Lk0/yf;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_1d

    .line 76
    iget v0, p0, Lk0/yf;->f:I

    aget-object v8, p3, p2

    aget v8, v8, v6

    if-ne v0, v8, :cond_1c

    if-eqz v0, :cond_1d

    .line 77
    iput p2, p0, Lk0/yf;->e:I

    goto :goto_8

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 78
    :cond_1d
    :goto_8
    iget v0, p0, Lk0/yf;->f:I

    if-eq v0, v3, :cond_22

    if-eq v0, v4, :cond_20

    and-int/2addr p1, v5

    if-ne p1, v7, :cond_1e

    .line 79
    array-length p1, p3

    if-ge p2, p1, :cond_24

    .line 80
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_1e
    if-nez p1, :cond_24

    .line 81
    iget p1, p0, Lk0/yf;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_1f

    if-eq p1, v5, :cond_1f

    .line 82
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 83
    :cond_1f
    iput v5, p0, Lk0/yf;->e:I

    goto :goto_b

    :cond_20
    move p2, v6

    :goto_9
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_21

    .line 84
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 85
    :cond_21
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_22
    move p2, v6

    :goto_a
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_23

    .line 86
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 87
    :cond_23
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    :cond_24
    :goto_b
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6b

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
    .locals 2

    const/4 p3, 0x5

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    new-array p1, p3, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    array-length p1, p2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    new-array p1, p3, [I

    const/16 p3, 0xe3

    const/4 v1, 0x0

    aput p3, p1, v1

    const/16 p3, 0xc6

    aput p3, p1, p4

    aput v0, p1, v0

    const/4 p3, 0x3

    .line 3
    aget v0, p2, v1

    int-to-byte v0, v0

    aput v0, p1, p3

    const/4 p3, 0x4

    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x40
        0x0
    .end array-data
.end method
