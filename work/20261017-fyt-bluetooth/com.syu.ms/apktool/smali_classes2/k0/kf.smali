.class public Lk0/kf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/kf;->c:I

    const/16 v1, 0x9

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

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/kf;->d:[[I

    .line 4
    new-instance v1, Lk0/kf$a;

    invoke-direct {v1, p0}, Lk0/kf$a;-><init>(Lk0/kf;)V

    iput-object v1, p0, Lk0/kf;->e:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lk0/kf;->f:F

    const/16 v1, 0xff

    .line 6
    iput v1, p0, Lk0/kf;->g:I

    .line 7
    iput v1, p0, Lk0/kf;->h:I

    .line 8
    iput v0, p0, Lk0/kf;->i:I

    .line 9
    iput v0, p0, Lk0/kf;->j:I

    .line 10
    new-instance v0, Lk0/kf$b;

    invoke-direct {v0, p0}, Lk0/kf$b;-><init>(Lk0/kf;)V

    iput-object v0, p0, Lk0/kf;->k:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
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
        0xb
        0xd
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    .line 1
    div-int/lit8 p0, p0, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public static synthetic b3(Lk0/kf;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/kf;->f:F

    return p0
.end method

.method public static synthetic c3(Lk0/kf;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/kf;->f:F

    return p1
.end method

.method public static synthetic d3(Lk0/kf;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/kf;->f:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/kf;->f:F

    return v0
.end method

.method public static synthetic e3(Lk0/kf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/kf;->j:I

    return p0
.end method

.method public static synthetic f3(Lk0/kf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/kf;->j:I

    return p1
.end method

.method public static synthetic g3(Lk0/kf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/kf;->h:I

    return p0
.end method

.method public static synthetic h3(Lk0/kf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/kf;->h:I

    return p1
.end method

.method public static synthetic i3(Lk0/kf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/kf;->i:I

    return p0
.end method

.method public static synthetic j3(Lk0/kf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/kf;->i:I

    return p1
.end method

.method public static synthetic k3(Lk0/kf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/kf;->g:I

    return p0
.end method

.method public static synthetic l3(Lk0/kf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/kf;->g:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xa9

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v4, v0, Lk0/mt;->l:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/kf;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/kf;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lk0/kf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 13
    iput v2, v0, Lk0/mt;->e:I

    .line 14
    iput v4, v0, Lk0/mt;->f:I

    .line 15
    iput v4, v0, Lk0/mt;->l:I

    .line 16
    iput v4, v0, Lk0/mt;->g:I

    .line 17
    iput v4, v0, Lk0/mt;->i:I

    .line 18
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/kf;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/kf;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    iget-object v0, p0, Lk0/kf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 22
    iput v2, v0, Lk0/mt;->e:I

    .line 23
    iput v2, v0, Lk0/mt;->f:I

    .line 24
    iput v4, v0, Lk0/mt;->l:I

    .line 25
    iput v2, v0, Lk0/mt;->g:I

    .line 26
    iput v4, v0, Lk0/mt;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x20

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_13

    const/16 v8, 0x80

    const/16 v9, 0x7f

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eq v2, v14, :cond_a

    if-eq v2, v5, :cond_8

    if-eq v2, v13, :cond_7

    if-eq v2, v11, :cond_6

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2

    const/16 v5, 0x31

    if-eq v2, v5, :cond_1

    if-eq v2, v9, :cond_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 3
    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v4, v1, v3

    shr-int/2addr v4, v13

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v7, [I

    .line 5
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 6
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 7
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 8
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    .line 9
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    const/16 v2, 0x79

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 10
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 11
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 12
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 13
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 14
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    const/16 v2, 0x76

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 15
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 16
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 17
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_3
    const/16 v2, 0x70

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 18
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 19
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 20
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 21
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 22
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 23
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 24
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    const/16 v2, 0x86

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 25
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 26
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 27
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 28
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 29
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 30
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x8

    .line 31
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v5, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 32
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x4

    .line 34
    aget-byte v8, v1, v5

    and-int/2addr v8, v3

    add-int/lit8 v9, p2, 0x5

    .line 35
    aget-byte v11, v1, v9

    and-int/2addr v11, v3

    add-int/lit8 v12, p2, 0x6

    .line 36
    aget-byte v14, v1, v12

    and-int/2addr v14, v3

    if-nez v4, :cond_3

    if-nez v8, :cond_3

    if-nez v11, :cond_3

    if-nez v14, :cond_3

    .line 37
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 38
    :cond_3
    sget v6, Ll0/c0;->g:I

    if-ne v6, v4, :cond_4

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_4

    sget v6, Ll0/c0;->i:I

    if-ne v6, v11, :cond_4

    sget v6, Ll0/c0;->j:I

    if-eq v6, v14, :cond_5

    .line 39
    :cond_4
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_5

    .line 40
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 41
    sput v13, Ll0/c0;->k:I

    .line 42
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 43
    :cond_5
    :goto_0
    sput v4, Ll0/c0;->g:I

    .line 44
    sput v8, Ll0/c0;->h:I

    .line 45
    sput v11, Ll0/c0;->i:I

    .line 46
    sput v14, Ll0/c0;->j:I

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 48
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 49
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 50
    aget-byte v2, v1, v12

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 51
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 53
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/kf;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 54
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/kf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1500

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_7
    const/16 v2, 0x62

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 56
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 57
    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 58
    aget-byte v8, v1, v8

    and-int/2addr v3, v8

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 59
    aget-byte v8, v1, v4

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 60
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 61
    aget-byte v8, v1, v4

    shr-int/2addr v8, v6

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 62
    aget-byte v8, v1, v4

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 63
    aget-byte v8, v1, v4

    shr-int/lit8 v5, v8, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 64
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 65
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 66
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 67
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 68
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 69
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 71
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 72
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 73
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 74
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 75
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 76
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 77
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 78
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 80
    aget-byte v5, v1, v5

    add-int/lit8 v14, p2, 0x4

    .line 81
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x5

    .line 82
    aget-byte v17, v1, v16

    new-array v9, v7, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v6

    .line 83
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v10, v7, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v6

    .line 84
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xc

    new-array v10, v7, [I

    shr-int/lit8 v19, v2, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v6

    .line 85
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v10, v7, [I

    shr-int/lit8 v19, v2, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v6

    .line 86
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xe

    new-array v10, v7, [I

    shr-int/lit8 v19, v2, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v6

    .line 87
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x41

    new-array v10, v7, [I

    shr-int/lit8 v19, v2, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v10, v6

    .line 88
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x10

    new-array v10, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v10, v6

    .line 89
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v9, v7, [I

    shr-int/lit8 v10, v5, 0x5

    and-int/lit8 v19, v10, 0x7

    aput v19, v9, v6

    .line 90
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v9, v7, [I

    shr-int/lit8 v19, v5, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v9, v6

    .line 91
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v7, [I

    shr-int/lit8 v19, v5, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v9, v6

    .line 92
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v9, v7, [I

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 93
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v9, v7, [I

    and-int/lit8 v5, v5, 0x1f

    aput v5, v9, v6

    .line 94
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 95
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 96
    aget-byte v2, v1, v16

    and-int/lit16 v15, v2, 0xff

    .line 97
    aget-byte v2, v1, v14

    and-int/2addr v2, v3

    goto :goto_2

    :cond_b
    move/from16 v2, v17

    :goto_2
    and-int/lit16 v5, v15, 0xff

    const/4 v9, -0x3

    const/4 v10, -0x2

    const/16 v14, 0x1b

    if-nez v5, :cond_c

    new-array v5, v7, [I

    aput v10, v5, v6

    .line 98
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    if-ne v5, v4, :cond_d

    new-array v5, v7, [I

    aput v9, v5, v6

    .line 99
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v15, v7, [I

    aput v5, v15, v6

    .line 100
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/2addr v2, v3

    const/16 v5, 0x1c

    if-nez v2, :cond_e

    new-array v2, v7, [I

    aput v10, v2, v6

    .line 101
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    if-ne v2, v4, :cond_f

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 102
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v14, v7, [I

    aput v2, v14, v6

    .line 103
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x2c

    new-array v5, v7, [I

    add-int/lit8 v14, p2, 0x8

    .line 104
    aget-byte v15, v1, v14

    and-int/lit8 v15, v15, 0xf

    aput v15, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v5, v7, [I

    .line 105
    aget-byte v15, v1, v14

    shr-int/lit8 v13, v15, 0x4

    and-int/2addr v13, v7

    aput v13, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v5, v7, [I

    .line 106
    aget-byte v13, v1, v14

    shr-int/lit8 v12, v13, 0x5

    and-int/2addr v12, v7

    aput v12, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v5, v7, [I

    .line 107
    aget-byte v12, v1, v14

    shr-int/lit8 v11, v12, 0x6

    and-int/2addr v11, v7

    aput v11, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v5, v7, [I

    .line 108
    aget-byte v11, v1, v14

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v7

    aput v11, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 109
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v5, 0x28

    if-nez v2, :cond_10

    new-array v2, v7, [I

    aput v10, v2, v6

    .line 110
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    if-ne v2, v4, :cond_11

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 111
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v4, v7, [I

    aput v2, v4, v6

    .line 112
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x7

    .line 113
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    and-int/lit16 v2, v1, 0x80

    if-ne v2, v8, :cond_12

    const/16 v2, 0x7f

    and-int/2addr v1, v2

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_6

    :cond_12
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 114
    :goto_6
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_9

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 115
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 116
    aget-byte v1, v1, v5

    and-int/2addr v2, v3

    .line 117
    iput v2, v0, Lk0/kf;->c:I

    move v2, v6

    .line 118
    :goto_7
    iget-object v5, v0, Lk0/kf;->d:[[I

    array-length v8, v5

    if-ge v2, v8, :cond_15

    .line 119
    iget v8, v0, Lk0/kf;->c:I

    aget-object v9, v5, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_14

    if-eqz v8, :cond_15

    .line 120
    iput v2, v0, Lk0/kf;->b:I

    goto :goto_8

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 121
    :cond_15
    :goto_8
    iget v8, v0, Lk0/kf;->c:I

    if-eq v8, v4, :cond_18

    const/16 v4, 0x21

    if-eq v8, v4, :cond_18

    and-int/2addr v1, v3

    if-ne v1, v7, :cond_16

    .line 122
    array-length v1, v5

    if-ge v2, v1, :cond_19

    .line 123
    aget-object v1, v5, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_16
    if-nez v1, :cond_19

    .line 124
    iget v1, v0, Lk0/kf;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_17

    if-eq v1, v3, :cond_17

    .line 125
    aget-object v1, v5, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 126
    :cond_17
    iput v3, v0, Lk0/kf;->b:I

    goto :goto_9

    :cond_18
    and-int/2addr v1, v3

    if-ne v1, v7, :cond_19

    .line 127
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x8f

    new-array v3, v7, [I

    aput v7, v3, v6

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_19
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/kf;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/kf;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/kf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x90

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

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-le p1, v4, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x20

    aput v0, p1, v4

    aput v3, p1, v3

    .line 2
    aget v0, p2, v2

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-le p1, v4, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x7c

    aput v0, p1, v4

    aput v3, p1, v3

    .line 4
    aget v0, p2, v2

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-le p1, v4, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x7e

    aput v0, p1, v4

    aput v3, p1, v3

    .line 6
    aget v0, p2, v2

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method
