.class public Lk0/ne;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/ne;->b:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/ne;->c:I

    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x14

    const/16 v3, 0x66

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v4

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 4
    invoke-virtual {p0, p1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v2}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 11
    invoke-virtual {p0, p1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v4

    const/16 v1, 0x23

    const/16 v2, 0x67

    if-nez v0, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v4

    if-ne p1, v4, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v4

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lk0/ne;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v4

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v4

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v1}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 32
    invoke-virtual {p0, v1}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v4

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v0}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    .line 37
    invoke-virtual {p0, v0}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v4

    const/16 v0, 0x64

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v2}, Lk0/ne;->a3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    if-lez p1, :cond_a

    .line 42
    invoke-virtual {p0, v4}, Lk0/ne;->a3(I)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x201a7

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->g:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput v3, v0, Lk0/mt;->g:I

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->f:I

    .line 10
    iput v3, v0, Lk0/mt;->o:I

    .line 11
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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

    move-object/from16 v0, p1

    .line 1
    aget-byte v1, v0, p2

    const/16 v2, 0x55

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    const/16 v2, 0x57

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    const/16 v1, 0x62

    const/4 v4, 0x1

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x2

    .line 3
    aget-byte v7, v0, v6

    const/4 v8, 0x0

    aput v7, v5, v8

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v5, v4, [I

    add-int/lit8 v7, p2, 0x3

    .line 4
    aget-byte v9, v0, v7

    aput v9, v5, v8

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v5, v4, [I

    add-int/lit8 v9, p2, 0x4

    .line 5
    aget-byte v10, v0, v9

    aput v10, v5, v8

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v5, v4, [I

    add-int/lit8 v10, p2, 0x5

    .line 6
    aget-byte v11, v0, v10

    aput v11, v5, v8

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v5, v4, [I

    add-int/lit8 v11, p2, 0x6

    .line 7
    aget-byte v12, v0, v11

    aput v12, v5, v8

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v5, v4, [I

    add-int/lit8 v12, p2, 0x7

    .line 8
    aget-byte v13, v0, v12

    aput v13, v5, v8

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    .line 9
    sget v1, Lk0/nt;->a:I

    const v5, 0x201a7

    const/16 v15, 0x15

    const/16 v2, 0x1c

    const/16 v13, 0x1b

    const-string v14, "persist.fyt.reversetemp"

    const/16 v3, 0xf

    if-ne v1, v5, :cond_d

    add-int/lit8 v1, p2, 0x1

    .line 10
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    .line 11
    aget-byte v12, v0, v6

    and-int/lit16 v12, v12, 0xff

    .line 12
    aget-byte v7, v0, v7

    .line 13
    aget-byte v9, v0, v9

    .line 14
    aget-byte v10, v0, v10

    .line 15
    aget-byte v11, v0, v11

    .line 16
    invoke-static {v14, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 17
    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    .line 18
    aget-byte v0, v0, v1

    and-int/lit16 v12, v0, 0xff

    :cond_2
    mul-int/lit8 v5, v5, 0x5

    const/4 v0, -0x2

    const/16 v1, 0x14a

    const/16 v6, 0xaa

    if-ne v5, v6, :cond_3

    move v5, v0

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    const/4 v5, -0x3

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    const/4 v5, -0x1

    goto :goto_0

    :cond_5
    move v5, v8

    :goto_0
    new-array v14, v4, [I

    aput v5, v14, v8

    .line 19
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    mul-int/lit8 v12, v12, 0x5

    if-ne v12, v6, :cond_6

    goto :goto_1

    :cond_6
    if-ne v12, v1, :cond_7

    const/4 v0, -0x3

    goto :goto_1

    :cond_7
    if-nez v12, :cond_8

    const/4 v0, -0x1

    goto :goto_1

    :cond_8
    move v0, v8

    :goto_1
    new-array v1, v4, [I

    aput v0, v1, v8

    .line 20
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    and-int/lit8 v1, v7, 0x7

    aput v1, v0, v8

    .line 21
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v0, v9, 0x7

    if-eq v0, v4, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    move v0, v8

    move v1, v0

    move v2, v1

    goto :goto_2

    :cond_9
    move v0, v4

    move v2, v0

    move v1, v8

    goto :goto_2

    :cond_a
    move v2, v4

    move v0, v8

    move v1, v0

    goto :goto_2

    :cond_b
    move v1, v4

    move v2, v1

    move v0, v8

    goto :goto_2

    :cond_c
    move v1, v4

    move v0, v8

    move v2, v0

    :goto_2
    new-array v5, v4, [I

    aput v0, v5, v8

    const/16 v0, 0x12

    .line 22
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    aput v1, v0, v8

    const/16 v1, 0x13

    .line 23
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v4, [I

    aput v2, v1, v8

    .line 24
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4d

    new-array v1, v4, [I

    and-int/lit8 v2, v9, 0xf

    aput v2, v1, v8

    .line 25
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v4, [I

    and-int/lit8 v2, v10, 0x1

    aput v2, v1, v8

    .line 26
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v4, [I

    shr-int/lit8 v2, v10, 0x1

    and-int/2addr v2, v4

    aput v2, v1, v8

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v4, [I

    shr-int/lit8 v2, v10, 0x3

    and-int/2addr v2, v4

    aput v2, v1, v8

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v1, v4, [I

    shr-int/lit8 v2, v10, 0x4

    and-int/2addr v2, v4

    aput v2, v1, v8

    .line 29
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v1, v10, 0x5

    and-int/2addr v1, v4

    aput v1, v0, v8

    .line 30
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v1, v4, [I

    shr-int/lit8 v2, v10, 0x6

    and-int/2addr v2, v4

    aput v2, v1, v8

    .line 31
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v1, v4, [I

    shr-int/lit8 v2, v10, 0x7

    and-int/2addr v2, v4

    aput v2, v1, v8

    .line 32
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v11, v11, -0x80

    mul-int/lit8 v11, v11, 0xa

    add-int/lit16 v11, v11, 0x3e8

    .line 33
    invoke-static {v11}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    .line 34
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 35
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    .line 36
    aget-byte v5, v0, v7

    and-int/lit16 v5, v5, 0xff

    .line 37
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    .line 38
    aget-byte v10, v0, v11

    and-int/lit16 v10, v10, 0xff

    .line 39
    aget-byte v11, v0, v12

    and-int/lit16 v11, v11, 0xff

    .line 40
    invoke-static {v14, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 41
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    .line 42
    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    :cond_e
    new-array v6, v4, [I

    aput v1, v6, v8

    .line 43
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    aput v5, v1, v8

    .line 44
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    and-int/lit8 v2, v9, 0xf

    aput v2, v1, v8

    .line 45
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x4

    shr-int/lit8 v1, v9, 0x4

    and-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    move v2, v8

    :goto_3
    move v5, v2

    :goto_4
    move v6, v5

    goto :goto_5

    :pswitch_0
    move v2, v4

    goto :goto_3

    :pswitch_1
    move v2, v4

    move v5, v8

    goto :goto_4

    :pswitch_2
    move v2, v4

    move v5, v2

    move v6, v8

    goto :goto_5

    :pswitch_3
    move v2, v4

    move v6, v2

    move v5, v8

    goto :goto_5

    :pswitch_4
    move v6, v4

    move v2, v8

    move v5, v2

    goto :goto_5

    :pswitch_5
    move v5, v4

    move v6, v5

    move v2, v8

    goto :goto_5

    :pswitch_6
    move v5, v4

    move v2, v8

    move v6, v2

    :goto_5
    new-array v7, v4, [I

    aput v2, v7, v8

    const/16 v2, 0x12

    .line 46
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    aput v5, v2, v8

    const/16 v5, 0x13

    .line 47
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v4, [I

    aput v6, v5, v8

    .line 48
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v5, v4, [I

    aput v1, v5, v8

    .line 49
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v4, [I

    and-int/lit8 v5, v10, 0x1

    aput v5, v2, v8

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v4, [I

    shr-int/lit8 v5, v10, 0x1

    and-int/2addr v5, v4

    aput v5, v2, v8

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v4, [I

    shr-int/lit8 v5, v10, 0x2

    and-int/2addr v5, v4

    aput v5, v2, v8

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v2, v10, 0x5

    and-int/2addr v2, v4

    aput v2, v1, v8

    .line 53
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v4, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/2addr v3, v4

    aput v3, v2, v8

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v4, [I

    shr-int/lit8 v3, v11, 0x0

    const/4 v5, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 55
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x9

    .line 56
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_f

    move v8, v4

    :cond_f
    if-nez v8, :cond_10

    rsub-int v0, v0, 0xff

    add-int/2addr v0, v4

    :cond_10
    if-eqz v8, :cond_11

    if-ltz v0, :cond_12

    const/16 v1, 0x55

    if-gt v0, v1, :cond_12

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_6

    :cond_11
    const/16 v1, 0x55

    if-gt v0, v1, :cond_12

    mul-int/lit8 v0, v0, 0xa

    rsub-int v0, v0, 0x3e8

    :cond_12
    :goto_6
    const/16 v1, 0x258

    if-le v0, v1, :cond_13

    .line 57
    invoke-static {v0}, Lu0/d;->A3(I)V

    :cond_13
    :goto_7
    return-void

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

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x68

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

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1
    invoke-static {v1, v2}, Lk0/qt;->l0([II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0xe3

    aput v6, v4, v5

    const/16 v7, 0x33

    aput v7, v4, v2

    const/4 v8, 0x2

    const/4 v9, 0x5

    aput v9, v4, v8

    .line 2
    aget v10, v1, v5

    const/4 v11, 0x3

    aput v10, v4, v11

    iget-object v10, v0, Lk0/ne;->b:[I

    iget v12, v0, Lk0/ne;->c:I

    rem-int/2addr v12, v8

    aget v10, v10, v12

    const/4 v12, 0x4

    aput v10, v4, v12

    const/16 v10, 0x25

    aput v10, v4, v9

    const/4 v13, 0x6

    aput v2, v4, v13

    const/4 v14, 0x7

    const/16 v15, 0xaa

    aput v15, v4, v14

    invoke-static {v4}, Lz/k;->s([I)V

    new-array v4, v3, [I

    aput v6, v4, v5

    aput v7, v4, v2

    aput v9, v4, v8

    .line 3
    aget v16, v1, v5

    aput v16, v4, v11

    iget-object v11, v0, Lk0/ne;->b:[I

    iget v7, v0, Lk0/ne;->c:I

    rem-int/2addr v7, v8

    aget v7, v11, v7

    aput v7, v4, v12

    aput v10, v4, v9

    aput v2, v4, v13

    aput v15, v4, v14

    invoke-static {v4}, Lz/k;->s([I)V

    new-array v3, v3, [I

    aput v6, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v2

    aput v9, v3, v8

    .line 4
    aget v1, v1, v5

    const/4 v4, 0x3

    aput v1, v3, v4

    iget-object v1, v0, Lk0/ne;->b:[I

    iget v4, v0, Lk0/ne;->c:I

    rem-int/2addr v4, v8

    aget v1, v1, v4

    aput v1, v3, v12

    aput v10, v3, v9

    aput v2, v3, v13

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    .line 5
    iget v1, v0, Lk0/ne;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lk0/ne;->c:I

    .line 6
    rem-int/2addr v1, v8

    iput v1, v0, Lk0/ne;->c:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0, p1, p1}, Lk0/ne;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method
