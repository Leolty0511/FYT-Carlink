.class public Lk0/fq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:Ljava/lang/Runnable;

.field public j:J

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fq;->c:I

    const/16 v1, 0xe

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v13, 0xb

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v13, 0xc

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v13, 0xd

    aput-object v3, v1, v13

    iput-object v1, p0, Lk0/fq;->d:[[I

    .line 4
    iput v0, p0, Lk0/fq;->f:I

    new-array v1, v12, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_e

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v10

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    aput-object v2, v1, v11

    iput-object v1, p0, Lk0/fq;->g:[[I

    .line 6
    iput-boolean v0, p0, Lk0/fq;->h:Z

    .line 7
    new-instance v0, Lk0/fq$a;

    invoke-direct {v0, p0}, Lk0/fq$a;-><init>(Lk0/fq;)V

    iput-object v0, p0, Lk0/fq;->i:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lk0/fq;->j:J

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lk0/fq;->k:I

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x20
        0x5
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x22
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x24
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x80
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xa0
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x5
        0x36
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x3a
    .end array-data
.end method

.method public static synthetic b3(Lk0/fq;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/fq;->j:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/fq;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/fq;->j:J

    return-wide p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 14

    if-eqz p1, :cond_1a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x29

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_16

    const/16 v3, 0x37

    const/16 v6, 0x45

    const/16 v7, 0x7d

    const/16 v8, -0x12

    const/16 v9, 0xe3

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x6

    if-eq v2, v3, :cond_15

    const/16 v3, 0x38

    if-eq v2, v3, :cond_14

    const/16 v0, 0x44

    if-eq v2, v0, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    new-array p1, v13, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v13, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget v0, p1, v5

    if-ne v0, v5, :cond_2

    new-array p1, v13, [I

    .line 7
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    aget p1, p1, v5

    if-nez p1, :cond_1a

    new-array p1, v13, [I

    .line 9
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_3

    new-array p1, v13, [I

    .line 11
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v13, [I

    .line 12
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    aget p1, p1, v5

    if-eqz p1, :cond_4

    new-array p1, v13, [I

    .line 14
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array p1, v13, [I

    .line 15
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :pswitch_4
    aget p1, p1, v5

    if-eqz p1, :cond_5

    new-array p1, v13, [I

    .line 17
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array p1, v13, [I

    .line 18
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :pswitch_5
    aget p1, p1, v5

    if-eqz p1, :cond_6

    new-array p1, v13, [I

    .line 20
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_6
    new-array p1, v13, [I

    .line 21
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v5

    if-eqz p1, :cond_7

    new-array p1, v13, [I

    .line 23
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array p1, v13, [I

    .line 24
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 25
    :cond_8
    aget v0, p1, v5

    if-ne v0, v5, :cond_9

    new-array p1, v4, [I

    .line 26
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_9
    aget v0, p1, v5

    if-ne v0, v1, :cond_a

    new-array p1, v4, [I

    .line 28
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_a
    aget v0, p1, v5

    if-ne v0, v11, :cond_b

    new-array p1, v4, [I

    .line 30
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :cond_b
    aget v0, p1, v5

    if-ne v0, v12, :cond_c

    new-array p1, v4, [I

    .line 32
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 33
    :cond_c
    aget v0, p1, v5

    if-ne v0, v10, :cond_d

    new-array p1, v4, [I

    .line 34
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_d
    aget v0, p1, v5

    if-ne v0, v13, :cond_e

    new-array p1, v4, [I

    .line 36
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_e
    aget v0, p1, v5

    if-ne v0, v4, :cond_f

    new-array p1, v4, [I

    .line 38
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 39
    :cond_f
    aget v0, p1, v5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    new-array p1, v4, [I

    .line 40
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_10
    aget v0, p1, v5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    new-array p1, v13, [I

    .line 42
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_11
    aget v0, p1, v5

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    new-array p1, v13, [I

    .line 44
    fill-array-data p1, :array_17

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_12
    aget v0, p1, v5

    const/16 v1, 0xb

    if-ne v0, v1, :cond_13

    new-array p1, v4, [I

    .line 46
    fill-array-data p1, :array_18

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 47
    :cond_13
    aget p1, p1, v5

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1a

    new-array p1, v4, [I

    .line 48
    fill-array-data p1, :array_19

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_14
    new-array v2, v4, [I

    aput v9, v2, v0

    aput v8, v2, v5

    aput v12, v2, v1

    aput v7, v2, v11

    aput v6, v2, v12

    aput v5, v2, v10

    .line 49
    aget p1, p1, v5

    aput p1, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_15
    new-array v2, v4, [I

    aput v9, v2, v0

    aput v8, v2, v5

    aput v12, v2, v1

    aput v7, v2, v11

    aput v6, v2, v12

    aput v0, v2, v10

    .line 50
    aget p1, p1, v5

    aput p1, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    .line 51
    :cond_16
    aget p1, p1, v5

    if-eqz p1, :cond_17

    new-array p1, v4, [I

    .line 52
    fill-array-data p1, :array_1a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_17
    new-array p1, v4, [I

    .line 53
    fill-array-data p1, :array_1b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 54
    :cond_18
    aget p1, p1, v5

    if-eqz p1, :cond_19

    new-array p1, v4, [I

    .line 55
    fill-array-data p1, :array_1c

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_19
    new-array p1, v4, [I

    .line 56
    fill-array-data p1, :array_1d

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1a
    :goto_0
    return-void

    nop

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
        -0x12
        0x3
        0x7d
        0x44
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x44
        0x81
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x42
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x42
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x48
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x48
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x47
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x47
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x4b
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x4b
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x41
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x41
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x40
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x40
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x1
        0x0
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x12
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x1
        0x80
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x1
        0x81
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x0
        0x80
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x12
        0x4
        0x7d
        0x45
        0x0
        0x81
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

    .line 6
    iput v1, v0, Lk0/mt;->r:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/fq;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

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
        0x44
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x24

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_21

    const/16 v3, 0x27

    if-eq v2, v3, :cond_20

    const/16 v3, 0x29

    const/16 v11, 0xf

    const/16 v12, 0x8

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x60

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x7d

    const v13, 0xff00

    if-eq v2, v3, :cond_17

    const/4 v14, 0x7

    const/4 v15, 0x6

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0x14

    const/16 v5, 0x10

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_0
    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v10

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    .line 3
    aget-byte v8, v1, v5

    shr-int/2addr v8, v15

    and-int/2addr v8, v10

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    .line 4
    aget-byte v8, v1, v5

    shr-int/lit8 v4, v8, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    .line 5
    aget-byte v4, v1, v5

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    .line 6
    aget-byte v4, v1, v5

    shr-int/2addr v4, v9

    and-int/2addr v4, v11

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v11, v1, v2

    and-int/2addr v11, v8

    if-nez v11, :cond_0

    const/16 v2, 0x80

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 9
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 10
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 11
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 12
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 13
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 14
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 15
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 16
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 17
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 18
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 19
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 20
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 21
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 22
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 23
    :cond_0
    aget-byte v11, v1, v2

    and-int/2addr v11, v8

    if-ne v11, v10, :cond_1

    const/16 v2, 0x8e

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 24
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 25
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 26
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 27
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 28
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 29
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 30
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 31
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 32
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 33
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 34
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 35
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 36
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 37
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 38
    :cond_1
    aget-byte v11, v1, v2

    and-int/2addr v11, v8

    const/4 v14, 0x2

    if-ne v11, v14, :cond_2

    const/16 v2, 0x9c

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 39
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 40
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 41
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 42
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 43
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 44
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 45
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 46
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 47
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 48
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 49
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 50
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 51
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 52
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 53
    :cond_2
    aget-byte v11, v1, v2

    and-int/2addr v11, v8

    if-ne v11, v7, :cond_3

    const/16 v2, 0xaa

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 54
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 55
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 56
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 57
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 58
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 59
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 60
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 61
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 62
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 63
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 64
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 65
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 66
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 67
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 68
    :cond_3
    aget-byte v7, v1, v2

    and-int/2addr v7, v8

    if-ne v7, v6, :cond_4

    const/16 v2, 0xb8

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 69
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 70
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 71
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 72
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 73
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 74
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 75
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 76
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 77
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 78
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 79
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 80
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 81
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 82
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 83
    :cond_4
    aget-byte v6, v1, v2

    and-int/2addr v6, v8

    if-ne v6, v4, :cond_5

    const/16 v2, 0xc6

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 84
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 85
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 86
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 87
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 88
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 89
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 90
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 91
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 92
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 93
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd0

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 94
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 95
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 96
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 97
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 98
    :cond_5
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-ne v2, v15, :cond_23

    const/16 v2, 0xd4

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 99
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v12

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 100
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 101
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 102
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 103
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xc

    .line 104
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 105
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xe

    .line 106
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0xf

    .line 107
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 108
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x11

    .line 109
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x12

    .line 110
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x13

    .line 111
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x14

    .line 112
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v4, v1, v2

    and-int/2addr v4, v8

    add-int/lit8 v7, p2, 0x3

    .line 114
    aget-byte v12, v1, v7

    and-int/2addr v12, v8

    add-int/lit8 v13, p2, 0x4

    .line 115
    aget-byte v13, v1, v13

    and-int/2addr v13, v8

    add-int/lit8 v15, p2, 0x5

    .line 116
    aget-byte v15, v1, v15

    and-int/2addr v15, v8

    add-int/lit8 v16, p2, 0x6

    .line 117
    aget-byte v6, v1, v16

    and-int/2addr v6, v8

    const-string v14, "persist.fyt.reversetemp"

    .line 118
    invoke-static {v14, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 119
    aget-byte v4, v1, v7

    and-int/2addr v4, v8

    .line 120
    aget-byte v2, v1, v2

    and-int/lit16 v12, v2, 0xff

    :cond_6
    if-eq v4, v5, :cond_9

    const/16 v2, 0x50

    if-eq v4, v2, :cond_8

    const/16 v2, 0x20

    if-lt v4, v2, :cond_7

    const/16 v2, 0x38

    if-gt v4, v2, :cond_7

    const/16 v2, 0x1b

    new-array v7, v10, [I

    and-int/2addr v4, v8

    aput v4, v7, v9

    .line 121
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x1b

    new-array v4, v10, [I

    const/4 v7, -0x1

    aput v7, v4, v9

    .line 122
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x1b

    new-array v4, v10, [I

    const/4 v7, -0x3

    aput v7, v4, v9

    .line 123
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_9
    const/16 v2, 0x1b

    new-array v4, v10, [I

    const/4 v7, -0x2

    aput v7, v4, v9

    .line 124
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    if-eq v12, v5, :cond_c

    const/16 v2, 0x50

    if-eq v12, v2, :cond_b

    const/16 v2, 0x20

    if-lt v12, v2, :cond_a

    const/16 v2, 0x38

    if-gt v12, v2, :cond_a

    const/16 v2, 0x1c

    new-array v4, v10, [I

    and-int/lit16 v7, v12, 0xff

    aput v7, v4, v9

    .line 125
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    const/16 v2, 0x1c

    new-array v4, v10, [I

    const/4 v7, -0x1

    aput v7, v4, v9

    .line 126
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    const/16 v2, 0x1c

    new-array v4, v10, [I

    const/4 v7, -0x3

    aput v7, v4, v9

    .line 127
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_c
    const/16 v2, 0x1c

    new-array v4, v10, [I

    const/4 v7, -0x2

    aput v7, v4, v9

    .line 128
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    shr-int/lit8 v2, v13, 0x4

    and-int/2addr v2, v11

    packed-switch v2, :pswitch_data_2

    move v2, v9

    :goto_2
    move v4, v2

    :goto_3
    move v7, v4

    goto :goto_4

    :pswitch_3
    move v2, v10

    goto :goto_2

    :pswitch_4
    move v2, v9

    move v4, v2

    move v7, v10

    goto :goto_4

    :pswitch_5
    move v2, v9

    move v4, v10

    goto :goto_3

    :pswitch_6
    move v4, v9

    move v2, v10

    move v7, v2

    goto :goto_4

    :pswitch_7
    move v4, v9

    move v7, v4

    move v2, v10

    goto :goto_4

    :pswitch_8
    move v7, v9

    move v2, v10

    move v4, v2

    goto :goto_4

    :pswitch_9
    move v2, v9

    move v7, v2

    move v4, v10

    :goto_4
    new-array v8, v10, [I

    aput v2, v8, v9

    .line 129
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v4, v2, v9

    const/16 v3, 0x13

    .line 130
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v7, v2, v9

    const/16 v3, 0x12

    .line 131
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    and-int/lit8 v4, v13, 0xf

    aput v4, v3, v9

    .line 132
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v10, [I

    and-int/lit8 v4, v15, 0xf

    aput v4, v3, v9

    .line 133
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v15, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 134
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v10, [I

    shr-int/lit8 v4, v15, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 135
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v10, [I

    const/4 v4, 0x7

    shr-int/lit8 v7, v15, 0x7

    and-int/lit8 v4, v7, 0x1

    aput v4, v3, v9

    .line 136
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x0

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xd

    .line 137
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xb

    .line 138
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v10, [I

    shr-int/lit8 v4, v6, 0x2

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 139
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xc

    .line 140
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v10, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v10, [I

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 142
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 143
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v10, [I

    const/4 v4, 0x7

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 145
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v10, [I

    .line 146
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v11

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_a
    const/16 v2, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 147
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 148
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 149
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 150
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 151
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0xb

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 152
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 153
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0xf

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 154
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_b
    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 155
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 156
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 157
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 158
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 159
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 160
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 161
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_c
    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 162
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 163
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 164
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 165
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 166
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 167
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 169
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 170
    iput v2, v0, Lk0/fq;->f:I

    move v2, v9

    .line 171
    :goto_5
    iget-object v3, v0, Lk0/fq;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_e

    .line 172
    iget v4, v0, Lk0/fq;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_d

    if-eqz v4, :cond_e

    .line 173
    iput v2, v0, Lk0/fq;->e:I

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 174
    :cond_e
    :goto_6
    iget v4, v0, Lk0/fq;->f:I

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    packed-switch v4, :pswitch_data_5

    packed-switch v4, :pswitch_data_6

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_f

    .line 175
    array-length v1, v3

    if-ge v2, v1, :cond_23

    .line 176
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_f
    if-nez v1, :cond_23

    .line 177
    iget v1, v0, Lk0/fq;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_10

    if-eq v1, v8, :cond_10

    .line 178
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 179
    :cond_10
    iput v8, v0, Lk0/fq;->e:I

    goto/16 :goto_e

    :pswitch_e
    move v1, v9

    .line 180
    :goto_7
    iget v2, v0, Lk0/fq;->f:I

    add-int/lit16 v2, v2, -0xcf

    if-ge v1, v2, :cond_23

    const/16 v2, 0x1f

    .line 181
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 182
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_f
    move v1, v9

    .line 183
    :goto_8
    iget v2, v0, Lk0/fq;->f:I

    rsub-int v2, v2, 0xcf

    if-ge v1, v2, :cond_23

    const/16 v2, 0x1e

    .line 184
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 185
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_10
    move v1, v9

    .line 186
    :goto_9
    iget v2, v0, Lk0/fq;->f:I

    add-int/lit16 v2, v2, -0xaf

    if-ge v1, v2, :cond_23

    const/4 v2, 0x7

    .line 187
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 188
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :pswitch_11
    move v1, v9

    .line 189
    :goto_a
    iget v2, v0, Lk0/fq;->f:I

    rsub-int v2, v2, 0xaf

    if-ge v1, v2, :cond_23

    .line 190
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    .line 191
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :pswitch_12
    add-int/lit8 v2, p2, 0x2

    .line 192
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 193
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 194
    iput v2, v0, Lk0/fq;->c:I

    move v2, v9

    .line 195
    :goto_b
    iget-object v3, v0, Lk0/fq;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_12

    .line 196
    iget v5, v0, Lk0/fq;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_11

    if-eqz v5, :cond_12

    .line 197
    iput v2, v0, Lk0/fq;->b:I

    goto :goto_c

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 198
    :cond_12
    :goto_c
    iget v5, v0, Lk0/fq;->c:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_15

    const/16 v4, 0xa0

    if-eq v5, v4, :cond_23

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_13

    .line 199
    array-length v1, v3

    if-ge v2, v1, :cond_23

    .line 200
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_13
    if-nez v1, :cond_23

    .line 201
    iget v1, v0, Lk0/fq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_14

    if-eq v1, v8, :cond_14

    .line 202
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 203
    :cond_14
    iput v8, v0, Lk0/fq;->b:I

    goto/16 :goto_e

    :cond_15
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_23

    .line 204
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_16

    if-eq v1, v4, :cond_16

    const/16 v1, 0x12

    .line 205
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 206
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_16
    const/16 v1, 0x1a

    .line 207
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 208
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_13
    add-int/lit8 v2, p2, 0x2

    .line 209
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->I2(I)V

    .line 210
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->K2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 211
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->J2(I)V

    .line 212
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->H2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 213
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->O2(I)V

    .line 214
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->Q2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 215
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->P2(I)V

    .line 216
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->N2(I)V

    goto/16 :goto_e

    :pswitch_14
    add-int/lit8 v2, p2, 0x2

    .line 217
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 218
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 219
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 220
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 221
    aget-byte v1, v1, v2

    invoke-static {v1}, Lu0/d;->C2(I)V

    goto/16 :goto_e

    :pswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 222
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 223
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 224
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 225
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 226
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-eq v2, v10, :cond_1a

    if-eq v2, v7, :cond_19

    if-eq v2, v12, :cond_18

    goto/16 :goto_e

    :cond_18
    add-int/lit8 v2, p2, 0x3

    .line 227
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 228
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 229
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 230
    iput-boolean v10, v0, Lk0/fq;->h:Z

    goto/16 :goto_e

    :cond_19
    add-int/lit8 v2, p2, 0x4

    .line 231
    aget-byte v2, v1, v2

    shl-int/2addr v2, v12

    and-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 233
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v10, v4, v9

    aput v1, v4, v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1a
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 234
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1b

    add-int/lit8 v2, p2, 0x3

    .line 235
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_e

    :cond_1b
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 236
    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v10

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v10

    invoke-static {v4, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_e

    :cond_1c
    const/16 v2, 0x7d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 237
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 238
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 239
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 240
    :cond_1d
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 241
    :cond_1e
    iget-boolean v2, v0, Lk0/fq;->h:Z

    if-nez v2, :cond_23

    add-int/lit8 v2, p2, 0x3

    .line 242
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1f

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    .line 243
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    const/16 v2, 0x168

    invoke-static {v3, v1, v9, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_e

    :cond_1f
    const/4 v3, 0x2

    .line 244
    aget-byte v2, v1, v2

    shl-int/2addr v2, v12

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/2addr v1, v12

    and-int/2addr v1, v11

    const/16 v3, 0x168

    .line 245
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_e

    :cond_20
    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 246
    aget-byte v1, v1, v2

    .line 247
    invoke-static {v1}, Ll0/f0;->i(B)V

    goto :goto_e

    :cond_21
    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    .line 248
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const-string v2, "persist.syu.reversefrontdoor"

    .line 249
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 250
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 251
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_22
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 252
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 253
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_d
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 254
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 255
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 256
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 257
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :cond_23
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa8
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc8
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xd0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/fq;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xe2

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
    .locals 5

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/fq;->a3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v4

    aput v3, p1, v3

    .line 3
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 4
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x86

    aput p4, p1, v4

    aput v3, p1, v3

    .line 5
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x83

    aput p4, p1, v4

    aput v3, p1, v3

    .line 7
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/fq;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/fq;->k:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    aput p1, v3, v1

    const/4 p1, 0x5

    aput v5, v3, p1

    const/4 p1, 0x6

    aput v5, v3, p1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
