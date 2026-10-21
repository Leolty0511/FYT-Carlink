.class public Lk0/cs;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/cs;->c:I

    const/16 v1, 0xc

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

    const/16 v2, 0xb

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/cs;->d:[[I

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x3e
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x7
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x8
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 8

    if-eqz p1, :cond_f

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x29

    const/4 v3, 0x1

    if-eq v0, v2, :cond_d

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x44

    const/4 v2, 0x5

    const/16 v4, 0x9

    const/16 v5, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0xc

    const/16 v6, 0xd

    const/16 v7, 0xb

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v2}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 5
    invoke-virtual {p0, p1}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_f

    .line 8
    invoke-virtual {p0, v5}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_f

    .line 10
    invoke-virtual {p0, v5}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    aget p1, p1, v3

    const/16 v0, 0x10

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_f

    .line 13
    invoke-virtual {p0, v6}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 14
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_f

    .line 15
    invoke-virtual {p0, v6}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_3
    aget p1, p1, v3

    const/16 v0, 0x41

    if-eqz p1, :cond_5

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_f

    .line 18
    invoke-virtual {p0, v1}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 19
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_f

    .line 20
    invoke-virtual {p0, v1}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 21
    :pswitch_4
    aget p1, p1, v3

    if-eqz p1, :cond_6

    .line 22
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-nez p1, :cond_f

    .line 23
    invoke-virtual {p0, v7}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 24
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-ne p1, v3, :cond_f

    .line 25
    invoke-virtual {p0, v7}, Lk0/cs;->a3(I)V

    goto/16 :goto_0

    .line 26
    :pswitch_5
    aget p1, p1, v3

    if-eqz p1, :cond_7

    .line 27
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_f

    .line 28
    invoke-virtual {p0, v4}, Lk0/cs;->a3(I)V

    goto :goto_0

    .line 29
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v3, :cond_f

    .line 30
    invoke-virtual {p0, v4}, Lk0/cs;->a3(I)V

    goto :goto_0

    .line 31
    :pswitch_6
    aget p1, p1, v3

    const/4 v0, 0x7

    if-eqz p1, :cond_8

    .line 32
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_f

    .line 33
    invoke-virtual {p0, v0}, Lk0/cs;->a3(I)V

    goto :goto_0

    .line 34
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v3, :cond_f

    .line 35
    invoke-virtual {p0, v0}, Lk0/cs;->a3(I)V

    goto :goto_0

    .line 36
    :cond_9
    aget v0, p1, v3

    if-ne v0, v4, :cond_a

    new-array p1, v2, [I

    .line 37
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 38
    :cond_a
    aget p1, p1, v3

    if-ne p1, v5, :cond_f

    new-array p1, v2, [I

    .line 39
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 40
    :cond_b
    aget p1, p1, v3

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    .line 41
    invoke-virtual {p0, p1}, Lk0/cs;->a3(I)V

    goto :goto_0

    :cond_c
    const/4 p1, 0x4

    .line 42
    invoke-virtual {p0, p1}, Lk0/cs;->a3(I)V

    goto :goto_0

    .line 43
    :cond_d
    aget p1, p1, v3

    if-eqz p1, :cond_e

    .line 44
    invoke-virtual {p0, v3}, Lk0/cs;->a3(I)V

    goto :goto_0

    .line 45
    :cond_e
    invoke-virtual {p0, v1}, Lk0/cs;->a3(I)V

    :cond_f
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x5
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

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
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v4, 0xb

    const/16 v5, 0xc

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_16

    const/16 v3, 0x22

    const/4 v11, 0x4

    if-eq v2, v3, :cond_12

    const/16 v3, 0x24

    const/4 v12, 0x5

    const/4 v13, 0x2

    if-eq v2, v3, :cond_10

    const/16 v3, 0x27

    const/16 v14, 0x25

    const/4 v15, -0x1

    if-eq v2, v3, :cond_8

    const/16 v3, 0x29

    if-eq v2, v3, :cond_7

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6

    const/16 v3, 0x35

    if-eq v2, v3, :cond_1

    const/16 v3, 0x38

    if-eq v2, v3, :cond_0

    goto/16 :goto_d

    :cond_0
    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    .line 3
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    .line 4
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    .line 5
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v10

    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v10

    invoke-static {v3, v2, v9}, Ll0/c0;->a(III)V

    add-int/lit8 v2, p2, 0x8

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-eq v2, v8, :cond_5

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    sget-object v3, Lk0/nt;->g:[I

    aget v3, v3, v14

    if-eq v3, v10, :cond_4

    const-string v3, "persist.fyt.temperature"

    .line 9
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_3

    goto :goto_0

    :cond_3
    mul-int/2addr v2, v12

    add-int/lit16 v2, v2, 0x258

    goto :goto_1

    :cond_4
    :goto_0
    mul-int/lit8 v2, v2, 0x9

    add-int/lit16 v2, v2, 0x258

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    and-int/2addr v2, v15

    .line 10
    :goto_1
    invoke-static {v2}, Lu0/d;->B3(I)V

    goto :goto_3

    .line 11
    :cond_5
    :goto_2
    invoke-static {v9}, Lu0/d;->A3(I)V

    :goto_3
    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 15
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    .line 16
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 17
    :cond_6
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_7
    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x22b

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_d

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    .line 20
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    add-int/lit8 v6, p2, 0x4

    .line 21
    aget-byte v11, v1, v6

    and-int/2addr v11, v8

    add-int/lit8 v13, p2, 0x5

    .line 22
    aget-byte v15, v1, v13

    and-int/2addr v15, v8

    add-int/lit8 v16, p2, 0x6

    .line 23
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    const/16 v8, 0xa

    new-array v14, v10, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v9

    .line 24
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    new-array v8, v10, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v10

    aput v14, v8, v9

    .line 25
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v10

    aput v8, v4, v9

    .line 26
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    const/16 v5, 0xd

    .line 27
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v5, v10, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v10

    aput v8, v5, v9

    .line 28
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v5, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 29
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 30
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 31
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 32
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v10, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v9

    .line 33
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v12, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0x25

    .line 34
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 35
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    aget-byte v2, v1, v13

    const/16 v3, 0xff

    and-int/lit16 v11, v2, 0xff

    .line 37
    aget-byte v1, v1, v6

    and-int/lit16 v15, v1, 0xff

    goto :goto_4

    :cond_9
    const/16 v3, 0xff

    :goto_4
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v4, 0x7f

    const/16 v5, 0x1b

    if-eqz v11, :cond_c

    if-eq v11, v4, :cond_b

    if-eq v11, v3, :cond_a

    new-array v3, v10, [I

    const/4 v6, 0x5

    mul-int/2addr v11, v6

    aput v11, v3, v9

    .line 38
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_a
    new-array v3, v10, [I

    aput v1, v3, v9

    .line 39
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    new-array v3, v10, [I

    const/4 v6, -0x1

    aput v6, v3, v9

    .line 40
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v3, v10, [I

    aput v2, v3, v9

    .line 41
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v3, 0x1c

    if-eqz v15, :cond_f

    if-eq v15, v4, :cond_e

    const/16 v2, 0xff

    if-eq v15, v2, :cond_d

    new-array v1, v10, [I

    const/4 v2, 0x5

    mul-int/2addr v15, v2

    aput v15, v1, v9

    .line 42
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_d
    new-array v2, v10, [I

    aput v1, v2, v9

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_e
    new-array v1, v10, [I

    const/4 v2, -0x1

    aput v2, v1, v9

    .line 44
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_f
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 45
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 47
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 48
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 49
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 50
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 51
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 52
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 53
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x5

    .line 54
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 55
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->L0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 57
    aget-byte v5, v1, v3

    and-int/2addr v5, v4

    invoke-static {v5}, Ll0/c0;->L0(I)I

    move-result v5

    invoke-static {v5}, Lu0/d;->S2(I)V

    add-int/lit8 v5, p2, 0x4

    .line 58
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    invoke-static {v6}, Ll0/c0;->L0(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->T2(I)V

    add-int/lit8 v6, p2, 0x5

    .line 59
    aget-byte v7, v1, v6

    and-int/2addr v7, v4

    invoke-static {v7}, Ll0/c0;->L0(I)I

    move-result v7

    invoke-static {v7}, Lu0/d;->U2(I)V

    add-int/lit8 v7, p2, 0x6

    .line 60
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    add-int/lit8 v8, p2, 0x7

    .line 61
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    add-int/lit8 v12, p2, 0x8

    .line 62
    aget-byte v12, v1, v12

    and-int/2addr v12, v4

    add-int/lit8 v13, p2, 0x9

    .line 63
    aget-byte v13, v1, v13

    and-int/2addr v13, v4

    if-nez v7, :cond_13

    if-nez v8, :cond_13

    if-nez v12, :cond_13

    if-nez v13, :cond_13

    .line 64
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 65
    :cond_13
    sget v4, Ll0/c0;->g:I

    if-ne v4, v7, :cond_14

    sget v4, Ll0/c0;->h:I

    if-ne v4, v8, :cond_14

    sget v4, Ll0/c0;->i:I

    if-ne v4, v12, :cond_14

    sget v4, Ll0/c0;->j:I

    if-eq v4, v13, :cond_15

    .line 66
    :cond_14
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_15

    .line 67
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 68
    sput v11, Ll0/c0;->k:I

    .line 69
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 70
    :cond_15
    :goto_7
    sput v7, Ll0/c0;->g:I

    .line 71
    sput v8, Ll0/c0;->h:I

    .line 72
    sput v12, Ll0/c0;->i:I

    .line 73
    sput v13, Ll0/c0;->j:I

    .line 74
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 75
    aget-byte v2, v1, v3

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 76
    aget-byte v2, v1, v5

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 77
    aget-byte v1, v1, v6

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 79
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 80
    iput v2, v0, Lk0/cs;->c:I

    move v2, v9

    .line 81
    :goto_8
    iget-object v3, v0, Lk0/cs;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_18

    .line 82
    iget v7, v0, Lk0/cs;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v9

    if-ne v7, v8, :cond_17

    if-eqz v7, :cond_18

    .line 83
    iput v2, v0, Lk0/cs;->b:I

    goto :goto_9

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 84
    :cond_18
    :goto_9
    iget v7, v0, Lk0/cs;->c:I

    if-eq v7, v4, :cond_1e

    if-eq v7, v5, :cond_1c

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v10, :cond_19

    .line 85
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 86
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_19
    if-nez v1, :cond_20

    .line 87
    iget v1, v0, Lk0/cs;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1a

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1b

    .line 88
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_1a
    const/16 v2, 0xff

    .line 89
    :cond_1b
    :goto_a
    iput v2, v0, Lk0/cs;->b:I

    goto :goto_d

    :cond_1c
    const/16 v2, 0xff

    move v3, v9

    :goto_b
    and-int/lit16 v4, v1, 0xff

    const/16 v5, 0x8

    if-ge v3, v4, :cond_1d

    .line 90
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 91
    :cond_1d
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_1e
    const/16 v2, 0xff

    move v3, v9

    :goto_c
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_1f

    .line 92
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 93
    :cond_1f
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    :cond_20
    :goto_d
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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xc6

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, -0x3a

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v1, 0xc8

    .line 2
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x0
        0x0
    .end array-data
.end method
