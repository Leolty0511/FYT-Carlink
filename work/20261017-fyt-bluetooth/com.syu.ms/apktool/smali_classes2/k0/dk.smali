.class public Lk0/dk;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static h:Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/dk$c;

    invoke-direct {v0}, Lk0/dk$c;-><init>()V

    sput-object v0, Lk0/dk;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/dk;->c:I

    const/16 v0, 0x11

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

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/dk;->d:[[I

    .line 4
    iput v3, p0, Lk0/dk;->e:I

    .line 5
    new-instance v0, Lk0/dk$a;

    invoke-direct {v0, p0}, Lk0/dk$a;-><init>(Lk0/dk;)V

    iput-object v0, p0, Lk0/dk;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/dk$b;

    invoke-direct {v0, p0}, Lk0/dk$b;-><init>(Lk0/dk;)V

    iput-object v0, p0, Lk0/dk;->g:Ljava/lang/Runnable;

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
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x3f
    .end array-data

    :array_e
    .array-data 4
        0x1a
        0x3f
    .end array-data

    :array_f
    .array-data 4
        0x1b
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x1c
        0x3e
    .end array-data
.end method

.method public static a3()V
    .locals 19

    const/16 v0, 0x1c

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
    const/16 v3, 0x1a

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    sget v3, Lu0/b;->D:I

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/16 v8, 0xc

    const/16 v9, 0x68

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0xa

    if-eq v3, v5, :cond_5

    if-eq v3, v15, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    if-eq v3, v14, :cond_3

    const/16 v5, 0xd

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    aput v5, v1, v15

    const/16 v3, 0x4e

    aput v3, v1, v13

    const/16 v3, 0x41

    aput v3, v1, v14

    const/16 v3, 0x56

    aput v3, v1, v12

    const/16 v3, 0x49

    aput v3, v1, v11

    goto/16 :goto_7

    :pswitch_0
    aput v5, v1, v15

    .line 3
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x2710

    .line 5
    div-int/lit16 v9, v3, 0x3e8

    add-int/lit8 v9, v9, 0x30

    aput v9, v1, v13

    .line 6
    rem-int/lit8 v9, v3, 0x64

    div-int/lit8 v9, v9, 0xa

    rem-int/lit16 v13, v3, 0x3e8

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    div-int/lit8 v13, v13, 0xa

    :goto_1
    add-int/lit8 v13, v13, 0x30

    aput v13, v1, v14

    add-int/lit8 v9, v9, 0x30

    aput v9, v1, v12

    .line 7
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v9, v3, 0x3c

    .line 9
    rem-int/lit8 v9, v9, 0x3c

    aput v4, v1, v10

    .line 10
    div-int/lit8 v10, v9, 0xa

    add-int/lit8 v10, v10, 0x30

    aput v10, v1, v7

    .line 11
    rem-int/lit8 v9, v9, 0xa

    add-int/lit8 v9, v9, 0x30

    aput v9, v1, v16

    aput v4, v1, v6

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    .line 13
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 14
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    goto/16 :goto_7

    :cond_3
    aput v8, v1, v15

    const/16 v3, 0x4e

    aput v3, v1, v13

    const/16 v3, 0x41

    aput v3, v1, v14

    const/16 v3, 0x56

    aput v3, v1, v12

    const/16 v3, 0x49

    aput v3, v1, v11

    goto/16 :goto_7

    :cond_4
    aput v16, v1, v15

    const/16 v3, 0x50

    aput v3, v1, v13

    aput v9, v1, v14

    const/16 v3, 0x6f

    aput v3, v1, v12

    const/16 v3, 0x6e

    aput v3, v1, v11

    const/16 v3, 0x65

    aput v3, v1, v10

    goto/16 :goto_7

    .line 15
    :cond_5
    sget v3, Lw0/d;->h:I

    const/high16 v17, 0x10000

    sub-int v18, v3, v17

    if-nez v18, :cond_6

    aput v5, v1, v15

    goto :goto_2

    :cond_6
    sub-int v18, v3, v17

    if-nez v18, :cond_7

    aput v15, v1, v15

    goto :goto_2

    :cond_7
    sub-int v18, v3, v17

    if-nez v18, :cond_8

    const/16 v18, 0x3

    aput v18, v1, v15

    goto :goto_2

    :cond_8
    add-int/lit8 v18, v3, 0x0

    if-nez v18, :cond_9

    aput v13, v1, v15

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v3, 0x0

    if-ne v5, v0, :cond_a

    aput v14, v1, v15

    :cond_a
    :goto_2
    sub-int v0, v3, v17

    if-eqz v0, :cond_e

    sub-int v0, v3, v17

    if-eq v5, v0, :cond_e

    sub-int v3, v3, v17

    if-ne v15, v3, :cond_b

    goto :goto_5

    .line 16
    :cond_b
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_c

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_3

    :cond_c
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_3
    aput v3, v1, v13

    .line 17
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_d

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    goto :goto_4

    :cond_d
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    :goto_4
    aput v3, v1, v14

    .line 18
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 19
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 20
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v10

    const/16 v0, 0x4b

    aput v0, v1, v7

    aput v9, v1, v16

    const/16 v0, 0x7a

    aput v0, v1, v6

    goto :goto_7

    .line 21
    :cond_e
    :goto_5
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_6

    :cond_f
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_6
    aput v3, v1, v13

    .line 22
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 23
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    const/16 v3, 0x2e

    aput v3, v1, v11

    .line 24
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 25
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v7

    const/16 v0, 0x4d

    aput v0, v1, v16

    aput v9, v1, v6

    const/16 v0, 0x7a

    aput v0, v1, v8

    .line 26
    :goto_7
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_10

    aput v2, v1, v15

    :cond_10
    const/16 v0, 0x1d

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0x1c

    :goto_8
    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 27
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_8

    .line 28
    :cond_11
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 9
    :pswitch_0
    iput v1, v0, Lk0/mt;->i:I

    .line 10
    :goto_0
    sget-object v0, Lk0/dk;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/dk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x15

    const/16 v5, 0xc

    const v6, 0xff00

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v10, 0x19

    const/4 v11, 0x4

    if-eq v2, v10, :cond_19

    const/16 v6, 0x31

    const/4 v10, 0x5

    const/4 v12, 0x3

    if-eq v2, v6, :cond_a

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 2
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    const-string v5, "unicode"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v1, 0x64

    .line 3
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 4
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    const-string v5, "unicode"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v1, 0x63

    .line 5
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 6
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x62

    .line 7
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x4

    .line 8
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 9
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 10
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 11
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 12
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 13
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 14
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 15
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 16
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 17
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_2
    add-int/lit8 v2, p2, 0x5

    .line 18
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 19
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    iput v3, v0, Lk0/dk;->c:I

    move v3, v8

    .line 20
    :goto_1
    iget-object v4, v0, Lk0/dk;->d:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 21
    iget v5, v0, Lk0/dk;->c:I

    aget-object v6, v4, v3

    aget v6, v6, v8

    if-ne v5, v6, :cond_3

    if-eqz v5, :cond_4

    .line 22
    iput v3, v0, Lk0/dk;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_4
    :goto_2
    iget v5, v0, Lk0/dk;->c:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_8

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_7

    and-int/2addr v2, v7

    if-ne v2, v9, :cond_5

    .line 24
    array-length v2, v4

    if-ge v3, v2, :cond_9

    .line 25
    aget-object v2, v4, v3

    aget v2, v2, v9

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_5
    if-nez v2, :cond_9

    .line 26
    iget v2, v0, Lk0/dk;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_6

    if-eq v2, v7, :cond_6

    .line 27
    aget-object v2, v4, v2

    aget v2, v2, v9

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 28
    :cond_6
    iput v7, v0, Lk0/dk;->b:I

    goto :goto_3

    :cond_7
    and-int/2addr v2, v7

    if-ne v2, v9, :cond_9

    .line 29
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.opel.WCOPELCarListActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 30
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.syu.canbus"

    const-string v4, "com.syu.carinfo.opel.WCOPELCarListActivity"

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    and-int/2addr v2, v7

    if-ne v2, v9, :cond_9

    .line 35
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.opel.WCOPELCarInfoActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 36
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.syu.canbus"

    const-string v4, "com.syu.carinfo.opel.WCOPELCarInfoActivity"

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    const/16 v3, 0x21c

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 42
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 43
    aget-byte v6, v1, v6

    add-int/lit8 v13, p2, 0x4

    .line 44
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x5

    .line 45
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x6

    .line 46
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 47
    aget-byte v3, v1, v16

    new-array v7, v9, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v8

    const/16 v10, 0xa

    .line 48
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x35

    new-array v10, v9, [I

    shr-int/lit8 v18, v2, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v8

    .line 49
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v9

    aput v10, v7, v8

    const/16 v10, 0xd

    .line 50
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x3e

    new-array v10, v9, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v9

    aput v2, v10, v8

    .line 51
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v7, v6, 0x6

    and-int/2addr v7, v9

    aput v7, v2, v8

    const/16 v7, 0xb

    .line 52
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v6, v11

    and-int/2addr v6, v9

    aput v6, v2, v8

    .line 53
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    new-array v5, v9, [I

    shr-int/lit8 v6, v13, 0x4

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 54
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v5, v9, [I

    shr-int/lit8 v6, v13, 0x5

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 55
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v5, v9, [I

    shr-int/lit8 v6, v13, 0x0

    and-int/2addr v6, v12

    aput v6, v5, v8

    .line 56
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v5, v9, [I

    shr-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v12

    aput v4, v5, v8

    .line 57
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v4, v9, [I

    shr-int/lit8 v5, v14, 0x4

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 58
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x45

    new-array v4, v9, [I

    shr-int/lit8 v5, v14, 0x0

    and-int/2addr v5, v12

    aput v5, v4, v8

    .line 59
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    if-eq v15, v9, :cond_e

    if-eq v15, v12, :cond_d

    const/4 v2, 0x5

    if-eq v15, v2, :cond_c

    const/4 v2, 0x6

    if-eq v15, v2, :cond_b

    packed-switch v15, :pswitch_data_1

    move v2, v8

    move v4, v2

    move v5, v4

    move v6, v5

    goto :goto_5

    :pswitch_3
    move v6, v8

    move v2, v9

    move v4, v2

    goto :goto_4

    :pswitch_4
    move v5, v8

    move v6, v5

    move v2, v9

    move v4, v2

    goto :goto_5

    :pswitch_5
    move v4, v8

    move v6, v4

    move v2, v9

    move v5, v2

    goto :goto_5

    :pswitch_6
    move v4, v8

    move v5, v4

    move v6, v5

    move v2, v9

    goto :goto_5

    :cond_b
    move v2, v8

    move v5, v2

    move v6, v5

    move v4, v9

    goto :goto_5

    :cond_c
    move v2, v8

    move v6, v2

    move v4, v9

    :goto_4
    move v5, v4

    goto :goto_5

    :cond_d
    move v2, v8

    move v4, v2

    move v6, v4

    move v5, v9

    goto :goto_5

    :cond_e
    move v2, v8

    move v4, v2

    move v5, v4

    move v6, v9

    :goto_5
    const/16 v7, 0x12

    new-array v10, v9, [I

    aput v2, v10, v8

    .line 60
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v9, [I

    aput v4, v7, v8

    .line 61
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v9, [I

    aput v5, v4, v8

    .line 62
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v4, v9, [I

    aput v6, v4, v8

    .line 63
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    const/16 v4, 0xff

    and-int/2addr v3, v4

    aput v3, v2, v8

    const/16 v3, 0x15

    .line 64
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 65
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0xfe

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    if-eqz v2, :cond_13

    add-int/lit8 v2, p2, 0x8

    .line 66
    aget-byte v10, v1, v2

    const/16 v11, 0xff

    and-int/2addr v10, v11

    if-ne v10, v5, :cond_f

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 67
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 68
    :cond_f
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_10

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 69
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    new-array v10, v9, [I

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v10, v8

    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x9

    .line 71
    aget-byte v6, v1, v2

    and-int/2addr v6, v11

    if-ne v6, v5, :cond_11

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 72
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 73
    :cond_11
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_12

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 74
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v3, v9, [I

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v3, v8

    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    const/16 v11, 0xff

    add-int/lit8 v2, p2, 0x8

    .line 76
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v5, :cond_14

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 77
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 78
    :cond_14
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_15

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 79
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    new-array v10, v9, [I

    .line 80
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v10, v8

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0x9

    .line 81
    aget-byte v7, v1, v2

    and-int/2addr v7, v11

    if-ne v7, v5, :cond_16

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 82
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0xd

    goto :goto_9

    .line 83
    :cond_16
    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_17

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 84
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    new-array v3, v9, [I

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v3, v8

    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :goto_9
    add-int/lit8 v2, p2, 0xd

    .line 86
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    if-nez v1, :cond_18

    .line 87
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_18
    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 88
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_19
    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 89
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 90
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 91
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 92
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 93
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 94
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xd

    .line 95
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xe

    .line 96
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1a
    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 97
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    const/16 v10, 0xff

    and-int/2addr v7, v10

    or-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 98
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, v1, v7

    const/16 v10, 0xff

    and-int/2addr v7, v10

    or-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 99
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 100
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    .line 101
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lk0/dk;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/dk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/dk;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x71

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v4

    aput v2, p1, v3

    const/16 v0, 0x6e

    aput v0, p1, v2

    .line 1
    aget p2, p2, v4

    aput p2, p1, p4

    aput v4, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v4

    aput v2, p1, v3

    const/16 v0, 0x3d

    aput v0, p1, v2

    .line 2
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
