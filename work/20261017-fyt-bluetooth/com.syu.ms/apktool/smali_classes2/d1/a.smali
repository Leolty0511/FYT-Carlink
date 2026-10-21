.class public Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v1}, Landroid/source/Util;->openDev(I)I

    move-result v0

    sput v0, Ld1/d;->k:I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xa
    .end array-data
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x10
    .end array-data
.end method

.method public f(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x43
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x1
    .end array-data
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x9
    .end array-data
.end method

.method public h(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array p1, v0, [I

    .line 7
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array p1, v0, [I

    .line 9
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array p1, v0, [I

    .line 10
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array p1, v0, [I

    .line 11
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array p1, v0, [I

    .line 12
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array p1, v0, [I

    .line 13
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array p1, v0, [I

    .line 14
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array p1, v0, [I

    .line 15
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array p1, v0, [I

    .line 16
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    new-array p1, v0, [I

    .line 17
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array p1, v0, [I

    .line 18
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_13
    new-array p1, v0, [I

    .line 19
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_14
    new-array p1, v0, [I

    .line 20
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_15
    new-array p1, v0, [I

    .line 21
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_16
    new-array p1, v0, [I

    .line 22
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_17
    new-array p1, v0, [I

    .line 23
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x2
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x13
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x30
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x4
        0x39
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x4
        0x38
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x4
        0x37
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x4
        0x36
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x4
        0x35
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x4
        0x34
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x4
        0x33
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x4
        0x32
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x4
        0x31
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x31
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x30
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x2
        0x29
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x2
        0x28
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x2
        0x27
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x2
        0x26
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x2
        0x25
    .end array-data
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x11
    .end array-data
.end method

.method public j(III)V
    .locals 11

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0xffff

    and-int v2, v0, v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/16 v9, 0x135

    if-eq v2, v9, :cond_0

    and-int/2addr v0, v1

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2

    :cond_0
    mul-int/lit16 p2, p2, 0x500

    .line 2
    div-int/lit16 p2, p2, 0x320

    mul-int/lit16 p3, p3, 0x2d0

    .line 3
    div-int/lit16 p3, p3, 0x1e0

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/16 v2, 0xa0

    const/16 v9, 0xe3

    const/16 v10, 0x8

    if-nez p1, :cond_1

    new-array v10, v10, [I

    aput v9, v10, v6

    aput v2, v10, v8

    aput v7, v10, v5

    and-int/lit16 v2, p2, 0xff

    aput v2, v10, v4

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v10, v3

    and-int/lit16 v2, p3, 0xff

    aput v2, v10, v7

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v10, v1

    aput v8, v10, v0

    .line 4
    invoke-static {v10}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-ne p1, v8, :cond_2

    new-array v10, v10, [I

    aput v9, v10, v6

    aput v2, v10, v8

    aput v7, v10, v5

    and-int/lit16 v2, p2, 0xff

    aput v2, v10, v4

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v10, v3

    and-int/lit16 v2, p3, 0xff

    aput v2, v10, v7

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v10, v1

    aput v6, v10, v0

    .line 5
    invoke-static {v10}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v8, :cond_5

    new-array p1, v7, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_4
    :goto_1
    new-array p1, v7, [I

    const/16 v0, 0xe6

    aput v0, p1, v6

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v8

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v5

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v4

    and-int/lit16 p2, p3, 0xff

    aput p2, p1, v3

    .line 7
    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe6
        0xaa
        0xaa
        0xaa
        0xaa
    .end array-data
.end method

.method public k(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xa3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0xa2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0xa1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0xa0
    .end array-data
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
    .end array-data
.end method

.method public m(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x42

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xb
    .end array-data
.end method
