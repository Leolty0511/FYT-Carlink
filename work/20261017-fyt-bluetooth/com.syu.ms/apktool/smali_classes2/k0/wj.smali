.class public Lk0/wj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/wj;->c:I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/wj;->d:[[I

    .line 4
    new-instance v0, Lk0/wj$a;

    invoke-direct {v0, p0}, Lk0/wj$a;-><init>(Lk0/wj;)V

    iput-object v0, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/wj$b;

    invoke-direct {v0, p0}, Lk0/wj$b;-><init>(Lk0/wj;)V

    iput-object v0, p0, Lk0/wj;->f:Ljava/lang/Runnable;

    .line 6
    iput v3, p0, Lk0/wj;->g:I

    .line 7
    new-instance v0, Lk0/wj$c;

    invoke-direct {v0, p0}, Lk0/wj$c;-><init>(Lk0/wj;)V

    iput-object v0, p0, Lk0/wj;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/wj$d;

    invoke-direct {v0, p0}, Lk0/wj$d;-><init>(Lk0/wj;)V

    iput-object v0, p0, Lk0/wj;->i:Ljava/lang/Runnable;

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
        0xd
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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data
.end method

.method public static a3()V
    .locals 16

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0xe1

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/wj;->b3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    if-eq v3, v5, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget v3, Lw0/d;->h:I

    const/high16 v7, 0x10000

    sub-int v8, v3, v7

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/16 v15, 0xa

    if-eqz v8, :cond_4

    sub-int v8, v3, v7

    if-eq v5, v8, :cond_4

    sub-int/2addr v3, v7

    if-ne v6, v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v3, Lw0/d;->j:I

    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 6
    rem-int/2addr v3, v15

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 7
    sget v3, Lw0/d;->i:I

    div-int/lit16 v4, v3, 0x2710

    if-nez v4, :cond_3

    .line 8
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 9
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 10
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 11
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    goto :goto_3

    .line 12
    :cond_3
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 13
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 14
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 15
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 16
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    goto :goto_3

    .line 17
    :cond_4
    :goto_1
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    .line 18
    div-int/lit8 v5, v3, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v10

    .line 19
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 20
    sget v3, Lw0/d;->i:I

    const v5, 0x186a0

    rem-int v6, v3, v5

    div-int/lit16 v6, v6, 0x2710

    if-nez v6, :cond_5

    aput v4, v1, v14

    goto :goto_2

    .line 21
    :cond_5
    rem-int v4, v3, v5

    div-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 22
    :goto_2
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 23
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    const/16 v4, 0x2e

    aput v4, v1, v11

    .line 24
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    :goto_3
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_4
    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 25
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_4

    .line 26
    :cond_6
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v1, 0xff

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xfe

    goto :goto_1

    :cond_0
    :pswitch_3
    move v1, v2

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_9
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_a
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v5, v0, v2

    if-nez v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    sub-int v5, v0, v2

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v3

    if-ne v4, v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v3

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v4, :cond_6

    const/16 v1, 0x10

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/wj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v2, p0, Lk0/wj;->f:Ljava/lang/Runnable;

    invoke-static {v2}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v2, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_22

    const/16 v3, 0x1a

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_20

    const/16 v3, 0x31

    const/16 v9, 0x12

    const/16 v10, 0xc

    const/16 v11, 0xf

    const/16 v13, 0x10

    const/4 v14, 0x6

    const/4 v15, 0x3

    const/4 v8, 0x5

    const/16 v12, 0xff

    if-eq v2, v3, :cond_f

    const/16 v3, 0x3f

    const v16, 0xff00

    if-eq v2, v3, :cond_e

    const/16 v3, 0x41

    if-eq v2, v3, :cond_a

    const/16 v3, 0x48

    if-eq v2, v3, :cond_9

    const/16 v3, 0x61

    if-eq v2, v3, :cond_8

    const/high16 v3, 0xff0000

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/16 v2, 0x6c

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 3
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 4
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v3, v5

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x10

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x11

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x12

    .line 7
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    const/16 v2, 0x69

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 8
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 9
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 10
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_2
    const/16 v2, 0x63

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 11
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 12
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int/2addr v5, v3

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int v8, v8, v16

    or-int/2addr v5, v8

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xd

    .line 13
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v3, v5

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x10

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x11

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x12

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_3
    add-int/lit8 v2, p2, 0x4

    .line 17
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 18
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 19
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 20
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 21
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 22
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 23
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 24
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 25
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_4
    add-int/lit8 v2, p2, 0x4

    .line 26
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 27
    aget-byte v3, v1, v3

    and-int/2addr v2, v12

    .line 28
    iput v2, v0, Lk0/wj;->c:I

    move v2, v6

    .line 29
    :goto_1
    iget-object v4, v0, Lk0/wj;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 30
    iget v5, v0, Lk0/wj;->c:I

    aget-object v10, v4, v2

    aget v10, v10, v6

    if-ne v5, v10, :cond_1

    if-eqz v5, :cond_2

    .line 31
    iput v2, v0, Lk0/wj;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_2
    :goto_2
    iget v5, v0, Lk0/wj;->c:I

    if-eq v5, v8, :cond_5

    and-int/2addr v3, v12

    if-ne v3, v7, :cond_3

    .line 33
    array-length v3, v4

    if-ge v2, v3, :cond_7

    .line 34
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_3
    if-nez v3, :cond_7

    .line 35
    iget v2, v0, Lk0/wj;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_4

    if-eq v2, v12, :cond_4

    .line 36
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 37
    :cond_4
    iput v12, v0, Lk0/wj;->b:I

    goto :goto_3

    :cond_5
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v7, :cond_7

    .line 38
    sget v2, Lh0/c;->E:I

    if-eq v2, v15, :cond_6

    if-eq v2, v8, :cond_6

    .line 39
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 40
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_6
    const/16 v2, 0x1a

    .line 41
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 42
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    :cond_7
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :cond_8
    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 44
    aget-byte v9, v1, v4

    shr-int/2addr v9, v6

    and-int/2addr v9, v11

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 45
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 46
    aget-byte v9, v1, v4

    shr-int/2addr v9, v6

    and-int/2addr v9, v11

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 47
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 48
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 49
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v15

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 50
    aget-byte v9, v1, v4

    shr-int/2addr v9, v6

    and-int/2addr v9, v11

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    .line 51
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 52
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 53
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 54
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    .line 55
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    .line 56
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 57
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7f

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 59
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 60
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 61
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_9
    const/16 v2, 0x75

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 62
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 63
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 64
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 65
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    const/16 v5, 0xb

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 70
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x7

    .line 71
    aget-byte v8, v1, v4

    and-int/2addr v8, v12

    add-int/lit8 v9, p2, 0x8

    .line 72
    aget-byte v10, v1, v9

    and-int/2addr v10, v12

    add-int/lit8 v11, p2, 0x9

    .line 73
    aget-byte v13, v1, v11

    and-int/2addr v13, v12

    if-ne v3, v12, :cond_b

    if-ne v8, v12, :cond_b

    if-ne v10, v12, :cond_b

    if-ne v13, v12, :cond_b

    .line 74
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 75
    :cond_b
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_c

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_c

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_c

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_d

    .line 76
    :cond_c
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_d

    .line 77
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 78
    sput v5, Ll0/c0;->k:I

    .line 79
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 80
    :cond_d
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 81
    sput v8, Ll0/c0;->h:I

    .line 82
    sput v10, Ll0/c0;->i:I

    .line 83
    sput v13, Ll0/c0;->j:I

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 85
    aget-byte v2, v1, v4

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 86
    aget-byte v2, v1, v9

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 87
    aget-byte v1, v1, v11

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :cond_e
    const/16 v2, 0x72

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 88
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 89
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    const/16 v4, 0xd

    add-int/lit8 v4, p2, 0xd

    .line 90
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 92
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 93
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 94
    aget-byte v5, v1, v5

    add-int/lit8 v16, p2, 0x7

    .line 95
    aget-byte v12, v1, v16

    new-array v9, v7, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v9, v6

    const/16 v14, 0xa

    .line 96
    invoke-static {v14, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v7, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v7

    aput v2, v9, v6

    const/16 v2, 0xd

    .line 97
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x44

    new-array v9, v7, [I

    shr-int/lit8 v14, v3, 0x7

    and-int/2addr v14, v7

    aput v14, v9, v6

    .line 98
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v9, v7

    aput v9, v2, v6

    const/16 v9, 0xb

    .line 99
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v9, v7, [I

    shr-int/lit8 v14, v3, 0x5

    and-int/2addr v14, v7

    aput v14, v9, v6

    .line 100
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v7

    aput v9, v2, v6

    .line 101
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v9, v7, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aput v3, v9, v6

    .line 102
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 103
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 104
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    if-eq v5, v15, :cond_14

    if-eq v5, v8, :cond_13

    const/4 v2, 0x6

    if-eq v5, v2, :cond_12

    const/16 v2, 0xb

    if-eq v5, v2, :cond_11

    if-eq v5, v10, :cond_10

    move v2, v6

    move v3, v2

    :goto_5
    move v4, v3

    goto :goto_6

    :cond_10
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_6

    :cond_11
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_6

    :cond_12
    move v2, v6

    move v4, v2

    move v3, v7

    goto :goto_6

    :cond_13
    move v2, v6

    move v3, v7

    goto :goto_5

    :cond_14
    move v2, v6

    move v3, v2

    move v4, v7

    :goto_6
    new-array v5, v7, [I

    aput v2, v5, v6

    const/16 v2, 0x12

    .line 105
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 106
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v12, 0xff

    aput v5, v3, v6

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 109
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0x1c

    const/16 v5, 0x1b

    if-eqz v2, :cond_19

    add-int/lit8 v2, p2, 0x8

    .line 110
    aget-byte v9, v1, v2

    and-int/2addr v9, v4

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_15

    new-array v2, v7, [I

    const/4 v9, -0x2

    aput v9, v2, v6

    .line 111
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 112
    :cond_15
    aget-byte v9, v1, v2

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_16

    new-array v2, v7, [I

    const/4 v9, -0x3

    aput v9, v2, v6

    .line 113
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    new-array v9, v7, [I

    .line 114
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v9, v6

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0x9

    .line 115
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    const/16 v9, 0xfe

    if-ne v3, v9, :cond_17

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 116
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    .line 117
    :cond_17
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_18

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 118
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_18
    new-array v3, v7, [I

    .line 119
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v3, v6

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_19
    add-int/lit8 v2, p2, 0x8

    .line 120
    aget-byte v9, v1, v2

    and-int/2addr v9, v4

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_1a

    new-array v2, v7, [I

    const/4 v9, -0x2

    aput v9, v2, v6

    .line 121
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 122
    :cond_1a
    aget-byte v9, v1, v2

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_1b

    new-array v2, v7, [I

    const/4 v9, -0x3

    aput v9, v2, v6

    .line 123
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    new-array v9, v7, [I

    .line 124
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 v2, p2, 0x9

    .line 125
    aget-byte v5, v1, v2

    and-int/2addr v5, v4

    const/16 v9, 0xfe

    if-ne v5, v9, :cond_1c

    new-array v2, v7, [I

    const/4 v5, -0x2

    aput v5, v2, v6

    .line 126
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v2, 0xd

    goto :goto_a

    .line 127
    :cond_1c
    aget-byte v5, v1, v2

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_1d

    new-array v2, v7, [I

    const/4 v5, -0x3

    aput v5, v2, v6

    .line 128
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1d
    new-array v5, v7, [I

    .line 129
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :goto_a
    add-int/lit8 v2, p2, 0xd

    .line 130
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_1f

    if-nez v1, :cond_1e

    goto :goto_b

    :cond_1e
    mul-int/2addr v1, v8

    add-int/lit16 v1, v1, 0x258

    .line 131
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_c

    .line 132
    :cond_1f
    :goto_b
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto :goto_c

    :cond_20
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 133
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_21

    add-int/lit8 v2, p2, 0x4

    .line 134
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aget-byte v5, v1, v2

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    invoke-static {v3, v5, v1}, Ll0/c0;->b(III)V

    goto :goto_c

    :cond_21
    add-int/lit8 v2, p2, 0x4

    .line 135
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aget-byte v5, v1, v2

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    invoke-static {v3, v5, v1}, Ll0/c0;->a(III)V

    goto :goto_c

    .line 136
    :cond_22
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x11
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/wj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lk0/wj;->i:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/wj;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/wj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x8b

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v2

    aput v3, p1, v4

    const/16 p3, -0x66

    aput p3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p3, p1, v2

    aput v0, p1, v4

    const/16 p3, 0x6f

    aput p3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    const/4 p3, 0x6

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput p3, p1, v2

    aput v3, p1, v4

    const/16 p3, 0x3d

    aput p3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
