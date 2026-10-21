.class public Lk0/hr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hr;->c:I

    const/16 v1, 0x15

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

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/hr;->d:[[I

    .line 4
    new-instance v0, Lk0/hr$a;

    invoke-direct {v0, p0}, Lk0/hr$a;-><init>(Lk0/hr;)V

    iput-object v0, p0, Lk0/hr;->e:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
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
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x3e
    .end array-data

    :array_11
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x15
        0xd
    .end array-data

    :array_13
    .array-data 4
        0x16
        0xd
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x3a
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 13

    if-eqz p1, :cond_10

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x21

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eq v2, v3, :cond_e

    const/16 v3, 0x22

    if-eq v2, v3, :cond_c

    const/16 v3, 0x26

    if-eq v2, v3, :cond_a

    const/16 v3, 0x27

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/16 v10, 0xc7

    const/16 v11, 0xe3

    const/4 v12, 0x5

    if-eq v2, v3, :cond_5

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    aget p1, p1, v4

    const/16 v2, 0x1b

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    const/16 v2, 0x9

    if-ge p1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    new-array v2, v5, [I

    aput v11, v2, v0

    aput v10, v2, v4

    aput v12, v2, v1

    aput v0, v2, v9

    aput v0, v2, v8

    aput v0, v2, v12

    aput v0, v2, v7

    aput p1, v2, v6

    .line 5
    invoke-static {v2}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-le p1, v4, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    new-array v2, v5, [I

    aput v11, v2, v0

    aput v10, v2, v4

    aput v12, v2, v1

    aput v0, v2, v9

    aput v0, v2, v8

    aput v0, v2, v12

    aput v0, v2, v7

    aput p1, v2, v6

    .line 8
    invoke-static {v2}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 9
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :cond_5
    aget p1, p1, v4

    const/4 v2, -0x2

    const/16 v3, 0x15

    if-eq p1, v2, :cond_8

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    goto/16 :goto_0

    .line 11
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    const/16 v2, 0xf

    if-ge p1, v2, :cond_7

    add-int/lit8 p1, p1, 0x1

    :cond_7
    new-array v2, v5, [I

    aput v11, v2, v0

    aput v10, v2, v4

    aput v12, v2, v1

    aput v0, v2, v9

    aput p1, v2, v8

    aput v0, v2, v12

    aput v0, v2, v7

    aput v0, v2, v6

    .line 12
    invoke-static {v2}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 13
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 14
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-lez p1, :cond_9

    add-int/lit8 p1, p1, -0x1

    :cond_9
    new-array v2, v5, [I

    aput v11, v2, v0

    aput v10, v2, v4

    aput v12, v2, v1

    aput v0, v2, v9

    aput p1, v2, v8

    aput v0, v2, v12

    aput v0, v2, v7

    aput v0, v2, v6

    .line 15
    invoke-static {v2}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 16
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :cond_a
    aget p1, p1, v4

    const/16 v0, 0xc

    if-eqz p1, :cond_b

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_10

    new-array p1, v5, [I

    .line 19
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 20
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :cond_b
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_10

    new-array p1, v5, [I

    .line 22
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 23
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 24
    :cond_c
    aget p1, p1, v4

    const/16 v0, 0xb

    if-eqz p1, :cond_d

    .line 25
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_10

    new-array p1, v5, [I

    .line 26
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 27
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 28
    :cond_d
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_10

    new-array p1, v5, [I

    .line 29
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 30
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 31
    :cond_e
    aget p1, p1, v4

    const/16 v0, 0xa

    if-eqz p1, :cond_f

    .line 32
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_10

    new-array p1, v5, [I

    .line 33
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 34
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 35
    :cond_f
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_10

    new-array p1, v5, [I

    .line 36
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v5, [I

    .line 37
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_10
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xc7
        0x5
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xc7
        0x5
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xc7
        0x5
        0x80
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xc7
        0x5
        0x80
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xc7
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
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
    iput v1, v0, Lk0/mt;->i:I

    const/16 v2, 0x9

    new-array v2, v2, [I

    .line 6
    fill-array-data v2, :array_0

    iput-object v2, v0, Lk0/mt;->m:[I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/hr;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    nop

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x21

    const/4 v6, 0x6

    const/4 v8, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v4, :cond_26

    const/16 v4, 0x50

    const/4 v12, 0x2

    if-eq v2, v4, :cond_24

    const/16 v4, 0x64

    const/16 v13, 0x7d

    const/4 v14, 0x0

    const v15, 0xff00

    const/16 v7, 0x8

    if-eq v2, v13, :cond_1f

    const/16 v13, 0x7f

    if-eq v2, v13, :cond_1e

    const/16 v5, 0x23

    const/16 v13, 0x10

    const/16 v9, 0xf

    if-eq v2, v5, :cond_15

    const/16 v5, 0x24

    if-eq v2, v5, :cond_13

    const/16 v5, 0x27

    if-eq v2, v5, :cond_12

    const/16 v5, 0x28

    if-eq v2, v5, :cond_e

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    const/16 v2, 0x73

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v15

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    const/16 v2, 0x72

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 3
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v15

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    move v2, v10

    :goto_0
    const/16 v4, 0x32

    if-ge v2, v4, :cond_2d

    .line 4
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x68

    new-array v6, v12, [I

    aput v2, v6, v10

    mul-int/lit8 v9, v2, 0x2

    add-int v9, p2, v9

    add-int/lit8 v13, v9, 0x2

    aget-byte v13, v1, v13

    shl-int/2addr v13, v7

    and-int/2addr v13, v15

    add-int/2addr v9, v8

    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    or-int/2addr v9, v13

    aput v9, v6, v11

    invoke-static {v4, v5, v6, v14, v14}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v5, p2, 0x3

    .line 6
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    add-int/lit8 v8, p2, 0x4

    .line 7
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    add-int/lit8 v12, p2, 0x5

    .line 8
    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    add-int/lit8 v6, p2, 0x6

    .line 9
    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    new-array v6, v11, [I

    and-int/2addr v2, v3

    shl-int/2addr v2, v13

    and-int/2addr v5, v3

    shl-int/2addr v5, v7

    or-int/2addr v2, v5

    and-int/lit16 v5, v8, 0xff

    or-int/2addr v2, v5

    aput v2, v6, v10

    .line 10
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v11, [I

    shr-int/lit8 v5, v12, 0x4

    and-int/2addr v5, v9

    aput v5, v4, v10

    .line 11
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v11, [I

    and-int/lit8 v5, v12, 0xf

    aput v5, v4, v10

    .line 12
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v11, [I

    and-int/2addr v1, v3

    aput v1, v4, v10

    .line 13
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    const/16 v2, 0x69

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 14
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    shl-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    shl-int/2addr v6, v7

    and-int/2addr v6, v15

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 15
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 16
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v15

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x8

    .line 17
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v15

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xa

    .line 18
    aget-byte v6, v1, v5

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v11, [I

    .line 19
    aget-byte v5, v1, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xb

    .line 20
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v11, [I

    .line 21
    aget-byte v5, v1, v5

    const/16 v6, 0x7f

    and-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v11, [I

    const/16 v5, 0xc

    add-int/lit8 v5, p2, 0xc

    .line 22
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const/16 v2, 0x62

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v11, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v11

    aput v1, v3, v10

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_2

    add-int/lit8 v2, p2, 0x3

    .line 27
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_0

    const/16 v2, 0x74

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 28
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_0
    const/4 v5, 0x4

    .line 29
    aget-byte v4, v1, v2

    if-ne v4, v12, :cond_1

    const/16 v2, 0x75

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 30
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 31
    :cond_1
    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_2d

    const/16 v2, 0x76

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 32
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 33
    :cond_2
    aget-byte v4, v1, v2

    if-ne v4, v12, :cond_6

    add-int/lit8 v2, p2, 0x3

    .line 34
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_3

    const/16 v2, 0x77

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 35
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_3
    const/4 v5, 0x4

    .line 36
    aget-byte v4, v1, v2

    if-ne v4, v12, :cond_4

    const/16 v2, 0x78

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 37
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 38
    :cond_4
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_5

    const/16 v2, 0x79

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 39
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 40
    :cond_5
    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_2d

    const/16 v2, 0x7a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 41
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 42
    :cond_6
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_8

    add-int/lit8 v2, p2, 0x3

    .line 43
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_7

    const/16 v2, 0x7b

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 44
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_7
    const/4 v5, 0x4

    .line 45
    aget-byte v2, v1, v2

    if-ne v2, v12, :cond_2d

    const/16 v2, 0x7c

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 46
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_8
    const/4 v5, 0x4

    .line 47
    aget-byte v4, v1, v2

    if-ne v4, v5, :cond_c

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_9

    new-array v2, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 49
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    aput v1, v2, v10

    const/16 v1, 0x7d

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 50
    :cond_9
    aget-byte v4, v1, v2

    if-ne v4, v12, :cond_a

    const/16 v2, 0x7e

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 51
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 52
    :cond_a
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_b

    new-array v2, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 53
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    aput v1, v2, v10

    const/16 v1, 0x7f

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 54
    :cond_b
    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_2d

    const/16 v2, 0x80

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 55
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 56
    :cond_c
    aget-byte v2, v1, v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2d

    add-int/lit8 v2, p2, 0x3

    .line 57
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_d

    const/16 v2, 0x81

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 58
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_d
    const/4 v5, 0x4

    .line 59
    aget-byte v2, v1, v2

    if-ne v2, v12, :cond_2d

    const/16 v2, 0x82

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 60
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x3

    .line 62
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x4

    .line 63
    aget-byte v8, v1, v7

    and-int/2addr v8, v3

    const/4 v9, 0x5

    add-int/lit8 v9, p2, 0x5

    .line 64
    aget-byte v12, v1, v9

    and-int/2addr v3, v12

    if-nez v4, :cond_f

    if-nez v6, :cond_f

    if-nez v8, :cond_f

    if-nez v3, :cond_f

    .line 65
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 66
    :cond_f
    sget v10, Ll0/c0;->g:I

    if-ne v10, v4, :cond_10

    sget v10, Ll0/c0;->h:I

    if-ne v10, v6, :cond_10

    sget v10, Ll0/c0;->i:I

    if-ne v10, v8, :cond_10

    sget v10, Ll0/c0;->j:I

    if-eq v10, v3, :cond_11

    .line 67
    :cond_10
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_11

    .line 68
    invoke-static {v11}, Lu0/d;->C2(I)V

    const/4 v10, 0x4

    .line 69
    sput v10, Ll0/c0;->k:I

    .line 70
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 71
    :cond_11
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 72
    sput v6, Ll0/c0;->h:I

    .line 73
    sput v8, Ll0/c0;->i:I

    .line 74
    sput v3, Ll0/c0;->j:I

    .line 75
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 76
    aget-byte v2, v1, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 77
    aget-byte v2, v1, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 78
    aget-byte v1, v1, v9

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 81
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 82
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 84
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 85
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 86
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_14
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 87
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 88
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/4 v3, 0x4

    .line 89
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 90
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 91
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v2, v10

    const/4 v1, 0x5

    .line 92
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x4

    .line 95
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    const/4 v6, 0x5

    add-int/lit8 v7, p2, 0x5

    .line 96
    aget-byte v1, v1, v7

    and-int/2addr v1, v3

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v11

    aput v7, v6, v10

    const/16 v7, 0xa

    .line 97
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v11, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v11

    aput v14, v6, v10

    const/16 v14, 0xb

    .line 98
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v11, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v11

    aput v14, v6, v10

    const/16 v14, 0xc

    .line 99
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v14, v11, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v11

    aput v15, v14, v10

    .line 100
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v6, v11, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v11

    aput v14, v6, v10

    .line 101
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x35

    new-array v13, v11, [I

    shr-int/lit8 v14, v2, 0x2

    and-int/2addr v14, v11

    aput v14, v13, v10

    .line 102
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x3f

    new-array v13, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    aput v2, v13, v10

    .line 103
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    if-eq v4, v11, :cond_1a

    if-eq v4, v12, :cond_19

    if-eq v4, v8, :cond_18

    const/4 v2, 0x4

    if-eq v4, v2, :cond_17

    const/4 v2, 0x5

    if-eq v4, v2, :cond_16

    move v2, v10

    move v4, v2

    :goto_3
    move v6, v4

    goto :goto_4

    :cond_16
    move v4, v10

    move v6, v4

    move v2, v11

    goto :goto_4

    :cond_17
    move v4, v10

    move v2, v11

    move v6, v2

    goto :goto_4

    :cond_18
    move v2, v10

    move v4, v2

    move v6, v11

    goto :goto_4

    :cond_19
    move v2, v10

    move v4, v11

    goto :goto_3

    :cond_1a
    move v2, v10

    move v6, v2

    move v4, v11

    :goto_4
    new-array v8, v11, [I

    aput v2, v8, v10

    .line 104
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x12

    new-array v12, v11, [I

    aput v2, v12, v10

    .line 105
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v11, [I

    aput v4, v8, v10

    .line 106
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v11, [I

    aput v6, v4, v10

    .line 107
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v11, [I

    aput v5, v4, v10

    .line 108
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    if-eqz v1, :cond_1d

    if-eq v1, v3, :cond_1c

    if-lt v1, v11, :cond_1b

    if-gt v1, v9, :cond_1b

    new-array v3, v11, [I

    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, 0xaa

    aput v1, v3, v10

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1b
    new-array v1, v11, [I

    const/4 v3, -0x1

    aput v3, v1, v10

    .line 110
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1c
    new-array v1, v11, [I

    const/4 v3, -0x3

    aput v3, v1, v10

    .line 111
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1d
    new-array v1, v11, [I

    const/4 v3, -0x2

    aput v3, v1, v10

    .line 112
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 113
    :cond_1e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v11, :cond_22

    if-eq v2, v8, :cond_21

    if-eq v2, v7, :cond_20

    goto/16 :goto_7

    :cond_20
    add-int/lit8 v2, p2, 0x3

    .line 115
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 116
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 117
    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_21
    add-int/lit8 v2, p2, 0x4

    .line 118
    aget-byte v2, v1, v2

    shl-int/2addr v2, v7

    and-int/2addr v2, v15

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/2addr v1, v4

    const/16 v2, 0x407

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 120
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v12, [I

    aput v11, v4, v10

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v14, v14}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_22
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 121
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_23

    add-int/lit8 v2, p2, 0x3

    .line 122
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    invoke-static {v3, v1, v10}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_23
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 123
    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    invoke-static {v4, v1, v10}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 124
    aget-byte v1, v1, v2

    if-ne v1, v11, :cond_25

    .line 125
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 126
    :cond_25
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    :cond_26
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 128
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 129
    iput v2, v0, Lk0/hr;->c:I

    move v2, v10

    .line 130
    :goto_5
    iget-object v4, v0, Lk0/hr;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_28

    .line 131
    iget v5, v0, Lk0/hr;->c:I

    aget-object v7, v4, v2

    aget v7, v7, v10

    if-ne v5, v7, :cond_27

    if-eqz v5, :cond_28

    .line 132
    iput v2, v0, Lk0/hr;->b:I

    goto :goto_6

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    :cond_28
    :goto_6
    iget v5, v0, Lk0/hr;->c:I

    if-eq v5, v6, :cond_2b

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_29

    .line 134
    array-length v1, v4

    if-ge v2, v1, :cond_2d

    .line 135
    aget-object v1, v4, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_29
    if-nez v1, :cond_2d

    .line 136
    iget v1, v0, Lk0/hr;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_2a

    if-eq v1, v3, :cond_2a

    .line 137
    aget-object v1, v4, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 138
    :cond_2a
    iput v3, v0, Lk0/hr;->b:I

    goto :goto_7

    :cond_2b
    and-int/2addr v1, v3

    if-ne v1, v11, :cond_2d

    .line 139
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_2c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2c

    const/16 v1, 0xc

    .line 140
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 141
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_2c
    const/16 v1, 0x1a

    .line 142
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 143
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    :cond_2d
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hr;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x83

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    const/4 v5, 0x6

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lt p1, v4, :cond_3

    new-array p1, v5, [I

    aput p3, p1, v3

    const/16 p3, 0x86

    aput p3, p1, v2

    aput v0, p1, v4

    .line 2
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lt p1, v4, :cond_3

    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0xc7

    aput p3, p1, v2

    aput p4, p1, v4

    .line 4
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v0

    aput p3, p1, v5

    const/4 p3, 0x7

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lt p1, v4, :cond_3

    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, 0xa9

    aput p3, p1, v2

    aput v4, p1, v4

    .line 6
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method
