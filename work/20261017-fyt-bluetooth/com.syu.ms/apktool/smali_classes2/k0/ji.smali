.class public Lk0/ji;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ji;->c:I

    const/16 v1, 0x8

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

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ji;->d:[[I

    .line 4
    iput v0, p0, Lk0/ji;->e:I

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
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data
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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x27

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v7, 0x4

    const/16 v8, 0xff

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_1c

    const/16 v3, 0xf

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 3
    aget-byte v8, v1, v8

    add-int/lit8 v12, p2, 0x4

    .line 4
    aget-byte v12, v1, v12

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v1, v1, v4

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v3

    const/16 v13, 0x6a

    const/16 v14, 0x6d

    const/16 v15, 0x6b

    const/16 v6, 0x6c

    const/16 v3, 0x8

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v5, :cond_1

    if-eq v4, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v4, v11, [I

    aput v10, v4, v10

    .line 6
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 7
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 8
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v11, v4, v10

    .line 9
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v4, v11, [I

    aput v10, v4, v10

    .line 10
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 11
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v11, v4, v10

    .line 12
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 13
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v4, v11, [I

    aput v10, v4, v10

    .line 14
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v11, v4, v10

    .line 15
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 16
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 17
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v4, v11, [I

    aput v11, v4, v10

    .line 18
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 19
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 20
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 21
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    shr-int/2addr v2, v10

    const/16 v4, 0xf

    and-int/2addr v2, v4

    const/16 v4, 0x72

    const/16 v6, 0x75

    const/16 v13, 0x73

    const/16 v14, 0x74

    if-eq v2, v9, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 22
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 23
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 24
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 25
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 26
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 27
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 28
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 29
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 30
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 31
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 32
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v2, v11, [I

    aput v11, v2, v10

    .line 34
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 35
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 36
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    shr-int/lit8 v2, v8, 0x4

    const/16 v4, 0xf

    and-int/2addr v2, v4

    const/16 v4, 0x85

    const/16 v6, 0x83

    const/16 v13, 0x84

    if-eq v2, v9, :cond_b

    if-eq v2, v7, :cond_a

    if-eq v2, v5, :cond_9

    if-eq v2, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 38
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 39
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 40
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v11, [I

    aput v11, v4, v10

    .line 41
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 42
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 43
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 44
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 45
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 46
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 47
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 48
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 49
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array v2, v11, [I

    aput v11, v2, v10

    .line 50
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 51
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 52
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 53
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    shr-int/lit8 v2, v8, 0x0

    const/16 v4, 0xf

    and-int/2addr v2, v4

    if-eq v2, v9, :cond_f

    if-eq v2, v7, :cond_e

    if-eq v2, v5, :cond_d

    if-eq v2, v3, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 v2, 0x7c

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    aput v11, v3, v10

    .line 57
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    const/16 v2, 0x7c

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 58
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    aput v11, v3, v10

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    const/16 v2, 0x7c

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    aput v11, v3, v10

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    const/16 v2, 0x7c

    new-array v3, v11, [I

    aput v11, v3, v10

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 68
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    aput v10, v3, v10

    .line 69
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x76

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 70
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x0

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v11, [I

    shr-int/lit8 v4, v12, 0x2

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 76
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v11, [I

    const/4 v4, 0x3

    shr-int/lit8 v5, v12, 0x3

    and-int/lit8 v4, v5, 0x1

    aput v4, v3, v10

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v11, [I

    const/4 v4, 0x3

    shr-int/2addr v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v10

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 88
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 89
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 90
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 91
    aget-byte v7, v1, v7

    add-int/lit8 v9, p2, 0x8

    .line 92
    aget-byte v9, v1, v9

    add-int/lit8 v12, p2, 0x9

    .line 93
    aget-byte v1, v1, v12

    const/16 v12, 0x62

    new-array v13, v11, [I

    and-int/2addr v2, v8

    aput v2, v13, v10

    .line 94
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v12, v11, [I

    and-int/2addr v3, v8

    aput v3, v12, v10

    .line 95
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    and-int/2addr v4, v8

    aput v4, v3, v10

    .line 96
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v10

    .line 97
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v11, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v10

    .line 98
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v10

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    and-int/lit16 v4, v9, 0xff

    aput v4, v3, v10

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v11, [I

    and-int/2addr v1, v8

    aput v1, v3, v10

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 103
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 104
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 105
    aget-byte v1, v1, v6

    const/16 v6, 0xa

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 106
    invoke-static {v6, v12}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 107
    invoke-static {v6, v12}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xc

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 108
    invoke-static {v6, v12}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 109
    invoke-static {v6, v12}, Lk0/qt;->y0(I[I)V

    new-array v6, v11, [I

    and-int/2addr v2, v11

    aput v2, v6, v10

    const/16 v2, 0xf

    .line 110
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    and-int/2addr v3, v2

    if-eq v3, v11, :cond_14

    if-eq v3, v9, :cond_13

    const/4 v2, 0x3

    if-eq v3, v2, :cond_12

    if-eq v3, v7, :cond_11

    if-eq v3, v4, :cond_10

    move v2, v10

    move v3, v2

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_10
    move v3, v10

    move v4, v3

    move v2, v11

    goto :goto_5

    :cond_11
    move v3, v10

    move v2, v11

    move v4, v2

    goto :goto_5

    :cond_12
    move v2, v10

    move v3, v2

    move v4, v11

    goto :goto_5

    :cond_13
    move v2, v10

    move v3, v11

    goto :goto_4

    :cond_14
    move v2, v10

    move v4, v2

    move v3, v11

    :goto_5
    const/16 v6, 0x12

    new-array v7, v11, [I

    aput v2, v7, v10

    .line 111
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v11, [I

    aput v3, v6, v10

    .line 112
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    const/16 v4, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v10

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/2addr v1, v8

    if-eq v1, v11, :cond_16

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_15

    const/16 v2, 0x1b

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_15
    const/16 v1, 0x1b

    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 116
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_16
    const/16 v1, 0x1b

    new-array v2, v11, [I

    const/4 v3, -0x2

    aput v3, v2, v10

    .line 117
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    const-string v2, "persist.syu.reversefrontdoor"

    .line 119
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 120
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 121
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_17
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 122
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 123
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/4 v3, 0x3

    .line 124
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v11

    aput v5, v2, v10

    .line 125
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 126
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    const/4 v3, 0x3

    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 128
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 129
    iput v2, v0, Lk0/ji;->c:I

    move v2, v10

    .line 130
    :goto_7
    iget-object v3, v0, Lk0/ji;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 131
    iget v4, v0, Lk0/ji;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_18

    if-eqz v4, :cond_19

    .line 132
    iput v2, v0, Lk0/ji;->b:I

    goto :goto_8

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    :goto_8
    and-int/2addr v1, v8

    if-ne v1, v11, :cond_1a

    .line 133
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 134
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_1a
    if-nez v1, :cond_1f

    .line 135
    iget v1, v0, Lk0/ji;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1b

    if-eq v1, v8, :cond_1b

    .line 136
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 137
    :cond_1b
    iput v8, v0, Lk0/ji;->b:I

    goto/16 :goto_9

    .line 138
    :cond_1c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1d
    const/16 v2, 0x92

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 139
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 140
    aget-byte v2, v1, v4

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v11

    iput v2, v0, Lk0/ji;->e:I

    const/16 v2, 0x93

    new-array v3, v11, [I

    .line 141
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x7f

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3f5

    new-array v3, v11, [I

    .line 142
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v11

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1e
    const/16 v2, 0x8b

    new-array v3, v11, [I

    add-int/lit8 v6, p2, 0x2

    .line 143
    aget-byte v12, v1, v6

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v11

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v11, [I

    .line 144
    aget-byte v12, v1, v6

    shr-int/lit8 v5, v12, 0x6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v11, [I

    .line 145
    aget-byte v5, v1, v6

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v11, [I

    .line 146
    aget-byte v4, v1, v6

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v11, [I

    .line 147
    aget-byte v4, v1, v6

    const/4 v5, 0x3

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v11, [I

    .line 148
    aget-byte v4, v1, v6

    shr-int/2addr v4, v9

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v11, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 149
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1f
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
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

    const/16 p3, 0x94

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
    .locals 9

    const/16 p3, 0xe3

    const/4 p4, 0x6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_e

    const/4 v6, 0x7

    const/16 v7, 0x8

    if-eq p1, v4, :cond_d

    const/16 v8, 0x3ed

    if-eq p1, v8, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget p1, p0, Lk0/ji;->e:I

    const/16 v8, 0x9

    if-nez p1, :cond_5

    .line 2
    aget p1, p2, v5

    if-ne p1, v2, :cond_1

    move p4, v0

    goto :goto_0

    .line 3
    :cond_1
    aget p1, p2, v5

    if-ne p1, v3, :cond_2

    move p4, v2

    goto :goto_0

    .line 4
    :cond_2
    aget p1, p2, v5

    if-ne p1, p4, :cond_3

    move p4, v3

    goto :goto_0

    .line 5
    :cond_3
    aget p1, p2, v5

    if-ne p1, v6, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    aget p1, p2, v5

    if-ne p1, v4, :cond_c

    move p4, v1

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_c

    .line 7
    aget p1, p2, v5

    if-ne p1, v2, :cond_6

    const/16 p4, 0xd

    goto :goto_0

    .line 8
    :cond_6
    aget p1, p2, v5

    if-ne p1, v3, :cond_7

    const/16 p4, 0xc

    goto :goto_0

    .line 9
    :cond_7
    aget p1, p2, v5

    if-ne p1, p4, :cond_8

    move p4, v8

    goto :goto_0

    .line 10
    :cond_8
    aget p1, p2, v5

    if-ne p1, v6, :cond_9

    const/16 p4, 0xa

    goto :goto_0

    .line 11
    :cond_9
    aget p1, p2, v5

    if-ne p1, v7, :cond_a

    move p4, v7

    goto :goto_0

    .line 12
    :cond_a
    aget p1, p2, v5

    if-ne p1, v8, :cond_b

    const/16 p4, 0xb

    goto :goto_0

    .line 13
    :cond_b
    aget p1, p2, v5

    if-nez p1, :cond_c

    move p4, v4

    goto :goto_0

    :cond_c
    move p4, v5

    :goto_0
    new-array p1, v2, [I

    aput p3, p1, v5

    const/16 p2, 0x84

    aput p2, p1, v4

    aput v4, p1, v1

    int-to-byte p2, p4

    aput p2, p1, v0

    .line 14
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 15
    :cond_d
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, v7, [I

    aput p3, p1, v5

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v3, p1, v1

    .line 16
    aget p3, p2, v5

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, v2

    aget p3, p2, v1

    aput p3, p1, v3

    aget p3, p2, v0

    aput p3, p1, p4

    aget p2, p2, v2

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 17
    :cond_e
    invoke-virtual {p0, p2, v1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, p4, [I

    aput p3, p1, v5

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v0, p1, v1

    .line 18
    aget p3, p2, v5

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v2

    aput v5, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_f
    :goto_1
    return-void
.end method
