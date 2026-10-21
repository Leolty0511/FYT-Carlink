.class public Ll0/d0;
.super Ll0/a;
.source "SourceFile"


# direct methods
.method public static g()V
    .locals 14

    .line 1
    invoke-static {}, Ll0/d0;->h()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/16 v2, 0xe3

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_0

    const/16 v13, 0xa

    if-eq v0, v13, :cond_0

    new-array v0, v4, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v12, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_0
    new-array v0, v6, [I

    aput v11, v0, v9

    aput v8, v0, v10

    .line 5
    sget v10, Lu0/b;->s3:I

    and-int/lit16 v11, v10, 0xff

    aput v11, v0, v7

    shl-int/lit8 v7, v10, 0x8

    aput v7, v0, v3

    .line 6
    sget v3, Lu0/b;->r3:I

    and-int/lit16 v7, v3, 0xff

    aput v7, v0, v5

    shl-int/2addr v3, v6

    aput v3, v0, v1

    .line 7
    sget v1, Lu0/b;->t3:I

    rem-int/lit16 v3, v1, 0xe10

    div-int/lit8 v3, v3, 0x3c

    aput v3, v0, v8

    .line 8
    rem-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v4

    new-array v1, v12, [I

    aput v2, v1, v9

    :goto_0
    if-ge v9, v6, :cond_1

    add-int/lit8 v2, v9, 0x1

    .line 9
    aget v3, v0, v9

    aput v3, v1, v2

    move v9, v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_2
    new-array v0, v6, [I

    aput v11, v0, v9

    aput v8, v0, v10

    .line 11
    sget v1, Lo0/e;->C:I

    aput v1, v0, v7

    .line 12
    sget v1, Lo0/e;->B:I

    aput v1, v0, v3

    .line 13
    sget v1, Lo0/e;->r:I

    div-int/lit8 v3, v1, 0x3c

    aput v3, v0, v8

    .line 14
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v4

    new-array v1, v12, [I

    aput v2, v1, v9

    :goto_1
    if-ge v9, v6, :cond_3

    add-int/lit8 v2, v9, 0x1

    .line 15
    aget v3, v0, v9

    aput v3, v1, v2

    move v9, v2

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_5

    :cond_4
    new-array v0, v8, [I

    const/16 v11, 0xc2

    aput v11, v0, v9

    aput v5, v0, v10

    .line 17
    sget v11, Lw0/d;->h:I

    if-eqz v11, :cond_6

    if-eq v11, v10, :cond_5

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aput v3, v0, v7

    goto :goto_2

    :pswitch_1
    aput v7, v0, v7

    goto :goto_2

    :pswitch_2
    aput v10, v0, v7

    goto :goto_2

    :cond_5
    const/16 v10, 0x12

    aput v10, v0, v7

    goto :goto_2

    :cond_6
    const/16 v10, 0x11

    aput v10, v0, v7

    .line 18
    :goto_2
    sget v7, Lw0/d;->i:I

    and-int/lit16 v10, v7, 0xff

    aput v10, v0, v3

    shr-int/lit8 v3, v7, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v5

    .line 19
    sget v3, Lw0/d;->j:I

    rem-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    aput v8, v0, v1

    goto :goto_3

    .line 20
    :cond_7
    rem-int/2addr v3, v8

    aput v3, v0, v1

    :goto_3
    new-array v1, v4, [I

    aput v2, v1, v9

    :goto_4
    if-ge v9, v8, :cond_8

    add-int/lit8 v2, v9, 0x1

    .line 21
    aget v3, v0, v9

    aput v3, v1, v2

    move v9, v2

    goto :goto_4

    .line 22
    :cond_8
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc2
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static h()V
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x8

    const/4 v7, 0x5

    const/16 v8, 0x11

    const/16 v9, 0x30

    const/4 v10, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0xc

    aput v2, v1, v4

    aput v9, v1, v10

    goto :goto_0

    :pswitch_1
    aput v6, v1, v4

    aput v8, v1, v10

    goto :goto_0

    :pswitch_2
    aput v10, v1, v4

    aput v9, v1, v10

    goto :goto_0

    .line 2
    :pswitch_3
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    const/16 v2, 0x10

    aput v2, v1, v10

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    const/16 v2, 0x9

    aput v2, v1, v4

    aput v8, v1, v10

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_2

    aput v6, v1, v4

    aput v8, v1, v10

    goto :goto_0

    :pswitch_4
    aput v7, v1, v4

    aput v9, v1, v10

    goto :goto_0

    :pswitch_5
    aput v2, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x7

    aput v2, v1, v4

    aput v9, v1, v10

    :cond_2
    :goto_0
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static i()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v2, Ly0/f;->C0:I

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
