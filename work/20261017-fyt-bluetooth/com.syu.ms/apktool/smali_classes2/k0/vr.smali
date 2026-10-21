.class public Lk0/vr;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Lo1/g0;

.field public final k:I

.field public l:Z

.field public m:I

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vr;->c:I

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/vr;->d:[[I

    .line 4
    iput v0, p0, Lk0/vr;->e:I

    .line 5
    iput v0, p0, Lk0/vr;->f:I

    .line 6
    new-instance v1, Lk0/vr$a;

    invoke-direct {v1, p0}, Lk0/vr$a;-><init>(Lk0/vr;)V

    iput-object v1, p0, Lk0/vr;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/vr$b;

    invoke-direct {v1, p0}, Lk0/vr$b;-><init>(Lk0/vr;)V

    iput-object v1, p0, Lk0/vr;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/vr$c;

    invoke-direct {v1, p0}, Lk0/vr$c;-><init>(Lk0/vr;)V

    iput-object v1, p0, Lk0/vr;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/vr;->j:Lo1/g0;

    .line 10
    iput v4, p0, Lk0/vr;->k:I

    .line 11
    iput-boolean v0, p0, Lk0/vr;->l:Z

    .line 12
    iput v0, p0, Lk0/vr;->m:I

    .line 13
    iput v0, p0, Lk0/vr;->n:I

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
        0x6
        0xc
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
.end method

.method public static synthetic a3()I
    .locals 1

    .line 1
    sget v0, Lk0/vr;->o:I

    return v0
.end method

.method public static synthetic b3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/vr;->o:I

    return p0
.end method

.method public static synthetic c3(Lk0/vr;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vr;->j:Lo1/g0;

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
    iget-object v0, p0, Lk0/vr;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vr;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/vr;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_b

    const/16 v3, 0x29

    const/16 v9, 0x41

    const/16 v10, 0xa

    const/4 v11, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x6

    if-eq v2, v3, :cond_a

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    if-eq v2, v9, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    sget v2, Lk0/nt;->a:I

    const v3, 0x2c01c7

    if-ne v2, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v3, v1, v2

    const/16 v8, 0x17

    if-eq v3, v7, :cond_7

    const/16 v5, 0x9

    const v17, 0xff00

    const/16 v18, 0x8

    if-eq v3, v4, :cond_6

    if-eq v3, v14, :cond_3

    if-eq v3, v12, :cond_2

    goto/16 :goto_5

    .line 4
    :cond_2
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v9, v10, [I

    aput v8, v9, v6

    aget-byte v2, v1, v2

    aput v2, v9, v7

    add-int/lit8 v2, p2, 0x3

    aget-byte v8, v1, v2

    aput v8, v9, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v8, v1, v4

    aput v8, v9, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v14, v1, v8

    aput v14, v9, v12

    add-int/lit8 v12, p2, 0x6

    aget-byte v14, v1, v12

    aput v14, v9, v13

    add-int/lit8 v13, p2, 0x7

    aget-byte v14, v1, v13

    aput v14, v9, v15

    add-int/lit8 v14, p2, 0x8

    aget-byte v15, v1, v14

    aput v15, v9, v11

    add-int/lit8 v11, p2, 0x9

    aget-byte v15, v1, v11

    aput v15, v9, v18

    add-int/lit8 v10, p2, 0xa

    aget-byte v15, v1, v10

    aput v15, v9, v5

    const/16 v5, 0x419

    const/4 v15, 0x0

    invoke-static {v3, v5, v9, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v3, 0x79

    new-array v5, v7, [I

    .line 5
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int v2, v2, v17

    aget-byte v4, v1, v4

    const/16 v9, 0xff

    and-int/2addr v4, v9

    or-int/2addr v2, v4

    aput v2, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 6
    aget-byte v4, v1, v8

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    aget-byte v5, v1, v12

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    .line 7
    aget-byte v4, v1, v13

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    aget-byte v5, v1, v14

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 8
    aget-byte v4, v1, v11

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 9
    aget-byte v1, v1, v10

    and-int/2addr v1, v9

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 10
    :cond_3
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v9, v5, [I

    aput v8, v9, v6

    aget-byte v2, v1, v2

    aput v2, v9, v7

    add-int/lit8 v2, p2, 0x3

    aget-byte v10, v1, v2

    aput v10, v9, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v10, v1, v4

    aput v10, v9, v14

    add-int/lit8 v10, p2, 0x5

    aget-byte v14, v1, v10

    aput v14, v9, v12

    add-int/lit8 v12, p2, 0x6

    aget-byte v14, v1, v12

    aput v14, v9, v13

    add-int/lit8 v13, p2, 0x7

    aget-byte v14, v1, v13

    aput v14, v9, v15

    add-int/lit8 v14, p2, 0x8

    aget-byte v16, v1, v14

    aput v16, v9, v11

    add-int/lit8 v5, p2, 0x9

    aget-byte v11, v1, v5

    aput v11, v9, v18

    const/4 v7, 0x0

    const/16 v11, 0x419

    invoke-static {v3, v11, v9, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 11
    iget v3, v0, Lk0/vr;->n:I

    aget-byte v7, v1, v2

    const/16 v9, 0xff

    and-int/2addr v7, v9

    if-eq v3, v7, :cond_5

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    iput v3, v0, Lk0/vr;->n:I

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_4

    const/16 v7, 0x18

    if-eq v3, v7, :cond_4

    .line 13
    invoke-virtual/range {p0 .. p0}, Lk0/vr;->e3()V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v3

    const-string v7, "com.syu.carinfo.zhtd.bmw.ZH2PilotcarWARNCodeinfoAct"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    const/4 v3, 0x1

    .line 16
    invoke-static {v15, v3}, Ll0/b0;->l0(II)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/16 v7, 0x73

    new-array v8, v3, [I

    .line 17
    aget-byte v2, v1, v2

    const/16 v9, 0xff

    and-int/2addr v2, v9

    aput v2, v8, v6

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v7, v3, [I

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v7, v6

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v3, [I

    .line 19
    aget-byte v7, v1, v10

    shl-int/lit8 v7, v7, 0x8

    and-int v7, v7, v17

    aget-byte v8, v1, v12

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v3, [I

    .line 20
    aget-byte v7, v1, v13

    and-int/2addr v7, v9

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v3, [I

    .line 21
    aget-byte v4, v1, v14

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    aget-byte v1, v1, v5

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 22
    :cond_6
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v7, v10, [I

    aput v8, v7, v6

    aget-byte v2, v1, v2

    const/4 v8, 0x1

    aput v2, v7, v8

    add-int/lit8 v2, p2, 0x3

    aget-byte v8, v1, v2

    aput v8, v7, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v8, v1, v4

    aput v8, v7, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v9, v1, v8

    aput v9, v7, v12

    add-int/lit8 v9, p2, 0x6

    aget-byte v12, v1, v9

    aput v12, v7, v13

    add-int/lit8 v12, p2, 0x7

    aget-byte v13, v1, v12

    aput v13, v7, v15

    add-int/lit8 v13, p2, 0x8

    aget-byte v14, v1, v13

    aput v14, v7, v11

    add-int/lit8 v11, p2, 0x9

    aget-byte v14, v1, v11

    aput v14, v7, v18

    add-int/lit8 v10, p2, 0xa

    aget-byte v14, v1, v10

    aput v14, v7, v5

    const/16 v5, 0x419

    const/4 v14, 0x0

    invoke-static {v3, v5, v7, v14, v14}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v3, 0x6f

    const/4 v5, 0x1

    new-array v7, v5, [I

    .line 23
    aget-byte v2, v1, v2

    const/16 v5, 0x10

    shl-int/2addr v2, v5

    const/high16 v5, 0xff0000

    and-int/2addr v2, v5

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    or-int/2addr v2, v4

    aget-byte v4, v1, v8

    const/16 v5, 0xff

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    aput v2, v7, v6

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 24
    aget-byte v7, v1, v9

    shl-int/lit8 v7, v7, 0x8

    and-int v7, v7, v17

    aget-byte v8, v1, v12

    and-int/2addr v8, v5

    or-int/2addr v7, v8

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v3, [I

    .line 25
    aget-byte v7, v1, v13

    shl-int/lit8 v7, v7, 0x8

    and-int v7, v7, v17

    aget-byte v8, v1, v11

    and-int/2addr v8, v5

    or-int/2addr v7, v8

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v3, [I

    .line 26
    aget-byte v1, v1, v10

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_7
    move v3, v7

    .line 27
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    new-array v7, v13, [I

    aput v8, v7, v6

    aget-byte v2, v1, v2

    aput v2, v7, v3

    add-int/lit8 v2, p2, 0x3

    aget-byte v3, v1, v2

    aput v3, v7, v4

    add-int/lit8 v3, p2, 0x4

    aget-byte v8, v1, v3

    aput v8, v7, v14

    add-int/lit8 v8, p2, 0x5

    aget-byte v9, v1, v8

    aput v9, v7, v12

    const/16 v9, 0x419

    const/4 v10, 0x0

    invoke-static {v5, v9, v7, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v5, 0x62

    const/4 v7, 0x1

    new-array v9, v7, [I

    .line 28
    aget-byte v10, v1, v2

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x78

    new-array v9, v7, [I

    .line 29
    aget-byte v10, v1, v2

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x63

    new-array v9, v7, [I

    .line 30
    aget-byte v10, v1, v2

    shr-int/2addr v10, v6

    and-int/lit8 v10, v10, 0xf

    aput v10, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x64

    new-array v9, v7, [I

    .line 31
    aget-byte v10, v1, v3

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x65

    new-array v9, v7, [I

    .line 32
    aget-byte v10, v1, v3

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x66

    new-array v9, v7, [I

    .line 33
    aget-byte v10, v1, v3

    shr-int/2addr v10, v13

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x67

    new-array v9, v7, [I

    .line 34
    aget-byte v3, v1, v3

    shr-int/2addr v3, v12

    and-int/2addr v3, v7

    aput v3, v9, v6

    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v5, v7, [I

    .line 35
    aget-byte v9, v1, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v5, v7, [I

    .line 36
    aget-byte v9, v1, v8

    shr-int/2addr v9, v13

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v5, v7, [I

    .line 37
    aget-byte v9, v1, v8

    shr-int/2addr v9, v12

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v5, v7, [I

    .line 38
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v5, v7, [I

    .line 39
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v5, v7, [I

    .line 40
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v7

    aput v4, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v7, [I

    .line 41
    aget-byte v5, v1, v8

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 42
    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v7

    .line 43
    iget v2, v0, Lk0/vr;->f:I

    if-ne v2, v15, :cond_11

    .line 44
    iput v1, v0, Lk0/vr;->m:I

    if-ne v1, v7, :cond_8

    .line 45
    invoke-virtual/range {p0 .. p0}, Lk0/vr;->d3()V

    goto/16 :goto_5

    .line 46
    :cond_8
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.zhtd.bmw.ZH2PilotcarChargeCarinfoAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 47
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    .line 49
    :cond_9
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v5, v3, [I

    add-int/lit8 v7, p2, 0x2

    .line 50
    aget-byte v8, v1, v7

    shr-int/2addr v8, v15

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v5, v3, [I

    .line 51
    aget-byte v8, v1, v7

    shr-int/2addr v8, v13

    and-int/2addr v8, v3

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v3, [I

    .line 52
    aget-byte v5, v1, v7

    shr-int/2addr v5, v12

    and-int/2addr v5, v3

    aput v5, v2, v6

    const/16 v5, 0x10

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v3, [I

    .line 53
    aget-byte v5, v1, v7

    shr-int/2addr v5, v14

    and-int/2addr v5, v3

    aput v5, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v3, [I

    .line 54
    aget-byte v8, v1, v7

    shr-int/lit8 v4, v8, 0x2

    and-int/2addr v4, v3

    aput v4, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v3, [I

    .line 55
    aget-byte v5, v1, v7

    shr-int/2addr v5, v3

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v4, v3, [I

    .line 56
    aget-byte v5, v1, v7

    shr-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 57
    aget-byte v5, v1, v5

    const/16 v7, 0xff

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x4

    .line 58
    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v3, [I

    add-int/lit8 v4, p2, 0x5

    .line 59
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 60
    aget-byte v1, v1, v2

    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0x3e8

    .line 61
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_5

    :cond_b
    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x2

    .line 63
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    iput v1, v0, Lk0/vr;->c:I

    move v1, v6

    .line 64
    :goto_2
    iget-object v3, v0, Lk0/vr;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_d

    .line 65
    iget v4, v0, Lk0/vr;->c:I

    aget-object v5, v3, v1

    aget v5, v5, v6

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 66
    iput v1, v0, Lk0/vr;->b:I

    goto :goto_3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    const/16 v4, 0xff

    and-int/2addr v2, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 67
    array-length v2, v3

    if-ge v1, v2, :cond_11

    .line 68
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_e
    if-nez v2, :cond_11

    .line 69
    iget v1, v0, Lk0/vr;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    const/16 v2, 0xff

    if-eq v1, v2, :cond_10

    .line 70
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_f
    const/16 v2, 0xff

    .line 71
    :cond_10
    :goto_4
    iput v2, v0, Lk0/vr;->b:I

    :cond_11
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vr;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/vr;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/vr;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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
    .locals 2

    const/4 p3, 0x0

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    const/16 p4, 0xe3

    aput p4, p1, p3

    const/16 p4, 0xc6

    aput p4, p1, v0

    aput v1, p1, v1

    const/4 p4, 0x3

    .line 1
    aget p3, p2, p3

    aput p3, p1, p4

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lk0/vr;->f3()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p4, p3}, Ll0/b0;->l0(II)V

    .line 4
    invoke-static {p4, v0}, Ll0/b0;->l0(II)V

    :goto_0
    return-void
.end method

.method public final d3()V
    .locals 3

    const-string v0, "com.syu.carinfo.zhtd.bmw.ZH2PilotcarChargeCarinfoAct"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final e3()V
    .locals 3

    const-string v0, "com.syu.carinfo.zhtd.bmw.ZH2PilotcarWARNCodeinfoAct"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final f3()V
    .locals 4

    .line 1
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x6f

    aget v0, v0, v1

    sput v0, Lk0/vr;->o:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/16 v0, 0x7e

    .line 2
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object v0, p0, Lk0/vr;->j:Lo1/g0;

    invoke-virtual {v0, v1, v3}, Lo1/g0;->b(II)I

    move-result v0

    sget v2, Lk0/vr;->o:I

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lk0/vr;->j:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
