.class public Lk0/xp;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:J

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/xp;->c:I

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

    iput-object v1, p0, Lk0/xp;->d:[[I

    .line 4
    new-instance v1, Lk0/xp$a;

    invoke-direct {v1, p0}, Lk0/xp$a;-><init>(Lk0/xp;)V

    iput-object v1, p0, Lk0/xp;->e:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lk0/xp;->f:J

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lk0/xp;->g:I

    .line 7
    iput v0, p0, Lk0/xp;->h:I

    .line 8
    new-instance v0, Lk0/xp$b;

    invoke-direct {v0, p0}, Lk0/xp$b;-><init>(Lk0/xp;)V

    iput-object v0, p0, Lk0/xp;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/xp$c;

    invoke-direct {v0, p0}, Lk0/xp$c;-><init>(Lk0/xp;)V

    iput-object v0, p0, Lk0/xp;->j:Ljava/lang/Runnable;

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
        0x6
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data
.end method

.method public static synthetic a3(Lk0/xp;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/xp;->f:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/xp;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/xp;->f:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/xp;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/xp;->g:I

    return p0
.end method

.method public static synthetic d3(Lk0/xp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/xp;->g:I

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xp;->i:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/xp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->l:I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_17

    const/16 v3, 0x7d

    const/16 v8, 0xb

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v2, v3, :cond_15

    const/16 v11, 0x7f

    if-eq v2, v11, :cond_14

    const/16 v12, 0x28

    const/4 v13, 0x5

    if-eq v2, v12, :cond_12

    const/16 v12, 0x29

    if-eq v2, v12, :cond_11

    const/16 v12, 0x38

    if-eq v2, v12, :cond_10

    const/16 v12, 0x39

    if-eq v2, v12, :cond_f

    const/16 v12, 0x10

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_0
    const/16 v2, 0x7c

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 2
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v8, 0xff00

    and-int/2addr v4, v8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v2, v6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x6

    .line 5
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 6
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 7
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 8
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 9
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    const/high16 v9, 0xff0000

    and-int/2addr v4, v9

    add-int/lit8 v9, p2, 0xf

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v8

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x10

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x11

    .line 10
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v9, p2, 0x12

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x13

    .line 11
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v7, p2, 0x14

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 12
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    .line 13
    aget-byte v11, v1, v8

    shr-int/2addr v11, v13

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    .line 14
    aget-byte v11, v1, v8

    shr-int/2addr v11, v4

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 15
    aget-byte v11, v1, v8

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 16
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 17
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 18
    aget-byte v11, v1, v8

    shr-int/2addr v11, v4

    and-int/lit8 v11, v11, 0x7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 19
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/lit8 v8, v8, 0x7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 20
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 21
    aget-byte v11, v1, v8

    shr-int/2addr v11, v9

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 22
    aget-byte v11, v1, v8

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 23
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/lit8 v8, v8, 0x7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 24
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 25
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 26
    aget-byte v11, v1, v8

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 27
    aget-byte v11, v1, v8

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 28
    aget-byte v11, v1, v8

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    .line 29
    aget-byte v11, v1, v8

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 30
    aget-byte v11, v1, v8

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    .line 31
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 32
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 33
    aget-byte v11, v1, v8

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 34
    aget-byte v11, v1, v8

    shr-int/2addr v11, v4

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    .line 35
    aget-byte v11, v1, v8

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 36
    aget-byte v11, v1, v8

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 37
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 38
    aget-byte v11, v1, v8

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 39
    aget-byte v11, v1, v8

    shr-int/lit8 v9, v11, 0x4

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 40
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 41
    aget-byte v4, v1, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 42
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 v2, 0x98

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 43
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 44
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 45
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 48
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 49
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    add-int/lit8 v11, p2, 0x4

    .line 52
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int/lit8 v14, p2, 0x5

    .line 53
    aget-byte v15, v1, v14

    and-int/2addr v15, v5

    add-int/lit8 v16, p2, 0x6

    .line 54
    aget-byte v13, v1, v16

    and-int/2addr v13, v5

    new-array v9, v7, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v9, v6

    const/16 v4, 0xa

    .line 55
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 56
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v7

    aput v8, v4, v6

    const/16 v8, 0xc

    .line 57
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v7

    aput v8, v4, v6

    const/16 v8, 0x3f

    .line 58
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v9, v7, [I

    shr-int/lit8 v18, v2, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v6

    .line 59
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v7

    aput v9, v4, v6

    .line 60
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v9, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v9, v6

    .line 61
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v7, :cond_4

    if-eq v2, v10, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move v2, v6

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_1

    :cond_1
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_1

    :cond_2
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_1

    :cond_3
    move v2, v6

    move v3, v7

    goto :goto_0

    :cond_4
    move v2, v6

    move v4, v2

    move v3, v7

    :goto_1
    const/16 v9, 0x12

    new-array v10, v7, [I

    aput v2, v10, v6

    .line 62
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v7, [I

    aput v3, v9, v6

    .line 63
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    and-int/lit16 v4, v11, 0xff

    aput v4, v3, v6

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 66
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    aget-byte v2, v1, v16

    and-int/lit16 v15, v2, 0xff

    .line 68
    aget-byte v2, v1, v14

    and-int/lit16 v13, v2, 0xff

    :cond_5
    const/16 v2, 0x24

    const/16 v3, 0x1b

    if-eq v15, v2, :cond_8

    const/16 v2, 0x40

    if-eq v15, v2, :cond_7

    const/16 v2, 0x25

    if-le v15, v2, :cond_6

    if-ge v15, v8, :cond_6

    new-array v2, v7, [I

    mul-int/lit8 v4, v15, 0x5

    aput v4, v2, v6

    .line 69
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v7, [I

    const/4 v4, -0x1

    aput v4, v2, v6

    .line 70
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 71
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v7, [I

    const/4 v4, -0x2

    aput v4, v2, v6

    .line 72
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x24

    const/16 v3, 0x1c

    if-eq v13, v2, :cond_b

    const/16 v2, 0x40

    if-eq v13, v2, :cond_a

    const/16 v2, 0x25

    if-le v13, v2, :cond_9

    if-ge v13, v8, :cond_9

    new-array v2, v7, [I

    const/4 v4, 0x5

    mul-int/2addr v15, v4

    aput v15, v2, v6

    .line 73
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v2, v7, [I

    const/4 v4, -0x1

    aput v4, v2, v6

    .line 74
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 75
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v2, v7, [I

    const/4 v4, -0x2

    aput v4, v2, v6

    .line 76
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 77
    aget-byte v5, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 78
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 80
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 81
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    const/4 v11, 0x5

    add-int/lit8 v11, p2, 0x5

    .line 82
    aget-byte v12, v1, v11

    and-int/2addr v5, v12

    if-nez v3, :cond_c

    if-nez v8, :cond_c

    if-nez v10, :cond_c

    if-nez v5, :cond_c

    .line 83
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 84
    :cond_c
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_d

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_d

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_d

    sget v6, Ll0/c0;->j:I

    if-eq v6, v5, :cond_e

    .line 85
    :cond_d
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_e

    .line 86
    invoke-static {v7}, Lu0/d;->C2(I)V

    const/4 v6, 0x4

    .line 87
    sput v6, Ll0/c0;->k:I

    .line 88
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 89
    :cond_e
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 90
    sput v8, Ll0/c0;->h:I

    .line 91
    sput v10, Ll0/c0;->i:I

    .line 92
    sput v5, Ll0/c0;->j:I

    .line 93
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 94
    aget-byte v2, v1, v4

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 95
    aget-byte v2, v1, v9

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 96
    aget-byte v1, v1, v11

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 99
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 100
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_f
    const/16 v2, 0x94

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 101
    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0x100

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    .line 102
    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0x100

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    .line 103
    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0x100

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    .line 104
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0x100

    const/4 v7, 0x5

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_10
    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 105
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 106
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 107
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 108
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 109
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 111
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 112
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 113
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x15c2

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 115
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 116
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 117
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 118
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 119
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x4

    .line 120
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x3

    .line 121
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x5

    .line 122
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 123
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 124
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eq v2, v7, :cond_16

    goto :goto_8

    :cond_16
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 126
    aget-byte v4, v1, v3

    shr-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v7

    aget-byte v4, v1, v3

    const/4 v9, 0x4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    invoke-static {v2, v4, v6}, Ll0/c0;->a(III)V

    .line 127
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v9, v10, [I

    aput v8, v9, v6

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    aput v1, v9, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v4, v9, v1, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 128
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 129
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 130
    iput v2, v0, Lk0/xp;->c:I

    move v2, v6

    .line 131
    :goto_6
    iget-object v3, v0, Lk0/xp;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 132
    iget v4, v0, Lk0/xp;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_18

    if-eqz v4, :cond_19

    .line 133
    iput v2, v0, Lk0/xp;->b:I

    goto :goto_7

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    :goto_7
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_1a

    .line 134
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 135
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_1a
    if-nez v1, :cond_1c

    .line 136
    iget v1, v0, Lk0/xp;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1b

    if-eq v1, v5, :cond_1b

    .line 137
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 138
    :cond_1b
    iput v5, v0, Lk0/xp;->b:I

    :cond_1c
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/xp;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/xp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9f

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

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0xc8

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    aput v1, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0xa8

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
