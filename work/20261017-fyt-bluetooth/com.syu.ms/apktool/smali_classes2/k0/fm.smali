.class public Lk0/fm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:J

.field public g:B

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fm;->c:I

    const/16 v1, 0xf

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

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/fm;->d:[[I

    .line 4
    new-instance v0, Lk0/fm$a;

    invoke-direct {v0, p0}, Lk0/fm$a;-><init>(Lk0/fm;)V

    iput-object v0, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lk0/fm;->f:J

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lk0/fm;->g:B

    .line 7
    new-instance v0, Lk0/fm$b;

    invoke-direct {v0, p0}, Lk0/fm$b;-><init>(Lk0/fm;)V

    iput-object v0, p0, Lk0/fm;->h:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x19
        0xd
    .end array-data
.end method

.method public static synthetic a3(Lk0/fm;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lk0/fm;->g:B

    return p0
.end method

.method public static synthetic b3(Lk0/fm;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lk0/fm;->g:B

    return p1
.end method

.method public static synthetic c3(Lk0/fm;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/fm;->f:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/fm;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/fm;->f:J

    return-wide p1
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

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/fm;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_13

    const/16 v8, 0x10

    const/16 v9, 0x18

    const/16 v10, 0xa

    const/16 v11, 0xf

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-eq v2, v3, :cond_c

    if-eq v2, v14, :cond_b

    if-eq v2, v13, :cond_7

    if-eq v2, v12, :cond_5

    if-eq v2, v10, :cond_3

    const/16 v10, 0x35

    const v15, 0xff00

    if-eq v2, v10, :cond_1

    const/16 v8, 0x7f

    if-eq v2, v8, :cond_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    const/16 v2, 0x72

    new-array v9, v7, [I

    add-int/lit8 v10, p2, 0x2

    .line 4
    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    aput v10, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v9, v7, [I

    add-int/lit8 v10, p2, 0x3

    .line 5
    aget-byte v15, v1, v10

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v7

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v9, v7, [I

    .line 6
    aget-byte v15, v1, v10

    shr-int/2addr v15, v12

    and-int/2addr v15, v7

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v9, v7, [I

    .line 7
    aget-byte v15, v1, v10

    shr-int/2addr v15, v12

    and-int/2addr v15, v7

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v9, v7, [I

    .line 8
    aget-byte v15, v1, v10

    shr-int/2addr v15, v14

    and-int/2addr v15, v3

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v9, v7, [I

    .line 9
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v11

    aput v10, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v9, v7, [I

    add-int/lit8 v10, p2, 0x4

    .line 10
    aget-byte v15, v1, v10

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v7

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v9, v7, [I

    .line 11
    aget-byte v15, v1, v10

    shr-int/2addr v15, v12

    and-int/2addr v15, v7

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v9, v7, [I

    .line 12
    aget-byte v15, v1, v10

    shr-int/lit8 v13, v15, 0x5

    and-int/2addr v13, v7

    aput v13, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v9, v7, [I

    .line 13
    aget-byte v13, v1, v10

    shr-int/2addr v13, v14

    and-int/2addr v13, v7

    aput v13, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v9, v7, [I

    .line 14
    aget-byte v13, v1, v10

    shr-int/lit8 v3, v13, 0x3

    and-int/2addr v3, v7

    aput v3, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 15
    aget-byte v9, v1, v10

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 16
    aget-byte v4, v1, v10

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 17
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x6

    .line 18
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    aput v1, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 19
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 22
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 23
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 27
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v8, p2, 0xd

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 28
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v7, p2, 0xf

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 29
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 32
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    or-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 33
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v15

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    or-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 34
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const/high16 v7, -0x1000000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xa

    aget-byte v7, v1, v7

    shl-int/2addr v7, v8

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xb

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v15

    or-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 35
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    const-string v2, "persist.fyt.temperature"

    .line 36
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 37
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_8

    .line 38
    :cond_2
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v2, p2, 0x3

    .line 39
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_4

    goto :goto_0

    :cond_4
    move v6, v7

    :goto_0
    const/16 v1, 0x1e0

    invoke-static {v2, v3, v6, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_8

    :cond_5
    const-string v2, "persist.syu.reversefrontdoor"

    .line 40
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 41
    aget-byte v8, v1, v5

    shr-int/2addr v8, v12

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 42
    aget-byte v5, v1, v5

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v2, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 43
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 44
    aget-byte v5, v1, v5

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 45
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 46
    aget-byte v8, v1, v5

    shr-int/2addr v8, v13

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 47
    aget-byte v8, v1, v5

    shr-int/lit8 v3, v8, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 48
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 50
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 51
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 52
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    if-nez v3, :cond_8

    if-nez v8, :cond_8

    if-nez v10, :cond_8

    if-nez v12, :cond_8

    .line 53
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 54
    :cond_8
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_9

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_9

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_9

    sget v6, Ll0/c0;->j:I

    if-eq v6, v12, :cond_a

    .line 55
    :cond_9
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_a

    .line 56
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 57
    sput v14, Ll0/c0;->k:I

    .line 58
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 59
    :cond_a
    :goto_2
    sput v3, Ll0/c0;->g:I

    .line 60
    sput v8, Ll0/c0;->h:I

    .line 61
    sput v10, Ll0/c0;->i:I

    .line 62
    sput v12, Ll0/c0;->j:I

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 64
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 65
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 66
    aget-byte v1, v1, v11

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 70
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    new-array v15, v7, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    .line 73
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    new-array v10, v7, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v7

    aput v15, v10, v6

    const/16 v15, 0xb

    .line 74
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v7, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v7

    aput v15, v10, v6

    const/16 v15, 0xc

    .line 75
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v7, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v7

    aput v15, v10, v6

    const/16 v15, 0xd

    .line 76
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v7, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v7

    aput v15, v10, v6

    const/16 v15, 0xe

    .line 77
    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v7, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v7

    aput v15, v10, v6

    .line 78
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v7, [I

    and-int/2addr v2, v7

    aput v2, v10, v6

    .line 79
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 80
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x16

    new-array v8, v7, [I

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 81
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v8, v7, [I

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 82
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v7

    aput v8, v2, v6

    .line 83
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v8, v7, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 84
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v8, v7, [I

    add-int/lit8 v9, p2, 0x8

    .line 85
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v7, [I

    .line 86
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v7, [I

    .line 87
    aget-byte v10, v1, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v7

    aput v10, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v8, v7, [I

    .line 88
    aget-byte v9, v1, v9

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    const/16 v2, 0x12

    new-array v8, v7, [I

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 89
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v7, [I

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 90
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v7, [I

    shr-int/lit8 v10, v3, 0x5

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 91
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v8, v7, [I

    shr-int/lit8 v10, v3, 0x4

    and-int/2addr v10, v7

    aput v10, v8, v6

    .line 92
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v8, v7, [I

    add-int/lit8 v10, p2, 0x8

    .line 93
    aget-byte v15, v1, v10

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v7

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v8, v7, [I

    .line 94
    aget-byte v15, v1, v10

    shr-int/2addr v15, v12

    and-int/2addr v15, v7

    aput v15, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 95
    aget-byte v8, v1, v10

    shr-int/2addr v8, v13

    and-int/2addr v8, v7

    aput v8, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v8, v7, [I

    .line 96
    aget-byte v9, v1, v10

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x15

    new-array v8, v7, [I

    and-int/2addr v3, v11

    aput v3, v8, v6

    .line 97
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 98
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v8, p2, 0x5

    .line 99
    aget-byte v9, v1, v8

    and-int/2addr v9, v5

    const-string v10, "persist.fyt.reversetemp"

    .line 100
    invoke-static {v10, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 101
    aget-byte v3, v1, v8

    and-int/2addr v3, v5

    .line 102
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    :cond_e
    const/16 v2, 0x1b

    if-nez v3, :cond_f

    new-array v3, v7, [I

    const/4 v8, -0x2

    aput v8, v3, v6

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    if-ne v3, v5, :cond_10

    new-array v3, v7, [I

    const/4 v8, -0x3

    aput v8, v3, v6

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v8, v7, [I

    aput v3, v8, v6

    .line 105
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x1c

    if-nez v9, :cond_11

    new-array v3, v7, [I

    const/4 v5, -0x2

    aput v5, v3, v6

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    if-ne v9, v5, :cond_12

    new-array v3, v7, [I

    const/4 v5, -0x3

    aput v5, v3, v6

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_12
    new-array v3, v7, [I

    aput v9, v3, v6

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x3c

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 109
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3d

    new-array v3, v7, [I

    .line 110
    aget-byte v8, v1, v5

    shr-int/2addr v8, v12

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v7, [I

    .line 111
    aget-byte v8, v1, v5

    shr-int/2addr v8, v13

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3b

    new-array v3, v7, [I

    .line 112
    aget-byte v8, v1, v5

    shr-int/lit8 v4, v8, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v7, [I

    .line 113
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    .line 114
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 115
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 116
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 117
    iput v2, v0, Lk0/fm;->c:I

    move v2, v6

    .line 118
    :goto_6
    iget-object v3, v0, Lk0/fm;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_15

    .line 119
    iget v4, v0, Lk0/fm;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_14

    if-eqz v4, :cond_15

    .line 120
    iput v2, v0, Lk0/fm;->b:I

    goto :goto_7

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    :goto_7
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_16

    .line 121
    array-length v1, v3

    if-ge v2, v1, :cond_18

    .line 122
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_16
    if-nez v1, :cond_18

    .line 123
    iget v1, v0, Lk0/fm;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_17

    if-eq v1, v5, :cond_17

    .line 124
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 125
    :cond_17
    iput v5, v0, Lk0/fm;->b:I

    :cond_18
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x37
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

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/fm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/fm;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x82

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
    .locals 6

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "persist.fyt.reversetemp"

    .line 1
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/16 v4, -0x3a

    const/4 v5, 0x5

    if-eqz p1, :cond_1

    .line 2
    aget p1, p2, v1

    packed-switch p1, :pswitch_data_0

    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 3
    aget p4, p2, v3

    aput p4, p1, p3

    aget p2, p2, v1

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 4
    aget p2, p2, v3

    aput p2, p1, p3

    const/16 p2, 0x10

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 5
    aget p2, p2, v3

    aput p2, p1, p3

    const/16 p2, 0xf

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 6
    aget p2, p2, v3

    aput p2, p1, p3

    const/16 p2, 0xe

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 7
    aget p2, p2, v3

    aput p2, p1, p3

    const/16 p2, 0x13

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 8
    aget p2, p2, v3

    aput p2, p1, p3

    const/16 p2, 0x12

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 9
    aget p2, p2, v3

    aput p2, p1, p3

    const/16 p2, 0x11

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v5, [I

    aput p4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v2

    .line 10
    aget p4, p2, v3

    aput p4, p1, p3

    aget p2, p2, v1

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v3

    const/4 p4, -0x1

    aput p4, p1, v1

    aput v1, p1, v2

    .line 11
    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
