.class public Lk0/v8;
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
    iput v0, p0, Lk0/v8;->c:I

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/v8;->d:[[I

    .line 4
    new-instance v0, Lk0/v8$a;

    invoke-direct {v0, p0}, Lk0/v8$a;-><init>(Lk0/v8;)V

    iput-object v0, p0, Lk0/v8;->e:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data
.end method

.method public static a3()V
    .locals 21

    const/16 v0, 0xd

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xc

    aput v3, v1, v2

    .line 1
    sget v4, Ly0/f;->i:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    aput v4, v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    aput v2, v1, v5

    :goto_1
    const/4 v4, 0x3

    const/16 v5, 0x8

    aput v5, v1, v4

    aput v2, v1, v3

    .line 2
    sget v3, Lu0/b;->D:I

    const/16 v4, 0x56

    const/16 v7, 0x49

    const/16 v8, 0x53

    const/16 v9, 0x55

    const/16 v10, 0x4d

    const/16 v11, 0x54

    const/16 v12, 0xb

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/16 v15, 0x20

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x30

    const/16 v20, 0xa

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    aput v19, v1, v6

    const/16 v3, 0x4e

    aput v3, v1, v18

    const/16 v3, 0x41

    aput v3, v1, v17

    aput v4, v1, v16

    aput v7, v1, v14

    goto/16 :goto_3

    :pswitch_1
    aput v11, v1, v6

    aput v10, v1, v18

    aput v9, v1, v17

    aput v8, v1, v16

    aput v7, v1, v14

    const/16 v3, 0x43

    aput v3, v1, v5

    .line 3
    sget v3, Lu0/b;->r3:I

    div-int/lit8 v4, v3, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 4
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v20

    .line 5
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    goto/16 :goto_3

    :pswitch_2
    const/16 v3, 0x51

    aput v3, v1, v6

    aput v11, v1, v18

    aput v4, v1, v17

    goto/16 :goto_3

    :pswitch_3
    aput v8, v1, v6

    aput v15, v1, v18

    aput v15, v1, v17

    const/16 v3, 0x41

    aput v3, v1, v16

    aput v9, v1, v14

    const/16 v3, 0x58

    aput v3, v1, v5

    aput v15, v1, v13

    aput v15, v1, v20

    aput v15, v1, v12

    goto/16 :goto_3

    :pswitch_4
    const/16 v3, 0x22

    aput v3, v1, v6

    const/16 v3, 0x44

    aput v3, v1, v18

    aput v4, v1, v17

    aput v3, v1, v16

    aput v15, v1, v14

    aput v15, v1, v5

    .line 6
    sget v3, Lo0/e;->B:I

    div-int/lit8 v4, v3, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 7
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v20

    .line 8
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    goto/16 :goto_3

    :pswitch_5
    const/16 v3, 0x40

    aput v3, v1, v6

    const/16 v3, 0x42

    aput v3, v1, v18

    aput v11, v1, v17

    aput v15, v1, v16

    aput v10, v1, v14

    aput v9, v1, v5

    aput v8, v1, v13

    aput v7, v1, v20

    const/16 v3, 0x43

    aput v3, v1, v12

    goto/16 :goto_3

    :pswitch_6
    const/16 v3, 0x40

    aput v3, v1, v6

    const/16 v3, 0x42

    aput v3, v1, v18

    aput v11, v1, v17

    aput v15, v1, v16

    const/16 v3, 0x50

    aput v3, v1, v14

    const/16 v3, 0x48

    aput v3, v1, v5

    const/16 v3, 0x4f

    aput v3, v1, v13

    const/16 v3, 0x4e

    aput v3, v1, v20

    const/16 v3, 0x45

    aput v3, v1, v12

    goto/16 :goto_3

    .line 9
    :pswitch_7
    sget v3, Lw0/d;->h:I

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    :pswitch_8
    const/16 v4, 0x13

    aput v4, v1, v6

    goto :goto_2

    :pswitch_9
    const/16 v4, 0x12

    aput v4, v1, v6

    goto :goto_2

    :pswitch_a
    const/16 v4, 0x11

    aput v4, v1, v6

    goto :goto_2

    :cond_2
    const/16 v4, 0x15

    aput v4, v1, v6

    goto :goto_2

    :cond_3
    const/16 v4, 0x14

    aput v4, v1, v6

    :goto_2
    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_5

    const v4, 0x10002

    if-gt v3, v4, :cond_5

    .line 10
    sget v3, Lw0/d;->i:I

    div-int/lit16 v4, v3, 0x2710

    if-nez v4, :cond_4

    .line 11
    div-int/lit16 v4, v3, 0x3e8

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v18

    .line 12
    div-int/lit8 v4, v3, 0x64

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    const/16 v4, 0x2e

    aput v4, v1, v16

    .line 13
    div-int/lit8 v4, v3, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 14
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    aput v10, v1, v13

    goto :goto_3

    .line 15
    :cond_4
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v18

    .line 16
    div-int/lit16 v4, v3, 0x3e8

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 17
    div-int/lit8 v4, v3, 0x64

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    const/16 v4, 0x2e

    aput v4, v1, v14

    .line 18
    div-int/lit8 v4, v3, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 19
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    aput v10, v1, v20

    goto :goto_3

    .line 20
    :cond_5
    sget v3, Lw0/d;->i:I

    div-int/lit16 v4, v3, 0x3e8

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v18

    .line 21
    div-int/lit8 v4, v3, 0x64

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 22
    div-int/lit8 v4, v3, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    .line 23
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    const/16 v3, 0x4b

    aput v3, v1, v5

    const/16 v3, 0x68

    aput v3, v1, v13

    const/16 v3, 0x7a

    aput v3, v1, v20

    :goto_3
    const/16 v3, 0xe

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_4
    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 24
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_4

    .line 25
    :cond_6
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic b3()V
    .locals 0

    .line 1
    invoke-static {}, Lk0/v8;->a3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/v8;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->j:I

    .line 12
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.syu.canbus"

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v2, v0, Lk0/mt;->g:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x5

    shr-int/2addr p3, v0

    const/4 v1, 0x7

    and-int/2addr p3, v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-eqz p3, :cond_c

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq p3, v7, :cond_4

    const/4 v8, 0x6

    if-eq p3, v8, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string p3, "persist.syu.reversefrontdoor"

    .line 2
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_1

    new-array p3, v4, [I

    add-int/lit8 v9, p2, 0x1

    .line 3
    aget-byte v10, p1, v9

    shr-int/2addr v10, v1

    and-int/2addr v10, v4

    aput v10, p3, v2

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 4
    aget-byte v9, p1, v9

    shr-int/lit8 v8, v9, 0x6

    and-int/2addr v8, v4

    aput v8, p3, v2

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p3, v4, [I

    add-int/lit8 v9, p2, 0x1

    .line 5
    aget-byte v10, p1, v9

    shr-int/lit8 v8, v10, 0x6

    and-int/2addr v8, v4

    aput v8, p3, v2

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 6
    aget-byte v8, p1, v9

    shr-int/2addr v8, v1

    and-int/2addr v8, v4

    aput v8, p3, v2

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p3, v4, [I

    add-int/lit8 v8, p2, 0x1

    .line 7
    aget-byte v9, p1, v8

    shr-int/2addr v9, v0

    and-int/2addr v9, v4

    aput v9, p3, v2

    const/4 v9, 0x3

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 8
    aget-byte v10, p1, v8

    shr-int/2addr v10, v6

    and-int/2addr v10, v4

    aput v10, p3, v2

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 9
    aget-byte v10, p1, v8

    shr-int/lit8 v7, v10, 0x2

    and-int/2addr v7, v4

    aput v7, p3, v2

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 10
    aget-byte v7, p1, v8

    shr-int/2addr v7, v9

    and-int/2addr v7, v4

    aput v7, p3, v2

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v7, p2, 0x2

    .line 11
    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    aput v7, p3, v2

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, p3, v2

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, p3, v2

    const/16 v1, 0x9

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa

    new-array v7, v4, [I

    add-int/lit8 v8, p2, 0x6

    .line 14
    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, p1, v9

    shl-int/lit8 v5, v9, 0x8

    const v9, 0xff00

    and-int/2addr v5, v9

    or-int/2addr v5, v8

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v5, v8

    aput v5, v7, v2

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v6

    .line 15
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-nez p1, :cond_2

    .line 16
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_2
    const-string p2, "persist.fyt.temperature"

    .line 17
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_3

    mul-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x1a4

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    mul-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x1f4

    .line 18
    :goto_1
    invoke-static {p1}, Lu0/d;->B3(I)V

    goto/16 :goto_7

    :cond_4
    add-int/lit8 p3, p2, 0x1

    .line 19
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x2

    .line 20
    aget-byte v7, p1, v1

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x3

    .line 21
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x4

    .line 22
    aget-byte v11, p1, v10

    and-int/2addr v11, v3

    if-eqz v0, :cond_5

    if-ne v0, v3, :cond_8

    :cond_5
    if-eqz v7, :cond_6

    if-ne v7, v3, :cond_8

    :cond_6
    if-eqz v9, :cond_7

    if-ne v9, v3, :cond_8

    :cond_7
    if-eqz v11, :cond_a

    if-ne v11, v3, :cond_8

    goto :goto_2

    .line 23
    :cond_8
    sget v2, Ll0/c0;->g:I

    if-ne v2, v0, :cond_9

    sget v2, Ll0/c0;->h:I

    if-ne v2, v7, :cond_9

    sget v2, Ll0/c0;->i:I

    if-ne v2, v9, :cond_9

    sget v2, Ll0/c0;->j:I

    if-eq v2, v11, :cond_b

    .line 24
    :cond_9
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_b

    .line 25
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 26
    sput v6, Ll0/c0;->k:I

    .line 27
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 28
    :cond_a
    :goto_2
    invoke-static {v2}, Lu0/d;->C2(I)V

    .line 29
    :cond_b
    :goto_3
    sput v0, Ll0/c0;->g:I

    .line 30
    sput v7, Ll0/c0;->h:I

    .line 31
    sput v9, Ll0/c0;->i:I

    .line 32
    sput v11, Ll0/c0;->j:I

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 34
    aget-byte p3, p1, v1

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 35
    aget-byte p3, p1, v8

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 36
    aget-byte p3, p1, v10

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 37
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 38
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 39
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->u1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v5

    .line 40
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->u1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_7

    .line 41
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x3

    .line 42
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    .line 43
    iput p3, p0, Lk0/v8;->c:I

    move p3, v2

    .line 44
    :goto_4
    iget-object v1, p0, Lk0/v8;->d:[[I

    array-length v5, v1

    if-ge p3, v5, :cond_e

    .line 45
    iget v5, p0, Lk0/v8;->c:I

    aget-object v6, v1, p3

    aget v6, v6, v2

    if-ne v5, v6, :cond_d

    if-eqz v5, :cond_e

    .line 46
    iput p3, p0, Lk0/v8;->b:I

    goto :goto_5

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 47
    :cond_e
    :goto_5
    iget v5, p0, Lk0/v8;->c:I

    if-eqz v5, :cond_f

    .line 48
    array-length v3, v1

    if-ge p3, v3, :cond_11

    .line 49
    aget-object p3, v1, p3

    aget p3, p3, v4

    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 50
    :cond_f
    iget p3, p0, Lk0/v8;->b:I

    array-length v5, v1

    if-ge p3, v5, :cond_10

    if-eq p3, v3, :cond_10

    .line 51
    aget-object p3, v1, p3

    aget p3, p3, v4

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 52
    :cond_10
    iput v3, p0, Lk0/v8;->b:I

    :cond_11
    :goto_6
    add-int/lit8 p3, p2, 0x6

    .line 53
    aget-byte p3, p1, p3

    add-int/2addr p2, v0

    aget-byte p1, p1, p2

    const/16 p2, 0x3000

    invoke-static {p3, p1, v2, p2}, Lk0/qt;->l(IIZI)V

    :cond_12
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/v8;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb

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

    return-void
.end method
