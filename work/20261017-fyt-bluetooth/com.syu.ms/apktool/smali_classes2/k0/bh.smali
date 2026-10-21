.class public Lk0/bh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static i:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/bh;->c:I

    const/16 v1, 0xd

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

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v2, 0xc

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/bh;->d:[[I

    .line 4
    new-instance v0, Lk0/bh$a;

    invoke-direct {v0, p0}, Lk0/bh$a;-><init>(Lk0/bh;)V

    iput-object v0, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    .line 5
    iput-byte v3, p0, Lk0/bh;->f:B

    .line 6
    new-instance v0, Lk0/bh$b;

    invoke-direct {v0, p0}, Lk0/bh$b;-><init>(Lk0/bh;)V

    iput-object v0, p0, Lk0/bh;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/bh$c;

    invoke-direct {v0, p0}, Lk0/bh$c;-><init>(Lk0/bh;)V

    iput-object v0, p0, Lk0/bh;->h:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x15
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x5
    .end array-data
.end method

.method public static synthetic a3(Lk0/bh;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bh;->h:Ljava/lang/Runnable;

    return-object p0
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

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->q:I

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/bh;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v1, v0, Lk0/mt;->e:I

    .line 8
    iput v1, v0, Lk0/mt;->f:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 10
    iput v2, v0, Lk0/mt;->j:I

    .line 11
    iput v2, v0, Lk0/mt;->o:I

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_f

    const/16 v7, 0x24

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eq v2, v7, :cond_d

    const/16 v7, 0x27

    const/16 v10, 0xc

    const/16 v11, 0xa

    if-eq v2, v7, :cond_6

    const/16 v3, 0x29

    if-eq v2, v3, :cond_5

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x38

    if-eq v2, v3, :cond_3

    const/16 v3, 0x35

    if-eq v2, v3, :cond_1

    const/16 v3, 0x36

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1
    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 6
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 8
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v7, 0xff00

    and-int/2addr v4, v7

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 9
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 10
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    .line 11
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 12
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 13
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_2

    mul-int/2addr v2, v11

    add-int/lit16 v2, v2, 0x258

    const v1, 0x8000

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    mul-int/2addr v2, v11

    add-int/lit16 v1, v2, 0x258

    .line 14
    :goto_0
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_3
    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 15
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 16
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 17
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 18
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 19
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 20
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 21
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 22
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 23
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 24
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 25
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 26
    :cond_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x16a8

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 29
    aget-byte v4, v1, v4

    add-int/lit8 v7, p2, 0x4

    .line 30
    aget-byte v12, v1, v7

    add-int/lit8 v13, p2, 0x5

    .line 31
    aget-byte v14, v1, v13

    add-int/lit8 v15, p2, 0x6

    .line 32
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x8

    .line 33
    aget-byte v16, v1, v16

    new-array v3, v6, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v3, v5

    .line 34
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v3, v5

    const/16 v11, 0xb

    .line 35
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_7

    new-array v3, v6, [I

    aput v5, v3, v5

    .line 36
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v3, v6, [I

    aput v6, v3, v5

    .line 37
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v3, 0xd

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 38
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v10, v6, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    aput v2, v10, v5

    .line 39
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    shr-int/lit8 v9, v4, 0x7

    and-int/2addr v9, v6

    aput v9, v3, v5

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    shr-int/2addr v4, v8

    and-int/lit8 v8, v4, 0x1

    aput v8, v3, v5

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v6, [I

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v5

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 43
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 44
    aget-byte v2, v1, v13

    and-int/lit16 v12, v2, 0xff

    .line 45
    aget-byte v1, v1, v7

    and-int/lit16 v14, v1, 0xff

    :cond_8
    and-int/lit16 v1, v12, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v4, 0x1b

    if-nez v12, :cond_9

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 46
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    const/16 v7, 0x20

    if-ne v12, v7, :cond_a

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 47
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v7, v6, [I

    aput v1, v7, v5

    .line 48
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v1, v14, 0xff

    const/16 v4, 0x1c

    if-nez v14, :cond_b

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 49
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/16 v3, 0x20

    if-ne v14, v3, :cond_c

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 50
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v2, v6, [I

    aput v1, v2, v5

    .line 51
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x41

    new-array v2, v6, [I

    shr-int/lit8 v3, v15, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v6, [I

    shr-int/lit8 v3, v15, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v6, [I

    shr-int/lit8 v3, v15, 0x0

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v6, [I

    and-int/lit8 v3, v16, 0xf

    aput v3, v2, v5

    .line 55
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 57
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_12

    const-string v1, "persist.syu.reversefrontdoor"

    .line 58
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 59
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 60
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 61
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 62
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/4 v2, 0x4

    .line 63
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 64
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 65
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 67
    aget-byte v1, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 68
    iput v2, v0, Lk0/bh;->c:I

    move v2, v5

    .line 69
    :goto_5
    iget-object v3, v0, Lk0/bh;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 70
    iget v4, v0, Lk0/bh;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_10

    if-eqz v4, :cond_11

    .line 71
    iput v2, v0, Lk0/bh;->b:I

    goto :goto_6

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    :goto_6
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_12

    .line 72
    array-length v1, v3

    if-ge v2, v1, :cond_12

    .line 73
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 74
    iget-object v1, v0, Lk0/bh;->d:[[I

    aget-object v1, v1, v2

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    :cond_12
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bh;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/bh;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/bh;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7a

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

    const/16 v0, 0xe3

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0xc5

    aput p3, p1, v4

    aput v3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    new-array p1, p1, [I

    aput v0, p1, v2

    const/16 v0, 0xc6

    aput v0, p1, v4

    aput v1, p1, v3

    .line 3
    aget v0, p2, v2

    aput v0, p1, v1

    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
