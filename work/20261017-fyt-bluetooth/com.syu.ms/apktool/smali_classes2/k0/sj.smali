.class public Lk0/sj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:J

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/sj;->c:I

    const/16 v1, 0x9

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

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

    iput-object v2, p0, Lk0/sj;->d:[[I

    .line 4
    iput v0, p0, Lk0/sj;->f:I

    const/16 v2, 0xd

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_9

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    const/16 v4, 0xa

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v3, 0xc

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/sj;->g:[[I

    .line 6
    iput v0, p0, Lk0/sj;->h:I

    .line 7
    iput v0, p0, Lk0/sj;->i:I

    .line 8
    iput v0, p0, Lk0/sj;->j:I

    .line 9
    new-instance v0, Lk0/sj$a;

    invoke-direct {v0, p0}, Lk0/sj$a;-><init>(Lk0/sj;)V

    iput-object v0, p0, Lk0/sj;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/sj$b;

    invoke-direct {v0, p0}, Lk0/sj$b;-><init>(Lk0/sj;)V

    iput-object v0, p0, Lk0/sj;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/sj$c;

    invoke-direct {v0, p0}, Lk0/sj$c;-><init>(Lk0/sj;)V

    iput-object v0, p0, Lk0/sj;->m:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lk0/sj;->n:J

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lk0/sj;->o:I

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_13
    .array-data 4
        0x33
        0x15
    .end array-data

    :array_14
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_15
    .array-data 4
        0x39
        0x19
    .end array-data
.end method

.method public static a3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic b3(Lk0/sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/sj;->n:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/sj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/sj;->n:J

    return-wide p1
.end method

.method public static synthetic d3(Lk0/sj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sj;->o:I

    return p0
.end method

.method public static synthetic e3(Lk0/sj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/sj;->o:I

    return p1
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
    iput v2, v0, Lk0/mt;->b:I

    .line 6
    iput v2, v0, Lk0/mt;->c:I

    .line 7
    iput v2, v0, Lk0/mt;->d:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    iget-object v0, p0, Lk0/sj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/sj;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 13
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4301bc -> :sswitch_0
        0x4401bc -> :sswitch_0
        0x4501bc -> :sswitch_0
        0x4601bc -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x79

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v3, :cond_2f

    const/16 v3, -0x18

    const/16 v13, 0x8

    if-eq v2, v3, :cond_2c

    const/16 v3, -0x10

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x1a

    const/16 v14, 0x10

    if-eq v2, v3, :cond_29

    const/16 v3, 0x12

    const/16 v4, 0x41

    const/16 v15, 0x31

    const/16 v6, 0x1e

    const/16 v5, 0xd

    if-eq v2, v15, :cond_1f

    if-eq v2, v4, :cond_1c

    const/16 v4, 0x11

    if-eq v2, v4, :cond_16

    if-eq v2, v3, :cond_14

    const/16 v3, 0x21

    if-eq v2, v3, :cond_f

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3e

    const v4, 0xff00

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x48

    if-eq v2, v3, :cond_1

    const/16 v3, 0x49

    if-eq v2, v3, :cond_0

    goto/16 :goto_12

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x5

    .line 4
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x7

    .line 5
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x9

    .line 6
    aget-byte v1, v1, v6

    const/16 v6, 0x6f

    new-array v7, v12, [I

    and-int/2addr v2, v10

    aput v2, v7, v11

    .line 7
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v6, v12, [I

    and-int/2addr v3, v10

    aput v3, v6, v11

    .line 8
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v12, [I

    and-int/2addr v4, v10

    aput v4, v3, v11

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v12, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v11

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v12, [I

    and-int/2addr v1, v10

    aput v1, v3, v11

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_1
    const/16 v2, 0x63

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 16
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x9

    .line 19
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_2
    const/16 v2, 0x73

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 20
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x3

    .line 21
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    or-int/2addr v1, v4

    const v4, 0xffff

    and-int/2addr v1, v4

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_3
    const/16 v2, 0x75

    new-array v3, v12, [I

    add-int/lit8 v6, p2, 0x2

    .line 22
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    shl-int/2addr v7, v13

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    or-int/2addr v6, v7

    const v7, 0xffffff

    and-int/2addr v6, v7

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v12, [I

    add-int/lit8 v6, p2, 0x5

    .line 23
    aget-byte v6, v1, v6

    shl-int/2addr v6, v13

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    or-int/2addr v4, v6

    const v6, 0xffff

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x9

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xa

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xb

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xc

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xd

    .line 30
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 32
    aget-byte v1, v1, v3

    if-eq v2, v12, :cond_a

    if-eq v2, v8, :cond_5

    if-eq v2, v9, :cond_5

    goto/16 :goto_12

    .line 33
    :cond_5
    iget v2, v0, Lk0/sj;->i:I

    if-eq v1, v2, :cond_30

    if-le v1, v2, :cond_7

    move v2, v11

    .line 34
    :goto_0
    iget v3, v0, Lk0/sj;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_6

    const/16 v3, 0x1f

    .line 35
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/16 v2, 0x1f

    .line 36
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_7
    if-ge v1, v2, :cond_9

    move v2, v11

    .line 37
    :goto_1
    iget v3, v0, Lk0/sj;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_8

    .line 38
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_8
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    .line 40
    :cond_9
    :goto_2
    iput v1, v0, Lk0/sj;->i:I

    goto/16 :goto_12

    .line 41
    :cond_a
    iget v2, v0, Lk0/sj;->h:I

    if-eq v1, v2, :cond_30

    if-le v1, v2, :cond_c

    move v2, v11

    .line 42
    :goto_3
    iget v3, v0, Lk0/sj;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_b

    const/4 v3, 0x7

    .line 43
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v3, 0x7

    .line 44
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_c
    if-ge v1, v2, :cond_e

    move v2, v11

    .line 45
    :goto_4
    iget v3, v0, Lk0/sj;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_d

    .line 46
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 47
    :cond_d
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    .line 48
    :cond_e
    :goto_5
    iput v1, v0, Lk0/sj;->h:I

    goto/16 :goto_12

    :cond_f
    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    .line 50
    aget-byte v1, v1, v3

    and-int/2addr v1, v10

    iput v1, v0, Lk0/sj;->e:I

    move v1, v11

    .line 51
    :goto_6
    iget-object v3, v0, Lk0/sj;->g:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_11

    .line 52
    iget v4, v0, Lk0/sj;->e:I

    aget-object v5, v3, v1

    aget v5, v5, v11

    if-ne v4, v5, :cond_10

    if-eqz v4, :cond_11

    .line 53
    iput v1, v0, Lk0/sj;->f:I

    goto :goto_7

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    :goto_7
    and-int/2addr v2, v10

    if-ne v2, v12, :cond_12

    .line 54
    array-length v2, v3

    if-ge v1, v2, :cond_30

    .line 55
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_12
    if-nez v2, :cond_30

    .line 56
    iget v1, v0, Lk0/sj;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v10, :cond_13

    .line 57
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 58
    :cond_13
    iput v10, v0, Lk0/sj;->f:I

    goto/16 :goto_12

    :cond_14
    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_15

    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v12

    aput v4, v3, v11

    .line 61
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v12

    aput v4, v3, v11

    .line 62
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_15
    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v12

    aput v4, v3, v11

    .line 63
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v12

    aput v4, v3, v11

    .line 64
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v12

    aput v4, v3, v11

    .line 65
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v12

    aput v4, v3, v11

    .line 66
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v12

    aput v2, v3, v11

    const/4 v2, 0x5

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 69
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_16
    add-int/lit8 v2, p2, 0x4

    .line 70
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 71
    aget-byte v3, v1, v3

    and-int/2addr v2, v10

    .line 72
    iput v2, v0, Lk0/sj;->c:I

    move v2, v11

    .line 73
    :goto_9
    iget-object v4, v0, Lk0/sj;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_18

    .line 74
    iget v5, v0, Lk0/sj;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v11

    if-ne v5, v6, :cond_17

    if-eqz v5, :cond_18

    .line 75
    iput v2, v0, Lk0/sj;->b:I

    goto :goto_a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    :goto_a
    and-int/2addr v3, v10

    if-ne v3, v12, :cond_19

    .line 76
    array-length v3, v4

    if-ge v2, v3, :cond_1b

    .line 77
    aget-object v2, v4, v2

    aget v2, v2, v12

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_19
    if-nez v3, :cond_1b

    .line 78
    iget v2, v0, Lk0/sj;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_1a

    if-eq v2, v10, :cond_1a

    .line 79
    aget-object v2, v4, v2

    aget v2, v2, v12

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    .line 80
    :cond_1a
    iput v10, v0, Lk0/sj;->b:I

    :cond_1b
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v12, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_12

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/sj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/sj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 86
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    add-int/lit8 v4, p2, 0x7

    .line 87
    aget-byte v5, v1, v4

    and-int/2addr v5, v10

    add-int/lit8 v6, p2, 0x8

    .line 88
    aget-byte v8, v1, v6

    and-int/2addr v8, v10

    add-int/lit8 v9, p2, 0x9

    .line 89
    aget-byte v11, v1, v9

    and-int/2addr v11, v10

    .line 90
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_1d

    sget v13, Ll0/c0;->h:I

    if-ne v13, v5, :cond_1d

    sget v13, Ll0/c0;->i:I

    if-ne v13, v8, :cond_1d

    sget v13, Ll0/c0;->j:I

    if-eq v13, v11, :cond_1e

    .line 91
    :cond_1d
    sput v3, Ll0/c0;->g:I

    .line 92
    sput v5, Ll0/c0;->h:I

    .line 93
    sput v8, Ll0/c0;->i:I

    .line 94
    sput v11, Ll0/c0;->j:I

    .line 95
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_1e

    .line 96
    invoke-static {v12}, Lu0/d;->C2(I)V

    .line 97
    sput v7, Ll0/c0;->k:I

    .line 98
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 99
    :cond_1e
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/sj;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 100
    aget-byte v2, v1, v4

    and-int/2addr v2, v10

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 101
    aget-byte v2, v1, v6

    and-int/2addr v2, v10

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 102
    aget-byte v1, v1, v9

    and-int/2addr v1, v10

    invoke-static {v1}, Lk0/sj;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_12

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 104
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x4

    .line 105
    aget-byte v8, v1, v8

    add-int/lit8 v13, p2, 0x6

    .line 106
    aget-byte v13, v1, v13

    add-int/lit8 v16, p2, 0x7

    .line 107
    aget-byte v10, v1, v16

    add-int/lit8 v16, p2, 0x8

    .line 108
    aget-byte v17, v1, v16

    add-int/lit8 v18, p2, 0x9

    .line 109
    aget-byte v19, v1, v18

    const/16 v3, 0xa

    new-array v15, v12, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v15, v11

    .line 110
    invoke-static {v3, v15}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v15, v12, [I

    shr-int/lit8 v20, v2, 0x2

    and-int/lit8 v20, v20, 0x1

    aput v20, v15, v11

    .line 111
    invoke-static {v3, v15}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    aput v2, v3, v11

    const/16 v2, 0xb

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v12, [I

    shr-int/lit8 v15, v7, 0x4

    and-int/2addr v15, v12

    aput v15, v3, v11

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v7, 0x3

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 114
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v8, 0x5

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 115
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 116
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v8, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v11

    .line 117
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v12, [I

    shr-int/lit8 v4, v8, 0x0

    and-int/2addr v4, v9

    aput v4, v3, v11

    .line 118
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v13, v12, :cond_23

    if-eq v13, v9, :cond_22

    const/4 v2, 0x5

    if-eq v13, v2, :cond_21

    const/4 v2, 0x6

    if-eq v13, v2, :cond_20

    packed-switch v13, :pswitch_data_0

    move v2, v11

    move v3, v2

    :goto_c
    move v4, v3

    :goto_d
    move v6, v4

    goto :goto_e

    :pswitch_0
    move v2, v11

    move v3, v12

    goto :goto_c

    :pswitch_1
    move v2, v11

    move v4, v2

    move v3, v12

    move v6, v3

    goto :goto_e

    :pswitch_2
    move v2, v11

    move v3, v2

    move v4, v12

    goto :goto_d

    :pswitch_3
    move v2, v11

    move v3, v2

    move v4, v3

    move v6, v12

    goto :goto_e

    :cond_20
    move v2, v11

    move v4, v2

    move v6, v4

    move v3, v12

    goto :goto_e

    :cond_21
    move v2, v11

    move v6, v2

    move v3, v12

    move v4, v3

    goto :goto_e

    :cond_22
    move v2, v11

    move v3, v2

    move v6, v3

    move v4, v12

    goto :goto_e

    :cond_23
    move v3, v11

    move v4, v3

    move v6, v4

    move v2, v12

    :goto_e
    new-array v7, v12, [I

    aput v2, v7, v11

    const/16 v2, 0x31

    .line 119
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v12, [I

    aput v3, v7, v11

    .line 120
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v12, [I

    aput v4, v3, v11

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v6, v2, v11

    const/16 v3, 0x12

    .line 122
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v12, [I

    const/16 v4, 0xff

    and-int/lit16 v6, v10, 0xff

    aput v6, v3, v11

    .line 123
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 124
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 125
    aget-byte v17, v1, v18

    .line 126
    aget-byte v19, v1, v16

    :cond_24
    move/from16 v2, v17

    move/from16 v3, v19

    and-int/2addr v2, v4

    const/16 v6, 0xfe

    const/16 v7, 0x1b

    if-ne v2, v6, :cond_25

    new-array v2, v12, [I

    const/4 v6, -0x2

    aput v6, v2, v11

    .line 127
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_25
    if-ne v2, v4, :cond_26

    new-array v2, v12, [I

    const/4 v6, -0x3

    aput v6, v2, v11

    .line 128
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_26
    new-array v6, v12, [I

    aput v2, v6, v11

    .line 129
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    :goto_f
    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xfe

    const/16 v6, 0x1c

    if-ne v2, v3, :cond_27

    new-array v2, v12, [I

    const/4 v3, -0x2

    aput v3, v2, v11

    .line 130
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_27
    if-ne v2, v4, :cond_28

    new-array v2, v12, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 131
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_28
    new-array v3, v12, [I

    aput v2, v3, v11

    .line 132
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_10
    add-int/lit8 v2, p2, 0xd

    .line 133
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 134
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_12

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_2a

    add-int/lit8 v3, p2, 0x4

    .line 136
    aget-byte v4, v1, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    .line 137
    aget-byte v5, v1, v3

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    shl-int/2addr v4, v9

    and-int/2addr v4, v13

    shl-int/2addr v5, v7

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    .line 138
    sget v5, Lu0/b;->w:I

    const/4 v6, 0x6

    shl-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v4, v5

    .line 139
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x419

    new-array v7, v8, [I

    const/16 v8, 0xb

    aput v8, v7, v11

    aput v4, v7, v12

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v4, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 140
    aget-byte v4, v1, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aget-byte v3, v1, v3

    shr-int/2addr v3, v12

    and-int/2addr v3, v12

    invoke-static {v4, v3, v11}, Ll0/c0;->N1(III)V

    .line 141
    :cond_2a
    aget-byte v2, v1, v2

    const/4 v3, 0x5

    shr-int/2addr v2, v3

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_30

    add-int/lit8 v2, p2, 0x3

    .line 142
    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v12

    invoke-static {v1}, Lk0/qt;->a(I)V

    goto/16 :goto_12

    .line 143
    :cond_2b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_2c
    const/16 v2, 0x82

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 144
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v12, [I

    .line 145
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 146
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 147
    aget-byte v2, v1, v2

    if-nez v2, :cond_2e

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, v1, v2

    if-nez v2, :cond_2e

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, v1, v2

    if-nez v2, :cond_2e

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, v1, v2

    if-nez v2, :cond_2e

    add-int/lit8 v2, p2, 0x8

    aget-byte v1, v1, v2

    if-eqz v1, :cond_2d

    goto :goto_11

    .line 148
    :cond_2d
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_12

    .line 149
    :cond_2e
    :goto_11
    invoke-static {v12}, Lk0/qt;->a(I)V

    goto/16 :goto_12

    :cond_2f
    const/16 v2, 0x85

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 150
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v12, [I

    .line 151
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v6

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v12, [I

    .line 152
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v9

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 153
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v12, [I

    .line 154
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v12, [I

    .line 155
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v12, [I

    .line 156
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v12, [I

    .line 157
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v12, [I

    .line 158
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v12, [I

    .line 159
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 160
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v12, [I

    .line 161
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v12, [I

    .line 162
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v12, [I

    .line 163
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v12, [I

    .line 164
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 165
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v12, [I

    .line 166
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v12, [I

    .line 167
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v12, [I

    .line 168
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 169
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v12, [I

    .line 170
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 171
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x9

    .line 172
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_30
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/sj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sj;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/sj;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x98

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

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x4

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v0, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v8, :cond_7

    const/16 v9, 0x3ed

    if-eq v0, v9, :cond_2

    const/16 v9, 0x405

    if-eq v0, v9, :cond_0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0, v1, v8}, Lk0/lt;->T2([II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2
    aget v9, v1, v7

    mul-int/lit16 v9, v9, 0x320

    invoke-static {}, La/f;->w()I

    move-result v10

    div-int/2addr v9, v10

    .line 3
    aget v10, v1, v8

    mul-int/lit16 v10, v10, 0x1e0

    invoke-static {}, La/f;->i()I

    move-result v11

    div-int/2addr v10, v11

    .line 4
    aget v11, v1, v6

    const/4 v12, 0x7

    const/16 v13, 0x2c

    const/16 v14, 0x9

    const/4 v15, 0x6

    const/16 v16, 0x8

    if-nez v11, :cond_1

    new-array v1, v14, [I

    aput v3, v1, v6

    aput v15, v1, v7

    aput v13, v1, v8

    aput v7, v1, v4

    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    and-int/lit16 v2, v9, 0xff

    aput v2, v1, v5

    shr-int/lit8 v2, v10, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v15

    and-int/lit16 v2, v10, 0xff

    aput v2, v1, v12

    aput v6, v1, v16

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget v1, v1, v6

    if-ne v1, v7, :cond_a

    new-array v1, v14, [I

    aput v3, v1, v6

    aput v15, v1, v7

    aput v13, v1, v8

    aput v6, v1, v4

    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    and-int/lit16 v2, v9, 0xff

    aput v2, v1, v5

    shr-int/lit8 v2, v10, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v15

    and-int/lit16 v2, v10, 0xff

    aput v2, v1, v12

    aput v6, v1, v16

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    if-eqz v1, :cond_a

    .line 8
    array-length v2, v1

    if-lt v2, v7, :cond_a

    .line 9
    aget v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v4, :cond_3

    goto/16 :goto_0

    :cond_3
    new-array v1, v5, [I

    .line 10
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array v1, v5, [I

    .line 11
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array v1, v5, [I

    .line 12
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array v1, v5, [I

    .line 13
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    if-eqz v1, :cond_a

    .line 14
    array-length v9, v1

    if-lt v9, v8, :cond_a

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v8, v5, v7

    const/16 v3, -0x74

    aput v3, v5, v8

    .line 15
    aget v3, v1, v6

    aput v3, v5, v4

    aget v1, v1, v7

    aput v1, v5, v2

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    .line 16
    invoke-static {v1, v8}, Lk0/qt;->l0([II)Z

    move-result v9

    if-eqz v9, :cond_a

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v8, v5, v7

    const/16 v3, 0xfd

    aput v3, v5, v8

    .line 17
    aget v3, v1, v6

    aput v3, v5, v4

    aget v1, v1, v7

    aput v1, v5, v2

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    .line 18
    invoke-static {v1, v8}, Lk0/qt;->l0([II)Z

    move-result v9

    if-eqz v9, :cond_a

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v8, v5, v7

    const/16 v3, 0x3d

    aput v3, v5, v8

    .line 19
    aget v3, v1, v6

    aput v3, v5, v4

    aget v1, v1, v7

    aput v1, v5, v2

    invoke-static {v5}, Lz/k;->s([I)V

    :cond_a
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x7
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x6
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x5
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        -0x3
        0x3
        0x4
    .end array-data
.end method
